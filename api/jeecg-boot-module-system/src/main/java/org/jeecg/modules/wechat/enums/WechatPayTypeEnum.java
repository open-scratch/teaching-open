package org.jeecg.modules.wechat.enums;

public enum WechatPayTypeEnum {
    // 公众号
    JSAPI("JSAPI"),
    //扫码
    NATIVE("NATIVE"),
    //手机app
    APP("APP"),
    //H5
    WAP("MWEB");
    private String type;

    WechatPayTypeEnum(String type) {
        this.type = type;
    }
    public String getType(){
        return this.type;
    }
}

