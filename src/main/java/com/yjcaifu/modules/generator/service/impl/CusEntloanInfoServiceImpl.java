package com.yjcaifu.modules.generator.service.impl;

import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;

import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.baomidou.mybatisplus.plugins.Page;
import com.baomidou.mybatisplus.service.impl.ServiceImpl;
import com.yjcaifu.common.utils.PageUtils;
import com.yjcaifu.common.utils.Query;
import com.yjcaifu.modules.generator.dao.CusEntloanInfoDao;
import com.yjcaifu.modules.generator.entity.CusEntloanInfoEntity;
import com.yjcaifu.modules.generator.service.CusEntloanInfoService;


@Service("cusEntloanInfoService")
public class CusEntloanInfoServiceImpl extends ServiceImpl<CusEntloanInfoDao, CusEntloanInfoEntity> implements CusEntloanInfoService {

    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<CusEntloanInfoEntity> page = this.selectPage(
                new Query<CusEntloanInfoEntity>(params).getPage(),
                new EntityWrapper<CusEntloanInfoEntity>()
        );

        return new PageUtils(page);
    }

	@Override
	public void deleteAllByEntCreditId(Integer id) {
		baseMapper.deleteAllByEntCreditId(id);
		
	}

	@Override
	public void deleteByCreditId(List<Integer> ids) {
		baseMapper.deleteByCreditId(ids);
		
	}

	@Override
	public List<CusEntloanInfoEntity> queryListByCreditId(Integer id) {
		List<CusEntloanInfoEntity> entloanInfoLiat=baseMapper.queryListByCreditId(id);
		return entloanInfoLiat;
	}

}
