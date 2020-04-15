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
import org.jeecg.modules.teaching.entity.TeachingActivity;
import org.jeecg.modules.teaching.service.ITeachingActivityService;

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
 * @Description: 营销活动
 * @Author: jeecg-boot
 * @Date:   2020-03-08
 * @Version: V1.0
 */
@Api(tags="营销活动")
@RestController
@RequestMapping("/teaching/teachingActivity")
@Slf4j
public class TeachingActivityController extends JeecgController<TeachingActivity, ITeachingActivityService> {
	@Autowired
	private ITeachingActivityService teachingActivityService;
	
	/**
	 * 分页列表查询
	 *
	 * @param teachingActivity
	 * @param pageNo
	 * @param pageSize
	 * @param req
	 * @return
	 */
	@AutoLog(value = "营销活动-分页列表查询")
	@ApiOperation(value="营销活动-分页列表查询", notes="营销活动-分页列表查询")
	@GetMapping(value = "/list")
	public Result<?> queryPageList(TeachingActivity teachingActivity,
								   @RequestParam(name="pageNo", defaultValue="1") Integer pageNo,
								   @RequestParam(name="pageSize", defaultValue="10") Integer pageSize,
								   HttpServletRequest req) {
		QueryWrapper<TeachingActivity> queryWrapper = QueryGenerator.initQueryWrapper(teachingActivity, req.getParameterMap());
		Page<TeachingActivity> page = new Page<TeachingActivity>(pageNo, pageSize);
		IPage<TeachingActivity> pageList = teachingActivityService.page(page, queryWrapper);
		return Result.ok(pageList);
	}
	
	/**
	 *   添加
	 *
	 * @param teachingActivity
	 * @return
	 */
	@AutoLog(value = "营销活动-添加")
	@ApiOperation(value="营销活动-添加", notes="营销活动-添加")
	@PostMapping(value = "/add")
	public Result<?> add(@RequestBody TeachingActivity teachingActivity) {
		teachingActivityService.save(teachingActivity);
		return Result.ok("添加成功！");
	}
	
	/**
	 *  编辑
	 *
	 * @param teachingActivity
	 * @return
	 */
	@AutoLog(value = "营销活动-编辑")
	@ApiOperation(value="营销活动-编辑", notes="营销活动-编辑")
	@PutMapping(value = "/edit")
	public Result<?> edit(@RequestBody TeachingActivity teachingActivity) {
		teachingActivityService.updateById(teachingActivity);
		return Result.ok("编辑成功!");
	}
	
	/**
	 *   通过id删除
	 *
	 * @param id
	 * @return
	 */
	@AutoLog(value = "营销活动-通过id删除")
	@ApiOperation(value="营销活动-通过id删除", notes="营销活动-通过id删除")
	@DeleteMapping(value = "/delete")
	public Result<?> delete(@RequestParam(name="id",required=true) String id) {
		teachingActivityService.removeById(id);
		return Result.ok("删除成功!");
	}
	
	/**
	 *  批量删除
	 *
	 * @param ids
	 * @return
	 */
	@AutoLog(value = "营销活动-批量删除")
	@ApiOperation(value="营销活动-批量删除", notes="营销活动-批量删除")
	@DeleteMapping(value = "/deleteBatch")
	public Result<?> deleteBatch(@RequestParam(name="ids",required=true) String ids) {
		this.teachingActivityService.removeByIds(Arrays.asList(ids.split(",")));
		return Result.ok("批量删除成功!");
	}
	
	/**
	 * 通过id查询
	 *
	 * @param id
	 * @return
	 */
	@AutoLog(value = "营销活动-通过id查询")
	@ApiOperation(value="营销活动-通过id查询", notes="营销活动-通过id查询")
	@GetMapping(value = "/queryById")
	public Result<?> queryById(@RequestParam(name="id",required=true) String id) {
		TeachingActivity teachingActivity = teachingActivityService.getById(id);
		if(teachingActivity==null) {
			return Result.error("未找到对应数据");
		}
		return Result.ok(teachingActivity);
	}

    /**
    * 导出excel
    *
    * @param request
    * @param teachingActivity
    */
    @RequestMapping(value = "/exportXls")
    public ModelAndView exportXls(HttpServletRequest request, TeachingActivity teachingActivity) {
        return super.exportXls(request, teachingActivity, TeachingActivity.class, "营销活动");
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
        return super.importExcel(request, response, TeachingActivity.class);
    }

}
