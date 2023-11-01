package com.yjcaifu.common.dao;


import java.util.List;
import java.util.Map;

import com.baomidou.mybatisplus.mapper.BaseMapper;
import com.yjcaifu.common.entity.SysCertificateTypeEntity;

import org.apache.ibatis.annotations.Mapper;

/**
 * 
 * 
 * @author htshen
 * @email htshen@tom.com
 * @date 2018-05-29 16:56:57
 */
@Mapper
public interface SysCertificateTypeDao extends BaseMapper<SysCertificateTypeEntity> {

	List<SysCertificateTypeEntity> allList(Map<String, Object> params);
	
}
