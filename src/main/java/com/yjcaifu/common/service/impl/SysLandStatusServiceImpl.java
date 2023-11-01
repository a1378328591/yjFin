package com.yjcaifu.common.service.impl;

import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;

import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.baomidou.mybatisplus.plugins.Page;
import com.baomidou.mybatisplus.service.impl.ServiceImpl;
import com.yjcaifu.common.utils.PageUtils;
import com.yjcaifu.common.utils.Query;
import com.yjcaifu.common.dao.SysLandStatusDao;
import com.yjcaifu.common.entity.SysHousingTypesEntity;
import com.yjcaifu.common.entity.SysLandStatusEntity;
import com.yjcaifu.common.service.SysLandStatusService;


@Service("sysLandStatusService")
public class SysLandStatusServiceImpl extends ServiceImpl<SysLandStatusDao, SysLandStatusEntity> implements SysLandStatusService {

    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<SysLandStatusEntity> page = this.selectPage(
                new Query<SysLandStatusEntity>(params).getPage(),
                new EntityWrapper<SysLandStatusEntity>()
        );

        return new PageUtils(page);
    }

	@Override
	public List<SysLandStatusEntity> queryList(Map<String, Object> params) {
		List<SysLandStatusEntity> list=baseMapper.queryList(params);
		return list;
	}

}
