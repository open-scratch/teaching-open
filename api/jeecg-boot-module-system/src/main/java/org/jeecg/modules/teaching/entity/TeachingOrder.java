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
 * @Description: 订单表
 * @Author: jeecg-boot
 * @Date:   2020-03-08
 * @Version: V1.0
 */
@Data
@TableName("teaching_order")
@Accessors(chain = true)
@EqualsAndHashCode(callSuper = false)
@ApiModel(value="teaching_order对象", description="订单表")
public class TeachingOrder implements Serializable {
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
	@Excel(name = "用户ID", width = 15)
    @ApiModelProperty(value = "用户ID")
    private java.lang.String userId;
	/**订单编号*/
	@Excel(name = "订单编号", width = 15)
    @ApiModelProperty(value = "订单编号")
    private java.lang.String orderNo;
	/**订单金额*/
	@Excel(name = "订单金额", width = 15)
    @ApiModelProperty(value = "订单金额")
    private java.lang.Integer price;
	/**实付金额*/
	@Excel(name = "实付金额", width = 15)
    @ApiModelProperty(value = "实付金额")
    private java.lang.Integer payPrice;
	/**订单状态*/
	@Excel(name = "订单状态", width = 15, dicCode = "order_status")
	@Dict(dicCode = "order_status")
    @ApiModelProperty(value = "订单状态")
    private java.lang.Integer status;
	/**活动ID*/
	@Excel(name = "活动ID", width = 15)
    @ApiModelProperty(value = "活动ID")
    private java.lang.String actionId;
	/**支付方式*/
	@Excel(name = "支付方式", width = 15, dicCode = "pay_method")
	@Dict(dicCode = "pay_method")
    @ApiModelProperty(value = "支付方式")
    private java.lang.Integer method;
	/**投放渠道*/
	@Excel(name = "投放渠道", width = 15)
    @ApiModelProperty(value = "投放渠道")
    private java.lang.String channel;
	/**自定义场景*/
	@Excel(name = "自定义场景", width = 15)
    @ApiModelProperty(value = "自定义场景")
    private java.lang.String scene;
	/**来源用户*/
	@Excel(name = "来源用户", width = 15)
    @ApiModelProperty(value = "来源用户")
    private java.lang.String sourceUser;
	/**备注*/
	@Excel(name = "备注", width = 15)
    @ApiModelProperty(value = "备注")
    private java.lang.String comment;
}
