package com.yjcaifu.common.service;

import com.baomidou.mybatisplus.service.IService;
import com.yjcaifu.common.utils.PageUtils;
import com.yjcaifu.common.entity.SysHousingTypesEntity;

import java.util.List;
import java.util.Map;

/**
 * 房屋类型
 *
 * @author htshen
 * @email htshen@tom.com
 * @date 2018-06-12 14:29:44
 */
public interface SysHousingTypesService extends IService<SysHousingTypesEntity> {

    PageUtils queryPage(Map<String, Object> params);

	List<SysHousingTypesEntity> queryList(Map<String, Object> params);
}

