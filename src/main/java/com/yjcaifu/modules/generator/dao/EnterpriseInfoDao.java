package com.yjcaifu.modules.generator.dao;

import java.util.List;
import java.util.Map;

import com.yjcaifu.modules.generator.entity.EnterpriseInfoEntity;
import com.yjcaifu.modules.generator.entity.PersonalInfoEntity;
import com.yjcaifu.modules.generator.entity.TempNameEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import com.baomidou.mybatisplus.plugins.Page;

import org.apache.ibatis.annotations.Mapper;

/**
 * 
 * 
 * @author htshen
 * @email htshen@tom.com
 * @date 2018-05-07 17:13:49
 */
@Mapper
public interface EnterpriseInfoDao extends BaseMapper<EnterpriseInfoEntity> {

	EnterpriseInfoEntity selectById(Integer id);

	List<EnterpriseInfoEntity> queryEnterpriseList(Map<String, Object> params);

	EnterpriseInfoEntity intoManageEntSel(Map<String, Object> params);

	List<EnterpriseInfoEntity> listByIds(Map<String, Object> params);

	List<EnterpriseInfoEntity> pageByIds(Page<EnterpriseInfoEntity> cusCarPage,Map<String, Object> params);

	List<EnterpriseInfoEntity> selectPage(Page<EnterpriseInfoEntity> personalPage, Map<String, Object> params);

	List<TempNameEntity> nameListByOwnerType(Map<String, Object> params);

	List<TempNameEntity> nameListById(Map<String, Object> params);
}
