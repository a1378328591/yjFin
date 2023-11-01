package com.yjcaifu.modules.generator.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;

import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.baomidou.mybatisplus.plugins.Page;
import com.baomidou.mybatisplus.service.impl.ServiceImpl;
import com.yjcaifu.common.utils.PageUtils;
import com.yjcaifu.common.utils.Query;
import com.yjcaifu.datasources.DataSourceNames;
import com.yjcaifu.datasources.annotation.DataSource;
import com.yjcaifu.modules.generator.dao.CusCarDao;
import com.yjcaifu.modules.generator.dao.RdBorrowTenderDao;
import com.yjcaifu.modules.generator.entity.PersonalInfoEntity;
import com.yjcaifu.modules.generator.entity.RdBorrowEntity;
import com.yjcaifu.modules.generator.entity.RdBorrowTenderEntity;
import com.yjcaifu.modules.generator.service.RdBorrowTenderService;


@Service("rdBorrowTenderService")
public class RdBorrowTenderServiceImpl extends ServiceImpl<RdBorrowTenderDao, RdBorrowTenderEntity> implements RdBorrowTenderService {
	@Autowired
	RdBorrowTenderDao borrowTenderDao;
    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<RdBorrowTenderEntity> page = this.selectPage(
                new Query<RdBorrowTenderEntity>(params).getPage(),
                new EntityWrapper<RdBorrowTenderEntity>()
        );

        return new PageUtils(page);
    }

    /**
     * 日增总有效数
     */
	@Override
	public List<RdBorrowTenderEntity> rzzyxs(Map<String, Object> params) {
		List<RdBorrowTenderEntity> list = borrowTenderDao.rzzyxs(params);
		return list;
	}
	
	/**
     * 累计有效数
     */
	@Override
	public List<RdBorrowTenderEntity> ljyxs(Map<String, Object> params) {
		List<RdBorrowTenderEntity> list = borrowTenderDao.ljyxs(params);
		return list;
	}
	
	/**
     * 日新增注册数
     */
	@Override
	public List<RdBorrowTenderEntity> rxzzcs(Map<String, Object> params) {
		List<RdBorrowTenderEntity> list = borrowTenderDao.rxzzcs(params);
		return list;
	}
	
	/**
     * 江西日增有效
     */
	@Override
	public List<RdBorrowTenderEntity> jxrzyx(Map<String, Object> params) {
		List<RdBorrowTenderEntity> list = borrowTenderDao.jxrzyx(params);
		return list;
	}
	
	/**
     * 签到登录数
     */
	@Override
	public List<RdBorrowTenderEntity> qddls(Map<String, Object> params) {
		List<RdBorrowTenderEntity> list = borrowTenderDao.qddls(params);
		return list;
	}
	
	/**
     * 提现充值投标数
     */
	@Override
	public List<RdBorrowTenderEntity> txcztbs(Map<String, Object> params) {
		List<RdBorrowTenderEntity> list = borrowTenderDao.txcztbs(params);
		return list;
	}
	
	/**
     * 日充值
     */
	@Override
	public List<RdBorrowTenderEntity> rcz(Map<String, Object> params) {
		List<RdBorrowTenderEntity> list = borrowTenderDao.rcz(params);
		return list;
	}
	
	/**
     * 日提现
     */
	@Override
	public List<RdBorrowTenderEntity> rtx(Map<String, Object> params) {
		List<RdBorrowTenderEntity> list = borrowTenderDao.rtx(params);
		return list;
	}
	
	/**
     * 当日充值明细
     */
	@Override
	public List<RdBorrowTenderEntity> drczmx(Map<String, Object> params) {
		List<RdBorrowTenderEntity> drczmx=borrowTenderDao.drczmx(params);
		return drczmx;
	}
	
	/**
     * 当日提现明细及原因分析
     */
	@Override
	public List<RdBorrowTenderEntity> drtx(Map<String, Object> params) {
		List<RdBorrowTenderEntity> drtx=borrowTenderDao.drtx(params);
		return drtx;
	}
	/**
     * 近10日充值及投标分析
     */
	@Override
	public List<RdBorrowTenderEntity> tencztbfx(Map<String, Object> params) {
		List<RdBorrowTenderEntity> drtx=borrowTenderDao.tencztbfx(params);
		return drtx;
	}
	
	/**
     * 可用余额+待收利息+待收本金=账户总额
     */
	@Override
	public List<RdBorrowTenderEntity> zhze(Map<String, Object> params) {
		List<RdBorrowTenderEntity> zhze=borrowTenderDao.zhze(params);
		return zhze;
	}
	
	/**
     * 当日发标额VS当日还款额VS当日可用总额
     */
	@Override
	public List<RdBorrowTenderEntity> drfbhk(Map<String, Object> params) {
		List<RdBorrowTenderEntity> drfbhk=borrowTenderDao.drfbhk(params);
		return drfbhk;
	}
	
	/**
     * 累计成交金额
     */
	@Override
	public List<RdBorrowTenderEntity> ljcjje(Map<String, Object> params) {
		List<RdBorrowTenderEntity> ljcjje=borrowTenderDao.ljcjje(params);
		return ljcjje;
	}
	/**
     * 标的号名称列表
     */
	@Override
	@DataSource(name = DataSourceNames.THIRD)
	public List<RdBorrowEntity> selectBybidnoname(Map<String, Object> params) {
		List<RdBorrowEntity> ljcjje=borrowTenderDao.selectBybidnoname(params);
		return ljcjje;
	}
}
