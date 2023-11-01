package com.yjcaifu.common.service.impl;

import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;

import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.baomidou.mybatisplus.plugins.Page;
import com.baomidou.mybatisplus.service.impl.ServiceImpl;
import com.yjcaifu.common.dao.SysCoborrowerTypeDao;
import com.yjcaifu.common.entity.SysCoborrowerTypeEntity;
import com.yjcaifu.common.service.SysCoborrowerTypeService;
import com.yjcaifu.common.utils.PageUtils;
import com.yjcaifu.common.utils.Query;



@Service("sysCoborrowerTypeService")
public class SysCoborrowerTypeServiceImpl extends ServiceImpl<SysCoborrowerTypeDao, SysCoborrowerTypeEntity> implements SysCoborrowerTypeService {

    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<SysCoborrowerTypeEntity> page = this.selectPage(
                new Query<SysCoborrowerTypeEntity>(params).getPage(),
                new EntityWrapper<SysCoborrowerTypeEntity>()
        );

        return new PageUtils(page);
    }

	@Override
	public List<SysCoborrowerTypeEntity> queryAllList(Map<String, Object> params) {
		// TODO Auto-generated method stub
		List<SysCoborrowerTypeEntity> list=baseMapper.queryAllList(params);
		return list;
	}

}
