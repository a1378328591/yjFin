package com.yjcaifu.modules.generator.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;

import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.baomidou.mybatisplus.plugins.Page;
import com.baomidou.mybatisplus.service.impl.ServiceImpl;
import com.yjcaifu.common.utils.PageUtils;
import com.yjcaifu.common.utils.Query;
import com.yjcaifu.modules.generator.dao.InvestigationTrialDao;
import com.yjcaifu.modules.generator.entity.InvestigationTrialEntity;
import com.yjcaifu.modules.generator.service.InvestigationTrialService;


@Service("investigationTrialService")
public class InvestigationTrialServiceImpl extends ServiceImpl<InvestigationTrialDao, InvestigationTrialEntity> implements InvestigationTrialService {

	@Autowired
	private InvestigationTrialDao investigationTrialDao;
	
    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<InvestigationTrialEntity> page = this.selectPage(
                new Query<InvestigationTrialEntity>(params).getPage(),
                new EntityWrapper<InvestigationTrialEntity>()
        );

        return new PageUtils(page);
    }


	@Override
	public InvestigationTrialEntity selectByRefId(Integer refId) {
		
		return investigationTrialDao.selectByRefId(refId);
	}


	@Override
	public InvestigationTrialEntity selectAll(Integer refId) {
		
		return investigationTrialDao.selectAll(refId);
	}


	@Override
	public String selectName(Integer refId) {
		
		return investigationTrialDao.selectName(refId);
	}


	@Override
	public InvestigationTrialEntity selectAfter(Integer refId) {
		
		return investigationTrialDao.selectAfter(refId);
	}


	@Override
	public InvestigationTrialEntity selectByIntoManageId(Integer id) {
		
		return baseMapper.selectByIntoManageId(id);
	}


	@Override
	public void updateBatchByEntIds(List<Integer> ids) {
		baseMapper.updateBatchByEntIds(ids);
		
	}


	@Override
	public void deleteBatchByRefIds(List<Integer> refIds) {
		baseMapper.deleteBatchByRefIds(refIds);
	}

}
