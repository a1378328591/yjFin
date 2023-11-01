package com.yjcaifu.modules.generator.dao;

import com.yjcaifu.modules.generator.entity.CusCarEntity;
import com.yjcaifu.modules.generator.entity.PersonalInfoEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import com.baomidou.mybatisplus.plugins.Page;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

/**
 * InnoDB free: 9216 kB
 * 
 * @author chenshun
 * @email sunlightcs@gmail.com
 * @date 2018-05-09 10:51:08
 */
@Mapper
public interface CusCarDao extends BaseMapper<CusCarEntity> {
	
	CusCarEntity selectById(Integer id);
	
	List<CusCarEntity> selectAll(Page<CusCarEntity> cusCarEntity,Map<String, Object> params);
	
	List<PersonalInfoEntity> findOwner();

	List<CusCarEntity> queryByIds(Map<String, Object> params);

	List<CusCarEntity> listByIds(Map<String, Object> params);

	List<CusCarEntity> listEntByIds(Map<String, Object> params);

	void deleteBatchByEntIds(List<Integer> entIds);

	List<Integer> queryListIntByEntIds(List<Integer> entIds);

	List<Integer> queryListIntByPerIds(List<Integer> perIds);
}
