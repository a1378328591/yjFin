package com.yjcaifu.common.service;

import com.baomidou.mybatisplus.service.IService;
import com.yjcaifu.common.entity.SysCoborrowerTypeEntity;
import com.yjcaifu.common.utils.PageUtils;

import java.util.List;
import java.util.Map;

/**
 * 
 *
 * @author htshen
 * @email htshen@tom.com
 * @date 2018-05-18 09:07:27
 */
public interface SysCoborrowerTypeService extends IService<SysCoborrowerTypeEntity> {

    PageUtils queryPage(Map<String, Object> params);

	List<SysCoborrowerTypeEntity> queryAllList(Map<String, Object> params);
}

