package com.yjcaifu.modules.generator.dao;

import com.yjcaifu.modules.generator.entity.PersonalInfoEntity;
import com.yjcaifu.modules.generator.entity.RegisterInfoEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;

import org.apache.ibatis.annotations.Mapper;

/**
 * 
 * 
 * @author htshen
 * @email htshen@tom.com
 * @date 2018-05-04 17:10:45
 */
@Mapper
public interface RegisterInfoDao extends BaseMapper<RegisterInfoEntity> {
	
	Integer insertAndReturnId(RegisterInfoEntity reginfo);
}
