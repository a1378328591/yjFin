package com.yjcaifu.modules.sys.dao;

import com.baomidou.mybatisplus.mapper.BaseMapper;
import com.yjcaifu.modules.app.entity.UserEntity;
import com.yjcaifu.modules.sys.entity.SysUserEntity;
import com.yjcaifu.modules.sys.entity.SysUserEntity;

import org.apache.ibatis.annotations.Mapper;

import java.util.List;
import java.util.Map;

/**
 * 系统用户
 * 
 * @author htshen
 * @email htshen@tom.com
 * @date 2016年9月18日 上午9:34:11
 */
@Mapper
public interface SysUserDao extends BaseMapper<SysUserEntity> {
	
	/**
	 * 查询用户的所有权限
	 * @param userId  用户ID
	 */
	List<String> queryAllPerms(Long userId);
	
	/**
	 * 查询用户的所有菜单ID
	 */
	List<Long> queryAllMenuId(Long userId);
	
	/**
	 * 根据用户名，查询系统用户
	 */
	SysUserEntity queryByUserName(String username);

	/**
	 * 根据userID，查询系统用户
	 */
	String selectUserNameByUserID(Long usetID);
	
	SysUserEntity queryUserNameByUserID(Integer usetID);

	List<UserEntity> queryUserList(Map<String, Object> params);
	
	List<UserEntity> queryUserListByUseridList(Map<String, Object> params);

	SysUserEntity queryByMobile(String mobile);

	SysUserEntity queryByMobileNoEqualId(Map<String, Object> params);

}
