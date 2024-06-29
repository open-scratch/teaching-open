package org.jeecg.modules.teaching.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.jeecg.common.util.DateUtils;
import org.jeecg.modules.system.entity.SysDepart;
import org.jeecg.modules.system.service.ISysDepartService;
import org.jeecg.modules.teaching.entity.TeachingDepartDayLog;
import org.jeecg.modules.teaching.enums.DepartDayLogType;
import org.jeecg.modules.teaching.mapper.TeachingDepartDayLogMapper;
import org.jeecg.modules.teaching.service.ITeachingDepartDayLogService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Date;

/**
 * @Description: 班级每日教学记录
 * @Author: jeecg-boot
 * @Date:   2021-06-25
 * @Version: V1.0
 */
@Service
public class TeachingDepartDayLogServiceImpl extends ServiceImpl<TeachingDepartDayLogMapper, TeachingDepartDayLog> implements ITeachingDepartDayLogService {
    @Autowired
    private ISysDepartService sysDepartService;
    @Override
    public void addLog(String departId, DepartDayLogType type) {
        String today = DateUtils.yyyyMMdd.get().format(new Date());
        TeachingDepartDayLog teachingDepartDayLog = this.getOne(new QueryWrapper<TeachingDepartDayLog>()
        .eq("depart_id", departId)
        .eq("create_time", today)
        .last("limit 1"));
        if (teachingDepartDayLog == null){
            SysDepart sysDepart = sysDepartService.getById(departId);

            teachingDepartDayLog = new TeachingDepartDayLog();
            teachingDepartDayLog.setDepartId(departId);
            if (sysDepart != null){
                teachingDepartDayLog.setDepartName(sysDepart.getDepartName());
            }
            teachingDepartDayLog.setCreateTime(new Date());
            teachingDepartDayLog.setAdditionalWorkCorrectCount(0);
            teachingDepartDayLog.setAdditionalWorkAssignCount(0);
            teachingDepartDayLog.setAdditionalWorkSubmitCount(0);
            teachingDepartDayLog.setCourseWorkSubmitCount(0);
            teachingDepartDayLog.setCourseWorkAssignCount(0);
            teachingDepartDayLog.setCourseWorkCorrectCount(0);
            teachingDepartDayLog.setUnitOpenCount(0);
            switch (type){
                case UNIT_OPEN_COUNT:
                    teachingDepartDayLog.setUnitOpenCount(1);
                    break;
                case COURSE_WORK_ASSIGN_COUNT:
                    teachingDepartDayLog.setCourseWorkAssignCount(1);
                    break;
                case COURSE_WORK_CORRECT_COUNT:
                    teachingDepartDayLog.setCourseWorkCorrectCount(1);
                    break;
                case COURSE_WORK_SUBMIT_COUNT:
                    teachingDepartDayLog.setCourseWorkSubmitCount(1);
                    break;
                case ADDITIONAL_WORK_ASSIGN_COUNT:
                    teachingDepartDayLog.setAdditionalWorkAssignCount(1);
                    break;
                case ADDITIONAL_WORK_SUBMIT_COUNT:
                    teachingDepartDayLog.setAdditionalWorkSubmitCount(1);
                    break;
                case ADDITIONAL_WORK_CORRECT_COUNT:
                    teachingDepartDayLog.setAdditionalWorkCorrectCount(1);
                    break;
            }
            this.save(teachingDepartDayLog);
        }else{
            switch (type){
                case UNIT_OPEN_COUNT:
                    teachingDepartDayLog.setUnitOpenCount(teachingDepartDayLog.getUnitOpenCount() + 1);
                    break;
                case COURSE_WORK_ASSIGN_COUNT:
                    teachingDepartDayLog.setCourseWorkAssignCount(teachingDepartDayLog.getCourseWorkAssignCount() + 1);
                    break;
                case COURSE_WORK_CORRECT_COUNT:
                    teachingDepartDayLog.setCourseWorkCorrectCount(teachingDepartDayLog.getCourseWorkCorrectCount() + 1);
                    break;
                case COURSE_WORK_SUBMIT_COUNT:
                    teachingDepartDayLog.setCourseWorkSubmitCount(teachingDepartDayLog.getCourseWorkSubmitCount() + 1);
                    break;
                case ADDITIONAL_WORK_ASSIGN_COUNT:
                    teachingDepartDayLog.setAdditionalWorkAssignCount(teachingDepartDayLog.getAdditionalWorkAssignCount() + 1);
                    break;
                case ADDITIONAL_WORK_SUBMIT_COUNT:
                    teachingDepartDayLog.setAdditionalWorkSubmitCount(teachingDepartDayLog.getAdditionalWorkSubmitCount() + 1);
                    break;
                case ADDITIONAL_WORK_CORRECT_COUNT:
                    teachingDepartDayLog.setAdditionalWorkCorrectCount(teachingDepartDayLog.getAdditionalWorkAssignCount() + 1);
                    break;
            }
            this.updateById(teachingDepartDayLog);
        }
    }
}
