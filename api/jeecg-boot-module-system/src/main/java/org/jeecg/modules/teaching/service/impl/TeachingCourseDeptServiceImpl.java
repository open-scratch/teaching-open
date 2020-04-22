package org.jeecg.modules.teaching.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import org.jeecg.modules.teaching.entity.TeachingCourseDept;
import org.jeecg.modules.teaching.mapper.TeachingCourseDeptMapper;
import org.jeecg.modules.teaching.model.CourseDeptModel;
import org.jeecg.modules.teaching.service.ITeachingCourseDeptService;
import org.springframework.stereotype.Service;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;

/**
 * @Description: 班级课程表
 * @Author: jeecg-boot
 * @Date:   2020-04-14
 * @Version: V1.0
 */
@Service
public class TeachingCourseDeptServiceImpl extends ServiceImpl<TeachingCourseDeptMapper, TeachingCourseDept> implements ITeachingCourseDeptService {

    @Override
    public Page list(Page page, QueryWrapper queryWrapper) {
        return page.setRecords(this.baseMapper.list(page, queryWrapper));
    }
}
