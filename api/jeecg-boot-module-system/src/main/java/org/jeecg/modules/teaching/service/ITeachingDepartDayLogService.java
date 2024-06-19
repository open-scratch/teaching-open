package org.jeecg.modules.teaching.service;

import com.baomidou.mybatisplus.extension.service.IService;
import org.jeecg.modules.teaching.entity.TeachingDepartDayLog;
import org.jeecg.modules.teaching.enums.DepartDayLogType;

/**
 * @Description: 班级每日教学记录
 * @Author: jeecg-boot
 * @Date:   2021-06-25
 * @Version: V1.0
 */
public interface ITeachingDepartDayLogService extends IService<TeachingDepartDayLog> {
    public void addLog(String departId, DepartDayLogType type);

}
