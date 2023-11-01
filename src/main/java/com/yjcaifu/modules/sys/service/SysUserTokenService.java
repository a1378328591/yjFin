package com.yjcaifu.modules.sys.service;

import com.baomidou.mybatisplus.service.IService;
import com.yjcaifu.common.utils.R;
import com.yjcaifu.modules.sys.entity.SysUserTokenEntity;
import com.yjcaifu.common.utils.R;
import com.yjcaifu.modules.sys.entity.SysUserTokenEntity;

/**
 * 用户Token
 * 
 * @author htshen
 * @email htshen@tom.com
 * @date 2017-03-23 15:22:07
 */
public interface SysUserTokenService extends IService<SysUserTokenEntity> {

	/**
	 * 生成token
	 * @param userId  用户ID
	 */
	R createToken(long userId);

	/**
	 * 退出，修改token值
	 * @param userId  用户ID
	 */
	void logout(long userId);

}
