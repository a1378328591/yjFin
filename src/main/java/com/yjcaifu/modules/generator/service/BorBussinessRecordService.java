package com.yjcaifu.modules.generator.service;

import com.baomidou.mybatisplus.service.IService;
import com.yjcaifu.common.utils.PageUtils;
import com.yjcaifu.modules.generator.entity.BorBussinessRecordEntity;

import java.util.List;
import java.util.Map;

/**
 * 
 *
 * @author htshen
 * @email htshen@tom.com
 * @date 2018-05-27 15:04:27
 */
public interface BorBussinessRecordService extends IService<BorBussinessRecordEntity> {

    PageUtils queryPage(Map<String, Object> params);

	List<BorBussinessRecordEntity> queryAllByBussDataId(Map<String, Object> params);

	void deleteAllByRefId(Map<String, Object> delParams);

	void deleteBatchByMainTabId(List<Integer> mainTabIds);
}

