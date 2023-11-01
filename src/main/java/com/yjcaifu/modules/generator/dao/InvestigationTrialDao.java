package com.yjcaifu.modules.generator.dao;

import java.util.List;

import com.yjcaifu.modules.generator.entity.InvestigationTrialEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;

import org.apache.ibatis.annotations.Mapper;

/**
 * InnoDB free: 9216 kB
 * 
 * @author chenshun
 * @email sunlightcs@gmail.com
 * @date 2018-05-22 11:02:58
 */
@Mapper
public interface InvestigationTrialDao extends BaseMapper<InvestigationTrialEntity> {
	
	InvestigationTrialEntity selectByRefId(Integer refId);
	
	InvestigationTrialEntity selectAll(Integer refId);
	InvestigationTrialEntity selectAfter(Integer refId);
	String selectName(Integer refId);

	InvestigationTrialEntity selectByIntoManageId(Integer id);

	void updateBatchByEntIds(List<Integer> ids);

	void deleteBatchByRefIds(List<Integer> refIds);
}
