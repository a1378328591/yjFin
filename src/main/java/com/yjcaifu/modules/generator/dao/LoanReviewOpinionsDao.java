package com.yjcaifu.modules.generator.dao;

import com.yjcaifu.modules.generator.entity.LoanReviewOpinionsEntity;

import io.lettuce.core.dynamic.annotation.Param;

import com.baomidou.mybatisplus.mapper.BaseMapper;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.annotations.Mapper;

/**
 * InnoDB free: 9216 kB
 * 
 * @author chenshun
 * @email sunlightcs@gmail.com
 * @date 2018-05-24 11:29:56
 */
@Mapper
public interface LoanReviewOpinionsDao extends BaseMapper<LoanReviewOpinionsEntity> {
	
	List<LoanReviewOpinionsEntity> selectByrefId(Integer refId);
	
	LoanReviewOpinionsEntity selectOnceRecord(HashMap<String, Object> map);

	void deleteAllByLoanMiddleId(Integer id);

	void deleteBatchByMainTabIds(List<Integer> mainTabIds);
	
}
