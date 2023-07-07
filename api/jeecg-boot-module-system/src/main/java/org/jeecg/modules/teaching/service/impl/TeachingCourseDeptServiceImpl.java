package org.jeecg.modules.teaching.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import org.jeecg.modules.system.model.DepartIdModel;
import org.jeecg.modules.system.service.ISysDepartService;
import org.jeecg.modules.system.service.ISysUserDepartService;
import org.jeecg.modules.teaching.entity.TeachingCourse;
import org.jeecg.modules.teaching.entity.TeachingCourseDept;
import org.jeecg.modules.teaching.mapper.TeachingCourseDeptMapper;
import org.jeecg.modules.teaching.model.CourseDeptModel;
import org.jeecg.modules.teaching.service.ITeachingCourseDeptService;
import org.jeecg.modules.teaching.service.ITeachingCourseService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;

import java.util.List;
import java.util.stream.Collectors;

/**
 * @Description: 班级课程表
 * @Author: jeecg-boot
 * @Date:   2020-04-14
 * @Version: V1.0
 */
@Service
public class TeachingCourseDeptServiceImpl extends ServiceImpl<TeachingCourseDeptMapper, TeachingCourseDept> implements ITeachingCourseDeptService {
    @Autowired
    private ISysUserDepartService sysUserDepartService;
    @Autowired
    private ITeachingCourseService teachingCourseService;

    @Override
    public Page list(Page page, QueryWrapper queryWrapper) {
        return page.setRecords(this.baseMapper.list(page, queryWrapper));
    }

    @Override
    public boolean checkCoursePermission(String courseId, String userId) {
        TeachingCourse course = teachingCourseService.getById(courseId);
        if (course != null && course.getIsShared()){
            return true;
        }
        List<String> departIds = sysUserDepartService.userDepartIds(userId);
        if (departIds == null || departIds.size() == 0){
            return false;
        }
        int count = this.count(new QueryWrapper<TeachingCourseDept>().lambda()
                        .eq(TeachingCourseDept::getCourseId, courseId)
                        .in(TeachingCourseDept::getDeptId, departIds));
        return count > 0;
    }
}
