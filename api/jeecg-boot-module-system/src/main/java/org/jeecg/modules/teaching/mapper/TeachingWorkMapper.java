package org.jeecg.modules.teaching.mapper;

import java.util.List;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import org.apache.ibatis.annotations.Param;
import org.jeecg.modules.teaching.entity.TeachingWork;
import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import org.jeecg.modules.teaching.model.AdditionalWorkModel;
import org.jeecg.modules.teaching.model.StudentWorkModel;

/**
 * @Description: 作业列表
 * @Author: jeecg-boot
 * @Date:   2020-04-12
 * @Version: V1.0
 */
public interface TeachingWorkMapper extends BaseMapper<TeachingWork> {

    StudentWorkModel studentWorkInfo(@Param("workId") String workId);

    List<StudentWorkModel> listWorkModel(Page<StudentWorkModel> page, @Param("ew") QueryWrapper<StudentWorkModel> queryWrapper);

    List<AdditionalWorkModel> userAdditionalWork(@Param("userId") String userId, @Param("departIds") List departIds,
                                                 @Param("submit") Boolean submit, @Param("status") Integer status);
}
