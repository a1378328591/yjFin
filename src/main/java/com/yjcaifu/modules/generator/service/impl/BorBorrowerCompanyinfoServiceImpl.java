package com.yjcaifu.modules.generator.service.impl;

import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;

import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.baomidou.mybatisplus.plugins.Page;
import com.baomidou.mybatisplus.service.impl.ServiceImpl;
import com.yjcaifu.common.utils.PageUtils;
import com.yjcaifu.common.utils.Query;
import com.yjcaifu.modules.generator.dao.BorBorrowerCompanyinfoDao;
import com.yjcaifu.modules.generator.entity.BorBorrowerCompanyinfoEntity;
import com.yjcaifu.modules.generator.service.BorBorrowerCompanyinfoService;


@Service("borBorrowerCompanyinfoService")
public class BorBorrowerCompanyinfoServiceImpl extends ServiceImpl<BorBorrowerCompanyinfoDao, BorBorrowerCompanyinfoEntity> implements BorBorrowerCompanyinfoService {

    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<BorBorrowerCompanyinfoEntity> page = this.selectPage(
                new Query<BorBorrowerCompanyinfoEntity>(params).getPage(),
                new EntityWrapper<BorBorrowerCompanyinfoEntity>()
        );

        return new PageUtils(page);
    }

	@Override
	public BorBorrowerCompanyinfoEntity intoManageEntInfoSel(
			Map<String, Object> params) {
		// TODO Auto-generated method stub
		BorBorrowerCompanyinfoEntity companyInfo = baseMapper.intoManageEntInfoSel(params);
		return companyInfo;
	}

	@Override
	public BorBorrowerCompanyinfoEntity queryById(Map<String, Object> params) {
		BorBorrowerCompanyinfoEntity companyinfoEntity = baseMapper.queryById(params);
		return companyinfoEntity;
	}

	@Override
	public List<BorBorrowerCompanyinfoEntity> queryBorBorrCompInfo(
			Map<String, Object> params) {
		List<BorBorrowerCompanyinfoEntity> companyinfoEntity = baseMapper.queryBorBorrCompInfo(params);
		return companyinfoEntity;
	}

	@Override
	public void deleteAllByRefId(Map<String, Object> delParams) {
		baseMapper.deleteAllByRefId(delParams);
		
	}

	@Override
	public void deleteBatchByEntIds(List<Integer> entIds) {
		baseMapper.deleteBatchByEntIds(entIds);
		
	}

	@Override
	public void deleteBatchByRefIds(List<Integer> refIds) {
		// TODO Auto-generated method stub
		baseMapper.deleteBatchByRefIds(refIds);
	}

}
