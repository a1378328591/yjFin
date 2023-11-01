package com.yjcaifu.modules.generator.dao;

import com.yjcaifu.modules.generator.entity.LoanMiddleEntity;
import com.yjcaifu.modules.generator.entity.LoanReviewOpinionsEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

/**
 * InnoDB free: 9216 kB
 * 
 * @author chenshun
 * @email sunlightcs@gmail.com
 * @date 2018-05-25 14:39:19
 */
@Mapper
public interface LoanMiddleDao extends BaseMapper<LoanMiddleEntity> {
	
	List<LoanMiddleEntity> selectByRefId(Integer refId);
	
	LoanMiddleEntity selectById(String id);

	List<Integer> queryListByRefId(List<Integer> refIds);
}
