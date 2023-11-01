package com.yjcaifu.modules.generator.service;

import com.baomidou.mybatisplus.service.IService;
import com.yjcaifu.common.utils.PageUtils;
import com.yjcaifu.modules.generator.entity.CusBankStatementsEntity;

import java.util.List;
import java.util.Map;

/**
 * 
 *
 * @author htshen
 * @email htshen@tom.com
 * @date 2018-05-14 15:23:46
 */
public interface CusBankStatementsService extends IService<CusBankStatementsEntity> {

    PageUtils queryPage(Map<String, Object> params);

	PageUtils listByPersonalId(Map<String, Object> params);

	List<CusBankStatementsEntity> queryByIds(Map<String, Object> params);

	List<CusBankStatementsEntity> queryListByMainTableId(Map<String, Object> params);

	void deleteNotInIds(Map<String, Object> params);

	void deleteBatchByBankSIds(List<Integer> bankSIds);
}

