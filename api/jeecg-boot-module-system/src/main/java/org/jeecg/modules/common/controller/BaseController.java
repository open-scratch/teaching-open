package org.jeecg.modules.common.controller;

import org.apache.shiro.SecurityUtils;
import org.jeecg.common.system.vo.LoginUser;
import org.jeecg.modules.system.service.ISysUserService;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.List;

public class BaseController {
    @Autowired
    private ISysUserService sysUserService;

    //获取当前用户
    public LoginUser getCurrentUser(){
        LoginUser sysUser = (LoginUser) SecurityUtils.getSubject().getPrincipal();
        return sysUser;
    }

    //是否拥有角色
    public Boolean hasRole(String role){
        return SecurityUtils.getSubject().hasRole(role);
    }

    //是否拥有所有角色
    public Boolean hasAllRoles(List<String> roleList){
        return SecurityUtils.getSubject().hasAllRoles((roleList));
    }

    //是否拥有角色列表
    public boolean[] hasRoles(List<String> roleList){
        return SecurityUtils.getSubject().hasRoles(roleList);
    }

    //当前用户的角色权限是否小于目标用户的角色权限
    public boolean lessThanUserRoleLevel(String userId){
        LoginUser currentUser = this.getCurrentUser();
        if (currentUser == null){
            return true;
        }
        return  sysUserService.getUserRoleLevel(currentUser.getId()) < sysUserService.getUserRoleLevel(userId);
    }

    //获取当前用户角色等级
    public int getUserRoleLevel(){
        LoginUser currentUser = this.getCurrentUser();
        return  sysUserService.getUserRoleLevel(currentUser.getId());
    }

    //获取当前用户的角色code列表
    public List<String> getCurrentRole(){
        LoginUser currentUser = this.getCurrentUser();
        return sysUserService.getRoleById(currentUser.getId());
    }

}
