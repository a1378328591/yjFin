package com.yjcaifu.modules.generator.dao;

import java.util.List;
import java.util.Map;

import com.yjcaifu.modules.generator.entity.BorCoborrowerEstateEntity;
import com.yjcaifu.modules.generator.entity.CusEstateEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;

import org.apache.ibatis.annotations.Mapper;

/**
 * 
 * 
 * @author htshen
 * @email htshen@tom.com
 * @date 2018-05-22 15:35:53
 */
@Mapper
public interface BorCoborrowerEstateDao extends BaseMapper<BorCoborrowerEstateEntity> {

	List<CusEstateEntity> queryList(Map<String, Object> params);

	BorCoborrowerEstateEntity queryById(Map<String, Object> params);

	void deleteByRefId(Map<String, Object> delParams);

	void deleteByEsateIds(List<Integer> esateIds);

	void deleteByRefIds(List<Integer> refIds);

}
