package org.jeecg.modules.system.controller;

import java.util.Arrays;
import java.util.HashMap;
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
import org.jeecg.modules.common.util.QiniuUtil;
import org.jeecg.modules.system.entity.SysFile;
import org.jeecg.modules.system.service.ISysFileService;

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
 * @Description: 文件管理
 * @Author: jeecg-boot
 * @Date:   2020-04-11
 * @Version: V1.0
 */
@Api(tags="文件管理")
@RestController
@RequestMapping("/system/sysFile")
@Slf4j
public class SysFileController extends JeecgController<SysFile, ISysFileService> {
	@Autowired
	private ISysFileService sysFileService;

	/**
	 * 分页列表查询
	 *
	 * @param sysFile
	 * @param pageNo
	 * @param pageSize
	 * @param req
	 * @return
	 */
	@AutoLog(value = "文件管理-分页列表查询")
	@ApiOperation(value="文件管理-分页列表查询", notes="文件管理-分页列表查询")
	@GetMapping(value = "/list")
	public Result<?> queryPageList(SysFile sysFile,
								   @RequestParam(name="pageNo", defaultValue="1") Integer pageNo,
								   @RequestParam(name="pageSize", defaultValue="10") Integer pageSize,
								   HttpServletRequest req) {
		QueryWrapper<SysFile> queryWrapper = QueryGenerator.initQueryWrapper(sysFile, req.getParameterMap());
		Page<SysFile> page = new Page<SysFile>(pageNo, pageSize);
		IPage<SysFile> pageList = sysFileService.page(page, queryWrapper);
		return Result.ok(pageList);
	}
	
	/**
	 *   添加
	 *
	 * @param sysFile
	 * @return
	 */
	@AutoLog(value = "文件管理-添加")
	@ApiOperation(value="文件管理-添加", notes="文件管理-添加")
	@PostMapping(value = "/add")
	public Result<?> add(@RequestBody SysFile sysFile) {
		sysFileService.save(sysFile);
		return Result.ok(sysFile);
	}
	
	/**
	 *  编辑
	 *
	 * @param sysFile
	 * @return
	 */
	@AutoLog(value = "文件管理-编辑")
	@ApiOperation(value="文件管理-编辑", notes="文件管理-编辑")
	@PutMapping(value = "/edit")
	public Result<?> edit(@RequestBody SysFile sysFile) {
		sysFileService.updateById(sysFile);
		return Result.ok("编辑成功!");
	}
	
	/**
	 *   通过id删除
	 *
	 * @param id
	 * @return
	 */
	@AutoLog(value = "文件管理-通过id删除")
	@ApiOperation(value="文件管理-通过id删除", notes="文件管理-通过id删除")
	@DeleteMapping(value = "/delete")
	public Result<?> delete(@RequestParam(name="id",required=true) String id) {
		sysFileService.deleteWithFile(id);
		return Result.ok("删除成功!");
	}

	 /**
	  *   通过filePath删除
	  *
	  * @param filePath
	  * @return
	  */
	 @AutoLog(value = "文件管理-通过filePath删除")
	 @ApiOperation(value="文件管理-通过filePath删除", notes="文件管理-通过filePath删除")
	 @DeleteMapping(value = "/deleteByPath")
	 public Result<?> deleteByPath(@RequestParam(name="filePath",required=true) String filePath) {
		 SysFile sysFile = sysFileService.getOne(new QueryWrapper<SysFile>().eq("file_path", filePath));
		 if (sysFile != null){
			 sysFileService.deleteWithFile(sysFile.getId());
		 }
		 return Result.ok("删除成功!");
	 }
	
	/**
	 *  批量删除
	 *
	 * @param ids
	 * @return
	 */
	@AutoLog(value = "文件管理-批量删除")
	@ApiOperation(value="文件管理-批量删除", notes="文件管理-批量删除")
	@DeleteMapping(value = "/deleteBatch")
	public Result<?> deleteBatch(@RequestParam(name="ids",required=true) String ids) {
		List<String> idList = Arrays.asList(ids.split(","));
		for (String id: idList){
			sysFileService.deleteWithFile(id);
		}
		return Result.ok("批量删除成功!");
	}
	
	/**
	 * 通过id查询
	 *
	 * @param id
	 * @return
	 */
	@AutoLog(value = "文件管理-通过id查询")
	@ApiOperation(value="文件管理-通过id查询", notes="文件管理-通过id查询")
	@GetMapping(value = "/queryById")
	public Result<?> queryById(@RequestParam(name="id",required=true) String id) {
		SysFile sysFile = sysFileService.getById(id);
		if(sysFile==null) {
			return Result.error("未找到对应数据");
		}
		return Result.ok(sysFile);
	}

    /**
    * 导出excel
    *
    * @param request
    * @param sysFile
    */
    @RequestMapping(value = "/exportXls")
    public ModelAndView exportXls(HttpServletRequest request, SysFile sysFile) {
        return super.exportXls(request, sysFile, SysFile.class, "文件管理");
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
        return super.importExcel(request, response, SysFile.class);
    }

}
