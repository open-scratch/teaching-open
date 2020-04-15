package org.jeecg.modules.teaching.entity;

import java.io.Serializable;
import java.io.UnsupportedEncodingException;
import java.util.Date;
import java.math.BigDecimal;
import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;
import com.fasterxml.jackson.annotation.JsonFormat;
import org.springframework.format.annotation.DateTimeFormat;
import org.jeecgframework.poi.excel.annotation.Excel;
import org.jeecg.common.aspect.annotation.Dict;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.EqualsAndHashCode;
import lombok.experimental.Accessors;

/**
 * @Description: 营销活动
 * @Author: jeecg-boot
 * @Date:   2020-03-08
 * @Version: V1.0
 */
@Data
@TableName("teaching_activity")
@Accessors(chain = true)
@EqualsAndHashCode(callSuper = false)
@ApiModel(value="teaching_activity对象", description="营销活动")
public class TeachingActivity implements Serializable {
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
	/**活动名称*/
	@Excel(name = "活动名称", width = 15)
    @ApiModelProperty(value = "活动名称")
    private java.lang.String activityName;
	/**活动类型*/
	@Excel(name = "活动类型", width = 15, dicCode = "activity_type")
	@Dict(dicCode = "activity_type")
    @ApiModelProperty(value = "活动类型")
    private java.lang.Integer activityType;
	/**原价*/
	@Excel(name = "原价", width = 15)
    @ApiModelProperty(value = "原价")
    private java.lang.Integer originalPrice;
	/**现价*/
	@Excel(name = "现价", width = 15)
    @ApiModelProperty(value = "现价")
    private java.lang.Integer price;
	/**开始时间*/
	@Excel(name = "开始时间", width = 20, format = "yyyy-MM-dd HH:mm:ss")
	@JsonFormat(timezone = "GMT+8",pattern = "yyyy-MM-dd HH:mm:ss")
    @DateTimeFormat(pattern="yyyy-MM-dd HH:mm:ss")
    @ApiModelProperty(value = "开始时间")
    private java.util.Date startTime;
	/**结束时间*/
	@Excel(name = "结束时间", width = 20, format = "yyyy-MM-dd HH:mm:ss")
	@JsonFormat(timezone = "GMT+8",pattern = "yyyy-MM-dd HH:mm:ss")
    @DateTimeFormat(pattern="yyyy-MM-dd HH:mm:ss")
    @ApiModelProperty(value = "结束时间")
    private java.util.Date endTime;
	/**参数学员上限*/
	@Excel(name = "参数学员上限", width = 15)
    @ApiModelProperty(value = "参数学员上限")
    private java.lang.Integer maxStudent;
	/**绑定课程*/
	@Excel(name = "绑定课程", width = 15)
    @ApiModelProperty(value = "绑定课程")
    private java.lang.String couresId;
}
