package com.yjcaifu.modules.generator.service;

import com.baomidou.mybatisplus.service.IService;
import com.yjcaifu.common.utils.PageUtils;
import com.yjcaifu.modules.generator.entity.CusEstateEntity;

import java.util.List;
import java.util.Map;

/**
 * InnoDB free: 9216 kB
 *
 * @author chenshun
 * @email sunlightcs@gmail.com
 * @date 2018-05-09 17:47:13
 */
public interface CusEstateService extends IService<CusEstateEntity> {

    PageUtils queryPage(Map<String, Object> params);
    
    CusEstateEntity selectById(Integer id);

	List<CusEstateEntity> queryByIds(Map<String, Object> params);

	List<CusEstateEntity> listByIds(Map<String, Object> params);

	List<Integer> queryListIntByEntIds(List<Integer> entIds);

	List<Integer> queryListIntByPerIds(List<Integer> asList);
}

