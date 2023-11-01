package com.yjcaifu.modules.generator.service.impl;

import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;

import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.baomidou.mybatisplus.plugins.Page;
import com.baomidou.mybatisplus.service.impl.ServiceImpl;
import com.yjcaifu.common.utils.PageUtils;
import com.yjcaifu.common.utils.Query;
import com.yjcaifu.modules.generator.dao.BorBussinessDataDao;
import com.yjcaifu.modules.generator.entity.BorBussinessDataEntity;
import com.yjcaifu.modules.generator.service.BorBussinessDataService;


@Service("borBussinessDataService")
public class BorBussinessDataServiceImpl extends ServiceImpl<BorBussinessDataDao, BorBussinessDataEntity> implements BorBussinessDataService {

    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<BorBussinessDataEntity> page = this.selectPage(
                new Query<BorBussinessDataEntity>(params).getPage(),
                new EntityWrapper<BorBussinessDataEntity>()
        );

        return new PageUtils(page);
    }

	@Override
	public List<BorBussinessDataEntity> queryByRefId(Map<String, Object> params) {
		List<BorBussinessDataEntity> bussinessData=baseMapper.queryByRefId(params);
		return bussinessData;
	}

	@Override
	public List<Integer> queryListByRefIds(List<Integer> refIds) {
		List<Integer> bussData = baseMapper.queryListByRefIds(refIds);
		return bussData;
	}

}
