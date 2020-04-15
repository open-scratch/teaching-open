package org.jeecg.modules.wechat.controller;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.conditions.update.UpdateWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import lombok.extern.slf4j.Slf4j;
import org.jeecg.common.api.vo.Result;
import org.jeecg.common.system.query.QueryGenerator;
import org.jeecg.common.system.vo.LoginUser;
import org.jeecg.common.util.oConvertUtils;
import org.jeecg.modules.common.controller.BaseController;
import org.jeecg.modules.wechat.entity.WechatUser;
import org.jeecg.modules.wechat.mapper.WechatUserMapper;
import org.jeecg.modules.wechat.service.IWechatUserService;
import org.jeecgframework.poi.excel.ExcelImportUtil;
import org.jeecgframework.poi.excel.def.NormalExcelConstants;
import org.jeecgframework.poi.excel.entity.ExportParams;
import org.jeecgframework.poi.excel.entity.ImportParams;
import org.jeecgframework.poi.excel.view.JeecgEntityExcelView;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.Arrays;
import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;

 /**
 * @Description: 微信用户表
 * @Author: jeecg-boot
 * @Date:   2019-12-16
 * @Version: V1.0
 */
@RestController
@RequestMapping("/wechat/userWechat")
@Slf4j
public class WechatUserController extends BaseController {
	@Autowired
	private IWechatUserService wechatUserService;

	@Autowired
	private WechatUserMapper wechatUserMapper;
	
	/**
	  * 分页列表查询
	 * @param wechatUser
	 * @param pageNo
	 * @param pageSize
	 * @param req
	 * @return
	 */
	@GetMapping(value = "/list")
	public Result<IPage<WechatUser>> queryPageList(WechatUser wechatUser,
												   @RequestParam(name="pageNo", defaultValue="1") Integer pageNo,
												   @RequestParam(name="pageSize", defaultValue="10") Integer pageSize,
												   HttpServletRequest req) {
		Result<IPage<WechatUser>> result = new Result<IPage<WechatUser>>();
		QueryWrapper<WechatUser> queryWrapper = QueryGenerator.initQueryWrapper(wechatUser, req.getParameterMap());
		Page<WechatUser> page = new Page<WechatUser>(pageNo, pageSize);
		IPage<WechatUser> pageList = wechatUserService.page(page, queryWrapper);
		result.setSuccess(true);
		result.setResult(pageList);
		return result;
	}
	
	/**
	  *   添加
	 * @param wechatUser
	 * @return
	 */
	@PostMapping(value = "/add")
	public Result<WechatUser> add(@RequestBody WechatUser wechatUser) {
		Result<WechatUser> result = new Result<WechatUser>();
		try {
			wechatUserService.save(wechatUser);
			result.success("添加成功！");
		} catch (Exception e) {
			log.error(e.getMessage(),e);
			result.error500("操作失败");
		}
		return result;
	}
	
	/**
	  *  编辑
	 * @param wechatUser
	 * @return
	 */
	@PutMapping(value = "/edit")
	public Result<WechatUser> edit(@RequestBody WechatUser wechatUser) {
		Result<WechatUser> result = new Result<WechatUser>();
		WechatUser wechatUserEntity = wechatUserService.getById(wechatUser.getId());
		if(wechatUserEntity ==null) {
			result.error500("未找到对应实体");
		}else {
			boolean ok = wechatUserService.updateById(wechatUser);
			//TODO 返回false说明什么？
			if(ok) {
				result.success("修改成功!");
			}
		}
		
		return result;
	}
	
	/**
	  *   通过id删除
	 * @param id
	 * @return
	 */
	@DeleteMapping(value = "/delete")
	public Result<?> delete(@RequestParam(name="id",required=true) String id) {
		try {
			wechatUserService.removeById(id);
		} catch (Exception e) {
			log.error("删除失败",e.getMessage());
			return Result.error("删除失败!");
		}
		return Result.ok("删除成功!");
	}
	
	/**
	  *  批量删除
	 * @param ids
	 * @return
	 */
	@DeleteMapping(value = "/deleteBatch")
	public Result<WechatUser> deleteBatch(@RequestParam(name="ids",required=true) String ids) {
		Result<WechatUser> result = new Result<WechatUser>();
		if(ids==null || "".equals(ids.trim())) {
			result.error500("参数不识别！");
		}else {
			this.wechatUserService.removeByIds(Arrays.asList(ids.split(",")));
			result.success("删除成功!");
		}
		return result;
	}
	
	/**
	  * 通过id查询
	 * @param id
	 * @return
	 */
	@GetMapping(value = "/queryById")
	public Result<WechatUser> queryById(@RequestParam(name="id",required=true) String id) {
		Result<WechatUser> result = new Result<WechatUser>();
		WechatUser wechatUser = wechatUserService.getById(id);
		if(wechatUser ==null) {
			result.error500("未找到对应实体");
		}else {
			result.setResult(wechatUser);
			result.setSuccess(true);
		}
		return result;
	}

