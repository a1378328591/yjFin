package com.yjcaifu.modules.generator.service;

import com.baomidou.mybatisplus.service.IService;
import com.yjcaifu.common.utils.PageUtils;
import com.yjcaifu.modules.generator.entity.BorCoborrowerPersonalEntity;

import java.util.List;
import java.util.Map;

/**
 * 
 *
 * @author htshen
 * @email htshen@tom.com
 * @date 2018-05-16 08:50:20
 */
public interface BorCoborrowerPersonalService extends IService<BorCoborrowerPersonalEntity> {

    PageUtils queryPage(Map<String, Object> params);

	BorCoborrowerPersonalEntity queryById(Map<String, Object> params);

	List<BorCoborrowerPersonalEntity> queryList(Map<String, Object> params);

	void deleteBatchByIds(Map<String, Object> delParams);

	void deleteBatchByRefIds(List<Integer> refIds);
}

