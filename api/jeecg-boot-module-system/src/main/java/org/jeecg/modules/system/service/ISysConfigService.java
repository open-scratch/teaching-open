package org.jeecg.modules.system.service;

import com.baomidou.mybatisplus.extension.service.IService;
import org.jeecg.modules.system.entity.SysConfig;

import java.util.List;
import java.util.Map;

public interface ISysConfigService extends IService<SysConfig> {
	SysConfig getConfigEntity(String key);
	String getConfigItem(String key);
	Map<String, Object> getConfigMap();
	List<SysConfig> getConfigList();
	void saveConfig(String key, String value);
}
