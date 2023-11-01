package com.yjcaifu.modules.generator.service;

import com.baomidou.mybatisplus.service.IService;
import com.yjcaifu.common.utils.PageUtils;
import com.yjcaifu.modules.generator.entity.BorTaxRecordEntity;

import java.util.List;
import java.util.Map;

/**
 * 
 *
 * @author htshen
 * @email htshen@tom.com
 * @date 2018-05-27 11:20:01
 */
public interface BorTaxRecordService extends IService<BorTaxRecordEntity> {

    PageUtils queryPage(Map<String, Object> params);

	List<BorTaxRecordEntity> queryListByTaxCondId(Map<String, Object> params);

	void deleteAllByRefId(Map<String, Object> delParams);

	void deleteBatchByMainTabIds(List<Integer> mainTabIds);
}

