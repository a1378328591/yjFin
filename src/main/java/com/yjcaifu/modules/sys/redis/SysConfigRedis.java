package com.yjcaifu.modules.sys.redis;

import com.yjcaifu.common.utils.RedisKeys;
import com.yjcaifu.common.utils.RedisUtils;
import com.yjcaifu.modules.sys.entity.SysConfigEntity;
import com.yjcaifu.common.utils.RedisKeys;
import com.yjcaifu.common.utils.RedisUtils;
import com.yjcaifu.modules.sys.entity.SysConfigEntity;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

/**
 * 系统配置Redis
 *
 * @author htshen
 * @email htshen@tom.com
 * @date 2017/7/18 21:08
 */
@Component
public class SysConfigRedis {
    @Autowired
    private RedisUtils redisUtils;

    public void saveOrUpdate(SysConfigEntity config) {
        if(config == null){
            return ;
        }
        String key = RedisKeys.getSysConfigKey(config.getKey());
        redisUtils.set(key, config);
    }

    public void delete(String configKey) {
        String key = RedisKeys.getSysConfigKey(configKey);
        redisUtils.delete(key);
    }

    public SysConfigEntity get(String configKey){
        String key = RedisKeys.getSysConfigKey(configKey);
        return redisUtils.get(key, SysConfigEntity.class);
    }
}
