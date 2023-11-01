package com.yjcaifu.modules.generator.service;

import com.baomidou.mybatisplus.service.IService;
import com.yjcaifu.common.utils.PageUtils;
import com.yjcaifu.modules.generator.entity.CusCreditInformationEntity;
import com.yjcaifu.modules.generator.entity.CusEntcreditInformationEntity;

import java.util.List;
import java.util.Map;

/**
 * 
 *
 * @author htshen
 * @email htshen@tom.com
 * @date 2018-05-23 19:43:06
 */
public interface CusEntcreditInformationService extends IService<CusEntcreditInformationEntity> {

    PageUtils queryPage(Map<String, Object> params);

	Integer insertAndReturnId(CusEntcreditInformationEntity cusEntCreditInfo);

	CusEntcreditInformationEntity selectByPerId(Map<String, Object> params);

	PageUtils pageByIds(Map<String, Object> params);

	List<CusEntcreditInformationEntity> listByIds(Map<String, Object> params);
	
	CusEntcreditInformationEntity selectById(Integer id);

	void deleteByEntId(List<Integer> entIdList);

	List<Integer> queryListByEntIds(List<Integer> entIds);
}

