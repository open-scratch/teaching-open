package org.jeecg.modules.wechat.mapper;

import org.apache.ibatis.annotations.Param;
import org.jeecg.modules.wechat.entity.WechatUser;
import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import org.jeecg.modules.wechat.model.SysUserWechatModel;

/**
 * @Description: 微信用户表
 * @Author: jeecg-boot
 * @Date:   2019-12-16
 * @Version: V1.0
 */
public interface WechatUserMapper extends BaseMapper<WechatUser> {
    WechatUser getByOpenId(String openId);
    WechatUser getByUnionId(String openId);
    SysUserWechatModel getUserInfoByIds(@Param("userId") String userId, @Param("openId") String openId, @Param("unionId") String unionId);

}
