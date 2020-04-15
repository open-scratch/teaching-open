package org.jeecg.modules.wechat.controller;


import com.qiniu.util.Base64;
import com.sun.org.apache.xpath.internal.operations.Bool;
import lombok.extern.slf4j.Slf4j;
import org.jeecg.common.api.vo.Result;
import org.jeecg.modules.wechat.service.WechatAccessTokenService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import weixin.popular.api.SnsAPI;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.net.URLEncoder;
import java.util.HashMap;
import java.util.Map;
import java.util.Objects;

@Slf4j
@Controller
@RequestMapping("/wechatAuth")
public class WechatOauthController {

    @Value("${jeecg.weixin.mp.appId}")
    private String appId;
    @Value("${jeecg.weixin.op.appId}")
    private String openAppId;
    @Value("${jeecg.domain}")
    private String domain;

    @Autowired
    private WechatAccessTokenService wechatAccessTokenService;


    /**
     * 获取微信授权，由微信扫码登录/网页授权时调用
     * @param request
     * @param response
     * @param redirectUrl
     */
    @RequestMapping("/oauth")
    public void mine(HttpServletRequest request, HttpServletResponse response, @RequestParam String redirectUrl) {
        redirectUrl = new String(Base64.decode(redirectUrl.getBytes(), Base64.DEFAULT));
        wechatAccessTokenService.oauth(request, response, redirectUrl);
    }

     /**
     *自动拼接公众号授权URL
     * @param redirectUrl
     * @param request
     * @param userInfo false （不弹出授权页面，直接跳转，只能获取用户openid）
     *             true （弹出授权页面，可通过openid拿到昵称、性别、所在地。并且， 即使在未关注的情况下，只要用户授权，也能获取其信息 ）
     * @param response
     * @param session
     */
    @GetMapping("/wechatLogin")
    public void wechatLogin(@RequestParam String redirectUrl, HttpServletRequest request,
                            @RequestParam(defaultValue = "true") Boolean userInfo, //snsapi_base | snsapi_userinfo
                            HttpServletResponse response, HttpSession session) {
        redirectUrl = Base64.encodeToString(redirectUrl.getBytes(), Base64.DEFAULT);
        String state = "mp";
        try {
            redirectUrl = domain + "/api/wechatAuth/oauth?redirectUrl=" + redirectUrl;
            log.info("wechatLogin重定向：{}", redirectUrl);
            response.sendRedirect("https://open.weixin.qq.com/connect/oauth2/authorize?appid=" + appId + "&redirect_uri=" + redirectUrl + "&response_type=code&scope="+(userInfo?"snsapi_userinfo":"snsapi_base")+"&state="+state+"#wechat_redirect");
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    /**
     * 扫码登录
     * 生成官方微信扫码链接
     * @return
     */
    @GetMapping("/wechatLoginQrcodeUrl")
    public String wechatLogin(){
        String redirectUrl = domain + "/api/wechat/oauth";
        String state="qrcode";
        return SnsAPI.connectQrconnect(appId, redirectUrl, state);
    }

    /**
     * 扫码登录
     * 获取自定义登录二维码参数
     * @return
     */
    @GetMapping("/getQrcodeLoginParam")
    @ResponseBody
    public Result<Map<String,String>> getQrcodeLoginParam(){
        Result<Map<String,String>> result = new Result<>();
        Map<String,String> map = new HashMap<>();
        map.put("appId", openAppId);
        String redirectUrl = URLEncoder.encode(domain + "/api/wechat/oauth");
        map.put("redirectUrl", redirectUrl);
        map.put("state", "qrcode");
        result.setResult(map);
        return result;
    }


    /**
     * 获取微信JSSDK签名
     * @param url
     * @param request
     * @param response
     * @return
     */
    @GetMapping("/getJssdkTicket")
    @ResponseBody
    public Result<Map> getJssdkTicket(@RequestParam String url, HttpServletRequest request, HttpServletResponse response) {
        return wechatAccessTokenService.getJssdkSign(url, request, response);
    }
}
