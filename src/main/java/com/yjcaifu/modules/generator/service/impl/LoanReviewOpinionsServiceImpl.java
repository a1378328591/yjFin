package com.yjcaifu.modules.generator.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.baomidou.mybatisplus.plugins.Page;
import com.baomidou.mybatisplus.service.impl.ServiceImpl;
import com.yjcaifu.common.utils.PageUtils;
import com.yjcaifu.common.utils.Query;
import com.yjcaifu.modules.generator.dao.LoanReviewOpinionsDao;
import com.yjcaifu.modules.generator.entity.LoanReviewOpinionsEntity;
import com.yjcaifu.modules.generator.service.LoanReviewOpinionsService;


@Service("loanReviewOpinionsService")
public class LoanReviewOpinionsServiceImpl extends ServiceImpl<LoanReviewOpinionsDao, LoanReviewOpinionsEntity> implements LoanReviewOpinionsService {

	@Autowired
	private LoanReviewOpinionsDao loanReviewOpinionsDao;
	
    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<LoanReviewOpinionsEntity> page = this.selectPage(
                new Query<LoanReviewOpinionsEntity>(params).getPage(),
                new EntityWrapper<LoanReviewOpinionsEntity>()
        );

        return new PageUtils(page);
    }

	@Override
	public List<LoanReviewOpinionsEntity> selectByrefId(Integer refId) {
		
		return loanReviewOpinionsDao.selectByrefId(refId);
	}

	@Override
	public LoanReviewOpinionsEntity selectOnceRecord(HashMap<String, Object> map) {
		
		return loanReviewOpinionsDao.selectOnceRecord(map);
	}

	@Override
	public void deleteAllByLoanMiddleId(Integer id) {
		baseMapper.deleteAllByLoanMiddleId(id);
		
	}

	@Override
	public void deleteBatchByMainTabIds(List<Integer> mainTabIds) {
		baseMapper.deleteBatchByMainTabIds(mainTabIds);
		
	}

}
