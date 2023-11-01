package com.yjcaifu.common.service.impl;

import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;

import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.baomidou.mybatisplus.plugins.Page;
import com.baomidou.mybatisplus.service.impl.ServiceImpl;
import com.yjcaifu.common.utils.PageUtils;
import com.yjcaifu.common.utils.Query;
import com.yjcaifu.common.dao.SysEnsurePropertyDao;
import com.yjcaifu.common.entity.SysEnsurePropertyEntity;
import com.yjcaifu.common.service.SysEnsurePropertyService;


@Service("sysEnsurePropertyService")
public class SysEnsurePropertyServiceImpl extends ServiceImpl<SysEnsurePropertyDao, SysEnsurePropertyEntity> implements SysEnsurePropertyService {

    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<SysEnsurePropertyEntity> page = this.selectPage(
                new Query<SysEnsurePropertyEntity>(params).getPage(),
                new EntityWrapper<SysEnsurePropertyEntity>()
        );

        return new PageUtils(page);
    }

	@Override
	public List<SysEnsurePropertyEntity> queryList(Map<String, Object> params) {
		List<SysEnsurePropertyEntity> list=baseMapper.queryList(params);
		return list;
	}

}
