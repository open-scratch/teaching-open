package org.jeecg.modules.teaching.service.impl;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import lombok.extern.slf4j.Slf4j;
import org.jeecg.common.api.vo.Result;
import org.jeecg.modules.system.model.DepartIdModel;
import org.jeecg.modules.system.service.ISysUserDepartService;
import org.jeecg.modules.teaching.entity.TeachingAdditionalWork;
import org.jeecg.modules.teaching.mapper.TeachingAdditionalWorkMapper;
import org.jeecg.modules.teaching.model.MineAdditionalWorkModel;
import org.jeecg.modules.teaching.service.ITeachingAdditionalWorkService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

/**
 * @Description: 附加作业
 */
@Slf4j
@Service
public class TeachingAdditionalWorkServiceImpl extends ServiceImpl<TeachingAdditionalWorkMapper, TeachingAdditionalWork> implements ITeachingAdditionalWorkService {

    @Autowired
    private ISysUserDepartService sysUserDepartService;

    @Override
    public Result<MineAdditionalWorkModel> getWorkInfo(String id) {
        Result<MineAdditionalWorkModel> result = new Result();
        result.setResult(this.baseMapper.getWorkInfo(id));
        return result;
    }

    @Override
    public Result<List<MineAdditionalWorkModel>> mineAdditionalWork(String userId) {
        Result<List<MineAdditionalWorkModel>> result = new Result();
        //查询学生所有班级
        List<DepartIdModel> depts = sysUserDepartService.queryDepartIdsOfUser(userId);
        List<MineAdditionalWorkModel> all = new ArrayList<>();
        for(DepartIdModel departIdModel: depts){
            List<MineAdditionalWorkModel> list = this.baseMapper.getByDeptId(departIdModel.getKey(), userId);
            all.addAll(list);
        }
        result.setResult(all);
        return result;
    }

    @Override
    public Result<?> addNewAdditionalWork(TeachingAdditionalWork teachingAdditionalWork) {
        this.save(teachingAdditionalWork);
        return Result.ok("添加成功！");
    }
}
