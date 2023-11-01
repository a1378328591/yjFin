package com.yjcaifu.common.service;

import com.baomidou.mybatisplus.service.IService;
import com.yjcaifu.common.utils.PageUtils;
import com.yjcaifu.common.entity.SysEnsurePropertyEntity;

import java.util.List;
import java.util.Map;

/**
 * 保证性质
 *
 * @author htshen
 * @email htshen@tom.com
 * @date 2018-06-12 14:29:44
 */
public interface SysEnsurePropertyService extends IService<SysEnsurePropertyEntity> {

    PageUtils queryPage(Map<String, Object> params);

	List<SysEnsurePropertyEntity> queryList(Map<String, Object> params);
}

