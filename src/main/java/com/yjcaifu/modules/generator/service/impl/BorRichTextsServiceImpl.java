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
import com.yjcaifu.modules.generator.dao.BorRichTextsDao;
import com.yjcaifu.modules.generator.entity.BorRichTextsEntity;
import com.yjcaifu.modules.generator.service.BorRichTextsService;


@Service("richTextsService")
public class BorRichTextsServiceImpl extends ServiceImpl<BorRichTextsDao, BorRichTextsEntity> implements BorRichTextsService {

	@Autowired
	BorRichTextsDao richTextsDao;
	
    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<BorRichTextsEntity> page = this.selectPage(
                new Query<BorRichTextsEntity>(params).getPage(),
                new EntityWrapper<BorRichTextsEntity>()
        );

        return new PageUtils(page);
    }

	@Override
	public void insertText(BorRichTextsEntity richTextsEntity) {
		
		richTextsDao.insertText(richTextsEntity);
	}

	@Override
	public BorRichTextsEntity queryByRefId(Map<String, Object> params) {
		BorRichTextsEntity borRichTextsEntity = baseMapper.queryByRefId(params);
		return borRichTextsEntity;
	}

	@Override
	public void deleteBatchByRefIds(List<Integer> refIds) {
		baseMapper.deleteBatchByRefIds(refIds);
		
	}

}
