package org.jeecg.modules.teaching.controller;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import lombok.extern.slf4j.Slf4j;
import org.apache.commons.lang.StringUtils;
import org.apache.poi.ss.formula.functions.T;
import org.apache.shiro.SecurityUtils;
import org.jeecg.common.api.vo.DictResult;
import org.jeecg.common.api.vo.Result;
import org.jeecg.common.aspect.annotation.AutoLog;
import org.jeecg.common.aspect.annotation.PermissionData;
import org.jeecg.common.system.query.QueryGenerator;
import org.jeecg.common.system.vo.LoginUser;
import org.jeecg.common.util.IPUtils;
import org.jeecg.common.util.RedisUtil;
import org.jeecg.common.util.oConvertUtils;
import org.jeecg.modules.common.controller.BaseController;
import org.jeecg.modules.system.service.ISysFileService;
import org.jeecg.modules.system.service.ISysUserService;
import org.jeecg.modules.teaching.entity.TeachingWork;
import org.jeecg.modules.teaching.entity.TeachingWorkComment;
import org.jeecg.modules.teaching.entity.TeachingWorkCorrect;
import org.jeecg.modules.teaching.model.AdditionalWorkModel;
import org.jeecg.modules.teaching.model.StudentWorkModel;
import org.jeecg.modules.teaching.model.WorkCommentModel;
import org.jeecg.modules.teaching.service.ITeachingWorkCommentService;
import org.jeecg.modules.teaching.service.ITeachingWorkCorrectService;
import org.jeecg.modules.teaching.service.ITeachingWorkService;
import org.jeecg.modules.teaching.vo.StudentWorkSendVO;
import org.jeecg.modules.teaching.vo.TeachingWorkPage;
import org.jeecgframework.poi.excel.ExcelImportUtil;
import org.jeecgframework.poi.excel.def.NormalExcelConstants;
import org.jeecgframework.poi.excel.entity.ExportParams;
import org.jeecgframework.poi.excel.entity.ImportParams;
import org.jeecgframework.poi.excel.view.JeecgEntityExcelView;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.*;
import java.util.stream.Collectors;

import static org.jeecg.common.util.oConvertUtils.isNotEmpty;

/**
 * @Description: 作业列表
 * @Author: jeecg-boot
 * @Date:   2020-04-12
 * @Version: V1.0
 */
@Api(tags="作业列表")
@RestController
@RequestMapping("/teaching/teachingWork")
@Slf4j
public class TeachingWorkController extends BaseController {
	@Autowired
	private ITeachingWorkService teachingWorkService;
	@Autowired
	private ITeachingWorkCorrectService teachingWorkCorrectService;
	@Autowired
	private ITeachingWorkCommentService teachingWorkCommentService;
	@Autowired
	private ISysUserService sysUserService;
	@Autowired
	private RedisUtil redisUtil;
	 @Autowired
	 private ISysFileService sysFileService;

	 /**
	  * 我的作业分页列表查询
	  *
	  * @param teachingWork
	  * @param pageNo
	  * @param pageSize
	  * @param req
	  * @return
	  */
	 @ApiOperation(value = "我的作业-分页列表查询", notes = "我的作业-分页列表查询")
	 @GetMapping(value = "/mine")
	 public Result<?> mine(StudentWorkModel teachingWork,
												 @RequestParam(name = "pageNo", defaultValue = "1") Integer pageNo,
												 @RequestParam(name = "pageSize", defaultValue = "999") Integer pageSize,
												 HttpServletRequest req) {
		 teachingWork.setUserId(getCurrentUser().getId());
		 Result<IPage<StudentWorkModel>> result = new Result<IPage<StudentWorkModel>>();
		 QueryWrapper<StudentWorkModel> queryWrapper = QueryGenerator.initQueryWrapper(teachingWork, req.getParameterMap());
//		 Page<TeachingWork> page = new Page<TeachingWork>(pageNo, pageSize);
		 IPage<StudentWorkModel> pageList = teachingWorkService.listWorkModel(new Page<>(pageNo, pageSize), queryWrapper);
		 return Result.ok(pageList);
	 }

