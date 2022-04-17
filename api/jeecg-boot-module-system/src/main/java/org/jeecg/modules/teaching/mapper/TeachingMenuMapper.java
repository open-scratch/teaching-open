package org.jeecg.modules.teaching.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Update;
import org.jeecg.modules.teaching.model.TreeModel;
import org.jeecg.modules.teaching.entity.TeachingMenu;

import java.util.List;

/**
 * 菜单 Mapper 接口
 */
public interface TeachingMenuMapper extends BaseMapper<TeachingMenu> {
	/**
	   * 通过父菜单ID查询子菜单
	 * @param parentId
	 * @return
	 */
	public List<TreeModel> queryListByParentId(@Param("parentId") String parentId);

	
	/**
	 *   修改菜单状态字段： 是否子节点
	 */
	@Update("update teaching_menu set is_leaf=#{leaf} where id = #{id}")
	public int setMenuLeaf(@Param("id") String id,@Param("leaf") int leaf);
}
