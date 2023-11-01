package com.yjcaifu.modules.generator.dao;

import java.util.List;
import java.util.Map;

import com.yjcaifu.modules.generator.entity.BorTaxRecordEntity;
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
public interface BorTaxRecordDao extends BaseMapper<BorTaxRecordEntity> {

	List<BorTaxRecordEntity> queryListByTaxCondId(Map<String, Object> params);

	void deleteAllByRefId(Map<String, Object> delParams);

	void deleteBatchByMainTabIds(List<Integer> mainTabIds);
	
}
