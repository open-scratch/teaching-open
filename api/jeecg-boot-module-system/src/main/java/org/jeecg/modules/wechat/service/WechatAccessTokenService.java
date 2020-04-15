package org.jeecg.modules.wechat.service;

import org.jeecg.common.api.vo.Result;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.Map;

public interface WechatAccessTokenService {
    /**
     * 获取Access Token
     * @return
     */
    String getAccessToken();

    /**微信授权回调*/
    void oauth(HttpServletRequest request, HttpServletResponse response, String redirectUrl);

    /**
     * 获取jssdk签名
     * @param url
     * @param request
     * @param response
     * @return
     */
    Result<Map> getJssdkSign(String url, HttpServletRequest request, HttpServletResponse response);
}
