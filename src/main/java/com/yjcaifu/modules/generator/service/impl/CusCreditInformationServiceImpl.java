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
import com.yjcaifu.modules.generator.dao.CusCreditInformationDao;
import com.yjcaifu.modules.generator.entity.CusCarEntity;
import com.yjcaifu.modules.generator.entity.CusCreditInformationEntity;
import com.yjcaifu.modules.generator.entity.EnterpriseInfoEntity;
import com.yjcaifu.modules.generator.entity.PersonalInfoEntity;
import com.yjcaifu.modules.generator.service.CusCreditInformationService;


@Service("cusCreditInformationService")
public class CusCreditInformationServiceImpl extends ServiceImpl<CusCreditInformationDao, CusCreditInformationEntity> implements CusCreditInformationService {

	@Autowired
	CusCreditInformationDao cusCreditInformationDao;
	
    @Override
    public PageUtils queryPage(Map<String, Object> params) {
//        Page<CusCreditInformationEntity> page = this.selectPage(
//                new Query<CusCreditInformationEntity>(params).getPage(),
//                new EntityWrapper<CusCreditInformationEntity>()
//        );
    	
    	Page<CusCreditInformationEntity> cusCreditInformationPage=new Query<CusCreditInformationEntity>(params).getPage();
    	cusCreditInformationPage.setRecords(baseMapper.selectAll(cusCreditInformationPage,params));

        return new PageUtils(cusCreditInformationPage);
    }

	@Override
	public List<PersonalInfoEntity> findHumen() {
		List<PersonalInfoEntity> list = cusCreditInformationDao.findHumen();
		return list;
	}

	@Override
	public CusCreditInformationEntity selectById(Integer id) {
		CusCreditInformationEntity cusCreditInformationEntity = baseMapper.selectById(id);
		return cusCreditInformationEntity;
	}

	@Override
	public Integer insertAndReturnId(CusCreditInformationEntity cusCreditInformation) {
		Integer idInteger=baseMapper.insertAndReturnId(cusCreditInformation);
		return idInteger;
	}

	@Override
	public CusCreditInformationEntity selectByPerId(Map<String, Object> params) {
		CusCreditInformationEntity percCreditInfo = baseMapper.selectByPerId(params);
		return percCreditInfo;
	}

	@Override
	public PageUtils pageByIds(Map<String, Object> params) {
		Page<CusCreditInformationEntity> cusCreditCarPage=new Query<CusCreditInformationEntity>(params).getPage();
		cusCreditCarPage.setRecords(baseMapper.pageByIds(cusCreditCarPage,params));
        
        return new PageUtils(cusCreditCarPage);
	}

	@Override
	public List<CusCreditInformationEntity> listByIds(Map<String, Object> params) {
		List<CusCreditInformationEntity> list= baseMapper.listByIds(params);
        return list;
	}

	@Override
	public List<Integer> queryListByPerIds(List<Integer> perIds) {
		List<Integer> perCreditList = baseMapper.queryListByPerIds(perIds);
		return perCreditList;
	}

}
