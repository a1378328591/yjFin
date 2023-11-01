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
import com.yjcaifu.modules.generator.dao.PersonalInfoDao;
import com.yjcaifu.modules.generator.dao.RegisterInfoDao;
import com.yjcaifu.modules.generator.entity.BorCoborrowerPersonalEntity;
import com.yjcaifu.modules.generator.entity.PersonalInfoEntity;
import com.yjcaifu.modules.generator.entity.TempNameEntity;
import com.yjcaifu.modules.generator.service.BorCoborrowerPersonalService;
import com.yjcaifu.modules.generator.service.PersonalInfoService;


@Service("personalInfoService")
public class PersonalInfoServiceImpl extends ServiceImpl<PersonalInfoDao, PersonalInfoEntity> implements PersonalInfoService {
	
	@Autowired
	private PersonalInfoDao personalInfoDao;
	@Autowired
	private BorCoborrowerPersonalService borCoborrowerPersonalService;
	
    @Override
    public PageUtils queryPage(Map<String, Object> params) {
       /* Page<PersonalInfoEntity> page = this.selectPage(
                new Query<PersonalInfoEntity>(params).getPage(),
                new EntityWrapper<PersonalInfoEntity>()
        );
*/
        Page<PersonalInfoEntity> personalPage=new Query<PersonalInfoEntity>(params).getPage();
        personalPage.setRecords(baseMapper.selectAll(personalPage,params));
        
        return new PageUtils(personalPage);
    }

	@Override
	public PersonalInfoEntity selectById(Integer id) {
		// TODO Auto-generated method stub
		PersonalInfoEntity personalInfoEntity=personalInfoDao.selectById(id);
		return personalInfoEntity;
	}
	
	@Override
	public PersonalInfoEntity selectByBorrId(Integer id) {
		// TODO Auto-generated method stub
		PersonalInfoEntity personalInfoEntity=personalInfoDao.selectByBorrId(id);
		return personalInfoEntity;
	}
	@Override
	public List<PersonalInfoEntity> queryPersonalList(Map<String, Object> params) {
		List<PersonalInfoEntity> PersonalList=personalInfoDao.queryPersonalList(params);
		return PersonalList;
	}

	@Override
	public PersonalInfoEntity intoManagePerSel(Map<String, Object> params) {
		PersonalInfoEntity personalInfoEntity=personalInfoDao.intoManagePerSel(params);
		BorCoborrowerPersonalEntity borPersonal= borCoborrowerPersonalService.queryById(params);
		if(null!=borPersonal){
			personalInfoEntity.setRelation(borPersonal.getRelation());
			personalInfoEntity.setWorkunitOrIncome(borPersonal.getWorkunitOrIncome());
			personalInfoEntity.setCoBorrowerTypeId(borPersonal.getCoBorrowerTypeId());
		}
		return personalInfoEntity;
	}

	@Override
	public List<TempNameEntity> nameListByOwnerType(Map<String, Object> params) {
		List<TempNameEntity> listName=personalInfoDao.nameListByOwnerType(params);
		return listName;
	}

	@Override
	public List<TempNameEntity> nameListById(Map<String, Object> params) {
		List<TempNameEntity> listName=personalInfoDao.nameListById(params);
		return listName;
	}

}
