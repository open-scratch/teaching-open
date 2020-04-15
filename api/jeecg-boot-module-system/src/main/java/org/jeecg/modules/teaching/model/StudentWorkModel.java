package org.jeecg.modules.teaching.model;

import com.baomidou.mybatisplus.annotation.TableId;
import io.swagger.annotations.ApiModelProperty;
import lombok.AccessLevel;
import lombok.Data;
import lombok.Getter;
import org.jeecg.config.QiniuConfig;
import org.jeecg.modules.teaching.entity.TeachingWork;
import org.springframework.beans.factory.annotation.Value;

@Data
public class StudentWorkModel extends TeachingWork {
    @TableId("username")
    @ApiModelProperty(value = "username")
    private String username;

    @TableId("realname")
    @ApiModelProperty("username")
    private String realname;
    @Getter(AccessLevel.NONE)
    private String workFileUrl;
    @Getter(AccessLevel.NONE)
    private String coverFileUrl;

    private String courseName;

    private String sysOrgCode;


    public String getCoverFileUrl(){
        if (this.coverFileUrl == null){
            return null;
        }
        return QiniuConfig.domain + "/" + this.coverFileUrl;
    }

    public String getWorkFileUrl(){
        if (this.workFileUrl == null){
            return null;
        }
        return QiniuConfig.domain + "/" + this.workFileUrl;
    }

}
