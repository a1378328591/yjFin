package com.yjcaifu.modules.generator.service;

import com.baomidou.mybatisplus.service.IService;
import com.yjcaifu.common.utils.PageUtils;
import com.yjcaifu.modules.generator.entity.BorCreditPersonalEntity;

import java.util.List;
import java.util.Map;

/**
 * 
 *
 * @author htshen
 * @email htshen@tom.com
 * @date 2018-05-25 15:37:17
 */
public interface BorCreditPersonalService extends IService<BorCreditPersonalEntity> {

    PageUtils queryPage(Map<String, Object> params);

	List<BorCreditPersonalEntity> queryByRefId(Map<String, Object> params);

	void deleteByRefId(Map<String, Object> delParams);

	void deleteBorCreditByRefId(Map<String, Object> delParams);

	void deleteByCreditId(List<Integer> creditIds);

	void deleteBatchByRefIds(List<Integer> refIds);
}

