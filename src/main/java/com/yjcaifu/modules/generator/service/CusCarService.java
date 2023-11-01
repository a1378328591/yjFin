package com.yjcaifu.modules.generator.service;

import com.baomidou.mybatisplus.service.IService;
import com.yjcaifu.common.utils.PageUtils;
import com.yjcaifu.modules.generator.entity.CusCarEntity;
import com.yjcaifu.modules.generator.entity.PersonalInfoEntity;

import java.util.List;
import java.util.Map;

/**
 * InnoDB free: 9216 kB
 *
 * @author chenshun
 * @email sunlightcs@gmail.com
 * @date 2018-05-09 10:51:08
 */
public interface CusCarService extends IService<CusCarEntity> {

    PageUtils queryPage(Map<String, Object> params);
    
    CusCarEntity selectById(Integer id);
    
    List<PersonalInfoEntity> findOwner();

	List<CusCarEntity> queryByIds(Map<String, Object> params);

	List<CusCarEntity> listByIds(Map<String, Object> params);

	void deleteBatchByEntIds(List<Integer> entIds);

	List<Integer> queryListIntByEntIds(List<Integer> entIds);

	List<Integer> queryListIntByPerIds(List<Integer> asList);
}

