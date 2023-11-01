package com.yjcaifu.modules.generator.entity;

import com.baomidou.mybatisplus.annotations.TableField;
import com.baomidou.mybatisplus.annotations.TableId;
import com.baomidou.mybatisplus.annotations.TableName;
import com.yjcaifu.common.validator.group.AddGroup;
import com.yjcaifu.common.validator.group.UpdateGroup;

import java.io.Serializable;
import java.math.BigDecimal;
import java.util.Date;

import javax.validation.constraints.NotNull;

import org.hibernate.validator.constraints.NotBlank;

/**
 * 借款信息; InnoDB free: 9216 kB
 * 
 * @author chenshun
 * @email sunlightcs@gmail.com
 * @date 2018-05-04 17:09:03
 */
@TableName("borrowing_information")
public class BorrowingInformationEntity implements Serializable {
	private static final long serialVersionUID = 1L;
	
	private Date applyTime;//申请时间
	private String applyTimestrDate;//申请时间
	

	
	public String getApplyTimestrDate() {
		return applyTimestrDate;
	}
	public void setApplyTimestrDate(String applyTimestrDate) {
		this.applyTimestrDate = applyTimestrDate;
	}
	public Date getApplyTime() {
		return applyTime;
	}
	public void setApplyTime(Date applyTime) {
		this.applyTime = applyTime;
	}
	/**
	 * 
	 */
	@TableId
	private Integer id;
	/**
	 * 申请人姓名ID
	 */
	@NotNull(message="申请人姓名不能为空", groups = {AddGroup.class, UpdateGroup.class})
	private Integer refId;
	/**
	 * 申请人姓名ID
	 */
	private String realname;
	/**
	 * 申请额度
	 */
	@NotNull(message="申请额度不能为空", groups = {AddGroup.class, UpdateGroup.class})
	private BigDecimal money;
	/**
	 * 年化综合成本
	 */
	private BigDecimal percentage;
	/**
	 * 风控金
	 */
	private BigDecimal riskFund;
	/**
	 * 申请期限
	 */
	@NotNull(message="申请期限不能为空", groups = {AddGroup.class, UpdateGroup.class})
	private Integer timeLimit;
	/**
	 * 还款方式
	 */
	private Integer reimbursementMeans;
	/**
	 * 还款方式name
	 */
	@TableField(exist=false)
	private String reimburseName;
	/**
	 * 借款用途
	 */
	private String borrowingPurposes;
	/**
	 * 还款来源
	 */
	private String sourceRepayment;
	/**
	 * 保证措施
	 */
	private String ensure;
	/**
	 * 批准额度（万元）
	 */
	private BigDecimal ratifyMoney;
	/**
	 * 批准额度（万元）
	 */
	@TableField(exist=false)
	private String ratifyMoneyStr;
	/**
	 * 批准期限（月）
	 */
	private Integer ratifyTimeLimit;
	/**
	 * 批准期限（月）
	 */
	@TableField(exist=false)
	private String ratifyTimeLimitStr;
	/**
	 * 公司留存是否是否收取（0：没有，1：已收取）
	 */
	private Integer companyRetained;
	/**
	 * 是否续贷
	 */
	@TableField(exist=false)
	private Integer refinance;
	/**
	 * 是否结束
	 */
	@TableField(exist=false)
	private Integer isEnd;
	/**
	 * 复审时间
	 */
	@TableField(exist=false)
	private Date reviewTime;
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
	 * 设置：申请额度
	 */
	public void setMoney(BigDecimal money) {
		this.money = money;
	}
	/**
	 * 获取：申请额度
	 */
	public BigDecimal getMoney() {
		return money;
	}
	/**
	 * 设置：年化综合成本
	 */
	public void setPercentage(BigDecimal percentage) {
		this.percentage = percentage;
	}
	/**
	 * 获取：年化综合成本
	 */
	public BigDecimal getPercentage() {
		return percentage;
	}
	/**
	 * 设置：申请期限
	 */
	public void setTimeLimit(Integer timeLimit) {
		this.timeLimit = timeLimit;
	}
	/**
	 * 获取：申请期限
	 */
	public Integer getTimeLimit() {
		return timeLimit;
	}
	/**
	 * 设置：还款方式
	 */
	public void setReimbursementMeans(Integer reimbursementMeans) {
		this.reimbursementMeans = reimbursementMeans;
	}
	/**
	 * 获取：还款方式
	 */
	public Integer getReimbursementMeans() {
		return reimbursementMeans;
	}
	/**
	 * 设置：借款用途
	 */
	public void setBorrowingPurposes(String borrowingPurposes) {
		this.borrowingPurposes = borrowingPurposes;
	}
	/**
	 * 获取：借款用途
	 */
	public String getBorrowingPurposes() {
		return borrowingPurposes;
	}
	/**
	 * 设置：还款来源
	 */
	public void setSourceRepayment(String sourceRepayment) {
		this.sourceRepayment = sourceRepayment;
	}
	/**
	 * 获取：还款来源
	 */
	public String getSourceRepayment() {
		return sourceRepayment;
	}
	/**
	 * 设置：保证措施
	 */
	public void setEnsure(String ensure) {
		this.ensure = ensure;
	}
	/**
	 * 获取：保证措施
	 */
	public String getEnsure() {
		return ensure;
	}
	public String getReimburseName() {
		return reimburseName;
	}
	public void setReimburseName(String reimburseName) {
		this.reimburseName = reimburseName;
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
	public BigDecimal getRiskFund() {
		return riskFund;
	}
	public void setRiskFund(BigDecimal riskFund) {
		this.riskFund = riskFund;
	}
	public BigDecimal getRatifyMoney() {
		return ratifyMoney;
	}
	public void setRatifyMoney(BigDecimal ratifyMoney) {
		this.ratifyMoney = ratifyMoney;
	}
	public Integer getRatifyTimeLimit() {
		return ratifyTimeLimit;
	}
	public void setRatifyTimeLimit(Integer ratifyTimeLimit) {
		this.ratifyTimeLimit = ratifyTimeLimit;
	}
	public String getRatifyMoneyStr() {
		return ratifyMoneyStr;
	}
	public void setRatifyMoneyStr(String ratifyMoneyStr) {
		this.ratifyMoneyStr = ratifyMoneyStr;
	}
	public String getRatifyTimeLimitStr() {
		return ratifyTimeLimitStr;
	}
	public void setRatifyTimeLimitStr(String ratifyTimeLimitStr) {
		this.ratifyTimeLimitStr = ratifyTimeLimitStr;
	}
	public Integer getRefinance() {
		return refinance;
	}
	public void setRefinance(Integer refinance) {
		this.refinance = refinance;
	}
	public Integer getIsEnd() {
		return isEnd;
	}
	public void setIsEnd(Integer isEnd) {
		this.isEnd = isEnd;
	}
	public Date getReviewTime() {
		return reviewTime;
	}
	public void setReviewTime(Date reviewTime) {
		this.reviewTime = reviewTime;
	}
	public Integer getCompanyRetained() {
		return companyRetained;
	}
	public void setCompanyRetained(Integer companyRetained) {
		this.companyRetained = companyRetained;
	}
	
}
