package org.jeecg.config;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.Configuration;

@Configuration
public class QiniuConfig {

    public static String domain;
    public static String key;
    public static String secret;
    public static String bucket;
    public static Integer expires = 3600;

    @Value("${jeecg.qiniu.staticDomain}")
    public void setDomain(String domain) {
        this.domain = domain;
    }

    @Value("${jeecg.qiniu.accessKey}")
    public void setKey(String key) {
        this.key = key;
    }

    @Value("${jeecg.qiniu.secretKey}")
    public void setSecret(String secret) {
        this.secret = secret;
    }

    @Value("${jeecg.qiniu.bucketName}")
    public void setBucket(String bucket) {
        this.bucket = bucket;
    }
}
