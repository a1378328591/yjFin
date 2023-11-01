package com.yjcaifu.modules.generator.entity;

import com.baomidou.mybatisplus.annotations.TableField;
import com.baomidou.mybatisplus.annotations.TableId;
import com.baomidou.mybatisplus.annotations.TableName;
import com.fasterxml.jackson.annotation.JsonFormat;

import java.io.Serializable;
import java.util.Date;
import java.util.List;

/**
 * InnoDB free: 9216 kB
 * 
 * @author chenshun
 * @email sunlightcs@gmail.com
 * @date 2018-05-14 09:46:19
 */
@TableName("cus_credit_information")
public class CusCreditInformationEntity implements Serializable {
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
	
	@TableField(exist=false)
	private String realname;
	
	/**
	 * 报告日期
	 */
	@JsonFormat(pattern = "yyyy-MM-dd", timezone = "GMT+8")
	private Date report;
	/**
	 * 信用卡数量
	 */
	private Integer creditCards;
	/**
	 * 贷款余额
	 */
	private String loanBalance;
	/**
	 * 近6个月平均应
	 */
	private String avgRepayment;
	/**
	 * 近6个月平均使用额度
	 */
	private String avgUseamount;
	/**
	 * 已使用额度
	 */
	private String availableQuota;
	/**
	 * 最高授信银行及额度
	 */
	private String creditBank;
	/**
	 * 近半年本人查询次数
	 */
	private Integer numberEnquiries;
	/**
	 * 近半年机构查询次数
	 */
	private Integer numberInstitutional;
	/**
	 * 逾期情况
	 */
	private String overdueSituation;
	/**
	 * 异常情况
	 */
	private String abnormalSituation;
	/**
	 * 其他外债情况
	 */
	private String otherLiabilities;
	/**
	 * 授信总额
	 */
	private String totalOfCredit;
	/**
	 * 贷款银行信息（List）
	 */
	@TableField(exist=false)
	private List<CusLoanInfoEntity> perLoanInfo;
	
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
	
	public String getRealname() {
		return realname;
	}
	public void setRealname(String realname) {
		this.realname = realname;
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
	 * 设置：信用卡数量
	 */
	public void setCreditCards(Integer creditCards) {
		this.creditCards = creditCards;
	}
	/**
	 * 获取：信用卡数量
	 */
	public Integer getCreditCards() {
		return creditCards;
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
	 * 设置：近6个月平均应
	 */
	public void setAvgRepayment(String avgRepayment) {
		this.avgRepayment = avgRepayment;
	}
	/**
	 * 获取：近6个月平均应
	 */
	public String getAvgRepayment() {
		return avgRepayment;
	}
	/**
	 * 设置：近6个月平均使用额度
	 */
	public void setAvgUseamount(String avgUseamount) {
		this.avgUseamount = avgUseamount;
	}
	/**
	 * 获取：近6个月平均使用额度
	 */
	public String getAvgUseamount() {
		return avgUseamount;
	}
	/**
	 * 设置：已使用额度
	 */
	public void setAvailableQuota(String availableQuota) {
		this.availableQuota = availableQuota;
	}
	/**
	 * 获取：已使用额度
	 */
	public String getAvailableQuota() {
		return availableQuota;
	}
	/**
	 * 设置：最高授信银行及额度
	 */
	public void setCreditBank(String creditBank) {
		this.creditBank = creditBank;
	}
	/**
	 * 获取：最高授信银行及额度
	 */
	public String getCreditBank() {
		return creditBank;
	}
	/**
	 * 设置：近半年本人查询次数
	 */
	public void setNumberEnquiries(Integer numberEnquiries) {
		this.numberEnquiries = numberEnquiries;
	}
	/**
	 * 获取：近半年本人查询次数
	 */
	public Integer getNumberEnquiries() {
		return numberEnquiries;
	}
	/**
	 * 设置：近半年机构查询次数
	 */
	public void setNumberInstitutional(Integer numberInstitutional) {
		this.numberInstitutional = numberInstitutional;
	}
	/**
	 * 获取：近半年机构查询次数
	 */
	public Integer getNumberInstitutional() {
		return numberInstitutional;
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
	public void setAbnormalSituation(String abnormalSituation) {
		this.abnormalSituation = abnormalSituation;
	}
	/**
	 * 获取：异常情况
	 */
	public String getAbnormalSituation() {
		return abnormalSituation;
	}
	public String getOtherLiabilities() {
		return otherLiabilities;
	}
	public void setOtherLiabilities(String otherLiabilities) {
		this.otherLiabilities = otherLiabilities;
	}
	public String getTotalOfCredit() {
		return totalOfCredit;
	}
	public void setTotalOfCredit(String totalOfCredit) {
		this.totalOfCredit = totalOfCredit;
	}
	public List<CusLoanInfoEntity> getPerLoanInfo() {
		return perLoanInfo;
	}
	public void setPerLoanInfo(List<CusLoanInfoEntity> perLoanInfo) {
		this.perLoanInfo = perLoanInfo;
	}
	
}
