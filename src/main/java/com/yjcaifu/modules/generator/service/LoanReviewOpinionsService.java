package com.yjcaifu.modules.generator.service;

import com.baomidou.mybatisplus.service.IService;
import com.yjcaifu.common.utils.PageUtils;
import com.yjcaifu.modules.generator.entity.LoanReviewOpinionsEntity;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * InnoDB free: 9216 kB
 *
 * @author chenshun
 * @email sunlightcs@gmail.com
 * @date 2018-05-24 11:29:56
 */
public interface LoanReviewOpinionsService extends IService<LoanReviewOpinionsEntity> {

    PageUtils queryPage(Map<String, Object> params);
    
    List<LoanReviewOpinionsEntity> selectByrefId(Integer refId);
    
    LoanReviewOpinionsEntity selectOnceRecord(HashMap<String, Object> map);

	void deleteAllByLoanMiddleId(Integer id);

	void deleteBatchByMainTabIds(List<Integer> mainTabIds);
}

