package org.jeecg.modules.teaching.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import org.jeecg.modules.system.entity.SysUser;
import org.jeecg.modules.system.mapper.SysUserMapper;
import org.jeecg.modules.teaching.entity.TeachingWork;
import org.jeecg.modules.teaching.entity.TeachingWorkCorrect;
import org.jeecg.modules.teaching.entity.TeachingWorkComment;
import org.jeecg.modules.teaching.mapper.TeachingWorkCorrectMapper;
import org.jeecg.modules.teaching.mapper.TeachingWorkCommentMapper;
import org.jeecg.modules.teaching.mapper.TeachingWorkMapper;
import org.jeecg.modules.teaching.model.StudentWorkModel;
import org.jeecg.modules.teaching.service.ITeachingWorkService;
import org.jeecg.modules.teaching.vo.StudentWorkSendVO;
import org.springframework.beans.BeanUtils;
import org.springframework.stereotype.Service;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.transaction.annotation.Transactional;
import java.io.Serializable;
import java.util.*;

/**
 * @Description: 作业列表
 * @Author: jeecg-boot
 * @Date:   2020-04-12
 * @Version: V1.0
 */
@Service
public class TeachingWorkServiceImpl extends ServiceImpl<TeachingWorkMapper, TeachingWork> implements ITeachingWorkService {
	@Autowired
	SysUserMapper sysUserMapper;
	@Autowired
	private TeachingWorkMapper teachingWorkMapper;
	@Autowired
	private TeachingWorkCorrectMapper teachingWorkCorrectMapper;
	@Autowired
	private TeachingWorkCommentMapper teachingWorkCommentMapper;
	
	@Override
	@Transactional
	public void saveMain(TeachingWork teachingWork, List<TeachingWorkCorrect> teachingWorkCorrectList,List<TeachingWorkComment> teachingWorkCommentList) {
		teachingWorkMapper.insert(teachingWork);
		if(teachingWorkCorrectList!=null && teachingWorkCorrectList.size()>0) {
			for(TeachingWorkCorrect entity:teachingWorkCorrectList) {
				//外键设置
				entity.setWorkId(teachingWork.getId());
				teachingWorkCorrectMapper.insert(entity);
			}
		}
		if(teachingWorkCommentList!=null && teachingWorkCommentList.size()>0) {
			for(TeachingWorkComment entity:teachingWorkCommentList) {
				//外键设置
				entity.setWorkId(teachingWork.getId());
				teachingWorkCommentMapper.insert(entity);
			}
		}
	}

	@Override
	@Transactional
	public void updateMain(TeachingWork teachingWork,List<TeachingWorkCorrect> teachingWorkCorrectList,List<TeachingWorkComment> teachingWorkCommentList) {
		teachingWorkMapper.updateById(teachingWork);
		
		//1.先删除子表数据
		teachingWorkCorrectMapper.deleteByMainId(teachingWork.getId());
		teachingWorkCommentMapper.deleteByMainId(teachingWork.getId());
		
		//2.子表数据重新插入
		if(teachingWorkCorrectList!=null && teachingWorkCorrectList.size()>0) {
			for(TeachingWorkCorrect entity:teachingWorkCorrectList) {
				//外键设置
				entity.setWorkId(teachingWork.getId());
				teachingWorkCorrectMapper.insert(entity);
			}
		}
		if(teachingWorkCommentList!=null && teachingWorkCommentList.size()>0) {
			for(TeachingWorkComment entity:teachingWorkCommentList) {
				//外键设置
				entity.setWorkId(teachingWork.getId());
				teachingWorkCommentMapper.insert(entity);
			}
		}
	}

	@Override
	@Transactional
	public void delMain(String id) {
		teachingWorkCorrectMapper.deleteByMainId(id);
		teachingWorkCommentMapper.deleteByMainId(id);
		teachingWorkMapper.deleteById(id);
	}

	@Override
	@Transactional
	public void delBatchMain(Collection<? extends Serializable> idList) {
		for(Serializable id:idList) {
			teachingWorkCorrectMapper.deleteByMainId(id.toString());
			teachingWorkCommentMapper.deleteByMainId(id.toString());
			teachingWorkMapper.deleteById(id);
		}
	}

	@Override
	public StudentWorkModel studentWorkInfo(String workId) {
		return this.baseMapper.studentWorkInfo(workId);
	}

	@Override
	public Page<StudentWorkModel> listWorkModel(Page<StudentWorkModel> page, QueryWrapper<StudentWorkModel> queryWrapper) {
		return page.setRecords(this.baseMapper.listWorkModel(page, queryWrapper));
	}

	@Override
	public int sendWork(StudentWorkSendVO studentWorkSendVO) {
		int count = 0;
		List<String> studentIds = studentWorkSendVO.getUserIdList();
		String workId = studentWorkSendVO.getSendWorkId();
		TeachingWork sourceWork = this.getById(workId);
		if (sourceWork == null){
			return 0;
		}
		List<TeachingWork> workList = new ArrayList<>();
		//遍历学生ID
		for (String userId: studentIds){
			SysUser user = sysUserMapper.selectById(userId);
			if (user == null){ continue; }
			TeachingWork work = new TeachingWork();
			BeanUtils.copyProperties(sourceWork, work);
			work.setUserId(userId);
			work.setCreateTime(new Date());
			work.setCreateBy(user.getUsername());
			work.setUpdateTime(null);
			work.setUpdateBy(null);
			work.setViewNum(0);
			work.setDelFlag(0);
			work.setId(null);
			//覆盖老作业
			List<TeachingWork> oldWork = teachingWorkMapper.selectByMap(new HashMap<String, Object>(){{
				put("work_name", sourceWork.getWorkName());
				put("user_id", userId);
			}});
			if (oldWork.size() > 0){
				work.setId(oldWork.get(0).getId());
			}else{
				work.setId(null);
			}
			workList.add(work);
			try{
				this.saveOrUpdate(work);
				count++;
			}catch (Exception e){
				e.printStackTrace();
			}
		}
		return count;
	}

}
