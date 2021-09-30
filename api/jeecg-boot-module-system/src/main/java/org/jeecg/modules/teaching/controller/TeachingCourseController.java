package org.jeecg.modules.teaching.controller;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import lombok.extern.slf4j.Slf4j;
import org.jeecg.common.api.vo.Result;
import org.jeecg.common.aspect.annotation.AutoLog;
import org.jeecg.common.aspect.annotation.PermissionData;
import org.jeecg.common.system.base.controller.JeecgController;
import org.jeecg.common.system.query.QueryGenerator;
import org.jeecg.modules.system.service.ISysFileService;
import org.jeecg.modules.teaching.entity.TeachingCourse;
import org.jeecg.modules.teaching.service.ITeachingCourseService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.Arrays;
import java.util.List;

 /**
 * @Description: 课程
 * @Author: jeecg-boot
 * @Date:   2020-04-14
 * @Version: V1.0
 */
@Api(tags="课程")
@RestController
@RequestMapping("/teaching/teachingCourse")
@Slf4j
public class TeachingCourseController extends JeecgController<TeachingCourse, ITeachingCourseService> {
	@Autowired
	private ITeachingCourseService teachingCourseService;
	@Autowired
	private ISysFileService sysFileService;

	 @GetMapping("/mineCourse")
	 public Result<List<TeachingCourse>> mineCourse(){
		 String mineUserId = getCurrentUser().getId();
		 return teachingCourseService.mineCourse(mineUserId);
	 }
	
	/**
	 * 分页列表查询
	 *
	 * @param teachingCourse
	 * @param pageNo
	 * @param pageSize
	 * @param req
	 * @return
	 */
	@AutoLog(value = "课程-分页列表查询")
	@ApiOperation(value="课程-分页列表查询", notes="课程-分页列表查询")
	@GetMapping(value = "/list")
	@PermissionData
	public Result<?> queryPageList(TeachingCourse teachingCourse,
								   @RequestParam(name="pageNo", defaultValue="1") Integer pageNo,
								   @RequestParam(name="pageSize", defaultValue="10") Integer pageSize,
								   HttpServletRequest req) {
		QueryWrapper<TeachingCourse> queryWrapper = QueryGenerator.initQueryWrapper(teachingCourse, req.getParameterMap());
		Page<TeachingCourse> page = new Page<TeachingCourse>(pageNo, pageSize);
		IPage<TeachingCourse> pageList = teachingCourseService.page(page, queryWrapper);
		return Result.ok(pageList);
	}
	
	/**
	 *   添加
	 *
	 * @param teachingCourse
	 * @return
	 */
	@AutoLog(value = "课程-添加")
	@ApiOperation(value="课程-添加", notes="课程-添加")
	@PostMapping(value = "/add")
	public Result<?> add(@RequestBody TeachingCourse teachingCourse) {
		teachingCourseService.save(teachingCourse);
		return Result.ok("添加成功！");
	}
	
	/**
	 *  编辑
	 *
	 * @param teachingCourse
	 * @return
	 */
	@AutoLog(value = "课程-编辑")
	@ApiOperation(value="课程-编辑", notes="课程-编辑")
	@PutMapping(value = "/edit")
	public Result<?> edit(@RequestBody TeachingCourse teachingCourse) {
		teachingCourseService.updateById(teachingCourse);
		return Result.ok("编辑成功!");
	}
	
	/**
	 *   通过id删除
	 *
	 * @param id
	 * @return
	 */
	@AutoLog(value = "课程-通过id删除")
	@ApiOperation(value="课程-通过id删除", notes="课程-通过id删除")
	@DeleteMapping(value = "/delete")
	public Result<?> delete(@RequestParam(name="id",required=true) String id) {
		TeachingCourse course = this.teachingCourseService.getById(id);
		if (course != null){
			sysFileService.deleteByKeyWithFile(course.getCourseIcon());
			sysFileService.deleteByKeyWithFile(course.getCourseCover());
			sysFileService.deleteByKeyWithFile(course.getCourseMap());
			teachingCourseService.removeById(id);
		}
		return Result.ok("删除成功!");
	}
	
	/**
	 *  批量删除
	 *
	 * @param ids
	 * @return
	 */
	@AutoLog(value = "课程-批量删除")
	@ApiOperation(value="课程-批量删除", notes="课程-批量删除")
	@DeleteMapping(value = "/deleteBatch")
	public Result<?> deleteBatch(@RequestParam(name="ids",required=true) String ids) {
		List<String> idList = Arrays.asList(ids.split(","));
		List<TeachingCourse> courseList = this.teachingCourseService.list(new QueryWrapper<TeachingCourse>().in("id", idList));
		for (TeachingCourse course: courseList){
			sysFileService.deleteByKeyWithFile(course.getCourseIcon());
			sysFileService.deleteByKeyWithFile(course.getCourseCover());
			sysFileService.deleteByKeyWithFile(course.getCourseMap());
		}
		this.teachingCourseService.removeByIds(idList);
		return Result.ok("批量删除成功!");
	}
	
	/**
	 * 通过id查询
	 *
	 * @param id
	 * @return
	 */
	@AutoLog(value = "课程-通过id查询")
	@ApiOperation(value="课程-通过id查询", notes="课程-通过id查询")
	@GetMapping(value = "/queryById")
	public Result<?> queryById(@RequestParam(name="id",required=true) String id) {
		TeachingCourse teachingCourse = teachingCourseService.getById(id);
		if(teachingCourse==null) {
			return Result.error("未找到对应数据");
		}
		return Result.ok(teachingCourse);
	}

    /**
    * 导出excel
    *
    * @param request
    * @param teachingCourse
    */
    @RequestMapping(value = "/exportXls")
    public ModelAndView exportXls(HttpServletRequest request, TeachingCourse teachingCourse) {
        return super.exportXls(request, teachingCourse, TeachingCourse.class, "课程");
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
        return super.importExcel(request, response, TeachingCourse.class);
    }

}
