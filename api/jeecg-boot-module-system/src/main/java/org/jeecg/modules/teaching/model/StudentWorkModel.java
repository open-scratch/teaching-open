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
//    @Getter(AccessLevel.NONE)
    @FileUrl
    private String workFileKey;
//    @Getter(AccessLevel.NONE)
    @FileUrl
    private String coverFileKey;

    private String courseName;

    private String sysOrgCode;

    @FileUrl
    private String avatar;

//    public String getAvatarUrl(){
//        if (this.avatar == null){
//            return null;
//        }
//        return this.avatar;
//    }
//
//
//    public String getCoverFileUrl(){
//        if (this.coverFileUrl == null){
//            return null;
//        }
//        return QiniuConfig.domain + "/" + this.coverFileUrl;
//    }
//
//    public String getWorkFileUrl(){
//        if (this.workFileUrl == null){
//            return null;
//        }
//        return QiniuConfig.domain + "/" + this.workFileUrl;
//    }

}
