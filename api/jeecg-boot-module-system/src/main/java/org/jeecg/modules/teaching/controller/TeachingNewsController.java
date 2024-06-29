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
import org.jeecg.modules.teaching.entity.TeachingNews;
import org.jeecg.modules.teaching.service.ITeachingNewsService;

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
 * @Description: 资讯
 * @Author: jeecg-boot
 * @Date:   2024-06-19
 * @Version: V1.0
 */
@Api(tags="资讯")
@RestController
@RequestMapping("/teaching/teachingNews")
@Slf4j
public class TeachingNewsController extends JeecgController<TeachingNews, ITeachingNewsService> {
	@Autowired
	private ITeachingNewsService teachingNewsService;

	 @GetMapping(value = "/newsList")
	 public Result<?> getNewsList(TeachingNews teachingNews,
									@RequestParam(name="pageNo", defaultValue="1") Integer pageNo,
									@RequestParam(name="pageSize", defaultValue="10") Integer pageSize,
									HttpServletRequest req) {
		 QueryWrapper<TeachingNews> queryWrapper = QueryGenerator.initQueryWrapper(teachingNews, req.getParameterMap());
		 queryWrapper.ge("news_status", 1);
		 Page<TeachingNews> page = new Page<TeachingNews>(pageNo, pageSize);
		 IPage<TeachingNews> pageList = teachingNewsService.page(page, queryWrapper);
		 pageList.getRecords().stream().forEach(e -> {
			 e.setNewsContent(null);
		 });
		 return Result.ok(pageList);
	 }

	 @GetMapping(value = "/newsDetail")
	 public Result<?> newsDetail(@RequestParam(name="id",required=true) String id) {
		 TeachingNews teachingNews = teachingNewsService.getById(id);
		 if(teachingNews==null || teachingNews.getNewsStatus() <= 0) {
			 return Result.error("未找到对应数据");
		 }
		 return Result.ok(teachingNews);
	 }


	
	/**
	 * 分页列表查询
	 *
	 * @param teachingNews
	 * @param pageNo
	 * @param pageSize
	 * @param req
	 * @return
	 */
	@AutoLog(value = "资讯-分页列表查询")
	@ApiOperation(value="资讯-分页列表查询", notes="资讯-分页列表查询")
	@GetMapping(value = "/list")
	public Result<?> queryPageList(TeachingNews teachingNews,
								   @RequestParam(name="pageNo", defaultValue="1") Integer pageNo,
								   @RequestParam(name="pageSize", defaultValue="10") Integer pageSize,
								   HttpServletRequest req) {
		QueryWrapper<TeachingNews> queryWrapper = QueryGenerator.initQueryWrapper(teachingNews, req.getParameterMap());
		Page<TeachingNews> page = new Page<TeachingNews>(pageNo, pageSize);
		IPage<TeachingNews> pageList = teachingNewsService.page(page, queryWrapper);
		return Result.ok(pageList);
	}
	
	/**
	 *   添加
	 *
	 * @param teachingNews
	 * @return
	 */
	@AutoLog(value = "资讯-添加")
	@ApiOperation(value="资讯-添加", notes="资讯-添加")
	@PostMapping(value = "/add")
	public Result<?> add(@RequestBody TeachingNews teachingNews) {
		teachingNewsService.save(teachingNews);
		return Result.ok("添加成功！");
	}
	
	/**
	 *  编辑
	 *
	 * @param teachingNews
	 * @return
	 */
	@AutoLog(value = "资讯-编辑")
	@ApiOperation(value="资讯-编辑", notes="资讯-编辑")
	@PutMapping(value = "/edit")
	public Result<?> edit(@RequestBody TeachingNews teachingNews) {
		teachingNewsService.updateById(teachingNews);
		return Result.ok("编辑成功!");
	}
	
	/**
	 *   通过id删除
	 *
	 * @param id
	 * @return
	 */
	@AutoLog(value = "资讯-通过id删除")
	@ApiOperation(value="资讯-通过id删除", notes="资讯-通过id删除")
	@DeleteMapping(value = "/delete")
	public Result<?> delete(@RequestParam(name="id",required=true) String id) {
		teachingNewsService.removeById(id);
		return Result.ok("删除成功!");
	}
	
	/**
	 *  批量删除
	 *
	 * @param ids
	 * @return
	 */
	@AutoLog(value = "资讯-批量删除")
	@ApiOperation(value="资讯-批量删除", notes="资讯-批量删除")
	@DeleteMapping(value = "/deleteBatch")
	public Result<?> deleteBatch(@RequestParam(name="ids",required=true) String ids) {
		this.teachingNewsService.removeByIds(Arrays.asList(ids.split(",")));
		return Result.ok("批量删除成功!");
	}
	
	/**
	 * 通过id查询
	 *
	 * @param id
	 * @return
	 */
	@AutoLog(value = "资讯-通过id查询")
	@ApiOperation(value="资讯-通过id查询", notes="资讯-通过id查询")
	@GetMapping(value = "/queryById")
	public Result<?> queryById(@RequestParam(name="id",required=true) String id) {
		TeachingNews teachingNews = teachingNewsService.getById(id);
		if(teachingNews==null) {
			return Result.error("未找到对应数据");
		}
		return Result.ok(teachingNews);
	}

    /**
    * 导出excel
    *
    * @param request
    * @param teachingNews
    */
    @RequestMapping(value = "/exportXls")
    public ModelAndView exportXls(HttpServletRequest request, TeachingNews teachingNews) {
        return super.exportXls(request, teachingNews, TeachingNews.class, "资讯");
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
        return super.importExcel(request, response, TeachingNews.class);
    }

}
