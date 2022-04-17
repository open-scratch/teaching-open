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
import org.jeecgframework.poi.excel.annotation.Excel;
import org.springframework.format.annotation.DateTimeFormat;

import java.io.Serializable;
import java.util.Date;

/**
 * @Description: Scratch素材库
 * @Author: jeecg-boot
 * @Date:   2021-09-18
 * @Version: V1.0
 */
@Data
@TableName("teaching_scratch_assets")
@Accessors(chain = true)
@EqualsAndHashCode(callSuper = false)
@ApiModel(value="teaching_scratch_assets对象", description="Scratch素材库")
public class TeachingScratchAssets implements Serializable {
    private static final long serialVersionUID = 1L;

	/**id*/
	@TableId(type = IdType.ID_WORKER_STR)
    @ApiModelProperty(value = "id")
    private String id;
	/**素材类型 1背景 2声音 3造型 4角色*/
	@Excel(name = "素材类型 1背景 2声音 3造型 4角色", width = 15)
    @ApiModelProperty(value = "素材类型 1背景 2声音 3造型 4角色")
    private Integer assetType;
	/**冗余 素材名*/
	@Excel(name = "冗余 素材名", width = 15)
    @ApiModelProperty(value = "冗余 素材名")
    private String assetName;
	/**素材json数据*/
	@Excel(name = "素材json数据", width = 15)
    @ApiModelProperty(value = "素材json数据")
    private String assetData;
	/**冗余 素材md5*/
	@Excel(name = "冗余 素材md5", width = 15)
    @ApiModelProperty(value = "冗余 素材md5")
    private String md5Ext;
	/**标签*/
	@Excel(name = "标签", width = 15, dicCode = "scratch_asset_tags")
    @ApiModelProperty(value = "标签")
    private String tags;
	/**创建人*/
    @ApiModelProperty(value = "创建人")
    private String createBy;
	/**创建时间*/
    @Excel(name = "创建时间", width = 15, format = "yyyy-MM-dd HH:mm:ss")
	@JsonFormat(timezone = "GMT+8",pattern = "yyyy-MM-dd HH:mm:ss")
    @DateTimeFormat(pattern="yyyy-MM-dd HH:mm:ss")
    @ApiModelProperty(value = "创建时间")
    private Date createTime;
	/**修改人*/
    @ApiModelProperty(value = "修改人")
    private String updateBy;
	/**修改时间*/
	@Excel(name = "修改时间", width = 15, format = "yyyy-MM-dd HH:mm:ss")
	@JsonFormat(timezone = "GMT+8",pattern = "yyyy-MM-dd HH:mm:ss")
    @DateTimeFormat(pattern="yyyy-MM-dd HH:mm:ss")
    @ApiModelProperty(value = "修改时间")
    private Date udpateTime;
	/**删除状态*/
	@Excel(name = "删除状态", width = 15)
    @ApiModelProperty(value = "删除状态")
    private Integer delFlag;
}
