package com.yjcaifu.modules.generator.service.impl;

import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;

import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.baomidou.mybatisplus.plugins.Page;
import com.baomidou.mybatisplus.service.impl.ServiceImpl;
import com.yjcaifu.common.utils.PageUtils;
import com.yjcaifu.common.utils.Query;
import com.yjcaifu.modules.generator.dao.BorLoanPurposeDao;
import com.yjcaifu.modules.generator.entity.BorLoanPurposeEntity;
import com.yjcaifu.modules.generator.service.BorLoanPurposeService;


@Service("borLoanPurposeService")
public class BorLoanPurposeServiceImpl extends ServiceImpl<BorLoanPurposeDao, BorLoanPurposeEntity> implements BorLoanPurposeService {

    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<BorLoanPurposeEntity> page = this.selectPage(
                new Query<BorLoanPurposeEntity>(params).getPage(),
                new EntityWrapper<BorLoanPurposeEntity>()
        );

        return new PageUtils(page);
    }

	@Override
	public List<BorLoanPurposeEntity> queryListById(Map<String, Object> params) {
		List<BorLoanPurposeEntity> loanPurposeList=baseMapper.queryListById(params);
		return loanPurposeList;
	}

	@Override
	public void deleteBatchByRefIds(List<Integer> refIdS) {
		baseMapper.deleteBatchByRefIds(refIdS);
		
	}

}
