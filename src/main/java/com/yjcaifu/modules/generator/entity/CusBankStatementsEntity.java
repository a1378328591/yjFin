package com.yjcaifu.modules.generator.entity;

import com.baomidou.mybatisplus.annotations.TableField;
import com.baomidou.mybatisplus.annotations.TableId;
import com.baomidou.mybatisplus.annotations.TableName;
import com.fasterxml.jackson.annotation.JsonFormat;

import java.math.BigDecimal;
import java.io.Serializable;
import java.util.Date;

/**
 * 
 * 
 * @author htshen
 * @email htshen@tom.com
 * @date 2018-05-14 15:23:46
 */
@TableName("cus_bank_statements")
public class CusBankStatementsEntity implements Serializable {
	private static final long serialVersionUID = 1L;

	/**
	 * 
	 */
	@TableId
	private Integer id;
	/**
	 * 
	 */
	private Integer refId;
	/**
	 * 
	 */
	@TableField(exist=false)
	private String realname;
	/**
	 * 月份
	 */
	@JsonFormat(pattern = "yyyy-MM",timezone="GMT+8")
	private Date month;
	/**
	 * 流入额(元)
	 */
	private BigDecimal inflow;
	/**
	 * 流出额(元)
	 */
	private BigDecimal outflow;

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
	
	public Integer getRefId() {
		return refId;
	}
	public void setRefId(Integer refId) {
		this.refId = refId;
	}
	public String getRealname() {
		return realname;
	}
	public void setRealname(String realname) {
		this.realname = realname;
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
	 * 设置：流入额(元)
	 */
	public void setInflow(BigDecimal inflow) {
		this.inflow = inflow;
	}
	/**
	 * 获取：流入额(元)
	 */
	public BigDecimal getInflow() {
		return inflow;
	}
	/**
	 * 设置：流出额(元)
	 */
	public void setOutflow(BigDecimal outflow) {
		this.outflow = outflow;
	}
	/**
	 * 获取：流出额(元)
	 */
	public BigDecimal getOutflow() {
		return outflow;
	}
}