	 /**
	  * 我的附加作业
	  * @param departId
	  * @param submit
	  * @param status
	  * @return
	  */
	 @ApiOperation(value = "我的附加作业", notes = "获取我的附加作业")
	 @GetMapping("mineAdditionalWork")
	 public DictResult<List<AdditionalWorkModel>> mineAdditionalWork(
			 @RequestParam(required = false) String departId,
			 @RequestParam(required = false) Boolean submit,
			 @RequestParam(required = false) Integer status) {
		 DictResult<List<AdditionalWorkModel>> result = new DictResult<>();
		 String userId = getCurrentUser().getId();
		 List<AdditionalWorkModel> list = teachingWorkService.userAdditionalWork(userId, departId, submit, status);
		 result.setResult(list);
		 return result;
	 }

	 /**
	  * 提交作业
	  * @param teachingWork
	  * @return
	  */
	 @PostMapping(value = "/submit")
	 public Result<TeachingWork> add(@RequestBody TeachingWork teachingWork) {
		 teachingWork.setUserId(getCurrentUser().getId());
		 Result<TeachingWork> result = new Result<TeachingWork>();
		 try {
			 List<TeachingWork> oldWorks = new ArrayList<>();
			 if (isNotEmpty(teachingWork.getAdditionalId())) {
				 oldWorks = teachingWorkService.getBaseMapper().selectByMap(new HashMap<String, Object>() {{
					 put("user_id", getCurrentUser().getId());
					 put("additional_id", teachingWork.getAdditionalId());
				 }});
			 }else if(isNotEmpty(teachingWork.getCourseId())){
				 oldWorks = teachingWorkService.getBaseMapper().selectByMap(new HashMap<String, Object>() {{
					 put("user_id", getCurrentUser().getId());
					 put("course_id", teachingWork.getCourseId());
				 }});
			 }else{
				 oldWorks = teachingWorkService.getBaseMapper().selectByMap(new HashMap<String, Object>(){{
					 put("work_name", teachingWork.getWorkName());
					 put("user_id", teachingWork.getUserId());
					 put("work_type", teachingWork.getWorkType());
				 }});
			 }
			 if (oldWorks.size() > 0){
				 teachingWork.setId(oldWorks.get(0).getId());
				 teachingWork.setCreateTime(new Date());
				 teachingWork.setUpdateTime(new Date());
				 result.setResult(teachingWork);
				 result.success("更新成功！");
			 }else{
				 result.setResult(teachingWork);
				 result.success("添加成功！");
			 }
			 teachingWorkService.saveOrUpdate(teachingWork);
		 } catch (Exception e) {
			 log.error(e.getMessage(),e);
			 result.error500("系统内部错误");
		 }
		 return result;
	 }

	 @AutoLog("发送作业给其他用户")
	 @ApiOperation(value = "发送作业给其他用户", notes = "发送作业给其他用户")
	 @PostMapping("/sendWork")
	 public Result<TeachingWork> sendWork(@RequestBody StudentWorkSendVO studentWorkSendVO){
		 Result<TeachingWork> result = new Result<>();
		 int count = teachingWorkService.sendWork(studentWorkSendVO);
		 result.setSuccess(true);
		 result.setMessage(String.format("发送成功，共%d个用户", count));
		 return result;
	 }

	/**
	 * 分页列表查询
	 *
	 * @param studentWorkModel
	 * @param pageNo
	 * @param pageSize
	 * @param req
	 * @return
	 */
	@AutoLog(value = "作业列表-分页列表查询")
	@ApiOperation(value="作业列表-分页列表查询", notes="作业列表-分页列表查询")
	@GetMapping(value = "/list")
	@PermissionData(pageComponent = "teaching/TeachingWorkList")
	public Result<?> queryPageList(StudentWorkModel studentWorkModel,
								   @RequestParam(name="pageNo", defaultValue="1") Integer pageNo,
								   @RequestParam(name="pageSize", defaultValue="10") Integer pageSize,
								   HttpServletRequest req) {
//		QueryWrapper<TeachingWork> queryWrapper = QueryGenerator.initQueryWrapper(teachingWork, req.getParameterMap());
		Page<TeachingWork> page = new Page<TeachingWork>(pageNo, pageSize);
		QueryWrapper<StudentWorkModel> queryWrapper = new QueryWrapper<>();
		queryWrapper.eq(null != studentWorkModel.getUsername(), "teaching_work.create_by", studentWorkModel.getUsername())
				.like(null != studentWorkModel.getWorkName(), "work_name", studentWorkModel.getWorkName())
				.like(null != studentWorkModel.getRealname(), "realname", studentWorkModel.getRealname());
		QueryGenerator.installMplus(queryWrapper, studentWorkModel, req.getParameterMap());
		//获取时间参数
		Map<String, String[]> param = req.getParameterMap();
		String updateTime_begin =  param.containsKey("teaching_work.updateTime_begin")?param.get("teaching_work.updateTime_begin")[0]:null;
		String updateTime_end = param.containsKey("teaching_work.updateTime_end")?param.get("teaching_work.updateTime_end")[0]:null;
		queryWrapper.ge(null != updateTime_begin, "teaching_work.create_time", updateTime_begin).
				le(null != updateTime_end, "teaching_work.create_time",updateTime_end);
		IPage<StudentWorkModel> pageList = teachingWorkService.listWorkModel(new Page<>(pageNo, pageSize), queryWrapper);
		return Result.ok(pageList);
	}

