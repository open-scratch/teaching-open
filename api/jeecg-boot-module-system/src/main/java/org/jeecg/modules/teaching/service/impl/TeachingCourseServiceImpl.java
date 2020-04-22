package org.jeecg.modules.teaching.service.impl;

import org.jeecg.common.api.vo.Result;
import org.jeecg.modules.teaching.entity.TeachingCourse;
import org.jeecg.modules.teaching.mapper.TeachingCourseMapper;
import org.jeecg.modules.teaching.service.ITeachingCourseService;
import org.springframework.stereotype.Service;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;

import java.util.List;

/**
 * @Description: 课程
 * @Author: jeecg-boot
 * @Date:   2020-04-14
 * @Version: V1.0
 */
@Service
public class TeachingCourseServiceImpl extends ServiceImpl<TeachingCourseMapper, TeachingCourse> implements ITeachingCourseService {

    @Override
    public Result<List<TeachingCourse>> mineCourse(String userId) {
        Result result = new Result<List<TeachingCourse>>();
        List<TeachingCourse> courseList = this.baseMapper.mineCourse(userId);
        result.setResult(courseList);
        return result;
    }
}
