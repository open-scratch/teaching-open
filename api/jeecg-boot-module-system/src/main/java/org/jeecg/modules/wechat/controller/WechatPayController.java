package org.jeecg.modules.wechat.controller;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import lombok.extern.slf4j.Slf4j;
import org.jeecg.common.api.vo.Result;
import org.jeecg.common.system.vo.LoginUser;
import org.jeecg.modules.common.controller.BaseController;
import org.jeecg.modules.teaching.entity.TeachingOrder;
import org.jeecg.modules.teaching.service.ITeachingOrderService;
import org.jeecg.modules.wechat.entity.WechatUser;
import org.jeecg.modules.wechat.enums.WechatPayTypeEnum;
import org.jeecg.modules.wechat.service.IWechatUserService;
import org.jeecg.modules.wechat.service.WechatPayService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@Slf4j
@Controller
@RequestMapping("wechatPay")
public class WechatPayController {

    @Autowired
    WechatPayService wechatPayService;

    @Autowired
    IWechatUserService sysUserWechatService;

    @Autowired
    ITeachingOrderService teachingOrderService;


    /**
     * 获取微信支付签名
     * @param request
     * @return
     */
    @RequestMapping("/getPaySign")
    @ResponseBody
    public Result paySign(@RequestParam String orderNo, HttpServletRequest request) {
        String openId = String.valueOf(request.getSession().getAttribute("openId"));
        if (openId == null){
            return new Result().error500("未取得微信授权");
        }
        TeachingOrder order = teachingOrderService.getByNo(orderNo);
        if (order == null){
            return new Result().error500("没有待支付订单");
        }
        return wechatPayService.paySign(openId, "购买课程", String.valueOf(order.getPrice()), orderNo, WechatPayTypeEnum.JSAPI, request);
    }

    /**
     * 微信回调
     * @param request
     * @param response
     * @return
     * @throws Exception
     */
    @RequestMapping(value = "/notify")
    public String notify(HttpServletRequest request, HttpServletResponse response) throws Exception {
        return wechatPayService.notify(request, response);
    }
}
