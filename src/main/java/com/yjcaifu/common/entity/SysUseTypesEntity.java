package com.yjcaifu.common.entity;

import com.baomidou.mybatisplus.annotations.TableId;
import com.baomidou.mybatisplus.annotations.TableName;

import java.io.Serializable;
import java.util.Date;

/**
 * 使用性质
 * 
 * @author htshen
 * @email htshen@tom.com
 * @date 2018-06-12 14:29:44
 */
@TableName("sys_use_types")
public class SysUseTypesEntity implements Serializable {
	private static final long serialVersionUID = 1L;

	/**
	 * 使用性质code
	 */
	@TableId
	private Integer id;
	/**
	 * 使用性质name
	 */
	private String name;

	/**
	 * 设置：使用性质code
	 */
	public void setId(Integer id) {
		this.id = id;
	}
	/**
	 * 获取：使用性质code
	 */
	public Integer getId() {
		return id;
	}
	/**
	 * 设置：使用性质name
	 */
	public void setName(String name) {
		this.name = name;
	}
	/**
	 * 获取：使用性质name
	 */
	public String getName() {
		return name;
	}
}
