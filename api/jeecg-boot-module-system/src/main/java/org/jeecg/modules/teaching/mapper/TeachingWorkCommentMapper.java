package org.jeecg.modules.teaching.mapper;

import java.util.List;
import org.jeecg.modules.teaching.entity.TeachingWorkComment;
import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import org.apache.ibatis.annotations.Param;
import org.jeecg.modules.teaching.model.WorkCommentModel;

/**
 * @Description: 作品评论
 * @Author: jeecg-boot
 * @Date:   2020-04-12
 * @Version: V1.0
 */
public interface TeachingWorkCommentMapper extends BaseMapper<TeachingWorkComment> {

	public boolean deleteByMainId(@Param("mainId") String mainId);
    
	public List<TeachingWorkComment> selectByMainId(@Param("workId") String workId);

	List<WorkCommentModel> getWorkComments(@Param("workId") String workId,
												  @Param("pageSize") Integer pageSize, @Param("offset") Integer offset);
}
