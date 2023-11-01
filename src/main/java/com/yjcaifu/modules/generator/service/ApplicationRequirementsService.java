package com.yjcaifu.modules.generator.service;

import com.baomidou.mybatisplus.service.IService;
import com.yjcaifu.common.utils.PageUtils;
import com.yjcaifu.modules.generator.entity.ApplicationRequirementsEntity;

import java.util.List;
import java.util.Map;

/**
 * InnoDB free: 9216 kB
 *
 * @author chenshun
 * @email sunlightcs@gmail.com
 * @date 2018-05-29 14:38:59
 */
public interface ApplicationRequirementsService extends IService<ApplicationRequirementsEntity> {

    PageUtils queryPage(Map<String, Object> params);
    
    List<ApplicationRequirementsEntity> select();
    
    void deleteOfId(Integer id);
    
    Integer updateState(ApplicationRequirementsEntity applicationRequirementsEntity);
    
    Integer updateconfirmPersonnel(ApplicationRequirementsEntity applicationRequirementsEntity);
    
    Integer updateExecutor(ApplicationRequirementsEntity applicationRequirementsEntity);
    
    Long selectDeptId(Long userId);
    
    String selectDeptName(Long deptId);
}

