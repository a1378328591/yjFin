package com.yjcaifu.modules.generator.service.impl;

import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;

import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.baomidou.mybatisplus.plugins.Page;
import com.baomidou.mybatisplus.service.impl.ServiceImpl;
import com.yjcaifu.common.utils.PageUtils;
import com.yjcaifu.common.utils.Query;
import com.yjcaifu.modules.generator.dao.BorBaseCityDao;
import com.yjcaifu.modules.generator.entity.BorBaseCityEntity;
import com.yjcaifu.modules.generator.service.BorBaseCityService;


@Service("borBaseCityService")
public class BorBaseCityServiceImpl extends ServiceImpl<BorBaseCityDao, BorBaseCityEntity> implements BorBaseCityService {

    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<BorBaseCityEntity> page = this.selectPage(
                new Query<BorBaseCityEntity>(params).getPage(),
                new EntityWrapper<BorBaseCityEntity>()
        );

        return new PageUtils(page);
    }

	@Override
	public BorBaseCityEntity queryByRefId(Map<String, Object> params) {
		BorBaseCityEntity baseCityEntity=baseMapper.queryByRefId(params);
		return baseCityEntity;
	}

	@Override
	public void deleteBatchByRefId(List<Integer> refIds) {
		baseMapper.deleteBatchByRefId(refIds);
		
	}

}
