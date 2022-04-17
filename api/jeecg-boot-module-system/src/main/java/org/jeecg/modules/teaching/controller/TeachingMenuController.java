package org.jeecg.modules.teaching.controller;

import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONObject;
import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import lombok.extern.slf4j.Slf4j;
import org.jeecg.common.api.vo.Result;
import org.jeecg.common.constant.CommonConstant;
import org.jeecg.common.util.oConvertUtils;
import org.jeecg.modules.teaching.entity.TeachingMenu;
import org.jeecg.modules.teaching.model.TeachingMenuTree;
import org.jeecg.modules.teaching.model.TreeModel;
import org.jeecg.modules.teaching.service.ITeachingMenuService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.*;

/**
 * 菜单控制器
 */
@Slf4j
@RestController
@RequestMapping("/teaching/menu")
public class TeachingMenuController {

	@Autowired
	private ITeachingMenuService teachingMenuService;

	/**
	 * 获取前端菜单
	 * @return
	 */
	@GetMapping("getUserMenu")
	public Result<?> getUserMenu(){
		Result<JSONArray> result = new Result<JSONArray>();
		List<TeachingMenu> metaList = teachingMenuService.list(new QueryWrapper<TeachingMenu>()
				.eq("hidden", 0)
				.orderByAsc("sort_no"));
		JSONArray menujsonArray = new JSONArray();
		this.getPermissionJsonArray(menujsonArray, metaList, null);
		result.setResult(menujsonArray);
		result.success("查询成功");
		return result;
	}
	

	/**
	 * 加载数据节点
	 * 
	 * @return
	 */
	@RequestMapping(value = "/list", method = RequestMethod.GET)
	public Result<List<TeachingMenuTree>> list() {
        long start = System.currentTimeMillis();
		Result<List<TeachingMenuTree>> result = new Result<>();
		try {
			LambdaQueryWrapper<TeachingMenu> query = new LambdaQueryWrapper<TeachingMenu>();
			query.eq(TeachingMenu::getDelFlag, CommonConstant.DEL_FLAG_0);
			query.orderByAsc(TeachingMenu::getSortNo);
			List<TeachingMenu> list = teachingMenuService.list(query);
			List<TeachingMenuTree> treeList = new ArrayList<>();
			getTreeList(treeList, list, null);
			result.setResult(treeList);
			result.setSuccess(true);
            log.info("======获取全部菜单数据=====耗时:" + (System.currentTimeMillis() - start) + "毫秒");
		} catch (Exception e) {
			log.error(e.getMessage(), e);
		}
		return result;
	}

	/**
	 * 系统菜单列表(一级菜单)
	 *
	 * @return
	 */
	@RequestMapping(value = "/getSystemMenuList", method = RequestMethod.GET)
	public Result<List<TeachingMenuTree>> getSystemMenuList() {
        long start = System.currentTimeMillis();
		Result<List<TeachingMenuTree>> result = new Result<>();
		try {
			LambdaQueryWrapper<TeachingMenu> query = new LambdaQueryWrapper<TeachingMenu>();
			query.eq(TeachingMenu::getMenuType,CommonConstant.MENU_TYPE_0);
			query.eq(TeachingMenu::getDelFlag, CommonConstant.DEL_FLAG_0);
			query.orderByAsc(TeachingMenu::getSortNo);
			List<TeachingMenu> list = teachingMenuService.list(query);
			List<TeachingMenuTree> sysPermissionTreeList = new ArrayList<TeachingMenuTree>();
			for(TeachingMenu sysPermission : list){
				TeachingMenuTree sysPermissionTree = new TeachingMenuTree(sysPermission);
				sysPermissionTreeList.add(sysPermissionTree);
			}
			result.setResult(sysPermissionTreeList);
			result.setSuccess(true);
		} catch (Exception e) {
			log.error(e.getMessage(), e);
		}
        log.info("======获取一级菜单数据=====耗时:" + (System.currentTimeMillis() - start) + "毫秒");
		return result;
	}

	/**
	 * 查询子菜单
	 * @param parentId
	 * @return
	 */
	@RequestMapping(value = "/getSystemSubmenu", method = RequestMethod.GET)
	public Result<List<TeachingMenuTree>> getSystemSubmenu(@RequestParam("parentId") String parentId){
		Result<List<TeachingMenuTree>> result = new Result<>();
		try{
			LambdaQueryWrapper<TeachingMenu> query = new LambdaQueryWrapper<TeachingMenu>();
			query.eq(TeachingMenu::getParentId,parentId);
			query.eq(TeachingMenu::getDelFlag, CommonConstant.DEL_FLAG_0);
			query.orderByAsc(TeachingMenu::getSortNo);
			List<TeachingMenu> list = teachingMenuService.list(query);
			List<TeachingMenuTree> sysPermissionTreeList = new ArrayList<TeachingMenuTree>();
			for(TeachingMenu sysPermission : list){
				TeachingMenuTree sysPermissionTree = new TeachingMenuTree(sysPermission);
				sysPermissionTreeList.add(sysPermissionTree);
			}
			result.setResult(sysPermissionTreeList);
			result.setSuccess(true);
		}catch (Exception e){
			log.error(e.getMessage(), e);
		}
		return result;
	}

