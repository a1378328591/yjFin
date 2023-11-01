package com.yjcaifu.modules.sys.dao;

import com.baomidou.mybatisplus.mapper.BaseMapper;
import com.yjcaifu.modules.sys.entity.SysUserTokenEntity;
import com.yjcaifu.modules.sys.entity.SysUserTokenEntity;
import org.apache.ibatis.annotations.Mapper;

/**
 * 系统用户Token
 * 
 * @author htshen
 * @email htshen@tom.com
 * @date 2017-03-23 15:22:07
 */
@Mapper
public interface SysUserTokenDao extends BaseMapper<SysUserTokenEntity> {

    SysUserTokenEntity queryByToken(String token);
	
}
