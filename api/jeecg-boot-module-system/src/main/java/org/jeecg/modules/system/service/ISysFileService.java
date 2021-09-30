package org.jeecg.modules.system.service;

import org.jeecg.modules.system.entity.SysFile;
import com.baomidou.mybatisplus.extension.service.IService;

/**
 * @Description: 文件管理
 * @Author: jeecg-boot
 * @Date:   2020-04-11
 * @Version: V1.0
 */
public interface ISysFileService extends IService<SysFile> {
    //同时删除文件
    boolean deleteWithFile(String id);
    //通过文件key删除文件
    boolean deleteByKeyWithFile(String key);
}
