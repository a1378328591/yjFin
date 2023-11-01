package com.yjcaifu.modules.generator.entity;

import com.baomidou.mybatisplus.annotations.TableId;
import com.baomidou.mybatisplus.annotations.TableName;
import com.fasterxml.jackson.annotation.JsonFormat;

import java.io.Serializable;
import java.math.BigDecimal;
import java.util.Date;
import java.util.List;

/**
 * 标的号
 * 
 * @author chenshun
 * @email sunlightcs@gmail.com
 * @date 2018-06-12 14:56:06
 */
@TableName("bid_no")
public class BidNoEntity implements Serializable {
	private static final long serialVersionUID = 1L;
	
	private List<BidNoEntity> bidnoAll;

	
	
	public List<BidNoEntity> getBidnoAll() {
		return bidnoAll;
	}
	public void setBidnoAll(List<BidNoEntity> bidnoAll) {
		this.bidnoAll = bidnoAll;
	}
	/**
	 * 标的ID
	 */
	@TableId
	private Integer id;
	/**
	 * 标的状态
	 */
	private String status;
	/**
	 * 标的号
	 */
	private String name;
	/**
	 * 借款人类型（个人或企业）
	 */
	private String borrowerType;
	/**
	 * 借款人名称（个人或企业）
	 */
	private String borrowerName;
	/**
	 * 借款人证件号
	 */
	private Integer borrowerId;
	/**
	 * 标的借款金额
	 */
	private String account;
	/**
	 * 标的借款期限
	 */
	private Date timeLimit;
	/**
	 * 标的借款期限类型（天、月）
	 */
	private String borrowType;
	/**
	 * 还款方式
	 */
	private String repaymentType;
	/**
	 * 担保类型  信用 保证 质押 抵押
	 */
	private String warrantType;
	/**
	 * 标的预期年化
	 */
	private String apr;
	/**
	 * 添加时间
	 */
	private Date addTime;
	/**
	 * 复审时间
	 */
	@JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss",timezone="GMT+8")
	private Date reviewTime;
	/**
	 * 标的类型（购车福、订单贷、拆分进件？）
	 */
	private String type;
	/**
	 * 进件id
	 */
	private Integer refId;
	/**
	 * 是否续贷
	 */
	private Integer refinance;
	/**
	 * 上次标的号
	 */
	private String lastName;
	/**
	 * 是否结束
	 */
	private Integer isEnd;
	/**
	 * 风控金(续贷)
	 */
	private BigDecimal refinanceRiskFund;
	/**
	 * 标的金额
	 */
	private BigDecimal bidnoMoney;
	/**
	 * 实收风控金
	 */
	private BigDecimal practicalRiskFund;
	/**
	 * 直接发放（%）（大于1.5直接发放的那部分）
	 */
	private BigDecimal paidMonthlyPoint;
	/**
	 * 直接发放（元）（大于1.5直接发放的那部分）
	 */
	private BigDecimal paidMonthly;
	/**
	 * 公司留存（%）
	 */
	private BigDecimal companyRetainedPoint;
	/**
	 * 公司留存（元）
	 */
	private BigDecimal companyRetained;
	/**
	 * 个人保障金（%）
	 */
	private BigDecimal personalSecurityPoint;
	/**
	 * 个人保障金（元）
	 */
	private BigDecimal personalSecurity;
	/**
	 * 还清再发（%）
	 */
	private BigDecimal payOffPoint;
	/**
	 * 还清再发（元）
	 */
	private BigDecimal payOff;
	
	
	
