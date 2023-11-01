package com.yjcaifu.modules.generator.service;

import com.baomidou.mybatisplus.service.IService;
import com.yjcaifu.common.utils.PageUtils;
import com.yjcaifu.modules.generator.entity.BorBussinessDataEntity;

import java.util.List;
import java.util.Map;

/**
 * 
 *
 * @author htshen
 * @email htshen@tom.com
 * @date 2018-05-27 15:04:27
 */
public interface BorBussinessDataService extends IService<BorBussinessDataEntity> {

    PageUtils queryPage(Map<String, Object> params);

	List<BorBussinessDataEntity> queryByRefId(Map<String, Object> params);

	List<Integer> queryListByRefIds(List<Integer> refIds);
}

