package org.jeecg.modules.common.util;

import org.apache.commons.lang.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Component;

import java.security.Key;
import java.security.spec.AlgorithmParameterSpec;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import javax.crypto.Cipher;
import javax.crypto.SecretKeyFactory;
import javax.crypto.spec.DESKeySpec;
import javax.crypto.spec.IvParameterSpec;

import org.apache.commons.codec.binary.Base64;

@Component
public class Ow365Util {
    @Value(value="${jeecg.filePreview}")
    private String filePreview;
    @Value(value="${jeecg.ow365.id}")
    private String owId;
    @Value(value="${jeecg.ow365.iv}")
    private String owIv;
    @Value(value="${jeecg.ow365.key}")
    private String owKey;
    @Autowired
    private QiniuUtil qiniuUtil;


    //加密算法的参数接口，IvParameterSpec是它的一个实现
    static AlgorithmParameterSpec iv = null;
    private static Key key = null;

    private boolean init() {
        if (key != null){
            return true;
        }
        if (StringUtils.isNotBlank(owKey) && !"??".equals(owKey)){
            try {
                // 设置密钥参数
                DESKeySpec keySpec = new DESKeySpec(owKey.getBytes());
                // 设置向量
                iv = new IvParameterSpec(owIv.getBytes());
                // 获得密钥工厂
                SecretKeyFactory keyFactory = SecretKeyFactory.getInstance("DES");
                key = keyFactory.generateSecret(keySpec);// 得到密钥对象
                return true;
            }catch (Exception ignored){
            }
        }
        return false;
    }

    public String getFileUrlStr(String url){
        boolean enableOw365 = init();

        if (StringUtils.isBlank(url)) return "";
        List<String> sl = new ArrayList<>();
        for (String v: url.split(",")){
            String s = qiniuUtil.getFileUrl(v);
            if (StringUtils.isNotBlank(s)){
                if("ow365".equals(filePreview) && enableOw365 && this.isSupportExt(s)){
                    try {
                        if (s.startsWith("https")){
                            sl.add("aess:" + this.encode(s));
                        }else{
                            sl.add("aes:" + this.encode(s));
                        }
                    } catch (Exception e) {
                        throw new RuntimeException(e);
                    }
                }else{
                    sl.add(s);
                }
            }
        }
        return StringUtils.join(sl, ",");
    }
    private boolean isSupportExt(String filename){
        List<String> exts = Arrays.asList("ppt", "pptx", "xls", "xlsx", "doc", "docx", "pdf");
        for (String ext: exts){
            if (filename.endsWith(ext)){
                return true;
            }
        }
        return false;
    }

    /**
     * @param data
     * @return
     * @throws 加密
     */
    private String encode(String data) throws Exception {
        // 得到加密对象Cipher
        Cipher enCipher = Cipher.getInstance("DES/CBC/PKCS5Padding");
        // 设置工作模式为加密模式，给出密钥和向量
        enCipher.init(Cipher.ENCRYPT_MODE, key, iv);
        byte[] pasByte = enCipher.doFinal(data.getBytes("utf-8"));
        return Base64.encodeBase64String(pasByte).replaceAll("\\+", "_").replaceAll("/", "*").replaceAll("=", "-");
    }

    /**
     * @param data
     * @return
     * @throws 解密
     */

    private String decode(String data) throws Exception {
        Cipher deCipher = Cipher.getInstance("DES/CBC/PKCS5Padding");
        deCipher.init(Cipher.DECRYPT_MODE, key, iv);
        byte[] pasByte = deCipher.doFinal(Base64.decodeBase64(data.replaceAll("_", "+").replaceAll("\\*", "/").replaceAll("-", "=")));
        return new String(pasByte, "UTF-8");
    }

    public static void main(String[] args) throws Exception {
        Ow365Util tools = new Ow365Util();
        System.out.println("加密:" + tools.encode("http://192.168.1.2/a.doc"));
        System.out.println("解密:" + tools.decode(tools.encode("http://192.168.1.2/a.doc ")));
    }

}
