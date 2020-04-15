package org.jeecg.modules.wechat.service;

import com.baomidou.mybatisplus.extension.service.IService;
import org.jeecg.modules.wechat.entity.WechatUser;

/**
 * @Description: 微信用户表
 * @Author: jeecg-boot
 * @Date:   2019-12-16
 * @Version: V1.0
 */
public interface IWechatUserService extends IService<WechatUser> {
    WechatUser getByOpenId(String openId);
    WechatUser getByUnionId(String unionId);

}
