package com.yjcaifu.modules.generator.service;

import com.baomidou.mybatisplus.service.IService;
import com.yjcaifu.common.utils.PageUtils;
import com.yjcaifu.modules.generator.entity.BorBankStatementEntity;

import java.util.List;
import java.util.Map;

/**
 * 
 *
 * @author htshen
 * @email htshen@tom.com
 * @date 2018-05-26 12:53:52
 */
public interface BorBankStatementService extends IService<BorBankStatementEntity> {

    PageUtils queryPage(Map<String, Object> params);

	List<BorBankStatementEntity> queryByRefId(Map<String, Object> params);

	void deleteNotInIds(Map<String, Object> delParams);

	List<Integer> queryListIdByRefId(List<Integer> refIds);

}

