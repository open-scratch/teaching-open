package org.jeecg.modules.teaching.mapper;

import java.util.List;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import org.apache.ibatis.annotations.Param;
import org.jeecg.modules.teaching.entity.TeachingCourseDept;
import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import org.jeecg.modules.teaching.model.CourseDeptModel;

/**
 * @Description: 班级课程表
 * @Author: jeecg-boot
 * @Date:   2020-04-14
 * @Version: V1.0
 */
public interface TeachingCourseDeptMapper extends BaseMapper<TeachingCourseDept> {

    List<CourseDeptModel> list(Page<CourseDeptModel> page, @Param("ew")QueryWrapper<CourseDeptModel> queryWrapper);
}
