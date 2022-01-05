package org.jeecg.modules.teaching.entity;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import com.fasterxml.jackson.annotation.JsonFormat;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.experimental.Accessors;
import org.jeecg.common.aspect.annotation.Dict;
import org.jeecg.modules.system.aspect.FileUrl;
import org.jeecgframework.poi.excel.annotation.Excel;
import org.springframework.format.annotation.DateTimeFormat;

import java.io.Serializable;
import java.util.Date;

/**
 * @Description: 附加作业
 */
@Data
@TableName("teaching_additional_work")
@Accessors(chain = true)
@EqualsAndHashCode(callSuper = false)
@ApiModel(value="teaching_additional_work对象", description="附加作业")
public class TeachingAdditionalWork implements Serializable {
    private static final long serialVersionUID = 1L;

	/**主键*/
	@TableId(type = IdType.ID_WORKER_STR)
    @ApiModelProperty(value = "主键")
    private String id;
	/**创建人*/
    @ApiModelProperty(value = "创建人")
    private String createBy;
	/**创建日期*/
	@JsonFormat(timezone = "GMT+8",pattern = "yyyy-MM-dd HH:mm:ss")
    @DateTimeFormat(pattern="yyyy-MM-dd HH:mm:ss")
    @ApiModelProperty(value = "创建日期")
    private Date createTime;
	/**更新人*/
    @ApiModelProperty(value = "更新人")
    private String updateBy;
	/**更新日期*/
	@JsonFormat(timezone = "GMT+8",pattern = "yyyy-MM-dd HH:mm:ss")
    @DateTimeFormat(pattern="yyyy-MM-dd HH:mm:ss")
    @ApiModelProperty(value = "更新日期")
    private Date updateTime;
	/**所属部门*/
    @ApiModelProperty(value = "所属部门")
    private String sysOrgCode;
    /**作业类型*/
    @Excel(name = "作业类型", width = 15, dicCode = "work_type")
    @ApiModelProperty(value = "作业类型")
    @Dict(dicCode = "work_type")
    private Integer codeType;
	/**作业名*/
	@Excel(name = "作业名", width = 15)
    @ApiModelProperty(value = "作业名")
    private String workName;
	/**作业描述*/
	@Excel(name = "作业描述", width = 15)
    @ApiModelProperty(value = "作业描述")
    private String workDesc;
	/**作业封面*/
    @FileUrl
	@Excel(name = "作业封面", width = 15)
    @ApiModelProperty(value = "作业封面")
    private String workCover;
	/**作业资料*/
    @FileUrl
    @Excel(name = "作业资料", width = 15)
    @ApiModelProperty(value = "作业资料")
    private String workDocumentUrl;
	/**作业文件*/
    @FileUrl
	@Excel(name = "作业文件", width = 15)
    @ApiModelProperty(value = "作业文件")
    private String workUrl;
	/**分配班级*/
	@Excel(name = "分配班级", width = 15, dictTable = "sys_depart", dicText = "depart_name", dicCode = "id")
	@Dict(dictTable = "sys_depart", dicText = "depart_name", dicCode = "id")
    @ApiModelProperty(value = "分配班级")
    private String workDept;
    /**状态*/
    @Excel(name = "状态", width = 15)
    @ApiModelProperty(value = "状态")
    @Dict(dicCode = "additional_work_status")
    private Integer status;
}
