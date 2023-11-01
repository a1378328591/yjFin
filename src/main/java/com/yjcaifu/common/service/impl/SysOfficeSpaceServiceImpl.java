package com.yjcaifu.common.service.impl;

import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;

import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.baomidou.mybatisplus.plugins.Page;
import com.baomidou.mybatisplus.service.impl.ServiceImpl;
import com.yjcaifu.common.utils.PageUtils;
import com.yjcaifu.common.utils.Query;
import com.yjcaifu.common.dao.SysOfficeSpaceDao;
import com.yjcaifu.common.entity.SysHousingTypesEntity;
import com.yjcaifu.common.entity.SysOfficeSpaceEntity;
import com.yjcaifu.common.service.SysOfficeSpaceService;


@Service("sysOfficeSpaceService")
public class SysOfficeSpaceServiceImpl extends ServiceImpl<SysOfficeSpaceDao, SysOfficeSpaceEntity> implements SysOfficeSpaceService {

    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<SysOfficeSpaceEntity> page = this.selectPage(
                new Query<SysOfficeSpaceEntity>(params).getPage(),
                new EntityWrapper<SysOfficeSpaceEntity>()
        );

        return new PageUtils(page);
    }

	@Override
	public List<SysOfficeSpaceEntity> queryList(Map<String, Object> params) {
		List<SysOfficeSpaceEntity> list=baseMapper.queryList(params);
		return list;
	}

}
