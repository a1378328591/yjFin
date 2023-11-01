package com.yjcaifu.common.entity;

import com.baomidou.mybatisplus.annotations.TableId;
import com.baomidou.mybatisplus.annotations.TableName;

import java.io.Serializable;
import java.util.Date;

/**
 * 
 * 
 * @author htshen
 * @email htshen@tom.com
 * @date 2018-05-18 09:07:27
 */
@TableName("sys_coborrower_type")
public class SysCoborrowerTypeEntity implements Serializable {
	private static final long serialVersionUID = 1L;

	/**
	 * 
	 */
	@TableId
	private Integer id;
	/**
	 * 借款类型
	 */
	private String type;

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
	 * 设置：借款类型
	 */
	public void setType(String type) {
		this.type = type;
	}
	/**
	 * 获取：借款类型
	 */
	public String getType() {
		return type;
	}
}
