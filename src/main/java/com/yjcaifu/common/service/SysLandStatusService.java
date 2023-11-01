package com.yjcaifu.common.service;

import com.baomidou.mybatisplus.service.IService;
import com.yjcaifu.common.utils.PageUtils;
import com.yjcaifu.common.entity.SysLandStatusEntity;

import java.util.List;
import java.util.Map;

/**
 * 土地性质
 *
 * @author htshen
 * @email htshen@tom.com
 * @date 2018-06-12 14:29:44
 */
public interface SysLandStatusService extends IService<SysLandStatusEntity> {

    PageUtils queryPage(Map<String, Object> params);

	List<SysLandStatusEntity> queryList(Map<String, Object> params);
}

