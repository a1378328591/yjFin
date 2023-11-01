package com.yjcaifu.modules.generator.dao;

import java.util.List;
import java.util.Map;

import com.yjcaifu.modules.generator.entity.CusBankStatementsEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import com.baomidou.mybatisplus.plugins.Page;

import org.apache.ibatis.annotations.Mapper;

/**
 * 
 * 
 * @author htshen
 * @email htshen@tom.com
 * @date 2018-05-14 15:23:46
 */
@Mapper
public interface CusBankStatementsDao extends BaseMapper<CusBankStatementsEntity> {

	List<CusBankStatementsEntity> selectAll(Page<CusBankStatementsEntity> bankStatementPage,Map<String, Object> params);

	List<CusBankStatementsEntity> listByPersonalId(Page<CusBankStatementsEntity> bankStatementPage,Map<String, Object> params);

	List<CusBankStatementsEntity> queryByIds(Map<String, Object> params);

	List<CusBankStatementsEntity> queryListByMainTableId(Map<String, Object> params);

	void deleteNotInIds(Map<String, Object> params);

	void deleteBatchByBankSIds(List<Integer> bankSIds);
	
}