	/**
	 * 查询子菜单
	 *
	 * @param parentIds 父ID（多个采用半角逗号分割）
	 * @return 返回 key-value 的 Map
	 */
	@GetMapping("/getSystemSubmenuBatch")
	public Result getSystemSubmenuBatch(@RequestParam("parentIds") String parentIds) {
		try {
			LambdaQueryWrapper<TeachingMenu> query = new LambdaQueryWrapper<>();
			List<String> parentIdList = Arrays.asList(parentIds.split(","));
			query.in(TeachingMenu::getParentId, parentIdList);
			query.eq(TeachingMenu::getDelFlag, CommonConstant.DEL_FLAG_0);
			query.orderByAsc(TeachingMenu::getSortNo);
			List<TeachingMenu> list = teachingMenuService.list(query);
			Map<String, List<TeachingMenuTree>> listMap = new HashMap<>();
			for (TeachingMenu item : list) {
				String pid = item.getParentId();
				if (parentIdList.contains(pid)) {
					List<TeachingMenuTree> mapList = listMap.get(pid);
					if (mapList == null) {
						mapList = new ArrayList<>();
					}
					mapList.add(new TeachingMenuTree(item));
					listMap.put(pid, mapList);
				}
			}
			return Result.ok(listMap);
		} catch (Exception e) {
			log.error(e.getMessage(), e);
			return Result.error("批量查询子菜单失败：" + e.getMessage());
		}
	}


	/**
	  * 添加菜单
	 * @param permission
	 * @return
	 */
	@RequestMapping(value = "/add", method = RequestMethod.POST)
	public Result<TeachingMenu> add(@RequestBody TeachingMenu permission) {
		Result<TeachingMenu> result = new Result<TeachingMenu>();
		try {
//			permission = PermissionDataUtil.intelligentProcessData(permission);
			teachingMenuService.addPermission(permission);
			result.success("添加成功！");
		} catch (Exception e) {
			log.error(e.getMessage(), e);
			result.error500("操作失败");
		}
		return result;
	}

	/**
	  * 编辑菜单
	 * @param permission
	 * @return
	 */
	@RequestMapping(value = "/edit", method = { RequestMethod.PUT, RequestMethod.POST })
	public Result<TeachingMenu> edit(@RequestBody TeachingMenu permission) {
		Result<TeachingMenu> result = new Result<>();
		try {
//			permission = PermissionDataUtil.intelligentProcessData(permission);
			teachingMenuService.editPermission(permission);
			result.success("修改成功！");
		} catch (Exception e) {
			log.error(e.getMessage(), e);
			result.error500("操作失败");
		}
		return result;
	}

	/**
	  * 删除菜单
	 * @param id
	 * @return
	 */
	@RequestMapping(value = "/delete", method = RequestMethod.DELETE)
	public Result<TeachingMenu> delete(@RequestParam(name = "id", required = true) String id) {
		Result<TeachingMenu> result = new Result<>();
		try {
			teachingMenuService.deletePermission(id);
			result.success("删除成功!");
		} catch (Exception e) {
			log.error(e.getMessage(), e);
			result.error500(e.getMessage());
		}
		return result;
	}

	/**
	  * 批量删除菜单
	 * @param ids
	 * @return
	 */
	@RequestMapping(value = "/deleteBatch", method = RequestMethod.DELETE)
	public Result<TeachingMenu> deleteBatch(@RequestParam(name = "ids", required = true) String ids) {
		Result<TeachingMenu> result = new Result<>();
		try {
            String[] arr = ids.split(",");
			for (String id : arr) {
				if (oConvertUtils.isNotEmpty(id)) {
					teachingMenuService.deletePermission(id);
				}
			}
			result.success("删除成功!");
		} catch (Exception e) {
			log.error(e.getMessage(), e);
			result.error500("删除成功!");
		}
		return result;
	}

	/**
	 * 获取全部的权限树
	 * 
	 * @return
	 */
	@RequestMapping(value = "/queryTreeList", method = RequestMethod.GET)
	public Result<Map<String, Object>> queryTreeList() {
		Result<Map<String, Object>> result = new Result<>();
		// 全部权限ids
		List<String> ids = new ArrayList<>();
		try {
			LambdaQueryWrapper<TeachingMenu> query = new LambdaQueryWrapper<TeachingMenu>();
			query.eq(TeachingMenu::getDelFlag, CommonConstant.DEL_FLAG_0);
			query.orderByAsc(TeachingMenu::getSortNo);
			List<TeachingMenu> list = teachingMenuService.list(query);
			for (TeachingMenu sysPer : list) {
				ids.add(sysPer.getId());
			}
			List<TreeModel> treeList = new ArrayList<>();
			getTreeModelList(treeList, list, null);

			Map<String, Object> resMap = new HashMap<String, Object>();
			resMap.put("treeList", treeList); // 全部树节点数据
			resMap.put("ids", ids);// 全部树ids
			result.setResult(resMap);
			result.setSuccess(true);
		} catch (Exception e) {
			log.error(e.getMessage(), e);
		}
		return result;
	}

