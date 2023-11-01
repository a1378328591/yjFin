package com.yjcaifu.modules.generator.service;

import com.baomidou.mybatisplus.service.IService;
import com.yjcaifu.common.utils.PageUtils;
import com.yjcaifu.modules.generator.entity.ReviewOpinionsEntity;

import java.util.Map;

/**
 * InnoDB free: 9216 kB
 *
 * @author chenshun
 * @email sunlightcs@gmail.com
 * @date 2018-05-08 10:30:21
 */
public interface ReviewOpinionsService extends IService<ReviewOpinionsEntity> {

    PageUtils queryPage(Map<String, Object> params);
}

