package org.jeecg.modules.teaching.model;

import lombok.Data;
import org.jeecg.modules.teaching.entity.TeachingCourseDept;

@Data
public class CourseDeptModel extends TeachingCourseDept {
    private String courseName;
    private String departName;
}
