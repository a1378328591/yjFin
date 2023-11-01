package com.yjcaifu.modules.generator.service;

import com.baomidou.mybatisplus.service.IService;
import com.yjcaifu.common.utils.PageUtils;
import com.yjcaifu.modules.generator.entity.CusCreditInformationEntity;
import com.yjcaifu.modules.generator.entity.PersonalInfoEntity;

import java.util.List;
import java.util.Map;

/**
 * InnoDB free: 9216 kB
 *
 * @author chenshun
 * @email sunlightcs@gmail.com
 * @date 2018-05-14 09:46:19
 */
public interface CusCreditInformationService extends IService<CusCreditInformationEntity> {

	CusCreditInformationEntity selectById(Integer id);
	
    PageUtils queryPage(Map<String, Object> params);
    
    List<PersonalInfoEntity> findHumen();

	Integer insertAndReturnId(CusCreditInformationEntity cusCreditInformation);

	CusCreditInformationEntity selectByPerId(Map<String, Object> params);

	PageUtils pageByIds(Map<String, Object> params);

	List<CusCreditInformationEntity> listByIds(Map<String, Object> params);

	List<Integer> queryListByPerIds(List<Integer> asList);
}

