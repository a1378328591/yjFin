package com.yjcaifu.common.entity;

import com.baomidou.mybatisplus.annotations.TableId;
import com.baomidou.mybatisplus.annotations.TableName;

import java.io.Serializable;
import java.util.Date;

/**
 * 保证性质
 * 
 * @author htshen
 * @email htshen@tom.com
 * @date 2018-06-12 14:29:44
 */
@TableName("sys_ensure_property")
public class SysEnsurePropertyEntity implements Serializable {
	private static final long serialVersionUID = 1L;

	/**
	 * 保证性质code
	 */
	@TableId
	private Integer id;
	/**
	 * 保证性质name
	 */
	private String name;

	/**
	 * 设置：保证性质code
	 */
	public void setId(Integer id) {
		this.id = id;
	}
	/**
	 * 获取：保证性质code
	 */
	public Integer getId() {
		return id;
	}
	/**
	 * 设置：保证性质name
	 */
	public void setName(String name) {
		this.name = name;
	}
	/**
	 * 获取：保证性质name
	 */
	public String getName() {
		return name;
	}
}
