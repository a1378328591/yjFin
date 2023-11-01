package com.yjcaifu.modules.generator.dao;

import java.util.List;
import java.util.Map;

import com.yjcaifu.modules.generator.entity.BorCoborrowerCarEntity;
import com.yjcaifu.modules.generator.entity.CusCarEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;

import org.apache.ibatis.annotations.Mapper;

/**
 * 
 * 
 * @author htshen
 * @email htshen@tom.com
 * @date 2018-05-22 15:35:54
 */
@Mapper
public interface BorCoborrowerCarDao extends BaseMapper<BorCoborrowerCarEntity> {

	List<CusCarEntity> queryList(Map<String, Object> params);

	BorCoborrowerCarEntity queryById(Map<String, Object> params);

	void deleteByRefId(Map<String, Object> delParams);

	void deleteByCarIds(List<Integer> carIds);

	void deleteBatchByRefIds(List<Integer> refIds);

}
