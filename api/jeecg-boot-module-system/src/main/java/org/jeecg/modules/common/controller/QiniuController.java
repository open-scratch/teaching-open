package org.jeecg.modules.common.controller;


import com.qiniu.util.Auth;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import lombok.extern.slf4j.Slf4j;
import org.jeecg.common.api.vo.Result;
import org.jeecg.common.aspect.annotation.AutoLog;
import org.jeecg.config.QiniuConfig;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

@Slf4j
@Api(tags="七牛")
@RestController
@RequestMapping("/common/qiniu")
public class QiniuController {
    @ApiOperation(value = "获取七牛上传Token", notes = "获取七牛上传token")
    @RequestMapping("/getToken")
    public Result getQiniuToken(){
        Result result = new Result();
        result.setCode(200);
        Auth auth = Auth.create(QiniuConfig.key, QiniuConfig.secret);
        result.setResult(auth.uploadToken(QiniuConfig.bucket, null, QiniuConfig.expires, null));
        return result;
    }

    @ApiOperation(value = "获取七牛覆盖Token", notes = "获取七牛覆盖token")
    @RequestMapping("/getTokenByKey")
    public Result getQiniuTokenByKey(@RequestParam String key){
        Result result = new Result();
        result.setCode(200);
        Auth auth = Auth.create(QiniuConfig.key, QiniuConfig.secret);
        result.setResult(auth.uploadToken(QiniuConfig.bucket, key, QiniuConfig.expires, null));
        return result;
    }
}
