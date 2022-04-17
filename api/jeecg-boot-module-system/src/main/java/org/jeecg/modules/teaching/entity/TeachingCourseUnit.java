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
 * @Description: 课程单元
 * @Author: jeecg-boot
 * @Date:   2020-04-14
 * @Version: V1.0
 */
@Data
@TableName("teaching_course_unit")
@Accessors(chain = true)
@EqualsAndHashCode(callSuper = false)
@ApiModel(value="teaching_course_unit对象", description="课程单元")
public class TeachingCourseUnit implements Serializable {
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
	/**单元名称*/
	@Excel(name = "单元名称", width = 15)
    @ApiModelProperty(value = "单元名称")
    private java.lang.String unitName;
	/**单元简介*/
	@Excel(name = "单元简介", width = 15)
    @ApiModelProperty(value = "单元简介")
    private java.lang.String unitIntro;
    @Excel(name = "单元封面", width = 15)
    @ApiModelProperty(value = "单元封面")
    @FileUrl
    private java.lang.String unitCover;
	/**课程外键ID*/
	@Excel(name = "课程外键ID", width = 15)
    @ApiModelProperty(value = "课程外键ID")
    private java.lang.String courseId;
	/**课程视频*/
	@Excel(name = "课程视频", width = 15)
    @ApiModelProperty(value = "课程视频")
    @FileUrl
    private java.lang.String courseVideo;
    //视频源
    private java.lang.Integer courseVideoSource;
    /**课程案例*/
    @Excel(name = "课程案例", width = 15)
    @ApiModelProperty(value = "课程案例")
    @FileUrl
    private java.lang.String courseCase;
	/**课程资料，多个文件逗号分割*/
	@Excel(name = "课程资料", width = 15)
    @ApiModelProperty(value = "课程资料")
    @FileUrl
    private java.lang.String coursePpt;
	/**作业类型*/
	@Excel(name = "作业类型", width = 15, dicCode = "work_type")
	@Dict(dicCode = "work_type")
    @ApiModelProperty(value = "作业类型")
    private java.lang.Integer courseWorkType;
	/**课程作业*/
	@Excel(name = "课程作业", width = 15)
    @ApiModelProperty(value = "课程作业")
    @FileUrl
    private java.lang.String courseWork;
	/**课程作业答案*/
	@Excel(name = "课程作业答案", width = 15)
    @ApiModelProperty(value = "课程作业答案")
    @FileUrl
    private java.lang.String courseWorkAnswer;
	/**教案*/
	@Excel(name = "教案", width = 15)
    @ApiModelProperty(value = "教案")
    @FileUrl
    private java.lang.String coursePlan;
	/**地图X坐标*/
	@Excel(name = "地图X坐标", width = 15)
    @ApiModelProperty(value = "地图X坐标")
    private java.lang.Integer mapX;
	/**地图Y坐标*/
	@Excel(name = "地图Y坐标", width = 15)
    @ApiModelProperty(value = "地图Y坐标")
    private java.lang.Integer mapY;

    /**排序*/
    private java.lang.Integer orderNum;
}
