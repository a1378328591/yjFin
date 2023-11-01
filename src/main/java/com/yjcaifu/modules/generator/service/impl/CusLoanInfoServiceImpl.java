package com.yjcaifu.modules.generator.service.impl;

import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;

import com.baomidou.mybatisplus.plugins.Page;
import com.baomidou.mybatisplus.service.impl.ServiceImpl;
import com.yjcaifu.common.utils.PageUtils;
import com.yjcaifu.common.utils.Query;
import com.yjcaifu.modules.generator.dao.CusLoanInfoDao;
import com.yjcaifu.modules.generator.entity.CusLoanInfoEntity;
import com.yjcaifu.modules.generator.entity.PersonalInfoEntity;
import com.yjcaifu.modules.generator.service.CusLoanInfoService;


@Service("cusLoanInfoService")
public class CusLoanInfoServiceImpl extends ServiceImpl<CusLoanInfoDao, CusLoanInfoEntity> implements CusLoanInfoService {

    @Override
    public PageUtils queryPage(Map<String, Object> params) {
    	
        Page<PersonalInfoEntity> loanPage=new Query<PersonalInfoEntity>(params).getPage();
        loanPage.setRecords(baseMapper.selectAll(loanPage,params));

        return new PageUtils(loanPage);
    }

	@Override
	public CusLoanInfoEntity selectById(Integer id) {
		CusLoanInfoEntity cusLoanInfoEntity=baseMapper.selectById(id);
		return cusLoanInfoEntity;
	}

	@Override
	public void deleteAllByPerCreditId(Integer id) {
		baseMapper.deleteAllByPerCreditId(id);
	}

	@Override
	public List<CusLoanInfoEntity> queryListByCreditId(Integer id) {
		List<CusLoanInfoEntity> loanInfoList=baseMapper.queryListByCreditId(id);
		return loanInfoList;
	}

	@Override
	public void deleteByCreditId(List<Integer> creditIds) {
		baseMapper.deleteByCreditId(creditIds);
		
	}

}
