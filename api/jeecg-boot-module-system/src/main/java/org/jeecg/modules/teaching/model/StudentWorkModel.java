package org.jeecg.modules.teaching.model;

import com.baomidou.mybatisplus.annotation.TableId;
import io.swagger.annotations.ApiModelProperty;
import lombok.Data;
import org.jeecg.modules.system.aspect.FileUrl;
import org.jeecg.modules.teaching.entity.TeachingWork;

@Data
public class StudentWorkModel extends TeachingWork {
    @TableId("username")
    @ApiModelProperty(value = "username")
    private String username;

    @TableId("realname")
    @ApiModelProperty("username")
    private String realname;
    @FileUrl
    private String workFileKey;

    @FileUrl
    private String coverFileKey;

    private String courseName;

    private String sysOrgCode;

    @FileUrl
    private String avatar;
    //老师评语
    private String teacherComment;
    //老师评分
    private Integer score;
}
