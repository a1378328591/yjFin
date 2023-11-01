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

import com.yjcaifu.modules.generator.dao.ApplicationRequirementsDao;
import com.yjcaifu.modules.generator.entity.ApplicationRequirementsEntity;
import com.yjcaifu.modules.generator.entity.ApplicationRequirementsLogEntity;
import com.yjcaifu.modules.generator.service.ApplicationRequirementsLogService;
import com.yjcaifu.modules.generator.service.ApplicationRequirementsService;


@Service("applicationRequirementsService")
public class ApplicationRequirementsServiceImpl extends ServiceImpl<ApplicationRequirementsDao, ApplicationRequirementsEntity> implements ApplicationRequirementsService {

	@Autowired
	ApplicationRequirementsDao applicationRequirementsDao;
	@Autowired
	ApplicationRequirementsLogService applicationRequirementsLogService;
	
    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<ApplicationRequirementsEntity> page = this.selectPage(
                new Query<ApplicationRequirementsEntity>(params).getPage(),
                new EntityWrapper<ApplicationRequirementsEntity>()
        );
        List<ApplicationRequirementsEntity> list = page.getRecords();
        for (ApplicationRequirementsEntity applicationRequirementsEntity : list) {
        	String[] usernames = applicationRequirementsDao.selectUsername(applicationRequirementsEntity.getApplicant());
        	applicationRequirementsEntity.setUsername(usernames[0]);
        	applicationRequirementsEntity.setConfirmPersonnelName(applicationRequirementsDao.selectConfirm(applicationRequirementsEntity.getConfirmPersonnel()));
        	applicationRequirementsEntity.setDeptApplyName(applicationRequirementsDao.selectDeptName(applicationRequirementsEntity.getDeptApply()));
        	applicationRequirementsEntity.setExecutorName(applicationRequirementsDao.selectExecutorName(applicationRequirementsEntity.getExecutor()));
        	//applicationRequirementsEntity.setLogs(applicationRequirementsLogService.selectAll());
		}

        return new PageUtils(page);
    }

	@Override
	public List<ApplicationRequirementsEntity> select() {
		
		return applicationRequirementsDao.select();
	}

	@Override
	public void deleteOfId(Integer id) {
		
		applicationRequirementsDao.deleteOfId(id);
		
	}

	@Override
	public Integer updateState(ApplicationRequirementsEntity applicationRequirementsEntity) {
		
		return applicationRequirementsDao.updateState(applicationRequirementsEntity);
	}

	@Override
	public Integer updateconfirmPersonnel(ApplicationRequirementsEntity applicationRequirementsEntity) {
		
		return applicationRequirementsDao.updateconfirmPersonnel(applicationRequirementsEntity);
	}

	@Override
	public Long selectDeptId(Long userId) {
		
		return applicationRequirementsDao.selectDeptId(userId);
	}

	@Override
	public String selectDeptName(Long deptId) {
		
		return applicationRequirementsDao.selectDeptName(deptId);
	}

	@Override
	public Integer updateExecutor(ApplicationRequirementsEntity applicationRequirementsEntity) {
		
		return applicationRequirementsDao.updateExecutor(applicationRequirementsEntity);
	}

}
