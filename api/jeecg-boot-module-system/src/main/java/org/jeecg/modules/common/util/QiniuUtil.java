package org.jeecg.modules.common.util;

import com.google.gson.Gson;
import com.qiniu.common.QiniuException;
import com.qiniu.common.Zone;
import com.qiniu.http.Response;
import com.qiniu.storage.BucketManager;
import com.qiniu.storage.Configuration;
import com.qiniu.storage.UploadManager;
import com.qiniu.storage.model.DefaultPutRet;
import com.qiniu.util.Auth;
import org.jeecg.common.constant.CommonConstant;
import org.jeecg.config.QiniuConfig;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Component;
import org.springframework.util.StringUtils;

import java.io.File;

@Component
public class QiniuUtil {

    /**
     * 上传文件到七牛
     * @param data
     * @param key
     * @return key
     */
    public String uploadToQiniu(byte[] data, String key){
        Auth auth = Auth.create(QiniuConfig.key, QiniuConfig.secret);
        String token = auth.uploadToken(QiniuConfig.bucket, key);
        Configuration cfg = new Configuration(Zone.autoZone());
        UploadManager uploadManager = new UploadManager(cfg);
        try {
            Response response = uploadManager.put(data, key, token);
            //解析上传成功的结果
            DefaultPutRet putRet = new Gson().fromJson(response.bodyString(), DefaultPutRet.class);
            return putRet.key;
        } catch (QiniuException ex) {
            System.err.println(ex.error());
            return null;
        }
    }

    /**
     * 上传文件到七牛
     * @param file
     * @param key
     * @return key
     */
    public String uploadToQiniu(File file, String key){
        Auth auth = Auth.create(QiniuConfig.key, QiniuConfig.secret);
        String token = auth.uploadToken(QiniuConfig.bucket, key);
        Configuration cfg = new Configuration(Zone.autoZone());
        UploadManager uploadManager = new UploadManager(cfg);
        try {
            Response response = uploadManager.put(file, key, token);
            //解析上传成功的结果
            DefaultPutRet putRet = new Gson().fromJson(response.bodyString(), DefaultPutRet.class);
            return putRet.key;
        } catch (QiniuException ex) {
            System.err.println(ex.error());
            return null;
        }
    }

    /**
     * 通过key删除七牛文件
     * @param key
     * @return
     */
    public boolean deleteFileByKey(String key){
        Configuration cfg = new Configuration(Zone.zone0());
        Auth auth = Auth.create(QiniuConfig.key, QiniuConfig.secret);
        BucketManager bucketManager = new BucketManager(auth, cfg);
        try {
            Response res = bucketManager.delete(QiniuConfig.bucket, key);
            return true;
        } catch (QiniuException ex) {
            System.err.println(ex.error());
            //如果遇到异常，说明删除失败
            if (ex.code() == 612){
                    //资源不存在，也视为删除成功
                return true;
            }
            return false;
        }
    }

    @Value(value="${jeecg.uploadType}")
    private String uploadType;
    @Value(value="${jeecg.path.staticDomain}")
    private String staticDomain;
    /**
     * 获取文件访问地址
     * @param fileKey
     * @return
     */
    public String getFileUrl(String fileKey){
        //TODO 应该从文件表中获取文件存储位置。
        if (StringUtils.isEmpty(fileKey) || "null".equals(fileKey)){
            return "";
        }
        //粗略判断一下fileKey是实际文件还是sysFile的id
        if (CommonConstant.UPLOAD_TYPE_QINIU.equals(uploadType)){
            return QiniuConfig.domain + "/" + fileKey;
        }
        if (CommonConstant.UPLOAD_TYPE_LOCAL.equals(uploadType)){
            return staticDomain + "/" + fileKey;
        }
        return "";
    }
}
