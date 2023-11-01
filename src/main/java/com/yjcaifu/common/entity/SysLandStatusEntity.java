package com.yjcaifu.common.entity;

import com.baomidou.mybatisplus.annotations.TableId;
import com.baomidou.mybatisplus.annotations.TableName;

import java.io.Serializable;
import java.util.Date;

/**
 * 土地性质
 * 
 * @author htshen
 * @email htshen@tom.com
 * @date 2018-06-12 14:29:44
 */
@TableName("sys_land_status")
public class SysLandStatusEntity implements Serializable {
	private static final long serialVersionUID = 1L;

	/**
	 * 土地性质code
	 */
	@TableId
	private Integer id;
	/**
	 * 土地性质name
	 */
	private String name;

	/**
	 * 设置：土地性质code
	 */
	public void setId(Integer id) {
		this.id = id;
	}
	/**
	 * 获取：土地性质code
	 */
	public Integer getId() {
		return id;
	}
	/**
	 * 设置：土地性质name
	 */
	public void setName(String name) {
		this.name = name;
	}
	/**
	 * 获取：土地性质name
	 */
	public String getName() {
		return name;
	}
}
