package org.jeecg.modules.teaching.service;

import com.baomidou.mybatisplus.extension.service.IService;
import org.jeecg.common.api.vo.Result;
import org.jeecg.modules.teaching.entity.TeachingAdditionalWork;
import org.jeecg.modules.teaching.model.MineAdditionalWorkModel;

import java.util.List;

/**
 * @Description: 附加作业
 */
public interface ITeachingAdditionalWorkService extends IService<TeachingAdditionalWork> {

    Result<MineAdditionalWorkModel> getWorkInfo(String id);

    Result<List<MineAdditionalWorkModel>> mineAdditionalWork(String userId);

    Result<?> addNewAdditionalWork(TeachingAdditionalWork teachingAdditionalWork);
}
