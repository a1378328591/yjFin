package com.yjcaifu.modules.generator.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.math.BigDecimal;
import java.util.List;
import java.util.Map;

import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.baomidou.mybatisplus.plugins.Page;
import com.baomidou.mybatisplus.service.impl.ServiceImpl;
import com.yjcaifu.common.utils.PageUtils;
import com.yjcaifu.common.utils.Query;
import com.yjcaifu.modules.generator.dao.BidNoDao;
import com.yjcaifu.modules.generator.entity.BidNoEntity;
import com.yjcaifu.modules.generator.service.BidNoService;


@Service("bidNoService")
public class BidNoServiceImpl extends ServiceImpl<BidNoDao, BidNoEntity> implements BidNoService {

	@Autowired
	private BidNoDao BidNoDao;
    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<BidNoEntity> page = this.selectPage(
                new Query<BidNoEntity>(params).getPage(),
                new EntityWrapper<BidNoEntity>()
        );

        return new PageUtils(page);
    }

	@Override
	public List<BidNoEntity> selectByRefId(Integer refId) {
		return BidNoDao.selectByRefId(refId);
	}
	@Override
	public void deleteByRefId(Integer refId) {
		baseMapper.deleteByRefId(refId);
		
	}

	@Override
	public List<BidNoEntity> queryByName(String name) {
		List<BidNoEntity> bidNoList = baseMapper.queryByName(name);
		return bidNoList;
	}

	@Override
	public BigDecimal selectRefinance(Integer refId) {
		BigDecimal lastRefinance = baseMapper.selectRefinance(refId);
		return lastRefinance;
	}

	@Override
	public BigDecimal queryRiskFund(String refId) {
		BigDecimal lastRefinance = baseMapper.queryRiskFund(refId);
		return lastRefinance;
	}
}
