package com.yjcaifu.modules.generator.dao;

import java.util.List;
import java.util.Map;

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
public interface PersonalInfoDao extends BaseMapper<PersonalInfoEntity> {
	
	PersonalInfoEntity selectById(Integer id);

	List<PersonalInfoEntity> selectAll(Page<PersonalInfoEntity> personalPage,Map<String, Object> params);

	List<PersonalInfoEntity> queryPersonalList(Map<String, Object> params);

	PersonalInfoEntity selectByBorrId(Integer id);

	PersonalInfoEntity intoManagePerSel(Map<String, Object> params);

	List<TempNameEntity> nameListByOwnerType(Map<String, Object> params);

	List<TempNameEntity> nameListById(Map<String, Object> params);
}
