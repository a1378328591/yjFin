package com.yjcaifu.modules.job.service.impl;


import org.springframework.stereotype.Service;

import java.util.Map;

import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.baomidou.mybatisplus.plugins.Page;
import com.baomidou.mybatisplus.service.impl.ServiceImpl;
import com.yjcaifu.common.utils.PageUtils;
import com.yjcaifu.common.utils.Query;
import com.yjcaifu.modules.job.dao.CommissionOfCommerceDao;
import com.yjcaifu.modules.job.entity.CommissionOfCommerceEntity;
import com.yjcaifu.modules.job.service.CommissionOfCommerceService;



@Service("commissionOfCommerceService")
public class CommissionOfCommerceServiceImpl extends ServiceImpl<CommissionOfCommerceDao, CommissionOfCommerceEntity> implements CommissionOfCommerceService {

    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<CommissionOfCommerceEntity> page = this.selectPage(
                new Query<CommissionOfCommerceEntity>(params).getPage(),
                new EntityWrapper<CommissionOfCommerceEntity>()
        );

        return new PageUtils(page);
    }

}
