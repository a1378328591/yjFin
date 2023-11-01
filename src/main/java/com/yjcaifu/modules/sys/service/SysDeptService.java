package com.yjcaifu.modules.sys.service;

import com.baomidou.mybatisplus.service.IService;
import com.yjcaifu.common.utils.PageUtils;
import com.yjcaifu.modules.sys.entity.SysDeptEntity;

import java.util.List;
import java.util.Map;

/**
 * 部门管理; InnoDB free: 9216 kB
 *
 * @author chenshun
 * @email sunlightcs@gmail.com
 * @date 2018-06-20 14:50:44
 */
public interface SysDeptService extends IService<SysDeptEntity> {

    PageUtils queryPage(Map<String, Object> params);
    
    /**
     * 根据parentId查询此部门是否有子部门
     * @param parentId
     * @return
     */
    List<SysDeptEntity> queryListParentId(Long parentId);
}


