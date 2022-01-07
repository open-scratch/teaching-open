package org.jeecg.modules.system.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.jeecg.modules.system.entity.SysConfig;
import org.jeecg.modules.system.mapper.SysConfigMapper;
import org.jeecg.modules.system.service.ISysConfigService;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Service
public class SysConfigServiceImpl extends ServiceImpl<SysConfigMapper, SysConfig> implements ISysConfigService {
	@Override
	public SysConfig getConfigEntity(String key) {
		return this.getOne(new QueryWrapper<SysConfig>()
				.eq("config_key", key)
				.eq("config_enabled",1)
				.last("limit 1"));
	}

	@Override
	public List<SysConfig> getConfigList() {
		return this.list(new QueryWrapper<SysConfig>()
				.eq("config_enabled", 1));
	}

	@Override
	public void saveConfig(String key, String value) {
		SysConfig config = this.getConfigEntity(key);
		if (config == null){
			config = new SysConfig();
			config.setConfigKey(key);
			config.setConfigValue(value);
			config.setConfigEnabled(1);
			this.save(config);
		}else{
			config.setConfigEnabled(1);
			config.setConfigValue(value);
			this.updateById(config);
		}
	}


    @Override
    public Map<String, Object> getConfigMap() {
        List<SysConfig> configs = this.getConfigList();
		Map<String, Object> configMap = new HashMap<String, Object>();
		for (SysConfig config : configs){
			configMap.put(config.getConfigKey(), config.getConfigValue());
		}
		return configMap;
    }

    @Override
    public String getConfigItem(String key) {
		SysConfig config = this.getConfigEntity(key);
		if (config == null){
			return null;
		}
		return config.getConfigValue();
    }
}
