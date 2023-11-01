package com.yjcaifu.modules.generator.service.impl;

import org.springframework.stereotype.Service;
import java.util.Map;
import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.baomidou.mybatisplus.plugins.Page;
import com.baomidou.mybatisplus.service.impl.ServiceImpl;
import com.yjcaifu.common.utils.PageUtils;
import com.yjcaifu.common.utils.Query;

import com.yjcaifu.modules.generator.dao.RdUserDao;
import com.yjcaifu.modules.generator.entity.RdUserEntity;
import com.yjcaifu.modules.generator.service.RdUserService;


@Service("rdUserService")
public class RdUserServiceImpl extends ServiceImpl<RdUserDao, RdUserEntity> implements RdUserService {

    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<RdUserEntity> page = this.selectPage(
                new Query<RdUserEntity>(params).getPage(),
                new EntityWrapper<RdUserEntity>()
        );

        return new PageUtils(page);
    }

}
