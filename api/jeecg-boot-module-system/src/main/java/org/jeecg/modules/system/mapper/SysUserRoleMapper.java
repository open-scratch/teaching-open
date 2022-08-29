package org.jeecg.modules.system.mapper;

import java.util.List;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.jeecg.modules.system.entity.SysUserRole;
import com.baomidou.mybatisplus.core.mapper.BaseMapper;

/**
 * <p>
 * 用户角色表 Mapper 接口
 * </p>
 *
 * @Author scott
 * @since 2018-12-21
 */
public interface SysUserRoleMapper extends BaseMapper<SysUserRole> {

	@Select("select role_code from sys_role where id in (select role_id from sys_user_role where user_id = (select id from sys_user where username=#{username}))")
	List<String> getRoleByUserName(@Param("username") String username);

	@Select("select role_code from sys_role where id in (select role_id from sys_user_role where user_id = #{userId})")
	List<String> getRoleByUserId(@Param("userId") String userId);

	@Select("select id from sys_role where id in (select role_id from sys_user_role where user_id = (select id from sys_user where username=#{username}))")
	List<String> getRoleIdByUserName(@Param("username") String username);

	@Select("select id from sys_role where id in (select role_id from sys_user_role where user_id = #{userId})")
	List<String> getRoleIdByUserId(@Param("userId") String userId);

	@Select("select max(role_level) from sys_role where id in (select role_id from sys_user_role where user_id = (select id from sys_user where username=#{username}))")
	Integer getUserRoleLevelByUsername(@Param("username") String username);

	@Select("select max(role_level) from sys_role where id in (select role_id from sys_user_role where user_id = #{userId})")
	Integer getUserRoleLevel(@Param("userId") String userId);
}
