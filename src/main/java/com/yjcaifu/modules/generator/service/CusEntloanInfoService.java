package com.yjcaifu.modules.generator.service;

import com.baomidou.mybatisplus.service.IService;
import com.yjcaifu.common.utils.PageUtils;
import com.yjcaifu.modules.generator.entity.CusEntloanInfoEntity;

import java.util.List;
import java.util.Map;

/**
 * 
 *
 * @author htshen
 * @email htshen@tom.com
 * @date 2018-05-24 17:00:31
 */
public interface CusEntloanInfoService extends IService<CusEntloanInfoEntity> {

    PageUtils queryPage(Map<String, Object> params);

	void deleteAllByEntCreditId(Integer id);

	void deleteByCreditId(List<Integer> ids);

	List<CusEntloanInfoEntity> queryListByCreditId(Integer id);
}

