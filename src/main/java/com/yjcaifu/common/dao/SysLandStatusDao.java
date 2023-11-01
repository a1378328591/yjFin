package com.yjcaifu.common.dao;

import java.util.List;
import java.util.Map;

import com.yjcaifu.common.entity.SysHousingTypesEntity;
import com.yjcaifu.common.entity.SysLandStatusEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;

import org.apache.ibatis.annotations.Mapper;

/**
 * 土地性质
 * 
 * @author htshen
 * @email htshen@tom.com
 * @date 2018-06-12 14:29:44
 */
@Mapper
public interface SysLandStatusDao extends BaseMapper<SysLandStatusEntity> {

	List<SysLandStatusEntity> queryList(Map<String, Object> params);
	
}
