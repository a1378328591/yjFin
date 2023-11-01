package com.yjcaifu.common.dao;

import java.util.List;
import java.util.Map;

import com.yjcaifu.common.entity.SysOfficeSpaceEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;

import org.apache.ibatis.annotations.Mapper;

/**
 * 办公场所
 * 
 * @author htshen
 * @email htshen@tom.com
 * @date 2018-06-12 14:29:44
 */
@Mapper
public interface SysOfficeSpaceDao extends BaseMapper<SysOfficeSpaceEntity> {

	List<SysOfficeSpaceEntity> queryList(Map<String, Object> params);
	
}
