package org.jeecg.modules.wechat.service.impl;

import com.alibaba.fastjson.JSONObject;
import lombok.extern.slf4j.Slf4j;
import org.jeecg.common.api.vo.Result;
import org.jeecg.common.util.RedisUtil;
import org.jeecg.modules.teaching.service.ITeachingOrderService;
import org.jeecg.modules.wechat.enums.WechatPayTypeEnum;
import org.jeecg.modules.wechat.service.WechatPayService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;
import weixin.popular.api.PayMchAPI;
import weixin.popular.bean.paymch.*;
import weixin.popular.support.ExpireKey;
import weixin.popular.support.expirekey.DefaultExpireKey;
import weixin.popular.util.PayUtil;
import weixin.popular.util.SignatureUtil;
import weixin.popular.util.StreamUtils;
import weixin.popular.util.XMLConverUtil;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.nio.charset.Charset;
import java.util.Date;
import java.util.Map;
import java.util.UUID;

@Slf4j
@Service
public class WechatPayServiceImpl implements WechatPayService {
    @Value("${jeecg.weixin.mp.appId}")
    private String appId;
    @Value("${jeecg.weixin.pay.partner}")
    private String partner;
    @Value("${jeecg.weixin.pay.paternerKey}")
    private String paternerKey;
    @Value("${jeecg.weixin.pay.notifyUrl}")
    private String notifyUrl;
    @Value("${jeecg.weixin.pay.sandbox}")
    private Boolean sandbox;

    @Autowired
    private RedisUtil redisUtil;

    @Autowired
    private ITeachingOrderService teachingOrderService;


    //重复通知过滤
    private static ExpireKey expireKey = new DefaultExpireKey();

    @Override
    public Result paySign(String openId, String body, String totalFee, String outTradeNo, WechatPayTypeEnum type, HttpServletRequest request) {
        if (sandbox){
            PayMchAPI.sandboxnewStart();
            SandboxSignkey sandboxSignkey = PayMchAPI.sandboxnewPayGetsignkey(partner, paternerKey);
            paternerKey = sandboxSignkey.getSandbox_signkey();
        }
        Result<JSONObject> result = new Result<>();
        //payPackage 的商品信息,openid 可以通过sns,或事件获取。
        Unifiedorder unifiedorder = new Unifiedorder();
        unifiedorder.setAppid(appId);
        unifiedorder.setMch_id(partner);
        unifiedorder.setNonce_str(UUID.randomUUID().toString().toString().replace("-", ""));
        unifiedorder.setOpenid(openId);
        unifiedorder.setBody(body);
        unifiedorder.setOut_trade_no(outTradeNo);
        unifiedorder.setTotal_fee(totalFee);//单位分
        unifiedorder.setSpbill_create_ip(request.getRemoteAddr());//IP
        unifiedorder.setNotify_url(notifyUrl);
        unifiedorder.setTrade_type(type.getType());//JSAPI，NATIVE，APP，WAP
        //统一下单，生成预支付订单
        log.info("统一下单{}", unifiedorder);
        UnifiedorderResult unifiedorderResult = PayMchAPI.payUnifiedorder(unifiedorder,paternerKey);
        //@since 2.8.5  API返回数据签名验证
        if(unifiedorderResult.getSign_status() !=null && unifiedorderResult.getSign_status()){
            String json = PayUtil.generateMchPayJsRequestJson(unifiedorderResult.getPrepay_id(), appId, paternerKey);
            result.setResult(JSONObject.parseObject(json));
            result.setSuccess(true);
        }else{
            result.setSuccess(false);
            result.setMessage(unifiedorderResult.getReturn_msg());
        }
        if (sandbox){
            PayMchAPI.sandboxnewEnd();
        }
        return result;
    }

    @Override
    public String notify(HttpServletRequest request, HttpServletResponse response) {
        try {
            //获取请求数据
            String xmlData = StreamUtils.copyToString(request.getInputStream(), Charset.forName("utf-8"));
            log.info("支付回调：{}", xmlData);
            //将XML转为MAP,确保所有字段都参与签名验证
            Map<String, String> mapData = XMLConverUtil.convertToMap(xmlData);
            //转换数据对象
            MchPayNotify payNotify = XMLConverUtil.convertToObject(MchPayNotify.class, xmlData);
            //已处理 去重
            if (expireKey.exists(payNotify.getTransaction_id())) {
                MchBaseResult baseResult = new MchBaseResult();
                baseResult.setReturn_code("SUCCESS");
                baseResult.setReturn_msg("OK");
                return XMLConverUtil.convertToXML(baseResult);
            }
            //签名验证
            if (SignatureUtil.validateSign(mapData, paternerKey)) {
                //@since 2.8.5
                payNotify.buildDynamicField(mapData);
                expireKey.add(payNotify.getTransaction_id());
                MchBaseResult baseResult = new MchBaseResult();
                baseResult.setReturn_code("SUCCESS");
                baseResult.setReturn_msg("OK");

                //TODO 付款成功后的逻辑：直接处理 | 放入Redis队列
                redisUtil.lSet("wechatPayNotify", xmlData);
                teachingOrderService.processWechatPayJob();

                return XMLConverUtil.convertToXML(baseResult);
            } else {
                MchBaseResult baseResult = new MchBaseResult();
                baseResult.setReturn_code("FAIL");
                baseResult.setReturn_msg("ERROR");
                log.error("支付回调失败：签名验证不通过:{}", mapData);
                return XMLConverUtil.convertToXML(baseResult);
            }
        }catch (Exception e){
            log.error("支付回调异常：{}",e.getMessage());
            return "";
        }
    }
}
