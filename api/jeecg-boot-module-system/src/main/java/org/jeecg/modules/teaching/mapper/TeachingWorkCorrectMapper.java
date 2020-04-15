package org.jeecg.modules.teaching.mapper;

import java.util.List;
import org.jeecg.modules.teaching.entity.TeachingWorkCorrect;
import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import org.apache.ibatis.annotations.Param;

/**
 * @Description: 作业批改
 * @Author: jeecg-boot
 * @Date:   2020-04-12
 * @Version: V1.0
 */
public interface TeachingWorkCorrectMapper extends BaseMapper<TeachingWorkCorrect> {

	public boolean deleteByMainId(@Param("mainId") String mainId);
    
	public List<TeachingWorkCorrect> selectByMainId(@Param("mainId") String mainId);
}
