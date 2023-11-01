package com.yjcaifu.modules.generator.service;

import com.baomidou.mybatisplus.service.IService;
import com.yjcaifu.common.utils.PageUtils;
import com.yjcaifu.modules.generator.entity.RdAccountCashReasonReportEntity;

import java.util.Map;

/**
 * 
 *
 * @author chenshun
 * @email sunlightcs@gmail.com
 * @date 2018-06-15 16:31:15
 */
public interface RdAccountCashReasonReportService extends IService<RdAccountCashReasonReportEntity> {

    PageUtils queryPage(Map<String, Object> params);
}

