package org.jeecg.modules.system.entity;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.Data;
import org.jeecgframework.poi.excel.annotation.Excel;

import java.io.Serializable;

/**
 * @Description: 租户配置
 * @Author: jeecg-boot
 * @Date:   2020-12-25
 * @Version: V1.0
 */
@ApiModel(value="sys_config对象", description="")
@Data
@TableName("sys_config")
public class SysConfig implements Serializable {
    private static final long serialVersionUID = 1L;

	/**ID*/
	@TableId(type = IdType.ID_WORKER_STR)
	@ApiModelProperty(value = "ID")
	private String id;
	/**配置属性*/
	@Excel(name = "配置属性", width = 15)
	@ApiModelProperty(value = "配置属性")
	private String configKey;
	/**配置值*/
	@Excel(name = "配置值", width = 15)
	@ApiModelProperty(value = "配置值")
	private String configValue;
	/**是否生效*/
	@Excel(name = "是否生效", width = 15)
	@ApiModelProperty(value = "是否生效")
	private Integer configEnabled;
	/**备注*/
	@Excel(name = "备注", width = 15)
	@ApiModelProperty(value = "备注")
	private String comment;
}
