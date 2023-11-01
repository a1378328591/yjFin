package com.yjcaifu.modules.generator.service;

import com.baomidou.mybatisplus.service.IService;
import com.yjcaifu.common.utils.PageUtils;
import com.yjcaifu.modules.generator.entity.LoanMiddleEntity;

import java.util.List;
import java.util.Map;

/**
 * InnoDB free: 9216 kB
 *
 * @author chenshun
 * @email sunlightcs@gmail.com
 * @date 2018-05-25 14:39:19
 */
public interface LoanMiddleService extends IService<LoanMiddleEntity> {

    PageUtils queryPage(Map<String, Object> params);
    
    List<LoanMiddleEntity> selectByRefId(Integer refId);
    
    LoanMiddleEntity selectById(String id);

	List<Integer> queryListByRefId(List<Integer> refIds);
}

