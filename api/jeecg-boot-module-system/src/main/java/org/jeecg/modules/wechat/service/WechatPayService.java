package org.jeecg.modules.wechat.service;

import org.jeecg.common.api.vo.Result;
import org.jeecg.modules.wechat.enums.WechatPayTypeEnum;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public interface WechatPayService {

    /**
     * 获取支付签名
     * @param openId
     * @param body
     * @param totalFee
     * @param outTradeNo
     * @param type
     * @param request
     * @return
     */
    Result paySign(String openId,
                   String body,
                   String totalFee,
                   String outTradeNo,
                   WechatPayTypeEnum type,
                   HttpServletRequest request);

    /**
     * 微信支付成功回调
     * @param request
     * @param response
     * @return
     */
    String notify(HttpServletRequest request, HttpServletResponse response);

}
