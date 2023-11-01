package com.yjcaifu.modules.generator.service.impl;

import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;

import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.baomidou.mybatisplus.plugins.Page;
import com.baomidou.mybatisplus.service.impl.ServiceImpl;
import com.yjcaifu.common.utils.PageUtils;
import com.yjcaifu.common.utils.Query;
import com.yjcaifu.modules.generator.dao.BorCreditPersonalDao;
import com.yjcaifu.modules.generator.entity.BorCreditPersonalEntity;
import com.yjcaifu.modules.generator.service.BorCreditPersonalService;


@Service("borCreditPersonalService")
public class BorCreditPersonalServiceImpl extends ServiceImpl<BorCreditPersonalDao, BorCreditPersonalEntity> implements BorCreditPersonalService {

    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<BorCreditPersonalEntity> page = this.selectPage(
                new Query<BorCreditPersonalEntity>(params).getPage(),
                new EntityWrapper<BorCreditPersonalEntity>()
        );

        return new PageUtils(page);
    }

	@Override
	public List<BorCreditPersonalEntity> queryByRefId(Map<String, Object> params) {
		List<BorCreditPersonalEntity> creditPersonal=baseMapper.queryByRefId(params);
		return creditPersonal;
	}

	@Override
	public void deleteByRefId(Map<String, Object> delParams) {
		baseMapper.deleteByRefId(delParams);
	}

	@Override
	public void deleteBorCreditByRefId(Map<String, Object> delParams) {
		baseMapper.deleteBorCreditByRefId(delParams);
		
	}

	@Override
	public void deleteByCreditId(List<Integer> creditIds) {
		baseMapper.deleteByCreditId(creditIds);
		
	}

	@Override
	public void deleteBatchByRefIds(List<Integer> refIds) {
		baseMapper.deleteBatchByRefIds(refIds);
		
	}

}
