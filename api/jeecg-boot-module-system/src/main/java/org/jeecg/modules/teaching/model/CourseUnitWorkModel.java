package org.jeecg.modules.teaching.model;

import lombok.AccessLevel;
import lombok.Data;
import lombok.Getter;
import org.jeecg.config.QiniuConfig;
import org.jeecg.modules.teaching.entity.TeachingCourseUnit;

@Data
public class CourseUnitWorkModel extends TeachingCourseUnit {
    private String courseName;
    private String mineWorkType;
    private String mineWorkId;
    private String mineWorkUrl;
    private String mineWorkName;
    private String mineWorkStatus;

    @Getter(AccessLevel.NONE)
    private String courseWork;


    @Override
    public TeachingCourseUnit setCourseWork(String courseWork){
        this.courseWork = courseWork;
        return this;
    }

    @Override
    public String getCourseWork(){
        if (this.courseWork == null){
            return null;
        }
        return QiniuConfig.domain + "/" + this.courseWork;
    }
}
