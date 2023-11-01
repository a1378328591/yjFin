package com.yjcaifu.common.service.impl;

import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;

import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.baomidou.mybatisplus.plugins.Page;
import com.baomidou.mybatisplus.service.impl.ServiceImpl;
import com.yjcaifu.common.utils.PageUtils;
import com.yjcaifu.common.utils.Query;
import com.yjcaifu.common.dao.SysLoanTypesDao;
import com.yjcaifu.common.entity.SysHousingTypesEntity;
import com.yjcaifu.common.entity.SysLoanTypesEntity;
import com.yjcaifu.common.service.SysLoanTypesService;


@Service("sysLoanTypesService")
public class SysLoanTypesServiceImpl extends ServiceImpl<SysLoanTypesDao, SysLoanTypesEntity> implements SysLoanTypesService {

    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<SysLoanTypesEntity> page = this.selectPage(
                new Query<SysLoanTypesEntity>(params).getPage(),
                new EntityWrapper<SysLoanTypesEntity>()
        );

        return new PageUtils(page);
    }

	@Override
	public List<SysLoanTypesEntity> queryList(Map<String, Object> params) {
		List<SysLoanTypesEntity> list=baseMapper.queryList(params);
		return list;
	}

}
