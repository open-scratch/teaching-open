package org.jeecg.modules.teaching.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import org.apache.ibatis.annotations.Param;
import org.jeecg.modules.teaching.entity.TeachingAdditionalWork;
import org.jeecg.modules.teaching.model.MineAdditionalWorkModel;

import java.util.List;

/**
 * @Description: 附加作业
 * @Author: jeecg-boot
 * @Date:   2020-09-04
 * @Version: V1.0
 */
public interface TeachingAdditionalWorkMapper extends BaseMapper<TeachingAdditionalWork> {

    List<MineAdditionalWorkModel> getByDeptId(@Param("deptId") String deptId, @Param("userId") String userId);

    MineAdditionalWorkModel getWorkInfo(String id);
}
