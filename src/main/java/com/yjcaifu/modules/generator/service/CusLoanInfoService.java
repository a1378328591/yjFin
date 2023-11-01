package com.yjcaifu.modules.generator.service;

import com.baomidou.mybatisplus.service.IService;
import com.yjcaifu.common.utils.PageUtils;
import com.yjcaifu.modules.generator.entity.CusLoanInfoEntity;

import java.util.List;
import java.util.Map;

/**
 * 
 *
 * @author htshen
 * @email htshen@tom.com
 * @date 2018-05-14 09:47:26
 */
public interface CusLoanInfoService extends IService<CusLoanInfoEntity> {

    PageUtils queryPage(Map<String, Object> params);
    CusLoanInfoEntity selectById(Integer id);
	void deleteAllByPerCreditId(Integer id);
	List<CusLoanInfoEntity> queryListByCreditId(Integer id);
	void deleteByCreditId(List<Integer> entCIds);
}

