package org.jeecg.modules.wechat.model;

import lombok.Data;
import org.jeecg.modules.system.entity.SysUser;
import org.jeecgframework.poi.excel.annotation.Excel;

@Data
public class SysUserWechatModel extends SysUser {

    private String userWechatId;

    /**关联用户ID*/
    @Excel(name = "关联用户ID", width = 15)
    private String userId;
    /**openid*/
    @Excel(name = "openid", width = 15)
    private String openId;
    /**unionid*/
    @Excel(name = "unionid", width = 15)
    private String unionId;
    /**微信昵称*/
    @Excel(name = "微信昵称", width = 15)
    private String nickname;
    /**性别*/
    @Excel(name = "性别", width = 15)
    private Integer wechatSex;
    /**城市*/
    @Excel(name = "城市", width = 15)
    private String city;
    /**省份*/
    @Excel(name = "省份", width = 15)
    private String province;
    /**国家*/
    @Excel(name = "国家", width = 15)
    private String county;
    /**头像*/
    @Excel(name = "头像", width = 15)
    private String headimgurl;
    /**二维码场景*/
    @Excel(name = "二维码场景", width = 15)
    private Integer qrScene;
    /**二维码场景*/
    @Excel(name = "二维码场景", width = 15)
    private String qrSceneStr;
    /**组ID*/
    @Excel(name = "组ID", width = 15)
    private Integer groupId;
}
