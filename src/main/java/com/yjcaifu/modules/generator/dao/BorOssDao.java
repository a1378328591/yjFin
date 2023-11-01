package com.yjcaifu.modules.generator.dao;

import java.util.List;
import java.util.Map;

import com.yjcaifu.modules.generator.entity.BorOssEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;

import org.apache.ibatis.annotations.Mapper;

/**
 * 
 * 
 * @author htshen
 * @email htshen@tom.com
 * @date 2018-05-29 14:20:03
 */
@Mapper
public interface BorOssDao extends BaseMapper<BorOssEntity> {

	List<BorOssEntity> listByRefId(Map<String, Object> params);

	void deleteByBorOssId(Map<String, Object> params);

	void deleteBatchByRefIds(List<Integer> refIds);
	
}
