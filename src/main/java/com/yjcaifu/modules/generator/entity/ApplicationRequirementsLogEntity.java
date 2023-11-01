package com.yjcaifu.modules.generator.entity;

import com.baomidou.mybatisplus.annotations.TableId;
import com.baomidou.mybatisplus.annotations.TableName;
import com.fasterxml.jackson.annotation.JsonFormat;

import java.io.Serializable;
import java.util.Date;

/**
 * InnoDB free: 9216 kB
 * 
 * @author chenshun
 * @email sunlightcs@gmail.com
 * @date 2018-06-19 13:09:23
 */
@TableName("application_requirements_log")
public class ApplicationRequirementsLogEntity implements Serializable {
	private static final long serialVersionUID = 1L;

	/**
	 * 
	 */
	@TableId
	private Integer id;
	/**
	 * 
	 */
	private String log;
	/**
	 * 
	 */
	@JsonFormat(pattern = "yyyy-MM-dd", timezone = "GMT+8")
	private Date time;
	/**
	 * 操作人
	 */
	private String operator;
	/**
	 * 需求id
	 */
	private Integer xqId;
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
	public void setLog(String log) {
		this.log = log;
	}
	/**
	 * 获取：
	 */
	public String getLog() {
		return log;
	}
	/**
	 * 设置：
	 */
	public void setTime(Date time) {
		this.time = time;
	}
	/**
	 * 获取：
	 */
	public Date getTime() {
		return time;
	}
	public String getOperator() {
		return operator;
	}
	public void setOperator(String operator) {
		this.operator = operator;
	}
	public Integer getXqId() {
		return xqId;
	}
	public void setXqId(Integer xqId) {
		this.xqId = xqId;
	}
	
}
