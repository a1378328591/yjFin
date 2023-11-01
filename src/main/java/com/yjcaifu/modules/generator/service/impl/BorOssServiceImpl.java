package com.yjcaifu.modules.generator.service.impl;

import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;

import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.baomidou.mybatisplus.plugins.Page;
import com.baomidou.mybatisplus.service.impl.ServiceImpl;
import com.yjcaifu.common.utils.PageUtils;
import com.yjcaifu.common.utils.Query;
import com.yjcaifu.modules.generator.dao.BorOssDao;
import com.yjcaifu.modules.generator.entity.BorOssEntity;
import com.yjcaifu.modules.generator.service.BorOssService;


@Service("borOssService")
public class BorOssServiceImpl extends ServiceImpl<BorOssDao, BorOssEntity> implements BorOssService {

    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<BorOssEntity> page = this.selectPage(
                new Query<BorOssEntity>(params).getPage(),
                new EntityWrapper<BorOssEntity>()
        );

        return new PageUtils(page);
    }

	@Override
	public List<BorOssEntity> listByRefId(Map<String, Object> params) {
		List<BorOssEntity> list=baseMapper.listByRefId(params);
		return list;
	}

	@Override
	public void deleteByBorOssId(Map<String, Object> params) {
		baseMapper.deleteByBorOssId(params);
		
	}

	@Override
	public void deleteBatchByRefIds(List<Integer> refIds) {
		baseMapper.deleteBatchByRefIds(refIds);
		
	}

}
