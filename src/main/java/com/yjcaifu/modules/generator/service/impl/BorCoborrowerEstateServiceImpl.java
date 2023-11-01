package com.yjcaifu.modules.generator.service.impl;

import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;

import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.baomidou.mybatisplus.plugins.Page;
import com.baomidou.mybatisplus.service.impl.ServiceImpl;
import com.yjcaifu.common.utils.PageUtils;
import com.yjcaifu.common.utils.Query;
import com.yjcaifu.modules.generator.dao.BorCoborrowerEstateDao;
import com.yjcaifu.modules.generator.entity.BorCoborrowerCarEntity;
import com.yjcaifu.modules.generator.entity.BorCoborrowerEstateEntity;
import com.yjcaifu.modules.generator.entity.CusEstateEntity;
import com.yjcaifu.modules.generator.service.BorCoborrowerEstateService;


@Service("borCoborrowerEstateService")
public class BorCoborrowerEstateServiceImpl extends ServiceImpl<BorCoborrowerEstateDao, BorCoborrowerEstateEntity> implements BorCoborrowerEstateService {

    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<BorCoborrowerEstateEntity> page = this.selectPage(
                new Query<BorCoborrowerEstateEntity>(params).getPage(),
                new EntityWrapper<BorCoborrowerEstateEntity>()
        );

        return new PageUtils(page);
    }

	@Override
	public List<CusEstateEntity> queryList(Map<String, Object> params) {
		List<CusEstateEntity> estateList=baseMapper.queryList(params);
		return estateList;
	}

	@Override
	public BorCoborrowerEstateEntity queryById(Map<String, Object> params) {
		BorCoborrowerEstateEntity borEstate=baseMapper.queryById(params);
		return borEstate;
	}

	@Override
	public void deleteByRefId(Map<String, Object> delParams) {
		baseMapper.deleteByRefId(delParams);
		
	}

	@Override
	public void deleteByEsateIds(List<Integer> esateIds) {
		baseMapper.deleteByEsateIds(esateIds);
		
	}

	@Override
	public void deleteByRefIds(List<Integer> refIds) {
		baseMapper.deleteByRefIds(refIds);
		
	}

}
