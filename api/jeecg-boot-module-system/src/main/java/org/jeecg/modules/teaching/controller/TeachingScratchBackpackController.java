package org.jeecg.modules.teaching.controller;

import com.alibaba.fastjson.JSONObject;
import com.qiniu.util.Base64;
import io.swagger.annotations.Api;
import lombok.extern.slf4j.Slf4j;
import org.jeecg.common.api.vo.Result;
import org.jeecg.common.constant.CacheConstant;
import org.jeecg.common.system.vo.LoginUser;
import org.jeecg.common.util.RedisUtil;
import org.jeecg.common.util.UUIDGenerator;
import org.jeecg.config.QiniuConfig;
import org.jeecg.modules.common.controller.BaseController;
import org.jeecg.modules.common.util.QiniuUtil;
import org.jeecg.modules.teaching.model.ScratchBackpackModel;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import sun.misc.BASE64Decoder;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.OutputStream;
import java.util.List;

@Slf4j
@Api(tags = "Scratch背包接口")
@RestController
@RequestMapping("/teaching/scratch/backpack")
public class TeachingScratchBackpackController extends BaseController {
    @Autowired
    RedisUtil redisUtil;
    @Autowired
    QiniuUtil qiniuUtil;

    @GetMapping("/getFile/{filename}")
    public void __getFile(@PathVariable String filename, HttpServletRequest req , HttpServletResponse response){
        String file = (String) redisUtil.get(CacheConstant.SCRATCH_BACKPACK_BODY +filename);
        BASE64Decoder decoder = new BASE64Decoder();
        try {
            OutputStream out = response.getOutputStream();
            // Base64解码
            byte[] b = decoder.decodeBuffer(file);
            for (int i = 0; i < b.length; ++i) {
                if (b[i] < 0) {
                    b[i] += 256;
                }
            }
            out.write(b);
            out.flush();
            out.close();
        } catch (Exception e) {
        }
    }

    /**
     * 背包列表
     * @param limit
     * @param offset
     * @return
     */
    @GetMapping("/content")
    public Result<?> __getBackpack(
            @RequestParam(required = false, defaultValue = "20") Integer limit,
            @RequestParam(required = false, defaultValue = "0") Integer offset){

        LoginUser loginUser = getCurrentUser();
        List<Object> list = redisUtil.lGet(CacheConstant.SCRATCH_BACKPACK_LIST+loginUser.getId(), offset, offset + limit);
        return Result.ok(list);
    }

    /**
     * 保存到背包
     * @param json
     * @return
     */
    @PostMapping("/save")
    public Result<?> __saveBackpack(@RequestBody JSONObject json){
        LoginUser loginUser = getCurrentUser();

        String body = json.getString("body");
        String thumbnail = json.getString("thumbnail");
        String type = json.getString("type");
        String mime = json.getString("mime");
        String name = json.getString("name");

        String id = UUIDGenerator.generate();

        byte[] bodyBytes = Base64.decode(body.getBytes(), Base64.DEFAULT);
        byte[] thumbnailBytes = Base64.decode(thumbnail.getBytes(), Base64.DEFAULT);

        //上传至七牛
        String bodyKey = qiniuUtil.uploadToQiniu(bodyBytes, "scratch/backpackBody/"+id);
        String thumbKey = qiniuUtil.uploadToQiniu(thumbnailBytes, "scratch/backpackBody/"+id+".jpg");
        String bodyUrl = QiniuConfig.domain + "/" + bodyKey;
        String thumbUrl = QiniuConfig.domain + "/" + thumbKey;

        ScratchBackpackModel scratchBackpackModel = new ScratchBackpackModel();

        scratchBackpackModel.setId(id);
        scratchBackpackModel.setName(name);
        scratchBackpackModel.setMime(mime);
        scratchBackpackModel.setType(type);
        scratchBackpackModel.setThumbnail(thumbUrl);
        scratchBackpackModel.setBody(bodyUrl);

        //存入列表
        redisUtil.lSet(CacheConstant.SCRATCH_BACKPACK_LIST+loginUser.getId(), scratchBackpackModel);


        return Result.ok(scratchBackpackModel);
    }


    /**
     * 删除背包项目
     * @param id
     * @return
     */
    @DeleteMapping("/delete")
    public Result<?> __getBackpack(@RequestParam String id){
        LoginUser loginUser = getCurrentUser();
        if (redisUtil.lGetListSize(CacheConstant.SCRATCH_BACKPACK_LIST+loginUser.getId())==0){
            return Result.ok();
        }
        //删除缓存列表
        List<Object> list = redisUtil.lGet(CacheConstant.SCRATCH_BACKPACK_LIST+loginUser.getId(),0,-1);
        for (Object l:list){
            ScratchBackpackModel scratchBackpackModel = (ScratchBackpackModel)l;
            if(id.equals(scratchBackpackModel.getId())){
                //删除七牛文件
                qiniuUtil.deleteFileByKey("scratch/backpackBody/"+id);
                qiniuUtil.deleteFileByKey("scratch/backpackBody/"+id+".jpg");
                redisUtil.lRemove(CacheConstant.SCRATCH_BACKPACK_LIST+loginUser.getId(), 0, scratchBackpackModel);
            }
        }
        return Result.ok();
    }

}