	@GetMapping("greatWork")
	public Result<?> greatWorkList(@RequestParam(name="pageNo", defaultValue="1") Integer pageNo,
								   @RequestParam(name="pageSize", defaultValue="10") Integer pageSize){
		IPage<StudentWorkModel> pageList = teachingWorkService.listWorkModel(new Page<>(pageNo, pageSize), new QueryWrapper<StudentWorkModel>()
				.eq("teaching_work.work_status", 2));
		return Result.ok(pageList);
	}

	 @ApiOperation(value = "点赞作品")
	 @GetMapping("/starWork")
	 public Result starWork(@RequestParam(name = "workId") String workId, HttpServletRequest request) {
		 Result<TeachingWork> result = new Result<TeachingWork>();
		 TeachingWork teachingWork = teachingWorkService.getById(workId);
		 if (teachingWork == null) {
			 result.error500("未找到对作业");
		 } else {
			 String ip = IPUtils.getIpAddr(request);
			 if (redisUtil.get("starWork:" + workId + ip) == null) {
				 if (Objects.nonNull(teachingWork.getStarNum())) {
					 teachingWork.setStarNum(teachingWork.getStarNum() + 1);
				 } else {
					 teachingWork.setStarNum(1);
				 }
				 teachingWorkService.updateById(teachingWork);
				 redisUtil.set("starWork:" + workId + ip, "1", 3600*24);
				 result.setMessage("点赞成功");
				 result.setSuccess(true);
			 } else {
				 result.setMessage("已经点赞过了");
				 result.setSuccess(true);
			 }
		 }
		 return result;
	 }

	 //劲作排行 TODO 缓存1
	 @ApiOperation(value = "劲作排行榜")
	 @GetMapping(value = "/leaderboard")
	 public Result<?> listLeaderboard(@RequestParam(name = "pageNo", defaultValue = "1") Integer pageNo,
									  @RequestParam(name = "pageSize", defaultValue = "10") Integer pageSize,
									  @RequestParam(required = false, defaultValue = "view") String orderBy, //排序
									  HttpServletRequest request) {
		 QueryWrapper<StudentWorkModel> queryWrapper = new QueryWrapper<StudentWorkModel>();
		 queryWrapper.ge("teaching_work.work_status", 3);
		 switch (orderBy){
			 case "view":
				 queryWrapper.orderByDesc("teaching_work.view_num");
			 	break;
			 case "time":
				queryWrapper.orderByDesc("teaching_work.create_time");
				break;
			 case "star":
				 queryWrapper.orderByDesc("teaching_work.star_num");
				 break;
		 }

		 IPage<StudentWorkModel> pageList = teachingWorkService.listWorkModel(new Page<>(pageNo, pageSize), queryWrapper);
		 return Result.ok(pageList);
	 }

	 @GetMapping("/studentWorkInfo")
	 public DictResult<StudentWorkModel> studentWorkInfo(@RequestParam(name = "workId") String workId){
		 DictResult<StudentWorkModel> result = new DictResult<StudentWorkModel>();
		 StudentWorkModel teachingWork = teachingWorkService.studentWorkInfo(workId);
		 if (teachingWork == null) {
			 result.error500("未找到对作业");
		 } else {
		 	TeachingWork work = new TeachingWork();
		 	work.setId(teachingWork.getId());
		 	work.setViewNum(teachingWork.getViewNum() + 1);
		 	teachingWorkService.updateById(work);
			 result.setResult(teachingWork);
			 result.setSuccess(true);
		 }
		 return result;
	 }

