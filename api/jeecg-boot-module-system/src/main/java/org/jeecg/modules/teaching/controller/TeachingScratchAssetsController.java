package org.jeecg.modules.teaching.controller;

import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONObject;
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
import org.jeecg.modules.system.service.ISysFileService;
import org.jeecg.modules.teaching.entity.TeachingScratchAssets;
import org.jeecg.modules.teaching.service.ITeachingScratchAssetsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.Arrays;
import java.util.List;

/**
* @Description: Scratch素材库
* @Author: jeecg-boot
* @Date:   2021-09-18
* @Version: V1.0
*/
@Api(tags="Scratch素材库")
@RestController
@RequestMapping("/teaching/teachingScratchAssets")
@Slf4j
public class TeachingScratchAssetsController extends JeecgController<TeachingScratchAssets, ITeachingScratchAssetsService> {
   @Autowired
   private ITeachingScratchAssetsService teachingScratchAssetsService;
    @Autowired
    private ISysFileService sysFileService;
    /**
     * 获取scratch素材库
     * @param assetType 1背景 2声音 3造型 4角色
     * @return
     */
    @GetMapping("/getScratchAssets")
    public JSONArray getScratchAssets(@RequestParam Integer assetType){
        JSONArray list = new JSONArray();
        List<TeachingScratchAssets> assets = teachingScratchAssetsService.list(new QueryWrapper<TeachingScratchAssets>().eq("asset_type",assetType));
        for (TeachingScratchAssets asset: assets){
            list.add(JSONObject.parseObject(asset.getAssetData()));
        }
        return list;
    }

   /**
    * 分页列表查询
    *
    * @param teachingScratchAssets
    * @param pageNo
    * @param pageSize
    * @param req
    * @return
    */
   @AutoLog(value = "Scratch素材库-分页列表查询")
   @ApiOperation(value="Scratch素材库-分页列表查询", notes="Scratch素材库-分页列表查询")
   @GetMapping(value = "/list")
   public Result<?> queryPageList(TeachingScratchAssets teachingScratchAssets,
                                  @RequestParam(name="pageNo", defaultValue="1") Integer pageNo,
                                  @RequestParam(name="pageSize", defaultValue="10") Integer pageSize,
                                  HttpServletRequest req) {
       QueryWrapper<TeachingScratchAssets> queryWrapper = QueryGenerator.initQueryWrapper(teachingScratchAssets, req.getParameterMap());
       Page<TeachingScratchAssets> page = new Page<TeachingScratchAssets>(pageNo, pageSize);
       IPage<TeachingScratchAssets> pageList = teachingScratchAssetsService.page(page, queryWrapper);
       return Result.ok(pageList);
   }

   /**
    *   添加
    *
    * @param teachingScratchAssets
    * @return
    */
   @AutoLog(value = "Scratch素材库-添加")
   @ApiOperation(value="Scratch素材库-添加", notes="Scratch素材库-添加")
   @PostMapping(value = "/add")
   public Result<?> add(@RequestBody TeachingScratchAssets teachingScratchAssets) {
       teachingScratchAssetsService.save(teachingScratchAssets);
       return Result.ok("添加成功！");
   }

   /**
    *  编辑
    *
    * @param teachingScratchAssets
    * @return
    */
   @AutoLog(value = "Scratch素材库-编辑")
   @ApiOperation(value="Scratch素材库-编辑", notes="Scratch素材库-编辑")
   @PutMapping(value = "/edit")
   public Result<?> edit(@RequestBody TeachingScratchAssets teachingScratchAssets) {
       teachingScratchAssetsService.updateById(teachingScratchAssets);
       return Result.ok("编辑成功!");
   }

   /**
    *   通过id删除
    *
    * @param id
    * @return
    */
   @AutoLog(value = "Scratch素材库-通过id删除")
   @ApiOperation(value="Scratch素材库-通过id删除", notes="Scratch素材库-通过id删除")
   @DeleteMapping(value = "/delete")
   public Result<?> delete(@RequestParam(name="id",required=true) String id) {
       TeachingScratchAssets assets = teachingScratchAssetsService.getById(id);
       if (assets != null){
           if (assets.getAssetType() == 4){
               //TODO 删除角色
           }else{
               sysFileService.deleteByKeyWithFile(assets.getMd5Ext());
           }
           teachingScratchAssetsService.removeById(id);
       }
       return Result.ok("删除成功!");
   }

   /**
    *  批量删除
    *
    * @param ids
    * @return
    */
   @AutoLog(value = "Scratch素材库-批量删除")
   @ApiOperation(value="Scratch素材库-批量删除", notes="Scratch素材库-批量删除")
   @DeleteMapping(value = "/deleteBatch")
   public Result<?> deleteBatch(@RequestParam(name="ids",required=true) String ids) {
       List<String> idList = Arrays.asList(ids.split(","));
       List<TeachingScratchAssets> list = teachingScratchAssetsService.list(new QueryWrapper<TeachingScratchAssets>().in("id", idList));
       for (TeachingScratchAssets assets: list){
           if (assets.getAssetType() == 4){
               //TODO 删除角色
           }else{
               sysFileService.deleteByKeyWithFile(assets.getMd5Ext());
           }
       }
       teachingScratchAssetsService.removeByIds(idList);
       return Result.ok("批量删除成功!");
   }

   /**
    * 通过id查询
    *
    * @param id
    * @return
    */
   @AutoLog(value = "Scratch素材库-通过id查询")
   @ApiOperation(value="Scratch素材库-通过id查询", notes="Scratch素材库-通过id查询")
   @GetMapping(value = "/queryById")
   public Result<?> queryById(@RequestParam(name="id",required=true) String id) {
       TeachingScratchAssets teachingScratchAssets = teachingScratchAssetsService.getById(id);
       if(teachingScratchAssets==null) {
           return Result.error("未找到对应数据");
       }
       return Result.ok(teachingScratchAssets);
   }

   /**
   * 导出excel
   *
   * @param request
   * @param teachingScratchAssets
   */
   @RequestMapping(value = "/exportXls")
   public ModelAndView exportXls(HttpServletRequest request, TeachingScratchAssets teachingScratchAssets) {
       return super.exportXls(request, teachingScratchAssets, TeachingScratchAssets.class, "Scratch素材库");
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
       return super.importExcel(request, response, TeachingScratchAssets.class);
   }

}
