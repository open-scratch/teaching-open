package org.jeecg.modules.teaching.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import org.jeecg.modules.teaching.entity.TeachingCourseUnit;
import org.jeecg.modules.teaching.mapper.TeachingCourseUnitMapper;
import org.jeecg.modules.teaching.model.CourseUnitModel;
import org.jeecg.modules.teaching.model.CourseUnitWorkModel;
import org.jeecg.modules.teaching.service.ITeachingCourseUnitService;
import org.springframework.stereotype.Service;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;

/**
 * @Description: 课程单元
 * @Author: jeecg-boot
 * @Date:   2020-04-14
 * @Version: V1.0
 */
@Service
public class TeachingCourseUnitServiceImpl extends ServiceImpl<TeachingCourseUnitMapper, TeachingCourseUnit> implements ITeachingCourseUnitService {

    @Override
    public IPage<CourseUnitModel> getCourseUnitList(Page<CourseUnitModel> page, QueryWrapper<CourseUnitModel> queryWrapper) {
        return page.setRecords(this.baseMapper.getCourseUnitList(page, queryWrapper));
    }

    @Override
    public CourseUnitWorkModel getCourseWorkUnit(String unitId, String userId) {
        return this.baseMapper.getCourseWorkUnit(unitId, userId);
    }

}
