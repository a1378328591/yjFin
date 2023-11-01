package com.yjcaifu.modules.generator.service.impl;

import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;

import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.baomidou.mybatisplus.plugins.Page;
import com.baomidou.mybatisplus.service.impl.ServiceImpl;
import com.yjcaifu.common.utils.PageUtils;
import com.yjcaifu.common.utils.Query;
import com.yjcaifu.modules.generator.dao.BorCoborrowerCarDao;
import com.yjcaifu.modules.generator.entity.BorCoborrowerCarEntity;
import com.yjcaifu.modules.generator.entity.BorCoborrowerEstateEntity;
import com.yjcaifu.modules.generator.entity.BorCoborrowerPersonalEntity;
import com.yjcaifu.modules.generator.entity.CusCarEntity;
import com.yjcaifu.modules.generator.service.BorCoborrowerCarService;


@Service("borCoborrowerCarService")
public class BorCoborrowerCarServiceImpl extends ServiceImpl<BorCoborrowerCarDao, BorCoborrowerCarEntity> implements BorCoborrowerCarService {

    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<BorCoborrowerCarEntity> page = this.selectPage(
                new Query<BorCoborrowerCarEntity>(params).getPage(),
                new EntityWrapper<BorCoborrowerCarEntity>()
        );

        return new PageUtils(page);
    }

	@Override
	public List<CusCarEntity> queryList(Map<String, Object> params) {
		List<CusCarEntity> carList=baseMapper.queryList(params);
		return carList;
	}

	@Override
	public BorCoborrowerCarEntity queryById(Map<String, Object> params) {
		BorCoborrowerCarEntity carEntity=baseMapper.queryById(params);
		return carEntity;
	}

	@Override
	public void deleteByRefId(Map<String, Object> delParams) {
		baseMapper.deleteByRefId(delParams);
		
	}

	@Override
	public void deleteByCarIds(List<Integer> carIds) {
		baseMapper.deleteByCarIds(carIds);
		
	}

	@Override
	public void deleteBatchByRefIds(List<Integer> refIds) {
		baseMapper.deleteBatchByRefIds(refIds);
		
	}

}
