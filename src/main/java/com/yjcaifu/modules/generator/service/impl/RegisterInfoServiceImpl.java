package com.yjcaifu.modules.generator.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Map;

import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.baomidou.mybatisplus.plugins.Page;
import com.baomidou.mybatisplus.service.impl.ServiceImpl;
import com.yjcaifu.common.utils.PageUtils;
import com.yjcaifu.common.utils.Query;
import com.yjcaifu.modules.generator.dao.PersonalInfoDao;
import com.yjcaifu.modules.generator.dao.RegisterInfoDao;
import com.yjcaifu.modules.generator.entity.RegisterInfoEntity;
import com.yjcaifu.modules.generator.service.RegisterInfoService;
import com.yjcaifu.modules.sys.entity.SysUserEntity;
import com.yjcaifu.modules.sys.service.SysUserService;


@Service("registerInfoService")
public class RegisterInfoServiceImpl extends ServiceImpl<RegisterInfoDao, RegisterInfoEntity> implements RegisterInfoService {
	
	@Autowired
	private SysUserService sysUserService;
	@Autowired
	private RegisterInfoDao registerInfoDao;
    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<RegisterInfoEntity> page = this.selectPage(
                new Query<RegisterInfoEntity>(params).getPage(),
                new EntityWrapper<RegisterInfoEntity>()
        );
        for(RegisterInfoEntity refinfo : page.getRecords()){
        	SysUserEntity userEntity=sysUserService.getUserNameByUserID(refinfo.getEmpId());
        	if(null!=userEntity){
        		refinfo.setEmpName(userEntity.getUsername());
        	}
        }
        return new PageUtils(page);
    }

	@Override
	public Integer insertAndReturnId(RegisterInfoEntity reginfo) {
		// TODO Auto-generated method stub
		Integer id= registerInfoDao.insertAndReturnId(reginfo);
		return id;
	}

}
