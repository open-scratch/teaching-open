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
 * @Description: 课程
 * @Author: jeecg-boot
 * @Date:   2020-04-14
 * @Version: V1.0
 */
@Data
@TableName("teaching_course")
@Accessors(chain = true)
@EqualsAndHashCode(callSuper = false)
@ApiModel(value="teaching_course对象", description="课程")
public class TeachingCourse implements Serializable {
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
	/**删除标志*/
	@Excel(name = "删除标志", width = 15)
    @ApiModelProperty(value = "删除标志")
    private java.lang.Integer delFlag;
	/**是否共享*/
	@Excel(name = "是否共享", width = 15)
	@ApiModelProperty(value = "是否共享")
	@Dict(dicCode = "yn")
	private java.lang.Boolean isShared;
	/**课程名*/
	@Excel(name = "课程名", width = 15)
    @ApiModelProperty(value = "课程名")
    private java.lang.String courseName;
	/**课程介绍*/
	@Excel(name = "课程介绍", width = 15)
    @ApiModelProperty(value = "课程介绍")
    private java.lang.String courseDesc;
	/**课程图标*/
	@Excel(name = "课程图标", width = 15)
    @ApiModelProperty(value = "课程图标")
	@FileUrl
    private java.lang.String courseIcon;
	/**课程封面*/
	@Excel(name = "课程封面", width = 15)
    @ApiModelProperty(value = "课程封面")
	@FileUrl
    private java.lang.String courseCover;

	/**展示类型*/
	private java.lang.Integer showType;
	/**课程地图*/
	@Excel(name = "课程地图", width = 15)
    @ApiModelProperty(value = "课程地图")
	@FileUrl
    private java.lang.String courseMap;

	/**排序*/
	private java.lang.Integer orderNum;
}