	@GetMapping("/userWechatInfo")
	public Result<WechatUser> getUserWecahtInfo(){
		Result<WechatUser> result = new Result();
		LoginUser user = getCurrentUser();
		QueryWrapper<WechatUser> wrapper = new QueryWrapper<>();
		wrapper.eq("user_id", user.getId());
		wrapper.last("limit 1");
		WechatUser userWechat = wechatUserService.getOne(wrapper);
		result.setResult(userWechat);
		return result;
	}

	 /**
	  * 绑定微信账户
	  * @param session
	  * @return
	  */
	 @RequestMapping("bindAccount")
	 public Result bindAccount(HttpSession session){
		 Result result = new Result();
		 String openId = (String) session.getAttribute("openId");
		 if (openId == null){
			 result.setSuccess(false);
			 result.setMessage("未取得微信授权");
			 return result;
		 }
		 LoginUser user = getCurrentUser();
		 if (user == null){
			 result.setSuccess(false);
			 result.setMessage("未登录");
			 return result;
		 }
		 WechatUser userWechat = wechatUserMapper.getByOpenId(openId);
		 if (userWechat != null && userWechat.getUserId() != null){
			 result.setSuccess(false);
			 result.setMessage("该账户已绑定微信");
			 return result;
		 }
		 userWechat = new WechatUser();
		 userWechat.setUserId(user.getId());
		 userWechat.setOpenId(openId);
		 int flag = wechatUserMapper.update(userWechat, new UpdateWrapper<WechatUser>().lambda().eq(WechatUser::getOpenId, openId));
		 result.setCode(flag);
		 result.setSuccess(true);
		 result.setMessage("绑定微信成功");
		 return result;
	 }

	 /**
	  * 解绑微信，不传入userId时则解绑当前用户
	  * @param userId
	  * @return
	  */
	@GetMapping("unbindWechat")
	public Result unbindWechat(@RequestParam(required = false) String userId){
		Result<WechatUser> result = new Result();
		if (userId == null){
			LoginUser user = getCurrentUser();
			userId = user.getId();
		}
		QueryWrapper<WechatUser> wrapper = new QueryWrapper<>();
		wrapper.eq("user_id", userId);
		wrapper.last("limit 1");
		Boolean flag = wechatUserService.remove(wrapper);
		result.setSuccess(true);
		return result;
	}


  /**
      * 导出excel
   *
   * @param request
   */
  @RequestMapping(value = "/exportXls")
  public ModelAndView exportXls(HttpServletRequest request, WechatUser wechatUser) {
      // Step.1 组装查询条件查询数据
      QueryWrapper<WechatUser> queryWrapper = QueryGenerator.initQueryWrapper(wechatUser, request.getParameterMap());
      List<WechatUser> pageList = wechatUserService.list(queryWrapper);
      // Step.2 AutoPoi 导出Excel
      ModelAndView mv = new ModelAndView(new JeecgEntityExcelView());
      // 过滤选中数据
      String selections = request.getParameter("selections");
      if(oConvertUtils.isEmpty(selections)) {
    	  mv.addObject(NormalExcelConstants.DATA_LIST, pageList);
      }else {
    	  List<String> selectionList = Arrays.asList(selections.split(","));
    	  List<WechatUser> exportList = pageList.stream().filter(item -> selectionList.contains(item.getId())).collect(Collectors.toList());
    	  mv.addObject(NormalExcelConstants.DATA_LIST, exportList);
      }
      //导出文件名称
      mv.addObject(NormalExcelConstants.FILE_NAME, "微信用户表列表");
      mv.addObject(NormalExcelConstants.CLASS, WechatUser.class);
      mv.addObject(NormalExcelConstants.PARAMS, new ExportParams("微信用户表列表数据", "导出人:Jeecg", "导出信息"));
      return mv;
  }

  /**
      * 通过excel导入数据
   *
   * @param request
   * @param response
   * @return
   */
  @RequestMapping(value = "/importExcel", method = RequestMethod.POST)
  public Result<?> importExcel(HttpServletRequest request, HttpServletResponse response) {
      MultipartHttpServletRequest multipartRequest = (MultipartHttpServletRequest) request;
      Map<String, MultipartFile> fileMap = multipartRequest.getFileMap();
      for (Map.Entry<String, MultipartFile> entity : fileMap.entrySet()) {
          MultipartFile file = entity.getValue();// 获取上传文件对象
          ImportParams params = new ImportParams();
          params.setTitleRows(2);
          params.setHeadRows(1);
          params.setNeedSave(true);
          try {
              List<WechatUser> listWechatUsers = ExcelImportUtil.importExcel(file.getInputStream(), WechatUser.class, params);
              wechatUserService.saveBatch(listWechatUsers);
              return Result.ok("文件导入成功！数据行数:" + listWechatUsers.size());
          } catch (Exception e) {
              log.error(e.getMessage(),e);
              return Result.error("文件导入失败:"+e.getMessage());
          } finally {
              try {
                  file.getInputStream().close();
              } catch (IOException e) {
                  e.printStackTrace();
              }
          }
      }
      return Result.ok("文件导入失败！");
  }

}
