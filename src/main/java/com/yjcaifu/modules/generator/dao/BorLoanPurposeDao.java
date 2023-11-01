package com.yjcaifu.modules.generator.dao;

import java.util.List;
import java.util.Map;

import com.yjcaifu.modules.generator.entity.BorLoanPurposeEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;

import org.apache.ibatis.annotations.Mapper;

/**
 * 
 * 
 * @author htshen
 * @email htshen@tom.com
 * @date 2018-05-23 15:23:15
 */
@Mapper
public interface BorLoanPurposeDao extends BaseMapper<BorLoanPurposeEntity> {

	List<BorLoanPurposeEntity> queryListById(Map<String, Object> params);

	void deleteBatchByRefIds(List<Integer> refIdS);
	
}
