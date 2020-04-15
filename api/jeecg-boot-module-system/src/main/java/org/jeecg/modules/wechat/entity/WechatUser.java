package org.jeecg.modules.wechat.entity;

import java.io.Serializable;
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

/**
 * @Description: 微信用户表
 * @Author: jeecg-boot
 * @Date:   2019-12-16
 * @Version: V1.0
 */
@Data
@TableName("wechat_user")
public class WechatUser implements Serializable {
    private static final long serialVersionUID = 1L;
    
	/**主键*/
	@TableId(type = IdType.ID_WORKER_STR)
	private String id;
	/**创建人*/
	@Excel(name = "创建人", width = 15)
	private String createBy;
	/**创建日期*/
	@Excel(name = "创建日期", width = 20, format = "yyyy-MM-dd HH:mm:ss")
	@JsonFormat(timezone = "GMT+8",pattern = "yyyy-MM-dd HH:mm:ss")
    @DateTimeFormat(pattern="yyyy-MM-dd HH:mm:ss")
	private Date createTime;
	/**更新人*/
	@Excel(name = "更新人", width = 15)
	private String updateBy;
	/**更新日期*/
	@Excel(name = "更新日期", width = 20, format = "yyyy-MM-dd HH:mm:ss")
	@JsonFormat(timezone = "GMT+8",pattern = "yyyy-MM-dd HH:mm:ss")
    @DateTimeFormat(pattern="yyyy-MM-dd HH:mm:ss")
	private Date updateTime;
	/**所属部门*/
	@Excel(name = "所属部门", width = 15)
	private String sysOrgCode;
	/**关联用户ID*/
	@Excel(name = "关联用户ID", width = 15)
	private String userId;
	/**openid*/
	@Excel(name = "openid", width = 15)
	private String openId;
	/**unionid*/
	@Excel(name = "unionid", width = 15)
	private String unionId;
	/**微信昵称*/
	@Excel(name = "微信昵称", width = 15)
	private String nickname;
	/**性别*/
	@Excel(name = "性别", width = 15)
	private Integer sex;
	/**城市*/
	@Excel(name = "城市", width = 15)
	private String city;
	/**省份*/
	@Excel(name = "省份", width = 15)
	private String province;
	/**国家*/
	@Excel(name = "国家", width = 15)
	private String county;
	/**头像*/
	@Excel(name = "头像", width = 15)
	private String headimgurl;
	/**二维码场景*/
	@Excel(name = "二维码场景", width = 15)
	private Integer qrScene;
	/**二维码场景*/
	@Excel(name = "二维码场景", width = 15)
	private String qrSceneStr;
	/**组ID*/
	@Excel(name = "组ID", width = 15)
	private Integer groupId;

	/**微信APPID*/
	private String appId;
}
