package org.jeecg.modules.teaching.service;

import org.jeecg.common.api.vo.Result;
import org.jeecg.modules.teaching.entity.TeachingCourse;
import com.baomidou.mybatisplus.extension.service.IService;

import java.util.List;

/**
 * @Description: 课程
 * @Author: jeecg-boot
 * @Date:   2020-04-14
 * @Version: V1.0
 */
public interface ITeachingCourseService extends IService<TeachingCourse> {

    Result<List<TeachingCourse>> mineCourse(String mineUserId);
}
