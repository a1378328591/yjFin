package com.yjcaifu.modules.generator.dao;

import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

import com.baomidou.mybatisplus.mapper.BaseMapper;
import com.yjcaifu.modules.generator.entity.BorBankStatementEntity;
import com.yjcaifu.modules.generator.entity.BorBaseCityEntity;
import com.yjcaifu.modules.generator.entity.CusBankStatementsEntity;

@Mapper
public interface BorBankstatementRecordDao extends BaseMapper<BorBankStatementEntity>{
	
	void deleteByRefId(Map<String, Object> params);
	CusBankStatementsEntity queryListByMainTableId(Map<String, Object> params);
}
