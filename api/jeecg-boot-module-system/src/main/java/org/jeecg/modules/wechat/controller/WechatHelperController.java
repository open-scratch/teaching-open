package org.jeecg.modules.wechat.controller;

import com.baomidou.mybatisplus.core.conditions.update.UpdateWrapper;
import org.jeecg.common.api.vo.Result;
import org.jeecg.common.system.vo.LoginUser;
import org.jeecg.modules.common.controller.BaseController;
import org.jeecg.modules.wechat.entity.WechatUser;
import org.jeecg.modules.wechat.mapper.WechatUserMapper;
import org.jeecg.modules.wechat.service.WechatAccessTokenService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import javax.servlet.http.HttpSession;

@RequestMapping("wechatHelper")
@RestController
public class WechatHelperController extends BaseController {

    @Autowired
    WechatAccessTokenService wechatAccessTokenService;

    @Autowired
    WechatUserMapper wechatUserMapper;

    @RequestMapping("getAccessToken")
    public String getAccessToken(){
        return wechatAccessTokenService.getAccessToken();
    }
}
