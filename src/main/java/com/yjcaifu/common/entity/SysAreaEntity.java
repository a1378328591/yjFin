package com.yjcaifu.common.entity;

import com.baomidou.mybatisplus.annotations.TableField;
import com.baomidou.mybatisplus.annotations.TableId;
import com.baomidou.mybatisplus.annotations.TableName;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

/**
 * 
 * 
 * @author htshen
 * @email htshen@tom.com
 * @date 2018-05-08 13:30:23
 */
@TableName("sys_area")
public class SysAreaEntity implements Serializable {
	private static final long serialVersionUID = 1L;

	/**
	 * 
	 */
	@TableId
	private Integer id;
	/**
	 * 
	 */
	private String areaName;
	/**
	 * 
	 */
	private Integer pid;
	/**
	 * 
	 */
	@TableField(exist=false)
	private List<SysAreaEntity> children;
	/**
	 * 设置：
	 */
	public void setId(Integer id) {
		this.id = id;
	}
	/**
	 * 获取：
	 */
	public Integer getId() {
		return id;
	}
	/**
	 * 设置：
	 */
	public void setAreaName(String areaName) {
		this.areaName = areaName;
	}
	/**
	 * 获取：
	 */
	public String getAreaName() {
		return areaName;
	}
	/**
	 * 设置：
	 */
	public void setPid(Integer pid) {
		this.pid = pid;
	}
	/**
	 * 获取：
	 */
	public Integer getPid() {
		return pid;
	}
	public List<SysAreaEntity> getChildren() {
		return children;
	}
	public void setChildren(List<SysAreaEntity> children) {
		this.children = children;
	}
	
	
}
