package com.yjcaifu.modules.generator.dao;

import java.util.List;
import java.util.Map;

import com.yjcaifu.modules.generator.entity.BorBankStatementEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;

import org.apache.ibatis.annotations.Mapper;

/**
 * 
 * 
 * @author htshen
 * @email htshen@tom.com
 * @date 2018-05-26 12:53:52
 */
@Mapper
public interface BorBankStatementDao extends BaseMapper<BorBankStatementEntity> {

	List<BorBankStatementEntity> queryByRefId(Map<String, Object> params);

	void deleteNotInIds(Map<String, Object> delParams);

	List<Integer> queryListIdByRefId(List<Integer> refIds);
	
}
