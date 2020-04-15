package org.jeecg.modules.teaching.service.impl;

import org.jeecg.modules.teaching.entity.TeachingWorkComment;
import org.jeecg.modules.teaching.mapper.TeachingWorkCommentMapper;
import org.jeecg.modules.teaching.service.ITeachingWorkCommentService;
import org.springframework.stereotype.Service;
import java.util.List;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;

/**
 * @Description: 作品评论
 * @Author: jeecg-boot
 * @Date:   2020-04-12
 * @Version: V1.0
 */
@Service
public class TeachingWorkCommentServiceImpl extends ServiceImpl<TeachingWorkCommentMapper, TeachingWorkComment> implements ITeachingWorkCommentService {
	
	@Autowired
	private TeachingWorkCommentMapper teachingWorkCommentMapper;
	
	@Override
	public List<TeachingWorkComment> selectByMainId(String mainId) {
		return teachingWorkCommentMapper.selectByMainId(mainId);
	}
}
