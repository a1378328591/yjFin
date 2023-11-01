package com.yjcaifu.modules.generator.dao;

import java.util.List;
import java.util.Map;

import com.yjcaifu.modules.generator.entity.BorCreditEnterpriseEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;

import org.apache.ibatis.annotations.Mapper;

/**
 * 
 * 
 * @author htshen
 * @email htshen@tom.com
 * @date 2018-05-25 15:37:17
 */
@Mapper
public interface BorCreditEnterpriseDao extends BaseMapper<BorCreditEnterpriseEntity> {

	List<BorCreditEnterpriseEntity> queryByRefId(Map<String, Object> params);

	void deleteBorCreditByRefId(Map<String, Object> delParams);

	void deleteByCreditId(List<Integer> ids);

	void deleteByRefIds(List<Integer> refIds);
	
}
