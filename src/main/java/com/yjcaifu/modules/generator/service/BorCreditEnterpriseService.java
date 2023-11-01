package com.yjcaifu.modules.generator.service;

import com.baomidou.mybatisplus.service.IService;
import com.yjcaifu.common.utils.PageUtils;
import com.yjcaifu.modules.generator.entity.BorCreditEnterpriseEntity;

import java.util.List;
import java.util.Map;

/**
 * 
 *
 * @author htshen
 * @email htshen@tom.com
 * @date 2018-05-25 15:37:17
 */
public interface BorCreditEnterpriseService extends IService<BorCreditEnterpriseEntity> {

    PageUtils queryPage(Map<String, Object> params);

	List<BorCreditEnterpriseEntity> queryByRefId(Map<String, Object> params);

	void deleteBorCreditByRefId(Map<String, Object> delParams);

	void deleteByCreditId(List<Integer> entCIds);

	void deleteByRefIds(List<Integer> refIds);
}

