package com.yjcaifu.modules.generator.dao;

import java.util.List;
import java.util.Map;

import com.yjcaifu.modules.generator.entity.BorBaseCityEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;

import org.apache.ibatis.annotations.Mapper;

/**
 * 
 * 
 * @author htshen
 * @email htshen@tom.com
 * @date 2018-06-13 13:28:00
 */
@Mapper
public interface BorBaseCityDao extends BaseMapper<BorBaseCityEntity> {

	BorBaseCityEntity queryByRefId(Map<String, Object> params);

	void deleteBatchByRefId(List<Integer> refIds);
	
}
