package com.yjcaifu.modules.generator.service;

import com.baomidou.mybatisplus.service.IService;
import com.yjcaifu.common.utils.PageUtils;
import com.yjcaifu.modules.generator.entity.RegisterInfoEntity;

import java.util.Map;

/**
 * 
 *
 * @author htshen
 * @email htshen@tom.com
 * @date 2018-05-04 17:10:45
 */
public interface RegisterInfoService extends IService<RegisterInfoEntity> {

    PageUtils queryPage(Map<String, Object> params);

	Integer insertAndReturnId(RegisterInfoEntity reginfo);
}

