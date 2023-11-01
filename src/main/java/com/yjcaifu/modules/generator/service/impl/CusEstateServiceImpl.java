package com.yjcaifu.modules.generator.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.baomidou.mybatisplus.plugins.Page;
import com.baomidou.mybatisplus.service.impl.ServiceImpl;
import com.yjcaifu.common.utils.PageUtils;
import com.yjcaifu.common.utils.Query;
import com.yjcaifu.modules.generator.dao.CusEstateDao;
import com.yjcaifu.modules.generator.entity.CusEstateEntity;
import com.yjcaifu.modules.generator.entity.PersonalInfoEntity;
import com.yjcaifu.modules.generator.service.CusEstateService;


@Service("cusEstateService")
public class CusEstateServiceImpl extends ServiceImpl<CusEstateDao, CusEstateEntity> implements CusEstateService {

	@Autowired
	CusEstateDao cusEstateDao;
	
    @Override
    public PageUtils queryPage(Map<String, Object> params) {
      /*  Page<CusEstateEntity> page = this.selectPage(
                new Query<CusEstateEntity>(params).getPage(),
                new EntityWrapper<CusEstateEntity>()
        );

        return new PageUtils(page);*/
    	
        Page<CusEstateEntity> cusEstatePage=new Query<CusEstateEntity>(params).getPage();
        cusEstatePage.setRecords(baseMapper.selectAll(cusEstatePage,params));
        
        return new PageUtils(cusEstatePage);
    }

	@Override
	public CusEstateEntity selectById(Integer id) {
		CusEstateEntity cusEstateEntity = cusEstateDao.selectById(id);
		return cusEstateEntity;
	}

	@Override
	public List<CusEstateEntity> queryByIds(Map<String, Object> params) {
		List<CusEstateEntity> estateList= cusEstateDao.queryByIds(params);
		return estateList;
	}

	@Override
	public List<CusEstateEntity> listByIds(Map<String, Object> params) {
		List<CusEstateEntity> retList = new ArrayList<CusEstateEntity>();
		List<CusEstateEntity> perList=baseMapper.listByIds(params);
		List<CusEstateEntity> entList=new ArrayList<CusEstateEntity>();
        if(null!=((ArrayList<Integer>)params.get("entIds")) && ((ArrayList<Integer>)params.get("entIds")).size()>0){
        	entList=baseMapper.listEntByIds(params);
        }
        if(perList!=null){
        	retList.addAll(perList);
        }
        if(entList!=null){
        	retList.addAll(entList);
        }
        return retList;
	}

	@Override
	public List<Integer> queryListIntByEntIds(List<Integer> entIds) {
		List<Integer> esateList=cusEstateDao.queryListIntByEntIds(entIds);
		return esateList;
	}

	@Override
	public List<Integer> queryListIntByPerIds(List<Integer> perIds) {
		List<Integer> esateList=cusEstateDao.queryListIntByPerIds(perIds);
		return esateList;
	}

}