	 /**
	  * 获取作品评论
	  * @param workId
	  * @param page
	  * @param pageSize
	  * @return
	  */
	 @GetMapping("getWorkComments")
	 public DictResult<?> getWorkComment(@RequestParam String workId,
									 @RequestParam(defaultValue = "1") Integer page,
									 @RequestParam(defaultValue = "10") Integer pageSize){
		 DictResult<List<WorkCommentModel>> result = new DictResult<>();
		 List<WorkCommentModel> comments = teachingWorkCommentService.getWorkComments(workId, page, pageSize);
		 result.setResult(comments);
		 return result;
	 }

	 @PostMapping(value = "/saveComment")
	 public Result saveComment(@RequestBody TeachingWorkComment comment, HttpServletRequest request) {
		 String ip = IPUtils.getIpAddr(request);
		 String userId = getCurrentUser().getId();
		 TeachingWorkComment c = new TeachingWorkComment();
		 c.setWorkId(comment.getWorkId());
		 c.setComment(comment.getComment());
		 c.setUserId(userId);
		 teachingWorkCommentService.save(c);
		 return Result.ok("评论成功");
	 }
	
	/**
	 *   添加
	 *
	 * @param teachingWorkPage
	 * @return
	 */
	@AutoLog(value = "作业列表-添加")
	@ApiOperation(value="作业列表-添加", notes="作业列表-添加")
	@PostMapping(value = "/add")
	public Result<?> add(@RequestBody TeachingWorkPage teachingWorkPage) {
		TeachingWork teachingWork = new TeachingWork();
		BeanUtils.copyProperties(teachingWorkPage, teachingWork);
		teachingWorkService.saveMain(teachingWork, teachingWorkPage.getTeachingWorkCorrectList(),teachingWorkPage.getTeachingWorkCommentList());
		return Result.ok(teachingWork);
	}
	
	/**
	 *  编辑
	 *
	 * @param teachingWorkPage
	 * @return
	 */
	@AutoLog(value = "作业列表-编辑")
	@ApiOperation(value="作业列表-编辑", notes="作业列表-编辑")
	@PutMapping(value = "/edit")
	public Result<?> edit(@RequestBody TeachingWorkPage teachingWorkPage) {
		TeachingWork teachingWork = new TeachingWork();
		BeanUtils.copyProperties(teachingWorkPage, teachingWork);
		TeachingWork teachingWorkEntity = teachingWorkService.getById(teachingWork.getId());
		if(teachingWorkEntity==null) {
			return Result.error("未找到对应数据");
		}
		teachingWorkService.updateMain(teachingWork, teachingWorkPage.getTeachingWorkCorrectList(),teachingWorkPage.getTeachingWorkCommentList());
		return Result.ok("编辑成功!");
	}
	
	/**
	 *   通过id删除
	 *
	 * @param id
	 * @return
	 */
	@AutoLog(value = "作业列表-通过id删除")
	@ApiOperation(value="作业列表-通过id删除", notes="作业列表-通过id删除")
	@DeleteMapping(value = "/delete")
	public Result<?> delete(@RequestParam(name="id",required=true) String id) {
		TeachingWork work = this.teachingWorkService.getById(id);
		if (work != null){
			sysFileService.deleteWithFile(work.getWorkFile());
			sysFileService.deleteWithFile(work.getWorkCover());
			teachingWorkService.delMain(id);
		}
		return Result.ok("删除成功!");
	}
	
	/**
	 *  批量删除
	 *
	 * @param ids
	 * @return
	 */
	@AutoLog(value = "作业列表-批量删除")
	@ApiOperation(value="作业列表-批量删除", notes="作业列表-批量删除")
	@DeleteMapping(value = "/deleteBatch")
	public Result<?> deleteBatch(@RequestParam(name="ids",required=true) String ids) {
		List<String> idList = Arrays.asList(ids.split(","));
		List<TeachingWork> workList = this.teachingWorkService.list(new QueryWrapper<TeachingWork>().in("id", idList));
		for (TeachingWork work: workList){
			sysFileService.deleteWithFile(work.getWorkFile());
			sysFileService.deleteWithFile(work.getWorkCover());
		}
		this.teachingWorkService.delBatchMain(idList);
		return Result.ok("批量删除成功！");
	}
	
