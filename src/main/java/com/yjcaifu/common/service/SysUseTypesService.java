package com.yjcaifu.common.service;

import com.baomidou.mybatisplus.service.IService;
import com.yjcaifu.common.utils.PageUtils;
import com.yjcaifu.common.entity.SysUseTypesEntity;

import java.util.List;
import java.util.Map;

/**
 * 使用性质
 *
 * @author htshen
 * @email htshen@tom.com
 * @date 2018-06-12 14:29:44
 */
public interface SysUseTypesService extends IService<SysUseTypesEntity> {

    PageUtils queryPage(Map<String, Object> params);

	List<SysUseTypesEntity> queryList(Map<String, Object> params);
}

