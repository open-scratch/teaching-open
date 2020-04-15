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
import org.jeecg.modules.teaching.entity.TeachingStudent;
import org.jeecg.modules.teaching.service.ITeachingStudentService;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import lombok.extern.slf4j.Slf4j;

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
 * @Description: 学生表
 * @Author: jeecg-boot
 * @Date:   2020-03-08
 * @Version: V1.0
 */
@Api(tags="学生表")
@RestController
@RequestMapping("/teaching/teachingStudent")
@Slf4j
public class TeachingStudentController extends JeecgController<TeachingStudent, ITeachingStudentService> {
	@Autowired
	private ITeachingStudentService teachingStudentService;
	
	/**
	 * 分页列表查询
	 *
	 * @param teachingStudent
	 * @param pageNo
	 * @param pageSize
	 * @param req
	 * @return
	 */
	@AutoLog(value = "学生表-分页列表查询")
	@ApiOperation(value="学生表-分页列表查询", notes="学生表-分页列表查询")
	@GetMapping(value = "/list")
	public Result<?> queryPageList(TeachingStudent teachingStudent,
								   @RequestParam(name="pageNo", defaultValue="1") Integer pageNo,
								   @RequestParam(name="pageSize", defaultValue="10") Integer pageSize,
								   HttpServletRequest req) {
		QueryWrapper<TeachingStudent> queryWrapper = QueryGenerator.initQueryWrapper(teachingStudent, req.getParameterMap());
		Page<TeachingStudent> page = new Page<TeachingStudent>(pageNo, pageSize);
		IPage<TeachingStudent> pageList = teachingStudentService.page(page, queryWrapper);
		return Result.ok(pageList);
	}
	
	/**
	 *   添加
	 *
	 * @param teachingStudent
	 * @return
	 */
	@AutoLog(value = "学生表-添加")
	@ApiOperation(value="学生表-添加", notes="学生表-添加")
	@PostMapping(value = "/add")
	public Result<?> add(@RequestBody TeachingStudent teachingStudent) {
		teachingStudentService.save(teachingStudent);
		return Result.ok("添加成功！");
	}
	
	/**
	 *  编辑
	 *
	 * @param teachingStudent
	 * @return
	 */
	@AutoLog(value = "学生表-编辑")
	@ApiOperation(value="学生表-编辑", notes="学生表-编辑")
	@PutMapping(value = "/edit")
	public Result<?> edit(@RequestBody TeachingStudent teachingStudent) {
		teachingStudentService.updateById(teachingStudent);
		return Result.ok("编辑成功!");
	}
	
	/**
	 *   通过id删除
	 *
	 * @param id
	 * @return
	 */
	@AutoLog(value = "学生表-通过id删除")
	@ApiOperation(value="学生表-通过id删除", notes="学生表-通过id删除")
	@DeleteMapping(value = "/delete")
	public Result<?> delete(@RequestParam(name="id",required=true) String id) {
		teachingStudentService.removeById(id);
		return Result.ok("删除成功!");
	}
	
	/**
	 *  批量删除
	 *
	 * @param ids
	 * @return
	 */
	@AutoLog(value = "学生表-批量删除")
	@ApiOperation(value="学生表-批量删除", notes="学生表-批量删除")
	@DeleteMapping(value = "/deleteBatch")
	public Result<?> deleteBatch(@RequestParam(name="ids",required=true) String ids) {
		this.teachingStudentService.removeByIds(Arrays.asList(ids.split(",")));
		return Result.ok("批量删除成功!");
	}
	
	/**
	 * 通过id查询
	 *
	 * @param id
	 * @return
	 */
	@AutoLog(value = "学生表-通过id查询")
	@ApiOperation(value="学生表-通过id查询", notes="学生表-通过id查询")
	@GetMapping(value = "/queryById")
	public Result<?> queryById(@RequestParam(name="id",required=true) String id) {
		TeachingStudent teachingStudent = teachingStudentService.getById(id);
		if(teachingStudent==null) {
			return Result.error("未找到对应数据");
		}
		return Result.ok(teachingStudent);
	}

    /**
    * 导出excel
    *
    * @param request
    * @param teachingStudent
    */
    @RequestMapping(value = "/exportXls")
    public ModelAndView exportXls(HttpServletRequest request, TeachingStudent teachingStudent) {
        return super.exportXls(request, teachingStudent, TeachingStudent.class, "学生表");
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
        return super.importExcel(request, response, TeachingStudent.class);
    }

}
