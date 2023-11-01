package com.yjcaifu.modules.generator.dao;

import java.util.List;
import java.util.Map;

import com.yjcaifu.modules.generator.entity.BorCoborrowerPersonalEntity;
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
public interface BorCoborrowerPersonalDao extends BaseMapper<BorCoborrowerPersonalEntity> {

	BorCoborrowerPersonalEntity queryById(Map<String, Object> params);

	List<BorCoborrowerPersonalEntity> queryList(Map<String, Object> params);

	void deleteBatchByIds(Map<String, Object> delParams);

	void deleteBatchByRefIds(List<Integer> refIds);
	
}
