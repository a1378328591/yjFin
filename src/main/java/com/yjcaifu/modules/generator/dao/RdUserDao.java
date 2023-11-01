package com.yjcaifu.modules.generator.dao;

import com.yjcaifu.modules.generator.entity.RdUserEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import org.apache.ibatis.annotations.Mapper;

/**
 * 用户基本信息表
 * 
 * @author htshen
 * @email htshen@tom.com
 * @date 2018-05-04 13:56:02
 */
@Mapper
public interface RdUserDao extends BaseMapper<RdUserEntity> {
	
}
