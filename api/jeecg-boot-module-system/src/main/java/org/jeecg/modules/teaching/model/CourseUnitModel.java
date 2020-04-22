package org.jeecg.modules.teaching.model;

import lombok.Data;
import org.jeecg.modules.teaching.entity.TeachingCourseMedia;
import org.jeecg.modules.teaching.entity.TeachingCourseUnit;

import java.util.List;

@Data
public class CourseUnitModel extends TeachingCourseUnit {
    String courseName;
    List<String> courseWorkIdList;
    List<String> courseWorkNameList;
    List<TeachingCourseMedia> courseWorks;

}
