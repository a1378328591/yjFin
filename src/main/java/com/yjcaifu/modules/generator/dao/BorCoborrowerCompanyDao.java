package com.yjcaifu.modules.generator.dao;

import java.util.List;
import java.util.Map;

import com.yjcaifu.modules.generator.entity.BorCoborrowerCompanyEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;

import org.apache.ibatis.annotations.Mapper;

/**
 * 
 * 
 * @author htshen
 * @email htshen@tom.com
 * @date 2018-05-16 08:50:20
 */
@Mapper
public interface BorCoborrowerCompanyDao extends BaseMapper<BorCoborrowerCompanyEntity> {

	BorCoborrowerCompanyEntity queryById(Map<String, Object> params);

	List<BorCoborrowerCompanyEntity> queryBorCompList(Map<String, Object> params);

	void deleteBatchByIds(Map<String, Object> delParams);

	void deleteBatchByEntIds(Integer[] entIds);

	void deleteBatchByEntIds(List<Integer> entIds);

	void deleteBatchByRefIds(List<Integer> refIds);
	
}
