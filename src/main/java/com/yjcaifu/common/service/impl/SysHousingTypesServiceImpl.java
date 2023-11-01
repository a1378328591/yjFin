package com.yjcaifu.common.service.impl;

import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;

import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.baomidou.mybatisplus.plugins.Page;
import com.baomidou.mybatisplus.service.impl.ServiceImpl;
import com.yjcaifu.common.utils.PageUtils;
import com.yjcaifu.common.utils.Query;
import com.yjcaifu.common.dao.SysHousingTypesDao;
import com.yjcaifu.common.entity.SysEnsurePropertyEntity;
import com.yjcaifu.common.entity.SysHousingTypesEntity;
import com.yjcaifu.common.service.SysHousingTypesService;


@Service("sysHousingTypesService")
public class SysHousingTypesServiceImpl extends ServiceImpl<SysHousingTypesDao, SysHousingTypesEntity> implements SysHousingTypesService {

    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<SysHousingTypesEntity> page = this.selectPage(
                new Query<SysHousingTypesEntity>(params).getPage(),
                new EntityWrapper<SysHousingTypesEntity>()
        );

        return new PageUtils(page);
    }

	@Override
	public List<SysHousingTypesEntity> queryList(Map<String, Object> params) {
		List<SysHousingTypesEntity> list=baseMapper.queryList(params);
		return list;
	}

}
