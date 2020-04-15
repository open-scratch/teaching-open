package org.jeecg.modules.teaching.service;

import org.jeecg.common.system.vo.LoginUser;
import org.jeecg.modules.teaching.entity.TeachingStudent;
import com.baomidou.mybatisplus.extension.service.IService;

/**
 * @Description: 学生表
 * @Author: jeecg-boot
 * @Date:   2020-03-08
 * @Version: V1.0
 */
public interface ITeachingStudentService extends IService<TeachingStudent> {
    TeachingStudent getUserByOpenId(String openId);

    TeachingStudent getUserByUnionId(String unionId);
}
