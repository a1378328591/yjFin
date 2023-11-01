package com.yjcaifu.common.dao;

import java.util.List;
import java.util.Map;

import com.yjcaifu.common.entity.SysHousingTypesEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;

import org.apache.ibatis.annotations.Mapper;

/**
 * 房屋类型
 * 
 * @author htshen
 * @email htshen@tom.com
 * @date 2018-06-12 14:29:44
 */
@Mapper
public interface SysHousingTypesDao extends BaseMapper<SysHousingTypesEntity> {

	List<SysHousingTypesEntity> queryList(Map<String, Object> params);
	
}
