package com.yjcaifu.modules.generator.dao;

import java.util.List;
import java.util.Map;

import com.yjcaifu.modules.generator.entity.BorBorrowerCompanyinfoEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;

import org.apache.ibatis.annotations.Mapper;

/**
 * 
 * 
 * @author htshen
 * @email htshen@tom.com
 * @date 2018-05-23 09:48:34
 */
@Mapper
public interface BorBorrowerCompanyinfoDao extends BaseMapper<BorBorrowerCompanyinfoEntity> {

	BorBorrowerCompanyinfoEntity intoManageEntInfoSel(Map<String, Object> params);

	BorBorrowerCompanyinfoEntity queryById(Map<String, Object> params);

	List<BorBorrowerCompanyinfoEntity> queryBorBorrCompInfo(Map<String, Object> params);

	void deleteAllByRefId(Map<String, Object> delParams);

	void deleteBatchByEntIds(List<Integer> entIds);

	void deleteBatchByRefIds(List<Integer> refIds);
	
}
