package org.jeecg.modules.teaching.service.impl;

import org.jeecg.common.util.oConvertUtils;
import org.jeecg.modules.teaching.entity.TeachingStudent;
import org.jeecg.modules.teaching.mapper.TeachingStudentMapper;
import org.jeecg.modules.teaching.service.ITeachingStudentService;
import org.jeecg.modules.wechat.entity.WechatUser;
import org.springframework.stereotype.Service;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;

/**
 * @Description: 学生表
 * @Author: jeecg-boot
 * @Date:   2020-03-08
 * @Version: V1.0
 */
@Service
public class TeachingStudentServiceImpl extends ServiceImpl<TeachingStudentMapper, TeachingStudent> implements ITeachingStudentService {

    @Override
    public TeachingStudent getUserByOpenId(String openId) {
        if(oConvertUtils.isEmpty(openId)) {
            return null;
        }
        TeachingStudent student = this.baseMapper.getByOpenId(openId);
        return student;
    }

    @Override
    public TeachingStudent getUserByUnionId(String unionId) {
        if(oConvertUtils.isEmpty(unionId)) {
            return null;
        }
        TeachingStudent student = this.baseMapper.getByUnionId(unionId);
        return student;
    }
}
