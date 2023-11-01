package com.yjcaifu.modules.generator.service;

import com.baomidou.mybatisplus.service.IService;
import com.yjcaifu.common.utils.PageUtils;
import com.yjcaifu.modules.generator.entity.BorRichTextsEntity;

import java.util.List;
import java.util.Map;

/**
 * InnoDB free: 9216 kB
 *
 * @author chenshun
 * @email sunlightcs@gmail.com
 * @date 2018-06-04 14:05:51
 */
public interface BorRichTextsService extends IService<BorRichTextsEntity> {

    PageUtils queryPage(Map<String, Object> params);
    
    void insertText(BorRichTextsEntity richTextsEntity);

	BorRichTextsEntity queryByRefId(Map<String, Object> params);

	void deleteBatchByRefIds(List<Integer> refIds);
}

