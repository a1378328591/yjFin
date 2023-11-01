package com.yjcaifu.modules.generator.service;

import com.baomidou.mybatisplus.service.IService;
import com.yjcaifu.common.utils.PageUtils;
import com.yjcaifu.modules.generator.entity.BidNoEntity;

import java.math.BigDecimal;
import java.util.List;
import java.util.Map;

/**
 * 标的号
 *
 * @author chenshun
 * @email sunlightcs@gmail.com
 * @date 2018-06-12 14:56:06
 */
public interface BidNoService extends IService<BidNoEntity> {

    PageUtils queryPage(Map<String, Object> params);

    List<BidNoEntity> selectByRefId(Integer refId);
    
    void deleteByRefId(Integer refId);

	List<BidNoEntity> queryByName(String name);

	BigDecimal selectRefinance(Integer refId);

	BigDecimal queryRiskFund(String refId);
}

