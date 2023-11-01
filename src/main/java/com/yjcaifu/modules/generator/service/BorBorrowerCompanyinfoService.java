package com.yjcaifu.modules.generator.service;

import com.baomidou.mybatisplus.service.IService;
import com.yjcaifu.common.utils.PageUtils;
import com.yjcaifu.modules.generator.entity.BorBorrowerCompanyinfoEntity;

import java.util.List;
import java.util.Map;

/**
 * 
 *
 * @author htshen
 * @email htshen@tom.com
 * @date 2018-05-23 09:48:34
 */
public interface BorBorrowerCompanyinfoService extends IService<BorBorrowerCompanyinfoEntity> {

    PageUtils queryPage(Map<String, Object> params);

	BorBorrowerCompanyinfoEntity intoManageEntInfoSel(Map<String, Object> params);

	BorBorrowerCompanyinfoEntity queryById(Map<String, Object> params);

	List<BorBorrowerCompanyinfoEntity> queryBorBorrCompInfo(Map<String, Object> params);

	void deleteAllByRefId(Map<String, Object> delParams);

	void deleteBatchByEntIds(List<Integer> entIds);

	void deleteBatchByRefIds(List<Integer> borrInfoList);

}

