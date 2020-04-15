package org.jeecg.modules.teaching.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.jeecg.modules.teaching.entity.TeachingStudent;
import com.baomidou.mybatisplus.core.mapper.BaseMapper;

/**
 * @Description: 学生表
 * @Author: jeecg-boot
 * @Date:   2020-03-08
 * @Version: V1.0
 */
public interface TeachingStudentMapper extends BaseMapper<TeachingStudent> {
    TeachingStudent getByOpenId(String openId);
    TeachingStudent getByUnionId(String unionId);
}
