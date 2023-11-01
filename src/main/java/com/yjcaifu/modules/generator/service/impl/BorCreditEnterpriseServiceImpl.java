package com.yjcaifu.modules.generator.service.impl;

import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;

import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.baomidou.mybatisplus.plugins.Page;
import com.baomidou.mybatisplus.service.impl.ServiceImpl;
import com.yjcaifu.common.utils.PageUtils;
import com.yjcaifu.common.utils.Query;
import com.yjcaifu.modules.generator.dao.BorCreditEnterpriseDao;
import com.yjcaifu.modules.generator.entity.BorCreditEnterpriseEntity;
import com.yjcaifu.modules.generator.service.BorCreditEnterpriseService;


@Service("borCreditEnterpriseService")
public class BorCreditEnterpriseServiceImpl extends ServiceImpl<BorCreditEnterpriseDao, BorCreditEnterpriseEntity> implements BorCreditEnterpriseService {

    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<BorCreditEnterpriseEntity> page = this.selectPage(
                new Query<BorCreditEnterpriseEntity>(params).getPage(),
                new EntityWrapper<BorCreditEnterpriseEntity>()
        );

        return new PageUtils(page);
    }

	@Override
	public List<BorCreditEnterpriseEntity> queryByRefId(Map<String, Object> params) {
		List<BorCreditEnterpriseEntity> creditEnt = baseMapper.queryByRefId(params);
		return creditEnt;
	}

	@Override
	public void deleteBorCreditByRefId(Map<String, Object> delParams) {
		baseMapper.deleteBorCreditByRefId(delParams);
		
	}

	@Override
	public void deleteByCreditId(List<Integer> ids) {
		baseMapper.deleteByCreditId(ids);
		
	}

	@Override
	public void deleteByRefIds(List<Integer> refIds) {
		baseMapper.deleteByRefIds(refIds);
		
	}

}
