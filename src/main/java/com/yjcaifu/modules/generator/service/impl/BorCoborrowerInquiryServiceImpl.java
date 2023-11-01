package com.yjcaifu.modules.generator.service.impl;

import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.baomidou.mybatisplus.plugins.Page;
import com.baomidou.mybatisplus.service.impl.ServiceImpl;
import com.yjcaifu.common.utils.PageUtils;
import com.yjcaifu.common.utils.Query;
import com.yjcaifu.modules.generator.dao.BorCoborrowerInquiryDao;
import com.yjcaifu.modules.generator.entity.BorCoborrowerInquiryEntity;
import com.yjcaifu.modules.generator.service.BorCoborrowerInquiryService;


@Service("borCoborrowerInquiryService")
public class BorCoborrowerInquiryServiceImpl extends ServiceImpl<BorCoborrowerInquiryDao, BorCoborrowerInquiryEntity> implements BorCoborrowerInquiryService {

    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<BorCoborrowerInquiryEntity> page = this.selectPage(
                new Query<BorCoborrowerInquiryEntity>(params).getPage(),
                new EntityWrapper<BorCoborrowerInquiryEntity>()
        );

        return new PageUtils(page);
    }

	@Override
	public BorCoborrowerInquiryEntity queryById(Map<String, Object> params) {
		BorCoborrowerInquiryEntity inquiryEntity=baseMapper.queryById(params);
		return inquiryEntity;
	}

	@Override
	public List<Integer> queryList(Integer borrId) {
		List<Integer> inquiryEntity=baseMapper.queryList(borrId);
		return inquiryEntity;
	}

	@Override
	public void deleteBatchByIds(Map<String, Object> delParams) {
		// TODO Auto-generated method stub
		baseMapper.deleteBatchByIds(delParams);
		
	}

	@Override
	public void deleteBatchByRefId(List<Integer> refIds) {
		baseMapper.deleteBatchByRefId(refIds);
		
	}

}
