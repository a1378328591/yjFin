package com.yjcaifu.modules.generator.dao;

import java.util.List;
import java.util.Map;

import com.yjcaifu.modules.generator.entity.BorRichTextsEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;

import org.apache.ibatis.annotations.Mapper;

/**
 * InnoDB free: 9216 kB
 * 
 * @author chenshun
 * @email sunlightcs@gmail.com
 * @date 2018-06-04 14:05:51
 */
@Mapper
public interface BorRichTextsDao extends BaseMapper<BorRichTextsEntity> {
	void insertText(BorRichTextsEntity richTextsEntity);

	BorRichTextsEntity queryByRefId(Map<String, Object> params);

	void deleteBatchByRefIds(List<Integer> refIds);
}
