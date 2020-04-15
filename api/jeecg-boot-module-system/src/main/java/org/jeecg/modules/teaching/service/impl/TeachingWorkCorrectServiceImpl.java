package org.jeecg.modules.teaching.service.impl;

import org.jeecg.modules.teaching.entity.TeachingWorkCorrect;
import org.jeecg.modules.teaching.mapper.TeachingWorkCorrectMapper;
import org.jeecg.modules.teaching.service.ITeachingWorkCorrectService;
import org.springframework.stereotype.Service;
import java.util.List;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;

/**
 * @Description: 作业批改
 * @Author: jeecg-boot
 * @Date:   2020-04-12
 * @Version: V1.0
 */
@Service
public class TeachingWorkCorrectServiceImpl extends ServiceImpl<TeachingWorkCorrectMapper, TeachingWorkCorrect> implements ITeachingWorkCorrectService {
	
	@Autowired
	private TeachingWorkCorrectMapper teachingWorkCorrectMapper;
	
	@Override
	public List<TeachingWorkCorrect> selectByMainId(String mainId) {
		return teachingWorkCorrectMapper.selectByMainId(mainId);
	}
}
