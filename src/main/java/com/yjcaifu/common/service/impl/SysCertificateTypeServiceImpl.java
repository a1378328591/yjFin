package com.yjcaifu.common.service.impl;

import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;

import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.baomidou.mybatisplus.plugins.Page;
import com.baomidou.mybatisplus.service.impl.ServiceImpl;
import com.yjcaifu.common.dao.SysCertificateTypeDao;
import com.yjcaifu.common.entity.SysCertificateTypeEntity;
import com.yjcaifu.common.service.SysCertificateTypeService;
import com.yjcaifu.common.utils.PageUtils;
import com.yjcaifu.common.utils.Query;



@Service("sysCertificateTypeService")
public class SysCertificateTypeServiceImpl extends ServiceImpl<SysCertificateTypeDao, SysCertificateTypeEntity> implements SysCertificateTypeService {

    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<SysCertificateTypeEntity> page = this.selectPage(
                new Query<SysCertificateTypeEntity>(params).getPage(),
                new EntityWrapper<SysCertificateTypeEntity>()
        );

        return new PageUtils(page);
    }

	@Override
	public List<SysCertificateTypeEntity> allList(Map<String, Object> params) {
		List<SysCertificateTypeEntity> list=baseMapper.allList(params);
		return list;
	}

}
