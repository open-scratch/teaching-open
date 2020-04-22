package org.jeecg.modules.teaching.controller;

import java.util.Arrays;
import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.jeecg.common.api.vo.Result;
import org.jeecg.common.system.query.QueryGenerator;
import org.jeecg.common.util.oConvertUtils;
import org.jeecg.modules.teaching.entity.TeachingCourseDept;
import org.jeecg.modules.teaching.model.CourseDeptModel;
import org.jeecg.modules.teaching.service.ITeachingCourseDeptService;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import lombok.extern.slf4j.Slf4j;

import org.jeecg.modules.teaching.vo.DepartCourseVO;
import org.jeecgframework.poi.excel.ExcelImportUtil;
import org.jeecgframework.poi.excel.def.NormalExcelConstants;
import org.jeecgframework.poi.excel.entity.ExportParams;
import org.jeecgframework.poi.excel.entity.ImportParams;
import org.jeecgframework.poi.excel.view.JeecgEntityExcelView;
import org.jeecg.common.system.base.controller.JeecgController;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;
import com.alibaba.fastjson.JSON;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.jeecg.common.aspect.annotation.AutoLog;

 /**
 * @Description: 班级课程表
 * @Author: jeecg-boot
 * @Date:   2020-04-14
 * @Version: V1.0
 */
@Api(tags="班级课程表")
@RestController
@RequestMapping("/teaching/teachingCourseDept")
@Slf4j
public class TeachingCourseDeptController extends JeecgController<TeachingCourseDept, ITeachingCourseDeptService> {
	@Autowired
	private ITeachingCourseDeptService teachingCourseDeptService;
	
	/**
	 * 分页列表查询
	 *
	 * @param teachingCourseDept
	 * @param pageNo
	 * @param pageSize
	 * @param req
	 * @return
	 */
	@AutoLog(value = "班级课程表-分页列表查询")
	@ApiOperation(value="班级课程表-分页列表查询", notes="班级课程表-分页列表查询")
	@GetMapping(value = "/list")
	public Result<?> queryPageList(CourseDeptModel teachingCourseDept,
														@RequestParam(name="pageNo", defaultValue="1") Integer pageNo,
														@RequestParam(name="pageSize", defaultValue="10") Integer pageSize,
														HttpServletRequest req) {
		QueryWrapper<CourseDeptModel> queryWrapper = QueryGenerator.initQueryWrapper(teachingCourseDept, req.getParameterMap());
		System.out.println(queryWrapper.getCustomSqlSegment());
		Page<CourseDeptModel> page = new Page<CourseDeptModel>(pageNo, pageSize);
		IPage<CourseDeptModel> pageList = teachingCourseDeptService.list(page, queryWrapper);
		return Result.ok(pageList);
	}

	 @PostMapping(value = "/addOrUpdate")
	 public Result<TeachingCourseDept> addOrUpdate(@RequestBody DepartCourseVO departCourseVO) {
		 Result<TeachingCourseDept> result = new Result<TeachingCourseDept>();
		 try {
			 String sysDepId = departCourseVO.getDeptId();
			 for(String courseId:departCourseVO.getCourseIdList()) {
				 TeachingCourseDept teachingCourseDept = new TeachingCourseDept();
				 teachingCourseDept.setCourseId(courseId);
				 teachingCourseDept.setDeptId(sysDepId);
				 QueryWrapper<TeachingCourseDept> queryWrapper = new QueryWrapper<TeachingCourseDept>();
				 queryWrapper.eq("dept_id", sysDepId).eq("course_id",courseId);
				 TeachingCourseDept one = teachingCourseDeptService.getOne(queryWrapper);
				 if(one==null){
					 teachingCourseDeptService.save(teachingCourseDept);
				 }else{
					 teachingCourseDept.setId(one.getId());
					 teachingCourseDeptService.updateById(teachingCourseDept);
				 }
			 }
			 result.success("操作成功！");
		 } catch (Exception e) {
			 log.error(e.getMessage(),e);
			 result.error500("操作失败");
		 }
		 return result;
	 }

	/**
	 *   添加
	 *
	 * @param teachingCourseDept
	 * @return
	 */
	@AutoLog(value = "班级课程表-添加")
	@ApiOperation(value="班级课程表-添加", notes="班级课程表-添加")
	@PostMapping(value = "/add")
	public Result<?> add(@RequestBody TeachingCourseDept teachingCourseDept) {
		teachingCourseDeptService.save(teachingCourseDept);
		return Result.ok("添加成功！");
	}
	
	/**
	 *  编辑
	 *
	 * @param teachingCourseDept
	 * @return
	 */
	@AutoLog(value = "班级课程表-编辑")
	@ApiOperation(value="班级课程表-编辑", notes="班级课程表-编辑")
	@PutMapping(value = "/edit")
	public Result<?> edit(@RequestBody TeachingCourseDept teachingCourseDept) {
		teachingCourseDeptService.updateById(teachingCourseDept);
		return Result.ok("编辑成功!");
	}
	
	/**
	 *   通过id删除
	 *
	 * @param id
	 * @return
	 */
	@AutoLog(value = "班级课程表-通过id删除")
	@ApiOperation(value="班级课程表-通过id删除", notes="班级课程表-通过id删除")
	@DeleteMapping(value = "/delete")
	public Result<?> delete(@RequestParam(name="id",required=true) String id) {
		teachingCourseDeptService.removeById(id);
		return Result.ok("删除成功!");
	}
	
	/**
	 *  批量删除
	 *
	 * @param ids
	 * @return
	 */
	@AutoLog(value = "班级课程表-批量删除")
	@ApiOperation(value="班级课程表-批量删除", notes="班级课程表-批量删除")
	@DeleteMapping(value = "/deleteBatch")
	public Result<?> deleteBatch(@RequestParam(name="ids",required=true) String ids) {
		this.teachingCourseDeptService.removeByIds(Arrays.asList(ids.split(",")));
		return Result.ok("批量删除成功!");
	}
	
	/**
	 * 通过id查询
	 *
	 * @param id
	 * @return
	 */
	@AutoLog(value = "班级课程表-通过id查询")
	@ApiOperation(value="班级课程表-通过id查询", notes="班级课程表-通过id查询")
	@GetMapping(value = "/queryById")
	public Result<?> queryById(@RequestParam(name="id",required=true) String id) {
		TeachingCourseDept teachingCourseDept = teachingCourseDeptService.getById(id);
		if(teachingCourseDept==null) {
			return Result.error("未找到对应数据");
		}
		return Result.ok(teachingCourseDept);
	}

    /**
    * 导出excel
    *
    * @param request
    * @param teachingCourseDept
    */
    @RequestMapping(value = "/exportXls")
    public ModelAndView exportXls(HttpServletRequest request, TeachingCourseDept teachingCourseDept) {
        return super.exportXls(request, teachingCourseDept, TeachingCourseDept.class, "班级课程表");
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
        return super.importExcel(request, response, TeachingCourseDept.class);
    }

}
