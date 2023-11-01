package com.yjcaifu.modules.generator.dao;

import com.yjcaifu.modules.generator.entity.ApplicationRequirementsLogEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

/**
 * InnoDB free: 9216 kB
 * 
 * @author chenshun
 * @email sunlightcs@gmail.com
 * @date 2018-06-19 13:09:23
 */
@Mapper
public interface ApplicationRequirementsLogDao extends BaseMapper<ApplicationRequirementsLogEntity> {
	
	List<ApplicationRequirementsLogEntity> selectAll();
	
	List<ApplicationRequirementsLogEntity> selectByxqId(Integer xqId);
	
	void deleteAllByXqId(Integer xqId);
	
}
