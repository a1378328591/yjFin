package com.yjcaifu.modules.generator.service.impl;

import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;

import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.baomidou.mybatisplus.plugins.Page;
import com.baomidou.mybatisplus.service.impl.ServiceImpl;
import com.yjcaifu.common.utils.PageUtils;
import com.yjcaifu.common.utils.Query;
import com.yjcaifu.modules.generator.dao.BorCoborrowerPersonalDao;
import com.yjcaifu.modules.generator.entity.BorCoborrowerPersonalEntity;
import com.yjcaifu.modules.generator.service.BorCoborrowerPersonalService;


@Service("borCoborrowerPersonalService")
public class BorCoborrowerPersonalServiceImpl extends ServiceImpl<BorCoborrowerPersonalDao, BorCoborrowerPersonalEntity> implements BorCoborrowerPersonalService {

    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<BorCoborrowerPersonalEntity> page = this.selectPage(
                new Query<BorCoborrowerPersonalEntity>(params).getPage(),
                new EntityWrapper<BorCoborrowerPersonalEntity>()
        );

        return new PageUtils(page);
    }

	@Override
	public BorCoborrowerPersonalEntity queryById(Map<String, Object> params) {
		BorCoborrowerPersonalEntity  borPer= baseMapper.queryById(params);
		return borPer;
	}

	@Override
	public List<BorCoborrowerPersonalEntity> queryList(Map<String, Object> params) {
		List<BorCoborrowerPersonalEntity> perList=baseMapper.queryList(params);
		return perList;
	}

	@Override
	public void deleteBatchByIds(Map<String, Object> delParams) {
		// TODO Auto-generated method stub
		baseMapper.deleteBatchByIds(delParams);
	}

	@Override
	public void deleteBatchByRefIds(List<Integer> refIds) {
		// TODO Auto-generated method stub
		baseMapper.deleteBatchByRefIds(refIds);
	}

}
