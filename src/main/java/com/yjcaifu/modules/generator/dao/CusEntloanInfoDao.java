package com.yjcaifu.modules.generator.dao;

import java.util.List;
import java.util.Map;

import com.yjcaifu.modules.generator.entity.CusEntloanInfoEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;

import org.apache.ibatis.annotations.Mapper;

/**
 * 
 * 
 * @author htshen
 * @email htshen@tom.com
 * @date 2018-05-24 17:00:31
 */
@Mapper
public interface CusEntloanInfoDao extends BaseMapper<CusEntloanInfoEntity> {

	void deleteAllByEntCreditId(Integer id);

	void deleteByCreditId(List<Integer> ids);

	List<CusEntloanInfoEntity> queryListByCreditId(Integer id);
	
}