	/**
	 * 通过id查询
	 *
	 * @param id
	 * @return
	 */
	@AutoLog(value = "作业列表-通过id查询")
	@ApiOperation(value="作业列表-通过id查询", notes="作业列表-通过id查询")
	@GetMapping(value = "/queryById")
	public Result<?> queryById(@RequestParam(name="id",required=true) String id) {
		TeachingWork teachingWork = teachingWorkService.getById(id);
		if(teachingWork==null) {
			return Result.error("未找到对应数据");
		}
		return Result.ok(teachingWork);

	}
	
	/**
	 * 通过id查询
	 *
	 * @param id
	 * @return
	 */
	@AutoLog(value = "作业批改集合-通过id查询")
	@ApiOperation(value="作业批改集合-通过id查询", notes="作业批改-通过id查询")
	@GetMapping(value = "/queryTeachingWorkCorrectByMainId")
	public Result<?> queryTeachingWorkCorrectListByMainId(@RequestParam(name="id",required=true) String id) {
		List<TeachingWorkCorrect> teachingWorkCorrectList = teachingWorkCorrectService.selectByMainId(id);
		return Result.ok(teachingWorkCorrectList);
	}
	/**
	 * 通过id查询
	 *
	 * @param id
	 * @return
	 */
	@AutoLog(value = "作品评论集合-通过id查询")
	@ApiOperation(value="作品评论集合-通过id查询", notes="作品评论-通过id查询")
	@GetMapping(value = "/queryTeachingWorkCommentByMainId")
	public Result<?> queryTeachingWorkCommentListByMainId(@RequestParam(name="id",required=true) String id) {
		List<TeachingWorkComment> teachingWorkCommentList = teachingWorkCommentService.selectByMainId(id);
		return Result.ok(teachingWorkCommentList);
	}

    /**
    * 导出excel
    *
    * @param request
    * @param teachingWork
    */
    @RequestMapping(value = "/exportXls")
    public ModelAndView exportXls(HttpServletRequest request, TeachingWork teachingWork) {
      // Step.1 组装查询条件查询数据
      QueryWrapper<TeachingWork> queryWrapper = QueryGenerator.initQueryWrapper(teachingWork, request.getParameterMap());
      LoginUser sysUser = (LoginUser) SecurityUtils.getSubject().getPrincipal();

      //Step.2 获取导出数据
      List<TeachingWork> queryList = teachingWorkService.list(queryWrapper);
      // 过滤选中数据
      String selections = request.getParameter("selections");
      List<TeachingWork> teachingWorkList = new ArrayList<TeachingWork>();
      if(oConvertUtils.isEmpty(selections)) {
          teachingWorkList = queryList;
      }else {
          List<String> selectionList = Arrays.asList(selections.split(","));
          teachingWorkList = queryList.stream().filter(item -> selectionList.contains(item.getId())).collect(Collectors.toList());
      }

      // Step.3 组装pageList
      List<TeachingWorkPage> pageList = new ArrayList<TeachingWorkPage>();
      for (TeachingWork main : teachingWorkList) {
          TeachingWorkPage vo = new TeachingWorkPage();
          BeanUtils.copyProperties(main, vo);
          List<TeachingWorkCorrect> teachingWorkCorrectList = teachingWorkCorrectService.selectByMainId(main.getId());
          vo.setTeachingWorkCorrectList(teachingWorkCorrectList);
          List<TeachingWorkComment> teachingWorkCommentList = teachingWorkCommentService.selectByMainId(main.getId());
          vo.setTeachingWorkCommentList(teachingWorkCommentList);
          pageList.add(vo);
      }

      // Step.4 AutoPoi 导出Excel
      ModelAndView mv = new ModelAndView(new JeecgEntityExcelView());
      mv.addObject(NormalExcelConstants.FILE_NAME, "作业列表列表");
      mv.addObject(NormalExcelConstants.CLASS, TeachingWorkPage.class);
      mv.addObject(NormalExcelConstants.PARAMS, new ExportParams("作业列表数据", "导出人:"+sysUser.getRealname(), "作业列表"));
      mv.addObject(NormalExcelConstants.DATA_LIST, pageList);
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
              List<TeachingWorkPage> list = ExcelImportUtil.importExcel(file.getInputStream(), TeachingWorkPage.class, params);
              for (TeachingWorkPage page : list) {
                  TeachingWork po = new TeachingWork();
                  BeanUtils.copyProperties(page, po);
                  teachingWorkService.saveMain(po, page.getTeachingWorkCorrectList(),page.getTeachingWorkCommentList());
              }
              return Result.ok("文件导入成功！数据行数:" + list.size());
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
