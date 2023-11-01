package com.yjcaifu.modules.generator.service.impl;

import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;

import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.baomidou.mybatisplus.plugins.Page;
import com.baomidou.mybatisplus.service.impl.ServiceImpl;
import com.yjcaifu.common.utils.PageUtils;
import com.yjcaifu.common.utils.Query;
import com.yjcaifu.modules.generator.dao.BorTaxConditionDao;
import com.yjcaifu.modules.generator.entity.BorTaxConditionEntity;
import com.yjcaifu.modules.generator.service.BorTaxConditionService;


@Service("borTaxConditionService")
public class BorTaxConditionServiceImpl extends ServiceImpl<BorTaxConditionDao, BorTaxConditionEntity> implements BorTaxConditionService {

    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<BorTaxConditionEntity> page = this.selectPage(
                new Query<BorTaxConditionEntity>(params).getPage(),
                new EntityWrapper<BorTaxConditionEntity>()
        );

        return new PageUtils(page);
    }

	@Override
	public BorTaxConditionEntity queryByRefId(Map<String, Object> params) {
		BorTaxConditionEntity borTaxCondition=baseMapper.queryByRefId(params);
		return borTaxCondition;
	}

	@Override
	public List<Integer> queryListByRefId(List<Integer> refIds) {
		List<Integer> taxCondition = baseMapper.queryListByRefId(refIds);
		return taxCondition;
	}

	@Override
	public List<Integer> queryListIntByRefId(Map<String, Object> params) {
		List<Integer> taxCondition = baseMapper.queryListIntByRefId(params);
		return taxCondition;
	}

	@Override
	public List<BorTaxConditionEntity> queryListByRefIdParam(Map<String, Object> params) {
		List<BorTaxConditionEntity> borTaxCondition=baseMapper.queryListByRefIdParam(params);
		return borTaxCondition;
	}

}
