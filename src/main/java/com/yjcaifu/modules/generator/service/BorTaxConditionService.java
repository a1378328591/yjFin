package com.yjcaifu.modules.generator.service;

import com.baomidou.mybatisplus.service.IService;
import com.yjcaifu.common.utils.PageUtils;
import com.yjcaifu.modules.generator.entity.BorTaxConditionEntity;

import java.util.List;
import java.util.Map;

/**
 * 
 *
 * @author htshen
 * @email htshen@tom.com
 * @date 2018-05-27 11:20:01
 */
public interface BorTaxConditionService extends IService<BorTaxConditionEntity> {

    PageUtils queryPage(Map<String, Object> params);

	BorTaxConditionEntity queryByRefId(Map<String, Object> params);

	List<Integer> queryListByRefId(List<Integer> refIds);

	List<Integer> queryListIntByRefId(Map<String, Object> params);

	List<BorTaxConditionEntity> queryListByRefIdParam(Map<String, Object> params);
}

