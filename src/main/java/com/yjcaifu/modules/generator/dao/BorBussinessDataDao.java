package com.yjcaifu.modules.generator.dao;

import java.util.List;
import java.util.Map;

import com.yjcaifu.modules.generator.entity.BorBussinessDataEntity;
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
public interface BorBussinessDataDao extends BaseMapper<BorBussinessDataEntity> {

	List<BorBussinessDataEntity> queryByRefId(Map<String, Object> params);

	List<Integer> queryListByRefIds(List<Integer> refIds);
	
}
