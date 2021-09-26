package org.jeecg.modules.teaching.model;

import lombok.Data;
import org.jeecg.modules.teaching.entity.TeachingCourseUnit;

@Data
public class CourseUnitWorkModel extends TeachingCourseUnit {
    private String courseName;
    private String mineWorkId;
}
