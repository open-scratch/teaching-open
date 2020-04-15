package org.jeecg.modules.wechat.service.impl;

import lombok.extern.slf4j.Slf4j;
import org.apache.commons.lang.StringUtils;
import org.checkerframework.checker.units.qual.A;
import org.jeecg.common.api.vo.Result;
import org.jeecg.common.constant.CommonConstant;
import org.jeecg.common.system.util.JwtUtil;
import org.jeecg.common.system.vo.LoginUser;
import org.jeecg.common.util.RedisUtil;
import org.jeecg.modules.common.util.EncryptUtil;
import org.jeecg.modules.teaching.entity.TeachingStudent;
import org.jeecg.modules.teaching.service.ITeachingStudentService;
import org.jeecg.modules.wechat.entity.WechatUser;
import org.jeecg.modules.wechat.mapper.WechatUserMapper;
import org.jeecg.modules.wechat.service.IWechatUserService;
import org.jeecg.modules.wechat.service.WechatAccessTokenService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.cache.annotation.Cacheable;
import org.springframework.stereotype.Service;
import weixin.popular.api.*;
import weixin.popular.bean.sns.SnsToken;
import weixin.popular.bean.ticket.Ticket;
import weixin.popular.bean.token.Token;
import weixin.popular.bean.user.User;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.util.HashMap;
import java.util.Map;
import java.util.UUID;


@Slf4j
@Service
public class WechatAccessTokenServiceImpl implements WechatAccessTokenService {

	@Value("${jeecg.weixin.mp.appId}")
	private String appId;
	@Value("${jeecg.weixin.mp.appSecret}")
	private String appSecret;
	@Value("${jeecg.weixin.op.appId}")
	private String openAppId;
	@Value("${jeecg.weixin.op.appSecret}")
	private String openAppSecret;
	@Value("${jeecg.domain}")
	private String domain;

	@Autowired
	RedisUtil redisUtil;

	@Autowired
	WechatUserMapper wechatUserMapper;

	@Autowired
	ITeachingStudentService studentService;

	@Override
	public void oauth(HttpServletRequest request, HttpServletResponse response, String redirectUrl){
		try {
			request.setCharacterEncoding("utf-8");
			HttpSession session = request.getSession();
			response.setCharacterEncoding("utf-8");
			String code = request.getParameter("code");
			String state = request.getParameter("state");
			//state: qrcode 扫码登录
			//state: mp 公众号授权

			if ("qrcode".equals(state)){
				appId = openAppId;
				appSecret = openAppSecret;
			}

			log.info("state：{}", state);
			System.out.println("state：" + state);

			//用户同意授权
			if(StringUtils.isBlank(code)) {
				return;
			}
			SnsToken snsToken = SnsAPI.oauth2AccessToken(appId, appSecret, code);
			if (!snsToken.isSuccess()) {
				log.error("获取token失败：{}", snsToken.getErrmsg());
			}

			String scope = snsToken.getScope();
			log.info("取得授权成功  scope:{}  openId:{} unionId:{}", snsToken.getScope(), snsToken.getOpenid(), snsToken.getUnionid());
			// snsapi_login 扫码登录
			// snsapi_base 公众号授权-基础
			// snsapi_userinfo 公众号授权-用户信息

			String accessToken = snsToken.getAccess_token();
			String openId = snsToken.getOpenid();
			String unionId = snsToken.getUnionid(); //若公众号未绑定微信开放平台则获取不到unionId

			//将用户的openId和unionId存入sesion
			if (snsToken.getUnionid() != null){
				session.setAttribute("unionId", unionId);
			}
			session.setAttribute("openId", openId);

			//获取微信用户信息 只有scope为snsapi_userinfo时才可获取
			User userInfo = SnsAPI.userinfo(accessToken, snsToken.getOpenid(), "zh_CN");
			log.info("获取用户信息成功： nickname:{} qrscene:{}", userInfo.getNickname(), userInfo.getQr_scene_str());
			if(userInfo.isSuccess()){
				WechatUser user = wechatUserMapper.getByOpenId(openId);
				WechatUser newUser = new WechatUser();
				newUser.setOpenId(openId);
				newUser.setUnionId(userInfo.getUnionid());
				newUser.setNickname(userInfo.getNickname());
				newUser.setHeadimgurl(userInfo.getHeadimgurl());
				newUser.setCity(userInfo.getCity());
				newUser.setProvince(userInfo.getProvince());
				newUser.setCounty(userInfo.getCity());
				newUser.setQrScene(userInfo.getQr_scene());
				newUser.setQrSceneStr(userInfo.getQr_scene_str());
				newUser.setGroupId(userInfo.getGroupid());
				newUser.setAppId(appId);
				if (user == null){
					wechatUserMapper.insert(newUser);
				}else{
					newUser.setId(user.getId());
					wechatUserMapper.updateById(user);
				}
			}else{
				log.error("获取用户信息失败：{}", userInfo.getErrmsg());
			}
			//封装授权后的要跳转的URL
			redirectUrl = domain + redirectUrl;
			//查询是否绑定学生,绑定则登录
			TeachingStudent loginUser = studentService.getUserByOpenId(openId);
			if (loginUser != null){
				session.setAttribute("studentId", loginUser.getId());
			}
			log.info("微信授权成功，正在前往：" + redirectUrl);
			response.sendRedirect(redirectUrl);
		} catch (Exception e) {
			log.error(e.getMessage());
			e.printStackTrace();
		}
	}

	@Override
	public Result getJssdkSign(String url, HttpServletRequest request, HttpServletResponse response) {
		Result result = new Result();
		Ticket ticket = TicketAPI.ticketGetticket(getAccessToken());
		if (!ticket.isSuccess()){
			log.error("ticket获取失败：{}", ticket.getErrmsg());
			result.setSuccess(false);
			result.setMessage(ticket.getErrmsg());
			return result;
		}
		//随机字符串
		String noncestr = UUID.randomUUID().toString().replace("-", "").substring(0, 16);
		//时间戳
		String timestamp = String.valueOf(System.currentTimeMillis() / 1000);
		//将参数排序并拼接字符串
		String str = "jsapi_ticket="+ticket+"&noncestr="+noncestr+"&timestamp="+timestamp+"&url="+url;
		//将字符串进行sha1加密
		String signature = null;
		try{
			signature =EncryptUtil.sha1(str);
		}catch (Exception e){
			log.error("加密失败：{}", e.getMessage());
			result.setSuccess(false);
			result.setMessage(e.getMessage());
			return result;
		}

		//返回结果
		Map<String,String> resultMap = new HashMap<>(5);
		resultMap.put("appId",appId);
		resultMap.put("timestamp",timestamp);
		resultMap.put("nonceStr",noncestr);
		resultMap.put("signature",signature);
		result.setSuccess(true);
		result.setResult(resultMap);
		return result;
	}

	@Override
	@Cacheable(value = "access_token", unless = "#result == null ")
	public String getAccessToken(){
		Token token = TokenAPI.token(appId, appSecret);
		System.out.println("获取access_token : " + token.getErrmsg());
		if (token.isSuccess()){
			return token.getAccess_token();
		}else{
			return null;
		}
	}

}
