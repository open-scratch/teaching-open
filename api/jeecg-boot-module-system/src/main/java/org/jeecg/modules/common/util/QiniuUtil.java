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
import org.jeecg.config.QiniuConfig;
import org.springframework.stereotype.Component;

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
        String token = auth.uploadToken(QiniuConfig.bucket, null, QiniuConfig.expires, null);
        Configuration cfg = new Configuration(Zone.zone0());
        UploadManager uploadManager = new UploadManager(cfg);
        try {
            Response response = uploadManager.put(data, key, token);
            //解析上传成功的结果
            DefaultPutRet putRet = new Gson().fromJson(response.bodyString(), DefaultPutRet.class);
            System.out.println(putRet.key);
            System.out.println(putRet.hash);
            return putRet.key;
        } catch (QiniuException ex) {
            Response r = ex.response;
            System.err.println(r.toString());
            try {
                System.err.println(r.bodyString());
            } catch (QiniuException ex2) {
                //ignore
            }
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
            //如果遇到异常，说明删除失败
            if (ex.response.statusCode == 612){
                //资源不存在，也视为删除成功
                return true;
            }
            System.err.println(ex.response.toString());
            return false;
        }
    }
}