	/**
	 * 异步加载数据节点
	 * 
	 * @return
	 */
	@RequestMapping(value = "/queryListAsync", method = RequestMethod.GET)
	public Result<List<TreeModel>> queryAsync(@RequestParam(name = "pid", required = false) String parentId) {
		Result<List<TreeModel>> result = new Result<>();
		try {
			List<TreeModel> list = teachingMenuService.queryListByParentId(parentId);
			if (list == null || list.size() <= 0) {
				result.error500("未找到角色信息");
			} else {
				result.setResult(list);
				result.setSuccess(true);
			}
		} catch (Exception e) {
			log.error(e.getMessage(), e);
		}

		return result;
	}

	private void getTreeList(List<TeachingMenuTree> treeList, List<TeachingMenu> metaList, TeachingMenuTree temp) {
		for (TeachingMenu permission : metaList) {
			String tempPid = permission.getParentId();
			TeachingMenuTree tree = new TeachingMenuTree(permission);
			if (temp == null && oConvertUtils.isEmpty(tempPid)) {
				treeList.add(tree);
				if (!tree.getIsLeaf()) {
					getTreeList(treeList, metaList, tree);
				}
			} else if (temp != null && tempPid != null && tempPid.equals(temp.getId())) {
				temp.getChildren().add(tree);
				if (!tree.getIsLeaf()) {
					getTreeList(treeList, metaList, tree);
				}
			}

		}
	}

	private void getTreeModelList(List<TreeModel> treeList, List<TeachingMenu> metaList, TreeModel temp) {
		for (TeachingMenu permission : metaList) {
			String tempPid = permission.getParentId();
			TreeModel tree = new TreeModel(permission);
			if (temp == null && oConvertUtils.isEmpty(tempPid)) {
				treeList.add(tree);
				if (!tree.getIsLeaf()) {
					getTreeModelList(treeList, metaList, tree);
				}
			} else if (temp != null && tempPid != null && tempPid.equals(temp.getKey())) {
				temp.getChildren().add(tree);
				if (!tree.getIsLeaf()) {
					getTreeModelList(treeList, metaList, tree);
				}
			}

		}
	}


	/**
	  *  获取菜单JSON数组
	 * @param jsonArray
	 * @param metaList
	 * @param parentJson
	 */
	private void getPermissionJsonArray(JSONArray jsonArray, List<TeachingMenu> metaList, JSONObject parentJson) {
		for (TeachingMenu permission : metaList) {
			if (permission.getMenuType() == null) {
				continue;
			}
			String tempPid = permission.getParentId();
			JSONObject json = getPermissionJsonObject(permission);
			if(json==null) {
				continue;
			}
			if (parentJson == null && oConvertUtils.isEmpty(tempPid)) {
				jsonArray.add(json);
				if (!permission.isLeaf()) {
					getPermissionJsonArray(jsonArray, metaList, json);
				}
			} else if (parentJson != null && oConvertUtils.isNotEmpty(tempPid) && tempPid.equals(parentJson.getString("id"))) {
				// 类型( 0：一级菜单 1：子菜单 2：按钮 )
				if (permission.getMenuType().equals(CommonConstant.MENU_TYPE_1) || permission.getMenuType().equals(CommonConstant.MENU_TYPE_0)) {
					if (parentJson.containsKey("children")) {
						parentJson.getJSONArray("children").add(json);
					} else {
						JSONArray children = new JSONArray();
						children.add(json);
						parentJson.put("children", children);
					}
					if (!permission.isLeaf()) {
						getPermissionJsonArray(jsonArray, metaList, json);
					}
				}
			}
		}
	}

	/**
	 * 根据菜单配置生成路由json
	 * @param permission
	 * @return
	 */
		private JSONObject getPermissionJsonObject(TeachingMenu permission) {
		JSONObject json = new JSONObject();
		// 类型(0：一级菜单 1：子菜单 2：按钮)
		if (permission.getMenuType().equals(CommonConstant.MENU_TYPE_0) || permission.getMenuType().equals(CommonConstant.MENU_TYPE_1)) {
			json.put("id", permission.getId());
			json.put("route", permission.isRoute());// 表示生成路由
			json.put("title", permission.getName());
			json.put("url", permission.getUrl());
			json.put("needLogin", permission.getNeedLogin());
			//外链菜单打开方式
			json.put("internalOrExternal", permission.isInternalOrExternal());
			if (oConvertUtils.isNotEmpty(permission.getIcon())) {
				json.put("icon", permission.getIcon());
			}
		}
		return json;
	}
}
