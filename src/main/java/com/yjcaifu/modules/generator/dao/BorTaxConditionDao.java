package com.yjcaifu.modules.generator.dao;

import java.util.List;
import java.util.Map;

import com.yjcaifu.modules.generator.entity.BorTaxConditionEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;

import org.apache.ibatis.annotations.Mapper;

/**
 * 
 * 
 * @author htshen
 * @email htshen@tom.com
 * @date 2018-05-27 11:20:01
 */
@Mapper
public interface BorTaxConditionDao extends BaseMapper<BorTaxConditionEntity> {

	BorTaxConditionEntity queryByRefId(Map<String, Object> params);

	List<Integer> queryListByRefId(List<Integer> refIds);

	List<Integer> queryListIntByRefId(Map<String, Object> params);

	List<BorTaxConditionEntity> queryListByRefIdParam(Map<String, Object> params);
	
}
