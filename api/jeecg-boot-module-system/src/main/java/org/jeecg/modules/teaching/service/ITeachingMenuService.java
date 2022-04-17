package org.jeecg.modules.teaching.service;

import com.baomidou.mybatisplus.extension.service.IService;
import org.jeecg.common.exception.JeecgBootException;
import org.jeecg.modules.teaching.entity.TeachingMenu;
import org.jeecg.modules.teaching.model.TreeModel;

import java.util.List;

/**
 * 菜单表 服务类
 */
public interface ITeachingMenuService extends IService<TeachingMenu> {
	
	public List<TreeModel> queryListByParentId(String parentId);
	
	/**真实删除*/
	public void deletePermission(String id) throws JeecgBootException;
	/**逻辑删除*/
	public void deletePermissionLogical(String id) throws JeecgBootException;
	
	public void addPermission(TeachingMenu sysPermission) throws JeecgBootException;
	
	public void editPermission(TeachingMenu sysPermission) throws JeecgBootException;

}
