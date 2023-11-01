package com.yjcaifu.modules.generator.service;

import com.baomidou.mybatisplus.service.IService;
import com.yjcaifu.common.utils.PageUtils;
import com.yjcaifu.modules.generator.entity.BorCoborrowerCarEntity;
import com.yjcaifu.modules.generator.entity.BorCoborrowerEstateEntity;
import com.yjcaifu.modules.generator.entity.CusCarEntity;

import java.util.List;
import java.util.Map;

/**
 * 
 *
 * @author htshen
 * @email htshen@tom.com
 * @date 2018-05-22 15:35:54
 */
public interface BorCoborrowerCarService extends IService<BorCoborrowerCarEntity> {

    PageUtils queryPage(Map<String, Object> params);

	List<CusCarEntity> queryList(Map<String, Object> params);

	BorCoborrowerCarEntity queryById(Map<String, Object> params);

	void deleteByRefId(Map<String, Object> delParams);
	
	void deleteByCarIds(List<Integer> carIds);

	void deleteBatchByRefIds(List<Integer> refIds);
}

