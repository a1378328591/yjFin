package com.yjcaifu.modules.generator.service.impl;

import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;

import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.baomidou.mybatisplus.plugins.Page;
import com.baomidou.mybatisplus.service.impl.ServiceImpl;
import com.yjcaifu.common.utils.PageUtils;
import com.yjcaifu.common.utils.Query;
import com.yjcaifu.modules.generator.dao.BorCoborrowerCompanyDao;
import com.yjcaifu.modules.generator.entity.BorCoborrowerCompanyEntity;
import com.yjcaifu.modules.generator.service.BorCoborrowerCompanyService;


@Service("borCoborrowerCompanyService")
public class BorCoborrowerCompanyServiceImpl extends ServiceImpl<BorCoborrowerCompanyDao, BorCoborrowerCompanyEntity> implements BorCoborrowerCompanyService {

    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<BorCoborrowerCompanyEntity> page = this.selectPage(
                new Query<BorCoborrowerCompanyEntity>(params).getPage(),
                new EntityWrapper<BorCoborrowerCompanyEntity>()
        );

        return new PageUtils(page);
    }

	@Override
	public BorCoborrowerCompanyEntity queryById(Map<String, Object> params) {
		BorCoborrowerCompanyEntity  borComp= baseMapper.queryById(params);
		return borComp;
	}

	@Override
	public List<BorCoborrowerCompanyEntity> queryBorCompList(Map<String, Object> params) {
		List<BorCoborrowerCompanyEntity> comList=baseMapper.queryBorCompList(params);
		return comList;
	}

	@Override
	public void deleteBatchByIds(Map<String, Object> delParams) {
		baseMapper.deleteBatchByIds(delParams);
	}

	@Override
	public void deleteBatchByEntIds(List<Integer> entIds) {
		baseMapper.deleteBatchByEntIds(entIds);
	}

	@Override
	public void deleteBatchByRefIds(List<Integer> refIds) {
		baseMapper.deleteBatchByRefIds(refIds);
	}

}
