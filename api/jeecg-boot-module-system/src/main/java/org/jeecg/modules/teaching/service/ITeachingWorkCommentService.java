package org.jeecg.modules.teaching.service;

import org.jeecg.modules.teaching.entity.TeachingWorkComment;
import com.baomidou.mybatisplus.extension.service.IService;
import org.jeecg.modules.teaching.model.WorkCommentModel;

import java.util.List;

/**
 * @Description: 作品评论
 * @Author: jeecg-boot
 * @Date:   2020-04-12
 * @Version: V1.0
 */
public interface ITeachingWorkCommentService extends IService<TeachingWorkComment> {

	public List<TeachingWorkComment> selectByMainId(String workId);

	public List<WorkCommentModel> getWorkComments(String workId, Integer page, Integer pageSize);
}
