package com.yjcaifu.modules.generator.service;

import com.baomidou.mybatisplus.service.IService;
import com.yjcaifu.common.utils.PageUtils;
import com.yjcaifu.modules.generator.entity.BorLoanPurposeEntity;

import java.util.List;
import java.util.Map;

/**
 * 
 *
 * @author htshen
 * @email htshen@tom.com
 * @date 2018-05-23 15:23:15
 */
public interface BorLoanPurposeService extends IService<BorLoanPurposeEntity> {

    PageUtils queryPage(Map<String, Object> params);

	List<BorLoanPurposeEntity> queryListById(Map<String, Object> params);

	void deleteBatchByRefIds(List<Integer> refIdS);

}

