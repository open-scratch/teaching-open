package org.jeecg.modules.system.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import org.jeecg.modules.common.util.QiniuUtil;
import org.jeecg.modules.system.entity.SysFile;
import org.jeecg.modules.system.mapper.SysFileMapper;
import org.jeecg.modules.system.service.ISysFileService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;

import java.io.File;

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
    @Value(value = "${jeecg.path.upload}")
    private String uploadpath;

    @Override
    public boolean deleteWithFile(String id) {
        SysFile file = this.getById(id);
        if (file == null){
            return true;
        }
        if (file.getFileLocation()==2){
            if (qiniuUtil.deleteFileByKey(file.getFilePath())){
                this.removeById(id);
                return true;
            }else{
                return false;
            }
        }else if (file.getFileLocation()==1){
            try {
                File savedFile = new File(uploadpath + File.separator + file.getFilePath());
                savedFile.delete();
                this.removeById(id);
                return true;
            }catch (Exception e){
                return false;
            }
        }
        return true;
    }

    @Override
    public boolean deleteByKeyWithFile(String key) {
        SysFile file = this.getOne(new QueryWrapper<SysFile>().eq("file_path", key));
        if (file == null){
            return true;
        }
        if (file.getFileLocation()==2){
            if (qiniuUtil.deleteFileByKey(file.getFilePath())){
                this.removeById(file.getId());
                return true;
            }else{
                return false;
            }
        }else if (file.getFileLocation()==1){
            try {
                File savedFile = new File(uploadpath + File.separator + file.getFilePath());
                savedFile.delete();
                this.removeById(file.getId());
                return true;
            }catch (Exception e){
                return false;
            }
        }
        return true;
    }
}
