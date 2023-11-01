package com.yjcaifu.modules.generator.service.impl;

import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;

import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.baomidou.mybatisplus.plugins.Page;
import com.baomidou.mybatisplus.service.impl.ServiceImpl;
import com.yjcaifu.common.utils.PageUtils;
import com.yjcaifu.common.utils.Query;
import com.yjcaifu.modules.generator.dao.BorTaxRecordDao;
import com.yjcaifu.modules.generator.entity.BorTaxRecordEntity;
import com.yjcaifu.modules.generator.service.BorTaxRecordService;


@Service("borTaxRecordService")
public class BorTaxRecordServiceImpl extends ServiceImpl<BorTaxRecordDao, BorTaxRecordEntity> implements BorTaxRecordService {

    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<BorTaxRecordEntity> page = this.selectPage(
                new Query<BorTaxRecordEntity>(params).getPage(),
                new EntityWrapper<BorTaxRecordEntity>()
        );

        return new PageUtils(page);
    }

	@Override
	public List<BorTaxRecordEntity> queryListByTaxCondId(
			Map<String, Object> params) {
		List<BorTaxRecordEntity> list=baseMapper.queryListByTaxCondId(params);
		return list;
	}

	@Override
	public void deleteAllByRefId(Map<String, Object> delParams) {
		baseMapper.deleteAllByRefId(delParams);
		
	}

	@Override
	public void deleteBatchByMainTabIds(List<Integer> mainTabIds) {
		baseMapper.deleteBatchByMainTabIds(mainTabIds);
		
	}

}
