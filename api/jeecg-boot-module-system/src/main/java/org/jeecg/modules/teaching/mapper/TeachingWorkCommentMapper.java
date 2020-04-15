package org.jeecg.modules.teaching.mapper;

import java.util.List;
import org.jeecg.modules.teaching.entity.TeachingWorkComment;
import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import org.apache.ibatis.annotations.Param;

/**
 * @Description: 作品评论
 * @Author: jeecg-boot
 * @Date:   2020-04-12
 * @Version: V1.0
 */
public interface TeachingWorkCommentMapper extends BaseMapper<TeachingWorkComment> {

	public boolean deleteByMainId(@Param("mainId") String mainId);
    
	public List<TeachingWorkComment> selectByMainId(@Param("mainId") String mainId);
}
