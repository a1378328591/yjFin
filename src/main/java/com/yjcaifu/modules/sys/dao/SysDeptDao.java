package com.yjcaifu.modules.sys.dao;

import com.yjcaifu.modules.sys.entity.SysDeptEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

/**
 * 部门管理; InnoDB free: 9216 kB
 * 
 * @author chenshun
 * @email sunlightcs@gmail.com
 * @date 2018-06-20 14:50:44
 */
@Mapper
public interface SysDeptDao extends BaseMapper<SysDeptEntity> {

	String selectParentName(Long parentId);
	
	List<SysDeptEntity> queryListParentId(Long parentId);
	
}
