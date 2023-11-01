package com.yjcaifu.modules.generator.dao;

import com.yjcaifu.modules.generator.entity.ApplicationRequirementsEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

/**
 * InnoDB free: 9216 kB
 * 
 * @author chenshun
 * @email sunlightcs@gmail.com
 * @date 2018-05-29 14:38:59
 */
@Mapper
public interface ApplicationRequirementsDao extends BaseMapper<ApplicationRequirementsEntity> {
	
	List<ApplicationRequirementsEntity> select();
	
	void deleteOfId(Integer id);
	
	Integer updateState(ApplicationRequirementsEntity applicationRequirementsEntity);
	
	Integer updateconfirmPersonnel(ApplicationRequirementsEntity applicationRequirementsEntity);
	
	Integer updateExecutor(ApplicationRequirementsEntity applicationRequirementsEntity);
	
	String selectExecutorName(Long userId);
	
	String[] selectUsername(Long id);
	
	String selectConfirm(Long userId);
	
	Long selectDeptId(Long userId);
	
	String selectDeptName(Long deptId);
	
}
