package com.yjcaifu.modules.generator.dao;

import java.util.List;
import java.util.Map;

import com.yjcaifu.modules.generator.entity.CusEstateEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import com.baomidou.mybatisplus.plugins.Page;

import org.apache.ibatis.annotations.Mapper;

/**
 * InnoDB free: 9216 kB
 * 
 * @author chenshun
 * @email sunlightcs@gmail.com
 * @date 2018-05-09 17:47:13
 */
@Mapper
public interface CusEstateDao extends BaseMapper<CusEstateEntity> {
	
	CusEstateEntity selectById(Integer id);

	List<CusEstateEntity> selectAll(Page<CusEstateEntity> cusEstatePage,Map<String, Object> params);

	List<CusEstateEntity> queryByIds(Map<String, Object> params);

	List<CusEstateEntity> listByIds(Map<String, Object> params);

	List<CusEstateEntity> listEntByIds(Map<String, Object> params);

	List<Integer> queryListIntByEntIds(List<Integer> entIds);

	List<Integer> queryListIntByPerIds(List<Integer> perIds);
	
}
