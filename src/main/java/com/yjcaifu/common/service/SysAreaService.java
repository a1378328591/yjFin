package com.yjcaifu.common.service;

import com.baomidou.mybatisplus.service.IService;
import com.yjcaifu.common.entity.SysAreaEntity;
import com.yjcaifu.common.utils.PageUtils;

import java.util.List;
import java.util.Map;

/**
 * 
 *
 * @author htshen
 * @email htshen@tom.com
 * @date 2018-05-08 13:30:23
 */
public interface SysAreaService extends IService<SysAreaEntity> {

    PageUtils queryPage(Map<String, Object> params);

	List<SysAreaEntity> querycityList(Map<String, Object> params);

	List<SysAreaEntity> queryList(Map<String, Object> params);
}

