package com.yjcaifu.modules.generator.dao;

import io.lettuce.core.dynamic.annotation.Param;

import java.util.List;
import java.util.Map;

import com.yjcaifu.modules.generator.entity.CusLoanInfoEntity;
import com.yjcaifu.modules.generator.entity.PersonalInfoEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import com.baomidou.mybatisplus.plugins.Page;

import org.apache.ibatis.annotations.Mapper;

/**
 * 
 * 
 * @author htshen
 * @email htshen@tom.com
 * @date 2018-05-14 09:47:26
 */
@Mapper
public interface CusLoanInfoDao extends BaseMapper<CusLoanInfoEntity> {

	List<PersonalInfoEntity> selectAll(Page<PersonalInfoEntity> loanPage,
			Map<String, Object> params);

	void deleteAllByPerCreditId(Integer id);

	List<CusLoanInfoEntity> queryListByCreditId(Integer id);

	void deleteByCreditId(List<Integer> creditIds);
	
}
