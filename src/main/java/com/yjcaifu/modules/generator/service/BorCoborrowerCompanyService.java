package com.yjcaifu.modules.generator.service;

import com.baomidou.mybatisplus.service.IService;
import com.yjcaifu.common.utils.PageUtils;
import com.yjcaifu.modules.generator.entity.BorCoborrowerCompanyEntity;

import java.util.List;
import java.util.Map;

/**
 * 
 *
 * @author htshen
 * @email htshen@tom.com
 * @date 2018-05-16 08:50:20
 */
public interface BorCoborrowerCompanyService extends IService<BorCoborrowerCompanyEntity> {

    PageUtils queryPage(Map<String, Object> params);
    BorCoborrowerCompanyEntity queryById(Map<String, Object> params);
	List<BorCoborrowerCompanyEntity> queryBorCompList(Map<String, Object> params);
	void deleteBatchByIds(Map<String, Object> delParams);
	void deleteBatchByEntIds(List<Integer> entIds);
	void deleteBatchByRefIds(List<Integer> borrInfoList);
}

