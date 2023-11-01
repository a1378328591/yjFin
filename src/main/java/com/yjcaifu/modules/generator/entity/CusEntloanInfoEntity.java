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
 * @date 2018-05-24 17:00:31
 */
@TableName("cus_entloan_info")
public class CusEntloanInfoEntity implements Serializable {
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
	 * 贷款银行
	 */
	private String loanBank;
	/**
	 * 贷款总额
	 */
	private String loanAmount;
	/**
	 * 贷款余额
	 */
	private String loanBalance;
	/**
	 * 起始日
	 */
	@JsonFormat(pattern = "yyyy-MM-dd",timezone="GMT+8")
	private Date startTime;
	/**
	 * 到期日
	 */
	@JsonFormat(pattern = "yyyy-MM-dd",timezone="GMT+8")
	private Date endTime;
	/**
	 * 贷款性质
	 */
	private Integer loanProperty;
	/**
	 * 保证性质
	 */
	private Integer guaranteePropety;
	/**
	 * 还款方式
	 */
	private Integer repaymentType;
	/**
	 * 新增/再贷
	 */
	private Integer newOrReloan;
	/**
	 * 新增/再贷Str
	 */
	private String newOrReloanStr;

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
	public void setRefId(Integer refId) {
		this.refId = refId;
	}
	/**
	 * 获取：
	 */
	public Integer getRefId() {
		return refId;
	}
	/**
	 * 设置：贷款总额
	 */
	public void setLoanAmount(String loanAmount) {
		this.loanAmount = loanAmount;
	}
	/**
	 * 获取：贷款总额
	 */
	public String getLoanAmount() {
		return loanAmount;
	}
	/**
	 * 设置：贷款余额
	 */
	public void setLoanBalance(String loanBalance) {
		this.loanBalance = loanBalance;
	}
	/**
	 * 获取：贷款余额
	 */
	public String getLoanBalance() {
		return loanBalance;
	}
	/**
	 * 设置：起始日
	 */
	public void setStartTime(Date startTime) {
		this.startTime = startTime;
	}
	/**
	 * 获取：起始日
	 */
	public Date getStartTime() {
		return startTime;
	}
	/**
	 * 设置：到期日
	 */
	public void setEndTime(Date endTime) {
		this.endTime = endTime;
	}
	/**
	 * 获取：到期日
	 */
	public Date getEndTime() {
		return endTime;
	}
	/**
	 * 设置：贷款性质
	 */
	public void setLoanProperty(Integer loanProperty) {
		this.loanProperty = loanProperty;
	}
	/**
	 * 获取：贷款性质
	 */
	public Integer getLoanProperty() {
		return loanProperty;
	}
	/**
	 * 设置：保证性质
	 */
	public void setGuaranteePropety(Integer guaranteePropety) {
		this.guaranteePropety = guaranteePropety;
	}
	/**
	 * 获取：保证性质
	 */
	public Integer getGuaranteePropety() {
		return guaranteePropety;
	}
	/**
	 * 设置：还款方式
	 */
	public void setRepaymentType(Integer repaymentType) {
		this.repaymentType = repaymentType;
	}
	/**
	 * 获取：还款方式
	 */
	public Integer getRepaymentType() {
		return repaymentType;
	}
	/**
	 * 设置：新增/再贷
	 */
	public void setNewOrReloan(Integer newOrReloan) {
		this.newOrReloan = newOrReloan;
	}
	/**
	 * 获取：新增/再贷
	 */
	public Integer getNewOrReloan() {
		return newOrReloan;
	}
	public String getLoanBank() {
		return loanBank;
	}
	public void setLoanBank(String loanBank) {
		this.loanBank = loanBank;
	}
	public String getNewOrReloanStr() {
		return newOrReloanStr;
	}
	public void setNewOrReloanStr(String newOrReloanStr) {
		this.newOrReloanStr = newOrReloanStr;
	}
	
}
