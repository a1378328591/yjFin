package com.yjcaifu.modules.generator.service;

import com.baomidou.mybatisplus.service.IService;
import com.yjcaifu.common.utils.PageUtils;
import com.yjcaifu.modules.generator.entity.PersonalInfoEntity;
import com.yjcaifu.modules.generator.entity.TempNameEntity;

import java.util.List;
import java.util.Map;

/**
 * 
 *
 * @author htshen
 * @email htshen@tom.com
 * @date 2018-05-07 17:13:49
 */
public interface PersonalInfoService extends IService<PersonalInfoEntity> {

    PageUtils queryPage(Map<String, Object> params);
    PersonalInfoEntity selectById(Integer id);
	List<PersonalInfoEntity> queryPersonalList(Map<String, Object> params);
	/**
	 * 根据进件管理id查询个人信息
	 * @param borrId
	 * @return
	 */
	PersonalInfoEntity selectByBorrId(Integer id);
	PersonalInfoEntity intoManagePerSel(Map<String, Object> params);
	List<TempNameEntity> nameListByOwnerType(Map<String, Object> params);
	List<TempNameEntity> nameListById(Map<String, Object> params);
}

