package com.yjcaifu.modules.generator.dao;

import com.yjcaifu.modules.generator.entity.CusCarEntity;
import com.yjcaifu.modules.generator.entity.CusCreditInformationEntity;
import com.yjcaifu.modules.generator.entity.CusLoanInfoEntity;
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
 * @date 2018-05-14 09:46:19
 */
@Mapper
public interface CusCreditInformationDao extends BaseMapper<CusCreditInformationEntity> {
	
	CusCreditInformationEntity selectById(Integer id);
	
	List<PersonalInfoEntity> findHumen();
	
	List<CusCreditInformationEntity> selectAll(Page<CusCreditInformationEntity> cusCreditInformationEntity,Map<String, Object> params);

	Integer insertAndReturnId(CusCreditInformationEntity cusCreditInformation);

	CusCreditInformationEntity selectByPerId(Map<String, Object> params);

	List<CusCreditInformationEntity> pageByIds(Page<CusCreditInformationEntity> cusCreditCarPage,Map<String, Object> params);

	List<CusCreditInformationEntity> listByIds(Map<String, Object> params);

	List<Integer> queryListByPerIds(List<Integer> perIds);
	
}