	/**
	 * 设置：标的ID
	 */
	public void setId(Integer id) {
		this.id = id;
	}
	/**
	 * 获取：标的ID
	 */
	public Integer getId() {
		return id;
	}
	/**
	 * 设置：标的状态
	 */
	public void setStatus(String status) {
		this.status = status;
	}
	/**
	 * 获取：标的状态
	 */
	public String getStatus() {
		return status;
	}
	/**
	 * 设置：标的号
	 */
	public void setName(String name) {
		this.name = name;
	}
	/**
	 * 获取：标的号
	 */
	public String getName() {
		return name;
	}
	/**
	 * 设置：借款人类型（个人或企业）
	 */
	public void setBorrowerType(String borrowerType) {
		this.borrowerType = borrowerType;
	}
	/**
	 * 获取：借款人类型（个人或企业）
	 */
	public String getBorrowerType() {
		return borrowerType;
	}
	/**
	 * 设置：借款人名称（个人或企业）
	 */
	public void setBorrowerName(String borrowerName) {
		this.borrowerName = borrowerName;
	}
	/**
	 * 获取：借款人名称（个人或企业）
	 */
	public String getBorrowerName() {
		return borrowerName;
	}
	/**
	 * 设置：借款人证件号
	 */
	public void setBorrowerId(Integer borrowerId) {
		this.borrowerId = borrowerId;
	}
	/**
	 * 获取：借款人证件号
	 */
	public Integer getBorrowerId() {
		return borrowerId;
	}
	/**
	 * 设置：标的借款金额
	 */
	public void setAccount(String account) {
		this.account = account;
	}
	/**
	 * 获取：标的借款金额
	 */
	public String getAccount() {
		return account;
	}
	/**
	 * 设置：标的借款期限
	 */
	public void setTimeLimit(Date timeLimit) {
		this.timeLimit = timeLimit;
	}
	/**
	 * 获取：标的借款期限
	 */
	public Date getTimeLimit() {
		return timeLimit;
	}
	/**
	 * 设置：标的借款期限类型（天、月）
	 */
	public void setBorrowType(String borrowType) {
		this.borrowType = borrowType;
	}
	/**
	 * 获取：标的借款期限类型（天、月）
	 */
	public String getBorrowType() {
		return borrowType;
	}
	/**
	 * 设置：还款方式
	 */
	public void setRepaymentType(String repaymentType) {
		this.repaymentType = repaymentType;
	}
	/**
	 * 获取：还款方式
	 */
	public String getRepaymentType() {
		return repaymentType;
	}
	/**
	 * 设置：担保类型  信用 保证 质押 抵押
	 */
	public void setWarrantType(String warrantType) {
		this.warrantType = warrantType;
	}
	/**
	 * 获取：担保类型  信用 保证 质押 抵押
	 */
	public String getWarrantType() {
		return warrantType;
	}
	/**
	 * 设置：标的预期年化
	 */
	public void setApr(String apr) {
		this.apr = apr;
	}
	/**
	 * 获取：标的预期年化
	 */
	public String getApr() {
		return apr;
	}
	/**
	 * 设置：添加时间
	 */
	public void setAddTime(Date addTime) {
		this.addTime = addTime;
	}
	/**
	 * 获取：添加时间
	 */
	public Date getAddTime() {
		return addTime;
	}
	/**
	 * 设置：复审时间
	 */
	public void setReviewTime(Date reviewTime) {
		this.reviewTime = reviewTime;
	}
	/**
	 * 获取：复审时间
	 */
	public Date getReviewTime() {
		return reviewTime;
	}
	/**
	 * 设置：标的类型（购车福、订单贷、拆分进件？）
	 */
	public void setType(String type) {
		this.type = type;
	}
	/**
	 * 获取：标的类型（购车福、订单贷、拆分进件？）
	 */
	public String getType() {
		return type;
	}
	/**
	 * 设置：进件id
	 */
	public Integer getRefId() {
		return refId;
	}
	/**
	 * 获取：进件id
	 */
	public void setRefId(Integer refId) {
		this.refId = refId;
	}
	public Integer getRefinance() {
		return refinance;
	}
	public void setRefinance(Integer refinance) {
		this.refinance = refinance;
	}
	public String getLastName() {
		return lastName;
	}
	public void setLastName(String lastName) {
		this.lastName = lastName;
	}
	public Integer getIsEnd() {
		return isEnd;
	}
	public void setIsEnd(Integer isEnd) {
		this.isEnd = isEnd;
	}
	public BigDecimal getRefinanceRiskFund() {
		return refinanceRiskFund;
	}
	public void setRefinanceRiskFund(BigDecimal refinanceRiskFund) {
		this.refinanceRiskFund = refinanceRiskFund;
	}
	public BigDecimal getBidnoMoney() {
		return bidnoMoney;
	}
	public void setBidnoMoney(BigDecimal bidnoMoney) {
		this.bidnoMoney = bidnoMoney;
	}
	public BigDecimal getPracticalRiskFund() {
		return practicalRiskFund;
	}
	public void setPracticalRiskFund(BigDecimal practicalRiskFund) {
		this.practicalRiskFund = practicalRiskFund;
	}
	public BigDecimal getPaidMonthlyPoint() {
		return paidMonthlyPoint;
	}
	public void setPaidMonthlyPoint(BigDecimal paidMonthlyPoint) {
		this.paidMonthlyPoint = paidMonthlyPoint;
	}
	public BigDecimal getPaidMonthly() {
		return paidMonthly;
	}
	public void setPaidMonthly(BigDecimal paidMonthly) {
		this.paidMonthly = paidMonthly;
	}
	public BigDecimal getCompanyRetainedPoint() {
		return companyRetainedPoint;
	}
	public void setCompanyRetainedPoint(BigDecimal companyRetainedPoint) {
		this.companyRetainedPoint = companyRetainedPoint;
	}
	public BigDecimal getCompanyRetained() {
		return companyRetained;
	}
	public void setCompanyRetained(BigDecimal companyRetained) {
		this.companyRetained = companyRetained;
	}
	public BigDecimal getPersonalSecurityPoint() {
		return personalSecurityPoint;
	}
	public void setPersonalSecurityPoint(BigDecimal personalSecurityPoint) {
		this.personalSecurityPoint = personalSecurityPoint;
	}
	public BigDecimal getPersonalSecurity() {
		return personalSecurity;
	}
	public void setPersonalSecurity(BigDecimal personalSecurity) {
		this.personalSecurity = personalSecurity;
	}
	public BigDecimal getPayOffPoint() {
		return payOffPoint;
	}
	public void setPayOffPoint(BigDecimal payOffPoint) {
		this.payOffPoint = payOffPoint;
	}
	public BigDecimal getPayOff() {
		return payOff;
	}
	public void setPayOff(BigDecimal payOff) {
		this.payOff = payOff;
	}
	
}
