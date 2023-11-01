package com.yjcaifu.modules.generator.entity;

import com.baomidou.mybatisplus.annotations.TableId;
import com.baomidou.mybatisplus.annotations.TableName;
import com.fasterxml.jackson.annotation.JsonFormat;

import java.io.Serializable;
import java.util.Date;

/**
 * 
 * 
 * @author htshen
 * @email htshen@tom.com
 * @date 2018-05-27 11:20:01
 */
@TableName("bor_tax_record")
public class BorTaxRecordEntity implements Serializable {
	private static final long serialVersionUID = 1L;

	/**
	 * 
	 */
	@TableId
	private Integer id;
	/**
	 * 水电税务情况表id
	 */
	private Integer taxId;
	/**
	 * 月份
	 */
	@JsonFormat(pattern = "yyyy-MM",timezone="GMT+8")
	private Date month;
	/**
	 * 纳税额
	 */
	private String ratal;
	/**
	 * 电费
	 */
	private String electric;
	/**
	 * 燃气费
	 */
	private String gas;
	/**
	 * 水费
	 */
	private String water;

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
	 * 设置：水电税务情况表id
	 */
	public void setTaxId(Integer taxId) {
		this.taxId = taxId;
	}
	/**
	 * 获取：水电税务情况表id
	 */
	public Integer getTaxId() {
		return taxId;
	}
	/**
	 * 设置：月份
	 */
	public void setMonth(Date month) {
		this.month = month;
	}
	/**
	 * 获取：月份
	 */
	public Date getMonth() {
		return month;
	}
	/**
	 * 设置：纳税额
	 */
	public void setRatal(String ratal) {
		this.ratal = ratal;
	}
	/**
	 * 获取：纳税额
	 */
	public String getRatal() {
		return ratal;
	}
	/**
	 * 设置：电费
	 */
	public void setElectric(String electric) {
		this.electric = electric;
	}
	/**
	 * 获取：电费
	 */
	public String getElectric() {
		return electric;
	}
	/**
	 * 设置：燃气费
	 */
	public void setGas(String gas) {
		this.gas = gas;
	}
	/**
	 * 获取：燃气费
	 */
	public String getGas() {
		return gas;
	}
	/**
	 * 设置：水费
	 */
	public void setWater(String water) {
		this.water = water;
	}
	/**
	 * 获取：水费
	 */
	public String getWater() {
		return water;
	}
}
