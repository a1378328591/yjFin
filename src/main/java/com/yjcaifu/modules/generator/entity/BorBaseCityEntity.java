package com.yjcaifu.modules.generator.entity;

import com.baomidou.mybatisplus.annotations.TableId;
import com.baomidou.mybatisplus.annotations.TableName;

import java.io.Serializable;
import java.util.Date;

/**
 * 
 * 
 * @author htshen
 * @email htshen@tom.com
 * @date 2018-06-13 13:28:00
 */
@TableName("bor_base_city")
public class BorBaseCityEntity implements Serializable {
	private static final long serialVersionUID = 1L;

	/**
	 * 
	 */
	@TableId
	private Integer id;
	/**
	 * 进件id
	 */
	private Integer refId;
	/**
	 * city数组
	 */
	private String city;

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
	 * 设置：进件id
	 */
	public void setRefId(Integer refId) {
		this.refId = refId;
	}
	/**
	 * 获取：进件id
	 */
	public Integer getRefId() {
		return refId;
	}
	/**
	 * 设置：city数组
	 */
	public void setCity(String city) {
		this.city = city;
	}
	/**
	 * 获取：city数组
	 */
	public String getCity() {
		return city;
	}
}
