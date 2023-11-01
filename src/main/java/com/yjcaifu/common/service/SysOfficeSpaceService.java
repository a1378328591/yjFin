package com.yjcaifu.common.service;

import com.baomidou.mybatisplus.service.IService;
import com.yjcaifu.common.utils.PageUtils;
import com.yjcaifu.common.entity.SysOfficeSpaceEntity;

import java.util.List;
import java.util.Map;

/**
 * 办公场所
 *
 * @author htshen
 * @email htshen@tom.com
 * @date 2018-06-12 14:29:44
 */
public interface SysOfficeSpaceService extends IService<SysOfficeSpaceEntity> {

    PageUtils queryPage(Map<String, Object> params);

	List<SysOfficeSpaceEntity> queryList(Map<String, Object> params);
}

