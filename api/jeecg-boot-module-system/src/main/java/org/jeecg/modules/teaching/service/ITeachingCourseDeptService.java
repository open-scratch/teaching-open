package org.jeecg.modules.teaching.service;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import org.jeecg.modules.teaching.entity.TeachingCourseDept;
import com.baomidou.mybatisplus.extension.service.IService;
import org.jeecg.modules.teaching.model.CourseDeptModel;

/**
 * @Description: 班级课程表
 * @Author: jeecg-boot
 * @Date:   2020-04-14
 * @Version: V1.0
 */
public interface ITeachingCourseDeptService extends IService<TeachingCourseDept> {

    IPage<CourseDeptModel> list(Page<CourseDeptModel> page, QueryWrapper<CourseDeptModel> queryWrapper);
}
