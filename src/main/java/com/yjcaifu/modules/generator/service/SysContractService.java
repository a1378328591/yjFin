package com.yjcaifu.modules.generator.service;

import com.baomidou.mybatisplus.service.IService;
import com.yjcaifu.common.utils.PageUtils;
import com.yjcaifu.modules.generator.entity.SysContractEntity;

import java.util.Map;

/**
 * InnoDB free: 9216 kB
 *
 * @author chenshun
 * @email sunlightcs@gmail.com
 * @date 2018-06-12 16:41:19
 */
public interface SysContractService extends IService<SysContractEntity> {

    PageUtils queryPage(Map<String, Object> params);
    
    void deleteByConId(Integer id);
}

