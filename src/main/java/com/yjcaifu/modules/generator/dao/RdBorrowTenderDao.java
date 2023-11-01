package com.yjcaifu.modules.generator.dao;

import java.util.List;
import java.util.Map;

import com.yjcaifu.modules.generator.entity.PersonalInfoEntity;
import com.yjcaifu.modules.generator.entity.RdBorrowEntity;
import com.yjcaifu.modules.generator.entity.RdBorrowTenderEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;

import org.apache.ibatis.annotations.Mapper;

/**
 * 投标表
 * 
 * @author chenshun
 * @email sunlightcs@gmail.com
 * @date 2018-05-21 14:58:11
 */
@Mapper
public interface RdBorrowTenderDao extends BaseMapper<RdBorrowTenderEntity> {
	
	/**
     * 日增总有效数
     */
	List<RdBorrowTenderEntity> rzzyxs(Map<String, Object> params);
	
	/**
     * 累计有效数
     */
	List<RdBorrowTenderEntity> ljyxs(Map<String, Object> params);
	
	/**
     * 日新增注册数
     */
	List<RdBorrowTenderEntity> rxzzcs(Map<String, Object> params);
	
	/**
     * 江西日增有效
     */
	List<RdBorrowTenderEntity> jxrzyx(Map<String, Object> params);
	
	/**
     * 签到登录数
     */
	List<RdBorrowTenderEntity> qddls(Map<String, Object> params);
	
	/**
     * 提现充值投标数
     */
	List<RdBorrowTenderEntity> txcztbs(Map<String, Object> params);
	
	/**
     * 日充值
     */
	List<RdBorrowTenderEntity> rcz(Map<String, Object> params);
	
	/**
     * 日提现
     */
	List<RdBorrowTenderEntity> rtx(Map<String, Object> params);
	
	/**
     * 当日充值明细
     */
	List<RdBorrowTenderEntity> drczmx(Map<String, Object> params);
	
	/**
     * 当日提现明细及原因分析
     */
	List<RdBorrowTenderEntity> drtx(Map<String, Object> params);
	
	/**
     * 近10日充值及投标分析
     */
	List<RdBorrowTenderEntity> tencztbfx(Map<String, Object> params);
	
	/**
     * 可用余额+待收利息+待收本金=账户总额
     */
	List<RdBorrowTenderEntity> zhze(Map<String, Object> params);
	
	/**
     * 当日发标额VS当日还款额VS当日可用总额
     */
	List<RdBorrowTenderEntity> drfbhk(Map<String, Object> params);
	/**
     * 累计成交金额
     */
	List<RdBorrowTenderEntity> ljcjje(Map<String, Object> params);
	/**
     * 标的号名称列表
     */
	List<RdBorrowEntity> selectBybidnoname(Map<String, Object> params);
}
