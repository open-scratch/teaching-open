package org.jeecg.modules.teaching.model;

import lombok.Data;
import org.jeecg.modules.system.aspect.FileUrl;

import java.util.Date;

@Data
public class AdditionalWorkModel {
    private String additionalWorkId;
    private String workName;
    private String workDesc;
//    @Getter(AccessLevel.NONE)
    @FileUrl
    private String workCover;
    @FileUrl
    private String workUrl;
    @FileUrl
    private String workDocumentUrl;
    private String workDept;
    private Date createTime;
    private Integer codeType;

    private String mineWorkId;
    private String mineWorkName;
    private Integer mineWorkStatus;
    @FileUrl
    private String mineWorkUrl;
//    @Getter(AccessLevel.NONE)
    @FileUrl
    private String mineWorkCover;

    private String departId;
    private String departName;

//    public String getWorkCover() {
//        return workCover==null?null: QiniuConfig.domain + "//" + workCover;
//    }
//    public String getWorkUrl(){ return workUrl==null?null:QiniuConfig.domain+ "//" + workUrl;}
//    public String getMineWorkUrl(){ return mineWorkUrl==null?null:QiniuConfig.domain+ "//" + mineWorkUrl;}
//    public String getMineWorkCover() {
//        return mineWorkCover==null?null:QiniuConfig.domain+ "//" + mineWorkCover;
//    }
}
