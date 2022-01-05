package org.jeecg.modules.teaching.service;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import org.jeecg.modules.teaching.entity.TeachingWorkCorrect;
import org.jeecg.modules.teaching.entity.TeachingWorkComment;
import org.jeecg.modules.teaching.entity.TeachingWork;
import com.baomidou.mybatisplus.extension.service.IService;
import org.jeecg.modules.teaching.model.AdditionalWorkModel;
import org.jeecg.modules.teaching.model.StudentWorkModel;
import org.jeecg.modules.teaching.vo.StudentWorkSendVO;

import java.io.Serializable;
import java.util.Collection;
import java.util.List;

/**
 * @Description: 作业列表
 * @Author: jeecg-boot
 * @Date:   2020-04-12
 * @Version: V1.0
 */
public interface ITeachingWorkService extends IService<TeachingWork> {

	/**
	 * 添加一对多
	 * 
	 */
	public void saveMain(TeachingWork teachingWork,List<TeachingWorkCorrect> teachingWorkCorrectList,List<TeachingWorkComment> teachingWorkCommentList) ;
	
	/**
	 * 修改一对多
	 * 
	 */
	public void updateMain(TeachingWork teachingWork,List<TeachingWorkCorrect> teachingWorkCorrectList,List<TeachingWorkComment> teachingWorkCommentList);
	
	/**
	 * 删除一对多
	 */
	public void delMain (String id);
	
	/**
	 * 批量删除一对多
	 */
	public void delBatchMain (Collection<? extends Serializable> idList);

	StudentWorkModel studentWorkInfo(String workId);

	Page<StudentWorkModel> listWorkModel(Page<StudentWorkModel> page, QueryWrapper<StudentWorkModel> queryWrapper);

    int sendWork(StudentWorkSendVO studentWorkSendVO);

	/**
	 * 获取用户附加作业
	 * @param userId
	 * @param departId
	 * @param submit
	 * @param status
	 * @return
	 */
	List<AdditionalWorkModel> userAdditionalWork(String userId, String departId, Boolean submit, Integer status);}
