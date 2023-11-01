package com.yjcaifu.modules.job.service;

import com.baomidou.mybatisplus.service.IService;
import com.yjcaifu.common.utils.PageUtils;
import com.yjcaifu.modules.job.entity.CommissionOfCommerceEntity;

import java.util.Map;

/**
 * 
 *
 * @author htshen
 * @email htshen@tom.com
 * @date 2018-07-06 10:44:39
 */
public interface CommissionOfCommerceService extends IService<CommissionOfCommerceEntity> {

    PageUtils queryPage(Map<String, Object> params);
}

