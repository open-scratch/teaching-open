package org.jeecg.modules.teaching.entity;

import java.io.Serializable;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;
import com.fasterxml.jackson.annotation.JsonFormat;
import org.jeecg.modules.system.aspect.FileUrl;
import org.springframework.format.annotation.DateTimeFormat;
import org.jeecgframework.poi.excel.annotation.Excel;
import org.jeecg.common.aspect.annotation.Dict;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;

/**
 * @Description: 作业列表
 * @Author: jeecg-boot
 * @Date:   2020-04-12
 * @Version: V1.0
 */
@ApiModel(value="teaching_work对象", description="作业列表")
@Data
@TableName("teaching_work")
public class TeachingWork implements Serializable {
    private static final long serialVersionUID = 1L;

	/**主键*/
	@TableId(type = IdType.ID_WORKER_STR)
    @ApiModelProperty(value = "主键")
    private java.lang.String id;
	/**创建人*/
	@Excel(name = "创建人", width = 15)
    @ApiModelProperty(value = "创建人")
    private java.lang.String createBy;
	/**创建日期*/
	@Excel(name = "创建日期", width = 20, format = "yyyy-MM-dd HH:mm:ss")
	@JsonFormat(timezone = "GMT+8",pattern = "yyyy-MM-dd HH:mm:ss")
    @DateTimeFormat(pattern="yyyy-MM-dd HH:mm:ss")
    @ApiModelProperty(value = "创建日期")
    private java.util.Date createTime;
	/**更新人*/
	@Excel(name = "更新人", width = 15)
    @ApiModelProperty(value = "更新人")
    private java.lang.String updateBy;
	/**更新日期*/
	@Excel(name = "更新日期", width = 20, format = "yyyy-MM-dd HH:mm:ss")
	@JsonFormat(timezone = "GMT+8",pattern = "yyyy-MM-dd HH:mm:ss")
    @DateTimeFormat(pattern="yyyy-MM-dd HH:mm:ss")
    @ApiModelProperty(value = "更新日期")
    private java.util.Date updateTime;
	/**所属部门*/
	@Excel(name = "所属部门", width = 15)
    @ApiModelProperty(value = "所属部门")
    private java.lang.String sysOrgCode;
	/**用户ID*/
	@Excel(name = "用户ID", width = 15, dictTable = "sys_user", dicText = "realname", dicCode = "username")
    @Dict(dictTable = "sys_user", dicText = "realname", dicCode = "username")
    @ApiModelProperty(value = "用户ID")
    private java.lang.String userId;
	/**课程ID*/
	@Excel(name = "课程ID", width = 15, dictTable = "teaching_course_unit", dicText = "unit_name", dicCode = "id")
    @Dict(dictTable = "teaching_course_unit", dicText = "unit_name", dicCode = "id")
    @ApiModelProperty(value = "课程ID")
    private java.lang.String courseId;
    @Excel(name = "附加作业", width = 15,dictTable = "teaching_additional_work", dicText = "work_name", dicCode = "id")
    @Dict(dictTable = "teaching_additional_work", dicText = "work_name", dicCode = "id")
    @ApiModelProperty(value = "附加作业")
    private java.lang.String additionalId;
	/**作业名*/
	@Excel(name = "作业名", width = 15)
    @ApiModelProperty(value = "作业名")
    private java.lang.String workName;
	/**作业类型*/
	@Excel(name = "作业类型", width = 15, dicCode = "work_type")
    @Dict(dicCode = "work_type")
    @ApiModelProperty(value = "作业类型")
    private java.lang.String workType;
    /**作业状态*/
    @Excel(name = "作业状态", width = 15, dicCode = "work_status")
    @Dict(dicCode = "work_status")
    @ApiModelProperty(value = "作业状态")
    private java.lang.String workStatus;
	/**作文文件*/
	@Excel(name = "作文文件", width = 15)
    @ApiModelProperty(value = "作文文件")
    private java.lang.String workFile;
	/**作业封面*/
	@Excel(name = "作业封面", width = 15)
    @ApiModelProperty(value = "作业封面")
    private java.lang.String workCover;
	/**查看次数*/
	@Excel(name = "查看次数", width = 15)
    @ApiModelProperty(value = "查看次数")
    private java.lang.Integer viewNum;
	/**点赞次数*/
	@Excel(name = "点赞次数", width = 15)
    @ApiModelProperty(value = "点赞次数")
    private java.lang.Integer starNum;
	/**收藏次数*/
	@Excel(name = "收藏次数", width = 15)
    @ApiModelProperty(value = "收藏次数")
    private java.lang.Integer collectNum;
	/**删除标识*/
	@Excel(name = "删除标识", width = 15)
    @ApiModelProperty(value = "删除标识")
    private java.lang.Integer delFlag;
}
