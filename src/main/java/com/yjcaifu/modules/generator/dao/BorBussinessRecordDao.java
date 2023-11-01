package com.yjcaifu.modules.generator.dao;

import java.util.List;
import java.util.Map;

import com.yjcaifu.modules.generator.entity.BorBussinessRecordEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;

import org.apache.ibatis.annotations.Mapper;

/**
 * 
 * 
 * @author htshen
 * @email htshen@tom.com
 * @date 2018-05-27 15:04:27
 */
@Mapper
public interface BorBussinessRecordDao extends BaseMapper<BorBussinessRecordEntity> {

	List<BorBussinessRecordEntity> queryAllByBussDataId(Map<String, Object> params);

	void deleteAllByRefId(Map<String, Object> delParams);

	void deleteBatchByMainTabId(List<Integer> mainTabIds);
	
}
