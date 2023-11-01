package com.yjcaifu.modules.generator.service;

import com.baomidou.mybatisplus.service.IService;
import com.yjcaifu.common.utils.PageUtils;
import com.yjcaifu.modules.generator.entity.BorBaseCityEntity;

import java.util.List;
import java.util.Map;

/**
 * 
 *
 * @author htshen
 * @email htshen@tom.com
 * @date 2018-06-13 13:28:00
 */
public interface BorBaseCityService extends IService<BorBaseCityEntity> {

    PageUtils queryPage(Map<String, Object> params);

	BorBaseCityEntity queryByRefId(Map<String, Object> params);

	void deleteBatchByRefId(List<Integer> refIds);
}

