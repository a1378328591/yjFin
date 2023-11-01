package com.yjcaifu.modules.generator.service;

import com.baomidou.mybatisplus.service.IService;
import com.yjcaifu.common.utils.PageUtils;
import com.yjcaifu.modules.generator.entity.EnterpriseInfoEntity;
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
public interface EnterpriseInfoService extends IService<EnterpriseInfoEntity> {

    PageUtils queryPage(Map<String, Object> params);
    
    EnterpriseInfoEntity selectById(Integer id);

	List<EnterpriseInfoEntity> queryEnterpriseList(Map<String, Object> params);

	EnterpriseInfoEntity intoManageEntSel(Map<String, Object> params);

	List<EnterpriseInfoEntity> listByIds(Map<String, Object> params);

	PageUtils pageByIds(Map<String, Object> params);

	List<TempNameEntity> nameListByOwnerType(Map<String, Object> params);

	List<TempNameEntity> nameListById(Map<String, Object> params);
}

