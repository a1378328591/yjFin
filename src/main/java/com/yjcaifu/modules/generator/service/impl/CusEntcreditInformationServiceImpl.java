package com.yjcaifu.modules.generator.service.impl;

import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;

import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.baomidou.mybatisplus.plugins.Page;
import com.baomidou.mybatisplus.service.impl.ServiceImpl;
import com.yjcaifu.common.utils.PageUtils;
import com.yjcaifu.common.utils.Query;
import com.yjcaifu.modules.generator.dao.CusEntcreditInformationDao;
import com.yjcaifu.modules.generator.entity.CusCreditInformationEntity;
import com.yjcaifu.modules.generator.entity.CusEntcreditInformationEntity;
import com.yjcaifu.modules.generator.service.CusEntcreditInformationService;


@Service("cusEntcreditInformationService")
public class CusEntcreditInformationServiceImpl extends ServiceImpl<CusEntcreditInformationDao, CusEntcreditInformationEntity> implements CusEntcreditInformationService {

    @Override
    public PageUtils queryPage(Map<String, Object> params) {
    	Page<CusEntcreditInformationDao> entcreditInfo=new Query<CusEntcreditInformationDao>(params).getPage();
    	entcreditInfo.setRecords(baseMapper.selectAll(entcreditInfo,params));
        return new PageUtils(entcreditInfo);
    }

	@Override
	public Integer insertAndReturnId(
			CusEntcreditInformationEntity cusEntCreditInfo) {
		Integer id=baseMapper.insertAndReturnId(cusEntCreditInfo);
		return id;
	}

	@Override
	public CusEntcreditInformationEntity selectByPerId(Map<String, Object> params) {
		CusEntcreditInformationEntity cusEntcreditInfo=baseMapper.selectByPerId(params);
		return cusEntcreditInfo;
	}

	@Override
	public PageUtils pageByIds(Map<String, Object> params) {
		Page<CusEntcreditInformationEntity> cusEntCreditCarPage=new Query<CusEntcreditInformationEntity>(params).getPage();
		cusEntCreditCarPage.setRecords(baseMapper.pageByIds(cusEntCreditCarPage,params));
        
        return new PageUtils(cusEntCreditCarPage);
	}

	@Override
	public List<CusEntcreditInformationEntity> listByIds(Map<String, Object> params) {
		List<CusEntcreditInformationEntity> list= baseMapper.listByIds(params);
        return list;
	}

	@Override
	public CusEntcreditInformationEntity selectById(Integer id) {
		CusEntcreditInformationEntity cusEntCreditInformationEntity = baseMapper.selectById(id);
		return cusEntCreditInformationEntity;
	}

	@Override
	public void deleteByEntId(List<Integer> entIdList) {
		baseMapper.deleteByEntId(entIdList);
		
	}

	@Override
	public List<Integer> queryListByEntIds(List<Integer> entIds) {
		List<Integer> entCreditList = baseMapper.queryListByEntIds(entIds);
		return entCreditList;
	}

}
