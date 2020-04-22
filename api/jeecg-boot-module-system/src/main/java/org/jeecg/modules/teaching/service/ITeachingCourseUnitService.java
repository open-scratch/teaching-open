package org.jeecg.modules.teaching.service;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import org.jeecg.modules.teaching.entity.TeachingCourseUnit;
import com.baomidou.mybatisplus.extension.service.IService;
import org.jeecg.modules.teaching.model.CourseUnitModel;
import org.jeecg.modules.teaching.model.CourseUnitWorkModel;

/**
 * @Description: 课程单元
 * @Author: jeecg-boot
 * @Date:   2020-04-14
 * @Version: V1.0
 */
public interface ITeachingCourseUnitService extends IService<TeachingCourseUnit> {

    IPage<CourseUnitModel> getCourseUnitList(Page<CourseUnitModel> page, QueryWrapper<CourseUnitModel> queryWrapper);

    CourseUnitWorkModel getCourseWorkUnit(String unitId, String id);
}
