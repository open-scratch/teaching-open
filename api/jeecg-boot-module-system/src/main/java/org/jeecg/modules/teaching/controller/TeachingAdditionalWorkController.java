package org.jeecg.modules.teaching.controller;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import lombok.extern.slf4j.Slf4j;
import org.jeecg.common.api.vo.Result;
import org.jeecg.common.aspect.annotation.AutoLog;
import org.jeecg.common.system.base.controller.JeecgController;
import org.jeecg.common.system.query.QueryGenerator;
import org.jeecg.modules.teaching.entity.TeachingAdditionalWork;
import org.jeecg.modules.teaching.model.MineAdditionalWorkModel;
import org.jeecg.modules.teaching.service.ITeachingAdditionalWorkService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.Arrays;

/**
* @Description: 附加作业
*/
@Api(tags="附加作业")
@RestController
@RequestMapping("/teaching/teachingAdditionalWork")
@Slf4j
public class TeachingAdditionalWorkController extends JeecgController<TeachingAdditionalWork, ITeachingAdditionalWorkService> {
   @Autowired
   private ITeachingAdditionalWorkService teachingAdditionalWorkService;

   @ApiOperation("获取附加作业详情")
   @GetMapping("getWorkInfo")
   public Result<MineAdditionalWorkModel> getWorkInfo(@RequestParam String id){
       return teachingAdditionalWorkService.getWorkInfo(id);
   }

    /**
     * 我的附加作业列表
     * @param status ''全部 0未提交 1已提交 2已结束
     * @return
     */
//	@ApiOperation("我的附加作业列表")
//	@GetMapping("mineAdditionalWork")
//	public Result<List<MineAdditionalWorkModel>> mineAdditionalWork(@RequestParam(defaultValue = "0") Integer status){
//		LoginUser user = getCurrentUser();
//		return teachingAdditionalWorkService.mineAdditionalWork(user.getId(), status);
//	}

   /**
    * 分页列表查询
    *
    * @param teachingAdditionalWork
    * @param pageNo
    * @param pageSize
    * @param req
    * @return
    */
   @AutoLog(value = "附加作业-分页列表查询")
   @ApiOperation(value="附加作业-分页列表查询", notes="附加作业-分页列表查询")
   @GetMapping(value = "/list")
   public Result<?> queryPageList(TeachingAdditionalWork teachingAdditionalWork,
                                  @RequestParam(name="pageNo", defaultValue="1") Integer pageNo,
                                  @RequestParam(name="pageSize", defaultValue="10") Integer pageSize,
                                  HttpServletRequest req) {
       QueryWrapper<TeachingAdditionalWork> queryWrapper = QueryGenerator.initQueryWrapper(teachingAdditionalWork, req.getParameterMap());
       Page<TeachingAdditionalWork> page = new Page<TeachingAdditionalWork>(pageNo, pageSize);
       IPage<TeachingAdditionalWork> pageList = teachingAdditionalWorkService.page(page, queryWrapper);
       return Result.ok(pageList);
   }

    /**
     * 老师附加作业列表
     *
     * @param teachingAdditionalWork
     * @param pageNo
     * @param pageSize
     * @param req
     * @return
     */
    @ApiOperation(value="老师附加作业列表")
    @GetMapping(value = "/teacherList")
    public Result<?> teacherPageList(TeachingAdditionalWork teachingAdditionalWork,
                                   @RequestParam(name="pageNo", defaultValue="1") Integer pageNo,
                                   @RequestParam(name="pageSize", defaultValue="10") Integer pageSize,
                                   HttpServletRequest req) {
        QueryWrapper<TeachingAdditionalWork> queryWrapper = QueryGenerator.initQueryWrapper(teachingAdditionalWork, req.getParameterMap());
        Page<TeachingAdditionalWork> page = new Page<TeachingAdditionalWork>(pageNo, pageSize);
        queryWrapper.eq("create_by", getCurrentUser().getUsername());
        IPage<TeachingAdditionalWork> pageList = teachingAdditionalWorkService.page(page, queryWrapper);
        return Result.ok(pageList);
    }

   /**
    *   添加
    *
    * @param teachingAdditionalWork
    * @return
    */
   @AutoLog(value = "附加作业-添加")
   @ApiOperation(value="附加作业-添加", notes="附加作业-添加")
   @PostMapping(value = "/add")
   public Result<?> add(@RequestBody TeachingAdditionalWork teachingAdditionalWork) {
       return teachingAdditionalWorkService.addNewAdditionalWork(teachingAdditionalWork);
   }

   /**
    *  编辑
    *
    * @param teachingAdditionalWork
    * @return
    */
   @AutoLog(value = "附加作业-编辑")
   @ApiOperation(value="附加作业-编辑", notes="附加作业-编辑")
   @PutMapping(value = "/edit")
   public Result<?> edit(@RequestBody TeachingAdditionalWork teachingAdditionalWork) {
       teachingAdditionalWorkService.updateById(teachingAdditionalWork);
       return Result.ok("编辑成功!");
   }

   /**
    *   通过id删除
    *
    * @param id
    * @return
    */
   @AutoLog(value = "附加作业-通过id删除")
   @ApiOperation(value="附加作业-通过id删除", notes="附加作业-通过id删除")
   @DeleteMapping(value = "/delete")
   public Result<?> delete(@RequestParam(name="id",required=true) String id) {
       teachingAdditionalWorkService.removeById(id);
       return Result.ok("删除成功!");
   }

   /**
    *  批量删除
    *
    * @param ids
    * @return
    */
   @AutoLog(value = "附加作业-批量删除")
   @ApiOperation(value="附加作业-批量删除", notes="附加作业-批量删除")
   @DeleteMapping(value = "/deleteBatch")
   public Result<?> deleteBatch(@RequestParam(name="ids",required=true) String ids) {
       this.teachingAdditionalWorkService.removeByIds(Arrays.asList(ids.split(",")));
       return Result.ok("批量删除成功!");
   }

   /**
    * 通过id查询
    *
    * @param id
    * @return
    */
   @AutoLog(value = "附加作业-通过id查询")
   @ApiOperation(value="附加作业-通过id查询", notes="附加作业-通过id查询")
   @GetMapping(value = "/queryById")
   public Result<?> queryById(@RequestParam(name="id",required=true) String id) {
       TeachingAdditionalWork teachingAdditionalWork = teachingAdditionalWorkService.getById(id);
       if(teachingAdditionalWork==null) {
           return Result.error("未找到对应数据");
       }
       return Result.ok(teachingAdditionalWork);
   }
}
