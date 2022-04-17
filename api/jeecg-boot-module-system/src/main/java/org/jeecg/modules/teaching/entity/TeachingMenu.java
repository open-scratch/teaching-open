package org.jeecg.modules.teaching.entity;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.experimental.Accessors;
import org.jeecg.common.aspect.annotation.Dict;

import java.io.Serializable;
import java.util.Date;


@Data
@EqualsAndHashCode(callSuper = false)
@Accessors(chain = true)
public class TeachingMenu implements Serializable {

	private static final long serialVersionUID = 1L;

	/**
	 * id
	 */
	@TableId(type = IdType.ID_WORKER_STR)
	private String id;

	/**
	 * 父id
	 */
	private String parentId;

	/**
	 * 菜单名称
	 */
	private String name;

	/**
	 * 菜单图标
	 */
	private String icon;

	/**
	 * 路径
	 */
	private String url;

	/**
	 * 菜单排序
	 */
	private Double sortNo;

	/**
	 * 类型（0：一级菜单；1：子菜单）
	 */
	@Dict(dicCode = "menu_type")
	private Integer menuType;

	/**
	 * 是否叶子节点: 1:是  0:不是
	 */
	@TableField(value="is_leaf")
	private boolean leaf;
	
	/**
	 * 是否路由菜单: 0:不是  1:是（默认值1）
	 */
	@TableField(value="is_route")
	private boolean route;

	/**
	 * 描述
	 */
	private String description;

	/**
	 * 创建人
	 */
	private String createBy;

	/**
	 * 删除状态 0正常 1已删除
	 */
	private Integer delFlag;
	
	/**
	 * 是否隐藏路由菜单: 0否,1是（默认值0）
	 */
	private boolean hidden;

	/**
	 * 是否需要登录 0不需要
	 */
	private Integer needLogin;

	/**
	 * 创建时间
	 */
	private Date createTime;

	/**
	 * 更新人
	 */
	private String updateBy;

	/**
	 * 更新时间
	 */
	private Date updateTime;

    /** 外链菜单打开方式 0/内部打开 1/外部打开 */
    private boolean internalOrExternal;

    public TeachingMenu() {
    	
    }
    public TeachingMenu(boolean index) {
    	if(index) {
    		this.id = "9502685863ab87f0ad1134142788a385";
        	this.name="首页";
        	this.url="/dashboard/analysis";
        	this.icon="home";
        	this.menuType=0;
        	this.sortNo=0.0;
        	this.delFlag=0;
        	this.route=true;
        	this.leaf=true;
        	this.hidden=false;
    	}
    }
}
