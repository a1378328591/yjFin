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

import com.yjcaifu.modules.generator.dao.ApplicationRequirementsLogDao;
import com.yjcaifu.modules.generator.entity.ApplicationRequirementsLogEntity;
import com.yjcaifu.modules.generator.service.ApplicationRequirementsLogService;


@Service("applicationRequirementsLogService")
public class ApplicationRequirementsLogServiceImpl extends ServiceImpl<ApplicationRequirementsLogDao, ApplicationRequirementsLogEntity> implements ApplicationRequirementsLogService {

	@Autowired
	private ApplicationRequirementsLogDao applicationRequirementsLogDao;
	
    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<ApplicationRequirementsLogEntity> page = this.selectPage(
                new Query<ApplicationRequirementsLogEntity>(params).getPage(),
                new EntityWrapper<ApplicationRequirementsLogEntity>()
        );

        return new PageUtils(page);
    }

	@Override
	public List<ApplicationRequirementsLogEntity> selectAll() {
		return applicationRequirementsLogDao.selectAll();
	}

	@Override
	public List<ApplicationRequirementsLogEntity> selectByxqId(Integer xqId) {
		
		return applicationRequirementsLogDao.selectByxqId(xqId);
	}

	@Override
	public void deleteAllByXqId(Integer xqId) {
		
		applicationRequirementsLogDao.deleteAllByXqId(xqId);
		
	}

}
