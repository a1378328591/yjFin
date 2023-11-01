package com.yjcaifu.common.service.impl;

import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;

import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.baomidou.mybatisplus.plugins.Page;
import com.baomidou.mybatisplus.service.impl.ServiceImpl;
import com.yjcaifu.common.utils.PageUtils;
import com.yjcaifu.common.utils.Query;
import com.yjcaifu.common.dao.SysVehicleTypesDao;
import com.yjcaifu.common.entity.SysHousingTypesEntity;
import com.yjcaifu.common.entity.SysVehicleTypesEntity;
import com.yjcaifu.common.service.SysVehicleTypesService;


@Service("sysVehicleTypesService")
public class SysVehicleTypesServiceImpl extends ServiceImpl<SysVehicleTypesDao, SysVehicleTypesEntity> implements SysVehicleTypesService {

    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<SysVehicleTypesEntity> page = this.selectPage(
                new Query<SysVehicleTypesEntity>(params).getPage(),
                new EntityWrapper<SysVehicleTypesEntity>()
        );

        return new PageUtils(page);
    }

	@Override
	public List<SysVehicleTypesEntity> queryList(Map<String, Object> params) {
		List<SysVehicleTypesEntity> list=baseMapper.queryList(params);
		return list;
	}

}
