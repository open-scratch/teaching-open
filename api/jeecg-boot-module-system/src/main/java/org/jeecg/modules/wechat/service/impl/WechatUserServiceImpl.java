package org.jeecg.modules.wechat.service.impl;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.jeecg.modules.wechat.entity.WechatUser;
import org.jeecg.modules.wechat.mapper.WechatUserMapper;
import org.jeecg.modules.wechat.service.IWechatUserService;
import org.springframework.stereotype.Service;

/**
 * @Description: 微信用户表
 * @Author: jeecg-boot
 * @Date:   2019-12-16
 * @Version: V1.0
 */
@Service
public class WechatUserServiceImpl extends ServiceImpl<WechatUserMapper, WechatUser> implements IWechatUserService {


    @Override
    public WechatUser getByOpenId(String openId) {
        return this.baseMapper.getByOpenId(openId);
    }

    @Override
    public WechatUser getByUnionId(String unionId) {
        return this.baseMapper.getByUnionId(unionId);
    }
}
