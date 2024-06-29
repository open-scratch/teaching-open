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
import org.jeecgframework.poi.excel.annotation.Excel;
import org.springframework.format.annotation.DateTimeFormat;

import java.io.Serializable;

/**
 * @Description: 班级每日教学记录
 * @Author: jeecg-boot
 * @Date:   2021-06-25
 * @Version: V1.0
 */
@Data
@TableName("teaching_depart_day_log")
@Accessors(chain = true)
@EqualsAndHashCode(callSuper = false)
@ApiModel(value="teaching_depart_day_log对象", description="班级每日教学记录")
public class TeachingDepartDayLog implements Serializable {
    private static final long serialVersionUID = 1L;

    /**主键*/
    @TableId(type = IdType.ID_WORKER_STR)
    @ApiModelProperty(value = "主键")
    private String id;
	/**班级ID*/
	@Excel(name = "班级ID", width = 15)
    @ApiModelProperty(value = "班级ID")
    private String departId;
	/**班级名*/
	@Excel(name = "班级名", width = 15)
    @ApiModelProperty(value = "班级名")
    private String departName;
	/**开课次数*/
	@Excel(name = "开课次数", width = 15)
    @ApiModelProperty(value = "开课次数")
    private Integer unitOpenCount;
	/**课程作业布置次数*/
	@Excel(name = "课程作业布置次数", width = 15)
    @ApiModelProperty(value = "课程作业布置次数")
    private Integer courseWorkAssignCount;
	/**附加作业布置次数*/
	@Excel(name = "附加作业布置次数", width = 15)
    @ApiModelProperty(value = "附加作业布置次数")
    private Integer additionalWorkAssignCount;
	/**课程作业批改次数*/
	@Excel(name = "课程作业批改次数", width = 15)
    @ApiModelProperty(value = "课程作业批改次数")
    private Integer courseWorkCorrectCount;
	/**附加作业批改次数*/
	@Excel(name = "附加作业批改次数", width = 15)
    @ApiModelProperty(value = "附加作业批改次数")
    private Integer additionalWorkCorrectCount;
	/**课程作业提交次数*/
	@Excel(name = "课程作业提交次数", width = 15)
    @ApiModelProperty(value = "课程作业提交次数")
    private Integer courseWorkSubmitCount;
	/**附加作业提交次数*/
	@Excel(name = "附加作业提交次数", width = 15)
    @ApiModelProperty(value = "附加作业提交次数")
    private Integer additionalWorkSubmitCount;
	/**日期*/
	@JsonFormat(timezone = "GMT+8",pattern = "yyyy-MM-dd")
    @DateTimeFormat(pattern="yyyy-MM-dd")
    @ApiModelProperty(value = "日期")
    private java.util.Date createTime;
}
