package org.jeecg.modules.system.service.impl;

import org.jeecg.modules.common.util.QiniuUtil;
import org.jeecg.modules.system.entity.SysFile;
import org.jeecg.modules.system.mapper.SysFileMapper;
import org.jeecg.modules.system.service.ISysFileService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;

/**
 * @Description: 文件管理
 * @Author: jeecg-boot
 * @Date:   2020-04-11
 * @Version: V1.0
 */
@Service
public class SysFileServiceImpl extends ServiceImpl<SysFileMapper, SysFile> implements ISysFileService {
    @Autowired
    QiniuUtil qiniuUtil;

    @Override
    public boolean deleteWithFile(String id) {
        //先删除文件
        SysFile file = this.getById(id);
        if (file == null){
            return true;
        }
        if (qiniuUtil.deleteFileByKey(file.getFilePath())){
            this.removeById(id);
            return true;
        }else{
            return false;
        }
    }
}
