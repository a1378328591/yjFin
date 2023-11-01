package com.yjcaifu.common.dao;

import java.util.List;
import java.util.Map;

import com.baomidou.mybatisplus.mapper.BaseMapper;
import com.yjcaifu.common.entity.SysAreaEntity;

import org.apache.ibatis.annotations.Mapper;

/**
 * 
 * 
 * @author htshen
 * @email htshen@tom.com
 * @date 2018-05-08 13:30:23
 */
@Mapper
public interface SysAreaDao extends BaseMapper<SysAreaEntity> {

	List<SysAreaEntity> querycityList(Map<String, Object> params);

	List<SysAreaEntity> queryList(Map<String, Object> params);
	
}
