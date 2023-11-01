package com.yjcaifu.modules.generator.dao;

import java.util.List;
import java.util.Map;

import com.yjcaifu.modules.generator.entity.CusCreditInformationEntity;
import com.yjcaifu.modules.generator.entity.CusEntcreditInformationEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import com.baomidou.mybatisplus.plugins.Page;

import org.apache.ibatis.annotations.Mapper;

/**
 * 
 * 
 * @author htshen
 * @email htshen@tom.com
 * @date 2018-05-23 19:43:06
 */
@Mapper
public interface CusEntcreditInformationDao extends BaseMapper<CusEntcreditInformationEntity> {

	Integer insertAndReturnId(CusEntcreditInformationEntity cusEntCreditInfo);

	List<CusEntcreditInformationDao> selectAll(Page<CusEntcreditInformationDao> entcreditInfo,Map<String, Object> params);

	CusEntcreditInformationEntity selectByPerId(Map<String, Object> params);

	List<CusEntcreditInformationEntity> pageByIds(Page<CusEntcreditInformationEntity> cusEntCreditCarPage,Map<String, Object> params);

	List<CusEntcreditInformationEntity> listByIds(Map<String, Object> params);
	
	CusEntcreditInformationEntity selectById(Integer id);

	void deleteByEntId(List<Integer> entIdList);

	List<Integer> queryListByEntIds(List<Integer> entIds);
}
