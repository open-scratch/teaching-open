package org.jeecg.modules.teaching.mapper;

import java.util.List;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import org.apache.ibatis.annotations.Param;
import org.jeecg.modules.teaching.entity.TeachingCourseUnit;
import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import org.jeecg.modules.teaching.model.CourseUnitModel;
import org.jeecg.modules.teaching.model.CourseUnitWorkModel;

/**
 * @Description: 课程单元
 * @Author: jeecg-boot
 * @Date:   2020-04-14
 * @Version: V1.0
 */
public interface TeachingCourseUnitMapper extends BaseMapper<TeachingCourseUnit> {

    List<CourseUnitModel> getCourseUnitList(Page<CourseUnitModel> page, @Param("ew") QueryWrapper<CourseUnitModel> queryWrapper);

    //暂未使用
    List<CourseUnitModel> getCourseUnitAndMediaList(Page<CourseUnitModel> page, @Param("ew") QueryWrapper<CourseUnitModel> queryWrapper);

    CourseUnitWorkModel getCourseWorkUnit(@Param("unitId") String unitId, @Param("userId") String userId);
}
