package org.jeecg.modules.teaching.model;

import lombok.Data;
import org.jeecg.common.aspect.annotation.Dict;
import org.jeecg.modules.system.aspect.FileUrl;

import java.util.Date;

@Data
public class AdditionalWorkModel {
    private String additionalWorkId;
    private String workName;
    private String workDesc;
    @FileUrl
    private String workCover;
    @FileUrl
    private String workUrl;
    @FileUrl
    private String workDocumentUrl;
    private String workDept;
    private Date createTime;
    @Dict(dictTable = "sys_user", dicCode = "username", dicText = "realname")
    private String createBy;
    @Dict(dicCode = "work_type")
    private Integer codeType;
    private String mineWorkId;
    private String mineWorkName;
    private Integer mineWorkStatus;
    @FileUrl
    private String mineWorkUrl;
    @FileUrl
    private String mineWorkCover;
    private String departId;
    private String departName;
    private String comment;
    private Integer score;
}
