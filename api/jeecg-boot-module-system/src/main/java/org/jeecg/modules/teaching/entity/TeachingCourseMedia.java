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
import lombok.EqualsAndHashCode;
import lombok.experimental.Accessors;

/**
 * @Description: 课程资源库
 * @Author: jeecg-boot
 * @Date:   2020-04-14
 * @Version: V1.0
 */
@Data
@TableName("teaching_course_media")
@Accessors(chain = true)
@EqualsAndHashCode(callSuper = false)
@ApiModel(value="teaching_course_media对象", description="课程资源库")
public class TeachingCourseMedia implements Serializable {
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
	/**删除标识*/
	@Excel(name = "删除标识", width = 15)
    @ApiModelProperty(value = "删除标识")
    private java.lang.Integer delFlag;
	/**资源名*/
	@Excel(name = "资源名", width = 15)
    @ApiModelProperty(value = "资源名")
    private java.lang.String mediaName;
	/**资源类型*/
	@Excel(name = "资源类型", width = 15, dicCode = "course_media_type")
	@Dict(dicCode = "course_media_type")
    @ApiModelProperty(value = "资源类型")
    private java.lang.Integer mediaType;
	/**资源地址*/
	@Excel(name = "资源地址", width = 15)
    @ApiModelProperty(value = "资源地址")
    @FileUrl
    private java.lang.String mediaPath;
}
