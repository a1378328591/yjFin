package com.yjcaifu.common.dao;

import java.util.List;
import java.util.Map;

import com.yjcaifu.common.entity.SysEnsurePropertyEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;

import org.apache.ibatis.annotations.Mapper;

/**
 * 保证性质
 * 
 * @author htshen
 * @email htshen@tom.com
 * @date 2018-06-12 14:29:44
 */
@Mapper
public interface SysEnsurePropertyDao extends BaseMapper<SysEnsurePropertyEntity> {

	List<SysEnsurePropertyEntity> queryList(Map<String, Object> params);
	
}
