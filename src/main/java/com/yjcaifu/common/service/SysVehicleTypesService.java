package com.yjcaifu.common.service;

import com.baomidou.mybatisplus.service.IService;
import com.yjcaifu.common.utils.PageUtils;
import com.yjcaifu.common.entity.SysVehicleTypesEntity;

import java.util.List;
import java.util.Map;

/**
 * 车辆类型
 *
 * @author htshen
 * @email htshen@tom.com
 * @date 2018-06-12 14:29:44
 */
public interface SysVehicleTypesService extends IService<SysVehicleTypesEntity> {

    PageUtils queryPage(Map<String, Object> params);

	List<SysVehicleTypesEntity> queryList(Map<String, Object> params);
}

