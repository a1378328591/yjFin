package com.yjcaifu.modules.generator.service.impl;

import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;

import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.baomidou.mybatisplus.plugins.Page;
import com.baomidou.mybatisplus.service.impl.ServiceImpl;
import com.yjcaifu.common.utils.PageUtils;
import com.yjcaifu.common.utils.Query;
import com.yjcaifu.modules.generator.dao.BorBussinessRecordDao;
import com.yjcaifu.modules.generator.entity.BorBussinessRecordEntity;
import com.yjcaifu.modules.generator.service.BorBussinessRecordService;


@Service("borBussinessRecordService")
public class BorBussinessRecordServiceImpl extends ServiceImpl<BorBussinessRecordDao, BorBussinessRecordEntity> implements BorBussinessRecordService {

    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<BorBussinessRecordEntity> page = this.selectPage(
                new Query<BorBussinessRecordEntity>(params).getPage(),
                new EntityWrapper<BorBussinessRecordEntity>()
        );

        return new PageUtils(page);
    }

	@Override
	public List<BorBussinessRecordEntity> queryAllByBussDataId(Map<String, Object> params) {
		List<BorBussinessRecordEntity> bussinessRecord=baseMapper.queryAllByBussDataId(params);
		return bussinessRecord;
	}

	@Override
	public void deleteAllByRefId(Map<String, Object> delParams) {
		baseMapper.deleteAllByRefId(delParams);
	}

	@Override
	public void deleteBatchByMainTabId(List<Integer> mainTabIds) {
		baseMapper.deleteBatchByMainTabId(mainTabIds);
		
	}

}
