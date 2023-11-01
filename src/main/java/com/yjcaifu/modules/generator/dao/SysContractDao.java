package com.yjcaifu.modules.generator.dao;

import com.yjcaifu.modules.generator.entity.SysContractEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;

import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

/**
 * InnoDB free: 9216 kB
 * 
 * @author chenshun
 * @email sunlightcs@gmail.com
 * @date 2018-06-12 16:41:19
 */
@Mapper
public interface SysContractDao extends BaseMapper<SysContractEntity> {
	
	void deleteByConId(Integer id);
	
}
