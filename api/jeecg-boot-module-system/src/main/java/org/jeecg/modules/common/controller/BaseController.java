package org.jeecg.modules.common.controller;

import org.apache.shiro.SecurityUtils;
import org.jeecg.common.system.vo.LoginUser;

public class BaseController {

    public LoginUser getCurrentUser(){
        LoginUser sysUser = (LoginUser) SecurityUtils.getSubject().getPrincipal();
        return sysUser;
    }

    public Boolean hasRole(String role){
        return SecurityUtils.getSubject().hasRole(role);
    }
}
