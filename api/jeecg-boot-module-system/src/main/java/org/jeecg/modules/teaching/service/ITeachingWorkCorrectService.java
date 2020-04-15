package org.jeecg.modules.teaching.service;

import org.jeecg.modules.teaching.entity.TeachingWorkCorrect;
import com.baomidou.mybatisplus.extension.service.IService;
import java.util.List;

/**
 * @Description: 作业批改
 * @Author: jeecg-boot
 * @Date:   2020-04-12
 * @Version: V1.0
 */
public interface ITeachingWorkCorrectService extends IService<TeachingWorkCorrect> {

	public List<TeachingWorkCorrect> selectByMainId(String mainId);
}
