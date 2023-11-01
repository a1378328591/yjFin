package com.yjcaifu.common.dao;

import java.util.List;
import java.util.Map;

import com.baomidou.mybatisplus.mapper.BaseMapper;
import com.yjcaifu.common.entity.SysCoborrowerTypeEntity;

import org.apache.ibatis.annotations.Mapper;

/**
 * 
 * 
 * @author htshen
 * @email htshen@tom.com
 * @date 2018-05-18 09:07:27
 */
@Mapper
public interface SysCoborrowerTypeDao extends BaseMapper<SysCoborrowerTypeEntity> {

	List<SysCoborrowerTypeEntity> queryAllList(Map<String, Object> params);
	
}
