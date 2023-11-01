package com.yjcaifu.common.service.impl;

import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;

import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.baomidou.mybatisplus.plugins.Page;
import com.baomidou.mybatisplus.service.impl.ServiceImpl;
import com.yjcaifu.common.utils.PageUtils;
import com.yjcaifu.common.utils.Query;
import com.yjcaifu.common.dao.SysUseTypesDao;
import com.yjcaifu.common.entity.SysHousingTypesEntity;
import com.yjcaifu.common.entity.SysUseTypesEntity;
import com.yjcaifu.common.service.SysUseTypesService;


@Service("sysUserTypesService")
public class SysUseTypesServiceImpl extends ServiceImpl<SysUseTypesDao, SysUseTypesEntity> implements SysUseTypesService {

    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<SysUseTypesEntity> page = this.selectPage(
                new Query<SysUseTypesEntity>(params).getPage(),
                new EntityWrapper<SysUseTypesEntity>()
        );

        return new PageUtils(page);
    }

	@Override
	public List<SysUseTypesEntity> queryList(Map<String, Object> params) {
		List<SysUseTypesEntity> list=baseMapper.queryList(params);
		return list;
	}

}
