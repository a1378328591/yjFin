package com.yjcaifu.modules.generator.service.impl;

import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;

import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.baomidou.mybatisplus.plugins.Page;
import com.baomidou.mybatisplus.service.impl.ServiceImpl;
import com.yjcaifu.common.utils.PageUtils;
import com.yjcaifu.common.utils.Query;
import com.yjcaifu.modules.generator.dao.BorBankStatementDao;
import com.yjcaifu.modules.generator.entity.BorBankStatementEntity;
import com.yjcaifu.modules.generator.service.BorBankStatementService;


@Service("borBankStatementService")
public class BorBankStatementServiceImpl extends ServiceImpl<BorBankStatementDao, BorBankStatementEntity> implements BorBankStatementService {

    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<BorBankStatementEntity> page = this.selectPage(
                new Query<BorBankStatementEntity>(params).getPage(),
                new EntityWrapper<BorBankStatementEntity>()
        );

        return new PageUtils(page);
    }

	@Override
	public List<BorBankStatementEntity> queryByRefId(Map<String, Object> params) {
		List<BorBankStatementEntity> bankStatementEntity=baseMapper.queryByRefId(params);
		return bankStatementEntity;
	}

	@Override
	public void deleteNotInIds(Map<String, Object> delParams) {
		baseMapper.deleteNotInIds(delParams);
		
	}

	@Override
	public List<Integer> queryListIdByRefId(List<Integer> refIds) {
		List<Integer> bankSid=baseMapper.queryListIdByRefId(refIds);
		return bankSid;
	}

}
