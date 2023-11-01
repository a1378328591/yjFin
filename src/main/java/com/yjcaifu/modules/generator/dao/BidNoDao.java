package com.yjcaifu.modules.generator.dao;

import java.math.BigDecimal;
import java.util.List;
import java.util.Map;

import com.yjcaifu.modules.generator.entity.BidNoEntity;
import com.yjcaifu.modules.generator.entity.LoanMiddleEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;

import org.apache.ibatis.annotations.Mapper;

/**
 * 标的号
 * 
 * @author chenshun
 * @email sunlightcs@gmail.com
 * @date 2018-06-12 14:56:06
 */
@Mapper
public interface BidNoDao extends BaseMapper<BidNoEntity> {
	List<BidNoEntity> selectByRefId(Integer refId);
	void deleteByRefId(Integer id);
	List<BidNoEntity> queryByName(String name);
	BigDecimal selectRefinance(Integer refId);
	BigDecimal queryRiskFund(String refId);
}
