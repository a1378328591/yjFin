package com.yjcaifu.modules.generator.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.yjcaifu.modules.generator.entity.BorCoborrowerInquiryEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;

import org.apache.ibatis.annotations.Mapper;

/**
 * 
 * 
 * @author htshen
 * @email htshen@tom.com
 * @date 2018-05-21 13:19:21
 */
@Mapper
public interface BorCoborrowerInquiryDao extends BaseMapper<BorCoborrowerInquiryEntity> {

	BorCoborrowerInquiryEntity queryById(Map<String, Object> params);

	List<Integer> queryList(Integer borrId);

	void deleteBatchByIds(Map<String, Object> delParams);

	void deleteBatchByRefId(List<Integer> refIds);
	
}
