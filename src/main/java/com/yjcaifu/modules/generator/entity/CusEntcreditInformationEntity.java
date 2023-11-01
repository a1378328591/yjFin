package com.yjcaifu.modules.generator.entity;

import com.baomidou.mybatisplus.annotations.TableField;
import com.baomidou.mybatisplus.annotations.TableId;
import com.baomidou.mybatisplus.annotations.TableName;
import com.fasterxml.jackson.annotation.JsonFormat;

import java.io.Serializable;
import java.util.Date;
import java.util.List;

/**
 * 
 * 
 * @author htshen
 * @email htshen@tom.com
 * @date 2018-05-23 19:43:06
 */
@TableName("cus_entcredit_information")
public class CusEntcreditInformationEntity implements Serializable {
	private static final long serialVersionUID = 1L;

	/**
	 * 
	 */
	@TableId
	private Integer id;
	/**
	 * 企业id
	 */
	private Integer refId;
	/**
	 * 企业name
	 */
	@TableField(exist=false)
	private String enterprisename;
	/**
	 * 报告日期
	 */
	@JsonFormat(pattern = "yyyy-MM-dd",timezone="GMT+8")
	private Date report;
	/**
	 * 贷款余额
	 */
	private String loanBalance;
	/**
	 * 最近三个月到期额度
	 */
	private String dueAmount;
	/**
	 * 或有负债明细（对外担保）
	 */
	private String debtDetail;
	/**
	 * 逾期情况
	 */
	private String overdueSituation;
	/**
	 * 异常情况
	 */
	private String abnormalCondition;
	/**
	 * 贷款银行信息（List）
	 */
	@TableField(exist=false)
	private List<CusEntloanInfoEntity> entLoanInfo;
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
	 * 设置：报告日期
	 */
	public void setReport(Date report) {
		this.report = report;
	}
	/**
	 * 获取：报告日期
	 */
	public Date getReport() {
		return report;
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
	 * 设置：最近三个月到期额度
	 */
	public void setDueAmount(String dueAmount) {
		this.dueAmount = dueAmount;
	}
	/**
	 * 获取：最近三个月到期额度
	 */
	public String getDueAmount() {
		return dueAmount;
	}
	/**
	 * 设置：或有负债明细（对外担保）
	 */
	public void setDebtDetail(String debtDetail) {
		this.debtDetail = debtDetail;
	}
	/**
	 * 获取：或有负债明细（对外担保）
	 */
	public String getDebtDetail() {
		return debtDetail;
	}
	/**
	 * 设置：逾期情况
	 */
	public void setOverdueSituation(String overdueSituation) {
		this.overdueSituation = overdueSituation;
	}
	/**
	 * 获取：逾期情况
	 */
	public String getOverdueSituation() {
		return overdueSituation;
	}
	/**
	 * 设置：异常情况
	 */
	public void setAbnormalCondition(String abnormalCondition) {
		this.abnormalCondition = abnormalCondition;
	}
	/**
	 * 获取：异常情况
	 */
	public String getAbnormalCondition() {
		return abnormalCondition;
	}
	public String getEnterprisename() {
		return enterprisename;
	}
	public void setEnterprisename(String enterprisename) {
		this.enterprisename = enterprisename;
	}
	public List<CusEntloanInfoEntity> getEntLoanInfo() {
		return entLoanInfo;
	}
	public void setEntLoanInfo(List<CusEntloanInfoEntity> entLoanInfo) {
		this.entLoanInfo = entLoanInfo;
	}
	
}
