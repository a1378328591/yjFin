package com.yjcaifu.modules.generator.service;

import com.baomidou.mybatisplus.service.IService;
import com.yjcaifu.common.utils.PageUtils;
import com.yjcaifu.modules.generator.entity.RdUserEntity;

import java.util.Map;

/**
 * 用户基本信息表
 *
 * @author htshen
 * @email htshen@tom.com
 * @date 2018-05-04 13:56:02
 */
public interface RdUserService extends IService<RdUserEntity> {

    PageUtils queryPage(Map<String, Object> params);
}

