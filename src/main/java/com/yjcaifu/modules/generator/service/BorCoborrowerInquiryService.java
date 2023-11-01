package com.yjcaifu.modules.generator.service;

import com.baomidou.mybatisplus.service.IService;
import com.yjcaifu.common.utils.PageUtils;
import com.yjcaifu.modules.generator.entity.BorCoborrowerInquiryEntity;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * 
 *
 * @author htshen
 * @email htshen@tom.com
 * @date 2018-05-21 13:19:21
 */
public interface BorCoborrowerInquiryService extends IService<BorCoborrowerInquiryEntity> {

    PageUtils queryPage(Map<String, Object> params);

	BorCoborrowerInquiryEntity queryById(Map<String, Object> params);

	List<Integer> queryList(Integer borrId);

	void deleteBatchByIds(Map<String, Object> delParams);

	void deleteBatchByRefId(List<Integer> refIds);
}

