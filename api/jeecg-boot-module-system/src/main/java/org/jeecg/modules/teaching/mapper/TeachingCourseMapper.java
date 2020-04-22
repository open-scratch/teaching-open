package org.jeecg.modules.teaching.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.jeecg.modules.teaching.entity.TeachingCourse;
import com.baomidou.mybatisplus.core.mapper.BaseMapper;

/**
 * @Description: 课程
 * @Author: jeecg-boot
 * @Date:   2020-04-14
 * @Version: V1.0
 */
public interface TeachingCourseMapper extends BaseMapper<TeachingCourse> {

    List<TeachingCourse> mineCourse(@Param("userId") String userId);
}
