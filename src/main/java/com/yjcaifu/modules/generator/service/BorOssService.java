package com.yjcaifu.modules.generator.service;

import com.baomidou.mybatisplus.service.IService;
import com.yjcaifu.common.utils.PageUtils;
import com.yjcaifu.modules.generator.entity.BorOssEntity;

import java.util.List;
import java.util.Map;

/**
 * 
 *
 * @author htshen
 * @email htshen@tom.com
 * @date 2018-05-29 14:20:03
 */
public interface BorOssService extends IService<BorOssEntity> {

    PageUtils queryPage(Map<String, Object> params);

	List<BorOssEntity> listByRefId(Map<String, Object> params);

	void deleteByBorOssId(Map<String, Object> params);

	void deleteBatchByRefIds(List<Integer> refIds);
}

