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
import com.yjcaifu.modules.generator.dao.EnterpriseInfoDao;
import com.yjcaifu.modules.generator.entity.BorCoborrowerCompanyEntity;
import com.yjcaifu.modules.generator.entity.CusCarEntity;
import com.yjcaifu.modules.generator.entity.EnterpriseInfoEntity;
import com.yjcaifu.modules.generator.entity.PersonalInfoEntity;
import com.yjcaifu.modules.generator.entity.TempNameEntity;
import com.yjcaifu.modules.generator.service.BorCoborrowerCompanyService;
import com.yjcaifu.modules.generator.service.EnterpriseInfoService;


@Service("enterpriseInfoService")
public class EnterpriseInfoServiceImpl extends ServiceImpl<EnterpriseInfoDao, EnterpriseInfoEntity> implements EnterpriseInfoService {
	
	@Autowired
	private BorCoborrowerCompanyService borCoborrowerCompanyService;
	@Autowired
	private EnterpriseInfoDao enterpriseInfoDao;
    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<EnterpriseInfoEntity> page=new Query<EnterpriseInfoEntity>(params).getPage();
        page.setRecords(baseMapper.selectPage(page,params));
        return new PageUtils(page);
    }

    @Override
	public EnterpriseInfoEntity selectById(Integer id) {
		// TODO Auto-generated method stub
    	EnterpriseInfoEntity enterpriseInfoEntity=enterpriseInfoDao.selectById(id);
		return enterpriseInfoEntity;
	}

	@Override
	public List<EnterpriseInfoEntity> queryEnterpriseList(Map<String, Object> params) {
		// TODO Auto-generated method stub
		List<EnterpriseInfoEntity> enterpriseInfoEntityList=enterpriseInfoDao.queryEnterpriseList(params);
		return enterpriseInfoEntityList;
	}

	@Override
	public EnterpriseInfoEntity intoManageEntSel(Map<String, Object> params) {
		EnterpriseInfoEntity enterpriseInfoEntity=enterpriseInfoDao.intoManageEntSel(params);
		params.put("coCompanyId", (String)params.get("coBorrowerId"));
		BorCoborrowerCompanyEntity borComp = borCoborrowerCompanyService.queryById(params);
		if(null!=borComp){
			enterpriseInfoEntity.setCoBorrowerTypeId(borComp.getCoBorrowerTypeId());
		}
		return enterpriseInfoEntity;
	}

	@Override
	public List<EnterpriseInfoEntity> listByIds(Map<String, Object> params) {
		List<EnterpriseInfoEntity> list= baseMapper.listByIds(params);
        return list;
	}

	@Override
	public PageUtils pageByIds(Map<String, Object> params) {
		Page<EnterpriseInfoEntity> cusCarPage=new Query<EnterpriseInfoEntity>(params).getPage();
		cusCarPage.setRecords(baseMapper.pageByIds(cusCarPage,params));
        
        return new PageUtils(cusCarPage);
	}

	@Override
	public List<TempNameEntity> nameListByOwnerType(Map<String, Object> params) {
		List<TempNameEntity> list=baseMapper.nameListByOwnerType(params);
		return list;
	}

	@Override
	public List<TempNameEntity> nameListById(Map<String, Object> params) {
		List<TempNameEntity> list=baseMapper.nameListById(params);
		return list;
	}
}
