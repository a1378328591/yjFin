package com.yjcaifu.modules.generator.service;

import com.baomidou.mybatisplus.service.IService;
import com.yjcaifu.common.utils.PageUtils;
import com.yjcaifu.modules.generator.entity.InvestigationTrialEntity;

import java.util.List;
import java.util.Map;

/**
 * InnoDB free: 9216 kB
 *
 * @author chenshun
 * @email sunlightcs@gmail.com
 * @date 2018-05-22 11:02:58
 */
public interface InvestigationTrialService extends IService<InvestigationTrialEntity> {

    PageUtils queryPage(Map<String, Object> params);
    
    InvestigationTrialEntity selectByRefId(Integer refId);
    
    InvestigationTrialEntity selectAll(Integer refId);
    
    InvestigationTrialEntity selectAfter(Integer refId);
    
    String selectName(Integer refId);

	InvestigationTrialEntity selectByIntoManageId(Integer id);

	void updateBatchByEntIds(List<Integer> ids);

	void deleteBatchByRefIds(List<Integer> borrInfoList);
}

