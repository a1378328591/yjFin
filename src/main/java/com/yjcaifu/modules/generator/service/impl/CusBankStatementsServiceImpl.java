package com.yjcaifu.modules.generator.service.impl;

import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;

import com.baomidou.mybatisplus.plugins.Page;
import com.baomidou.mybatisplus.service.impl.ServiceImpl;
import com.yjcaifu.common.utils.PageUtils;
import com.yjcaifu.common.utils.Query;
import com.yjcaifu.modules.generator.dao.CusBankStatementsDao;
import com.yjcaifu.modules.generator.entity.CusBankStatementsEntity;
import com.yjcaifu.modules.generator.service.CusBankStatementsService;


@Service("cusBankStatementsService")
public class CusBankStatementsServiceImpl extends ServiceImpl<CusBankStatementsDao, CusBankStatementsEntity> implements CusBankStatementsService {

    @Override
    public PageUtils queryPage(Map<String, Object> params) {
    	Page<CusBankStatementsEntity> bankStatementPage=new Query<CusBankStatementsEntity>(params).getPage();
    	bankStatementPage.setRecords(baseMapper.selectAll(bankStatementPage,params));

        return new PageUtils(bankStatementPage);
    }

	@Override
	public PageUtils listByPersonalId(Map<String, Object> params) {
		Page<CusBankStatementsEntity> bankStatementPage=new Query<CusBankStatementsEntity>(params).getPage();
    	bankStatementPage.setRecords(baseMapper.listByPersonalId(bankStatementPage,params));
		return  new PageUtils(bankStatementPage);
	}

	@Override
	public List<CusBankStatementsEntity> queryByIds(Map<String, Object> params) {
		List<CusBankStatementsEntity> list=baseMapper.queryByIds(params);
		return list;
	}

	@Override
	public List<CusBankStatementsEntity> queryListByMainTableId(Map<String, Object> params) {
		List<CusBankStatementsEntity> list=baseMapper.queryListByMainTableId(params);
		return list;
	}

	@Override
	public void deleteNotInIds(Map<String, Object> params) {
		baseMapper.deleteNotInIds(params);
		
	}

	@Override
	public void deleteBatchByBankSIds(List<Integer> bankSIds) {
		baseMapper.deleteBatchByBankSIds(bankSIds);
		
	}

}
