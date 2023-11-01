package com.yjcaifu.modules.generator.service;

import com.baomidou.mybatisplus.service.IService;
import com.yjcaifu.common.utils.PageUtils;
import com.yjcaifu.modules.generator.entity.BorCoborrowerEstateEntity;
import com.yjcaifu.modules.generator.entity.CusEstateEntity;

import java.util.List;
import java.util.Map;

/**
 * 
 *
 * @author htshen
 * @email htshen@tom.com
 * @date 2018-05-22 15:35:53
 */
public interface BorCoborrowerEstateService extends IService<BorCoborrowerEstateEntity> {

    PageUtils queryPage(Map<String, Object> params);

	List<CusEstateEntity> queryList(Map<String, Object> params);

	BorCoborrowerEstateEntity queryById(Map<String, Object> params);

	void deleteByRefId(Map<String, Object> delParams);

	void deleteByEsateIds(List<Integer> esateIds);

	void deleteByRefIds(List<Integer> refIds);

}

