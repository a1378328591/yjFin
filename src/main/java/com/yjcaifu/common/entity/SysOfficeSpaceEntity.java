package com.yjcaifu.common.entity;

import com.baomidou.mybatisplus.annotations.TableId;
import com.baomidou.mybatisplus.annotations.TableName;

import java.io.Serializable;
import java.util.Date;

/**
 * 办公场所
 * 
 * @author htshen
 * @email htshen@tom.com
 * @date 2018-06-12 14:29:44
 */
@TableName("sys_office_space")
public class SysOfficeSpaceEntity implements Serializable {
	private static final long serialVersionUID = 1L;

	/**
	 * 办公场所code
	 */
	@TableId
	private Integer id;
	/**
	 * 办公场所name
	 */
	private String name;

	/**
	 * 设置：办公场所code
	 */
	public void setId(Integer id) {
		this.id = id;
	}
	/**
	 * 获取：办公场所code
	 */
	public Integer getId() {
		return id;
	}
	/**
	 * 设置：办公场所name
	 */
	public void setName(String name) {
		this.name = name;
	}
	/**
	 * 获取：办公场所name
	 */
	public String getName() {
		return name;
	}
}
