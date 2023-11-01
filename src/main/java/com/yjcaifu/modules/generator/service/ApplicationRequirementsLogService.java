package com.yjcaifu.modules.generator.service;

import com.baomidou.mybatisplus.service.IService;
import com.yjcaifu.common.utils.PageUtils;
import com.yjcaifu.modules.generator.entity.ApplicationRequirementsLogEntity;

import java.util.List;
import java.util.Map;

/**
 * InnoDB free: 9216 kB
 *
 * @author chenshun
 * @email sunlightcs@gmail.com
 * @date 2018-06-19 13:09:23
 */
public interface ApplicationRequirementsLogService extends IService<ApplicationRequirementsLogEntity> {

    PageUtils queryPage(Map<String, Object> params);
    
    List<ApplicationRequirementsLogEntity> selectAll();
    
    List<ApplicationRequirementsLogEntity> selectByxqId(Integer xqId);
    
    void deleteAllByXqId(Integer xqId);
}

