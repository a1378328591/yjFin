package com.yjcaifu.modules.generator.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.baomidou.mybatisplus.plugins.Page;
import com.baomidou.mybatisplus.service.impl.ServiceImpl;
import com.yjcaifu.common.utils.PageUtils;
import com.yjcaifu.common.utils.Query;
import com.yjcaifu.modules.generator.dao.CusCarDao;
import com.yjcaifu.modules.generator.entity.CusCarEntity;
import com.yjcaifu.modules.generator.entity.CusEstateEntity;
import com.yjcaifu.modules.generator.entity.PersonalInfoEntity;
import com.yjcaifu.modules.generator.service.CusCarService;


@Service("cusCarService")
public class CusCarServiceImpl extends ServiceImpl<CusCarDao, CusCarEntity> implements CusCarService {

	@Autowired
	CusCarDao cusCarDao;
	
    @Override
    public PageUtils queryPage(Map<String, Object> params) {
    	
//        Page<CusCarEntity> page = this.selectPage(
//                new Query<CusCarEntity>(params).getPage(),
//                new EntityWrapper<CusCarEntity>()
//        );
    	
    	Page<CusCarEntity> cusCarPage=new Query<CusCarEntity>(params).getPage();
    	cusCarPage.setRecords(baseMapper.selectAll(cusCarPage,params));
        
        return new PageUtils(cusCarPage);
    }

	@Override
	public CusCarEntity selectById(Integer id) {
		CusCarEntity cusCarEntity = cusCarDao.selectById(id);
		return cusCarEntity;
	}

	@Override
	public List<PersonalInfoEntity> findOwner() {
		
		List<PersonalInfoEntity> list = cusCarDao.findOwner();
		
		return list;
	}

	@Override
	public List<CusCarEntity> queryByIds(Map<String, Object> params) {
		List<CusCarEntity> carList= cusCarDao.queryByIds(params);
		return carList;
	}

	@Override
	public List<CusCarEntity> listByIds(Map<String, Object> params) {
        List<CusCarEntity> retList=new ArrayList<CusCarEntity>();
        List<CusCarEntity> perList=baseMapper.listByIds(params);
        List<CusCarEntity> entList=new ArrayList<CusCarEntity>();
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
	public void deleteBatchByEntIds(List<Integer> entIds) {
		baseMapper.deleteBatchByEntIds(entIds);
	}

	@Override
	public List<Integer> queryListIntByEntIds(List<Integer> entIds) {
		List<Integer> carList=baseMapper.queryListIntByEntIds(entIds);
		return carList;
	}

	@Override
	public List<Integer> queryListIntByPerIds(List<Integer> perIds) {
		List<Integer> carList=baseMapper.queryListIntByPerIds(perIds);
		return carList;
	}

}
