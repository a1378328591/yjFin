package com.yjcaifu.modules.generator.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;

import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.baomidou.mybatisplus.plugins.Page;
import com.baomidou.mybatisplus.service.impl.ServiceImpl;
import com.yjcaifu.common.utils.PageUtils;
import com.yjcaifu.common.utils.Query;
import com.yjcaifu.modules.generator.dao.LoanMiddleDao;
import com.yjcaifu.modules.generator.entity.LoanMiddleEntity;
import com.yjcaifu.modules.generator.service.LoanMiddleService;


@Service("loanMiddleService")
public class LoanMiddleServiceImpl extends ServiceImpl<LoanMiddleDao, LoanMiddleEntity> implements LoanMiddleService {

	@Autowired
	LoanMiddleDao loanMiddleDao;
	
    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<LoanMiddleEntity> page = this.selectPage(
                new Query<LoanMiddleEntity>(params).getPage(),
                new EntityWrapper<LoanMiddleEntity>()
        );

        return new PageUtils(page);
    }

	@Override
	public List<LoanMiddleEntity> selectByRefId(Integer refId) {
		
		return loanMiddleDao.selectByRefId(refId);
	}

	@Override
	public LoanMiddleEntity selectById(String id) {
		
		return loanMiddleDao.selectById(id);
	}

	@Override
	public List<Integer> queryListByRefId(List<Integer> refIds) {
		// TODO Auto-generated method stub
		return loanMiddleDao.queryListByRefId(refIds);
	}

}
