package com.yjcaifu.modules.generator.service.impl;

import org.springframework.stereotype.Service;
import java.util.Map;
import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.baomidou.mybatisplus.plugins.Page;
import com.baomidou.mybatisplus.service.impl.ServiceImpl;
import com.yjcaifu.common.utils.PageUtils;
import com.yjcaifu.common.utils.Query;

import com.yjcaifu.modules.generator.dao.ReviewOpinionsDao;
import com.yjcaifu.modules.generator.entity.ReviewOpinionsEntity;
import com.yjcaifu.modules.generator.service.ReviewOpinionsService;


@Service("reviewOpinionsService")
public class ReviewOpinionsServiceImpl extends ServiceImpl<ReviewOpinionsDao, ReviewOpinionsEntity> implements ReviewOpinionsService {

    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<ReviewOpinionsEntity> page = this.selectPage(
                new Query<ReviewOpinionsEntity>(params).getPage(),
                new EntityWrapper<ReviewOpinionsEntity>()
        );

        return new PageUtils(page);
    }

}
