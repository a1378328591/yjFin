package com.yjcaifu.modules.generator.service.impl;

import org.springframework.stereotype.Service;
import java.util.Map;
import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.baomidou.mybatisplus.plugins.Page;
import com.baomidou.mybatisplus.service.impl.ServiceImpl;
import com.yjcaifu.common.utils.PageUtils;
import com.yjcaifu.common.utils.Query;

import com.yjcaifu.modules.generator.dao.RdAccountCashReasonReportDao;
import com.yjcaifu.modules.generator.entity.RdAccountCashReasonReportEntity;
import com.yjcaifu.modules.generator.service.RdAccountCashReasonReportService;


@Service("rdAccountCashReasonReportService")
public class RdAccountCashReasonReportServiceImpl extends ServiceImpl<RdAccountCashReasonReportDao, RdAccountCashReasonReportEntity> implements RdAccountCashReasonReportService {

    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<RdAccountCashReasonReportEntity> page = this.selectPage(
                new Query<RdAccountCashReasonReportEntity>(params).getPage(),
                new EntityWrapper<RdAccountCashReasonReportEntity>()
        );

        return new PageUtils(page);
    }

}
