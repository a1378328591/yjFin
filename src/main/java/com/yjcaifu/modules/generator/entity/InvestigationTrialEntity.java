package com.yjcaifu.modules.generator.entity;

import com.baomidou.mybatisplus.annotations.TableField;
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
 * @date 2018-05-22 11:02:58
 */
@TableName("investigation_trial")
public class InvestigationTrialEntity implements Serializable {
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
	private Integer companyId;
	/**
	 * 
	 */
	@TableField(exist=false)
	private String realname;
	
	@TableField(exist=false)
	private long money;
	
	@TableField(exist=false)
	private Integer timeLimit;
	
	@TableField(exist=false)
	private String borrowingPurposes;
	
	@TableField(exist=false)
	private String sourceRepayment;
	
	@TableField(exist=false)
	@JsonFormat(pattern = "yyyyMMdd",timezone="GMT+8")
	private Date applyTime;
	
	/**
	 * 申请金额、期限
	 */
	private String amountaDuration;
	/**
	 * 借款用途、还款来源
	 */
	private String useRepayment;
	/**
	 * 创始人信息
	 */
	private String founderInformation;
	/**
	 * 企业竞争对手业属性、主营业务及其市场竞争环境、竞争对手、竞争力
	 */
	private String industryAttributes;
	/**
	 * 企业下游主要客户
	 */
	private String corporateClients;
	/**
	 * 企业去年销售额、开票额、成本构成、毛利率
	 */
	private String lastyearSales;
	/**
	 * 今年截至目前的销售额
	 */
	private String currentSales;
	/**
	 * 企业应收账款总额、收款周期
	 */
	private String accountsReceivable;
	/**
	 * 企业应付账款总额、付款周期
	 */
	private String accountsPayable;
	/**
	 * 企业收付款时现金和承兑各占多少
	 */
	private String cashRatio;
	/**
	 * 企业负债情况
	 */
	private String liabilities;
	/**
	 * 企业名下主要资产
	 */
	private String enterpriseAssets;
	/**
	 * 个人名下主要资产
	 */
	private String personalAssets;
	/**
	 * 企业员工人数、高管人数、每月工资总数，发工资时间
	 */
	private String empInformation;
	/**
	 * 企业办公场地
	 */
	private String officeSpace;
	/**
	 * 企业个人涉诉、违法情况
	 */
	private String badCreditreporting;
	/**
	 * 拟质押应收账款，往来方历史
	 */
	private String business;
	/**
	 * 拟担保企业情况
	 */
	private String guarantee;
	/**
	 * 拟抵押资产情况
	 */
	private String mortgageSituation;
	
	/**
	 * 材料清单
	 */
	private String materials;
	
	/**
	 * 企业
	 */
	private String enterprise;
	/**
	 * 企业name
	 */
	@TableField(exist=false)
	private String enterpriseName;
	
	/**
	 * 调查人员建议
	 */
	private String advice;
	
	/**
	 * 记录人员
	 */
	private Integer recordPersonnel;
	/**
	 * 记录人员name
	 */
	@TableField(exist=false)
	private String recordPersonnelName;
	
	/**
	 * 初审结果
	 */
	private Integer result;
	/**
	 * 初审结果name
	 */
	@TableField(exist=false)
	private String resultName;

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
	
	
	public long getMoney() {
		return money;
	}
	public void setMoney(long money) {
		this.money = money;
	}
	public Integer getTimeLimit() {
		return timeLimit;
	}
	public void setTimeLimit(Integer timeLimit) {
		this.timeLimit = timeLimit;
	}
	public String getBorrowingPurposes() {
		return borrowingPurposes;
	}
	public void setBorrowingPurposes(String borrowingPurposes) {
		this.borrowingPurposes = borrowingPurposes;
	}
	public String getSourceRepayment() {
		return sourceRepayment;
	}
	public void setSourceRepayment(String sourceRepayment) {
		this.sourceRepayment = sourceRepayment;
	}
	/**
	 * 设置：申请金额、期限
	 */
	public void setAmountaDuration(String amountaDuration) {
		this.amountaDuration = amountaDuration;
	}
	/**
	 * 获取：申请金额、期限
	 */
	public String getAmountaDuration() {
		return amountaDuration;
	}
	/**
	 * 设置：借款用途、还款来源
	 */
	public void setUseRepayment(String useRepayment) {
		this.useRepayment = useRepayment;
	}
	/**
	 * 获取：借款用途、还款来源
	 */
	public String getUseRepayment() {
		return useRepayment;
	}
	/**
	 * 设置：创始人信息
	 */
	public void setFounderInformation(String founderInformation) {
		this.founderInformation = founderInformation;
	}
	/**
	 * 获取：创始人信息
	 */
	public String getFounderInformation() {
		return founderInformation;
	}
	/**
	 * 设置：企业竞争对手业属性、主营业务及其市场竞争环境、竞争对手、竞争力
	 */
	public void setIndustryAttributes(String industryAttributes) {
		this.industryAttributes = industryAttributes;
	}
	/**
	 * 获取：企业竞争对手业属性、主营业务及其市场竞争环境、竞争对手、竞争力
	 */
	public String getIndustryAttributes() {
		return industryAttributes;
	}
	/**
	 * 设置：企业下游主要客户
	 */
	public void setCorporateClients(String corporateClients) {
		this.corporateClients = corporateClients;
	}
	/**
	 * 获取：企业下游主要客户
	 */
	public String getCorporateClients() {
		return corporateClients;
	}
	/**
	 * 设置：企业去年销售额、开票额、成本构成、毛利率
	 */
	public void setLastyearSales(String lastyearSales) {
		this.lastyearSales = lastyearSales;
	}
	/**
	 * 获取：企业去年销售额、开票额、成本构成、毛利率
	 */
	public String getLastyearSales() {
		return lastyearSales;
	}
	/**
	 * 设置：今年截至目前的销售额
	 */
	public void setCurrentSales(String currentSales) {
		this.currentSales = currentSales;
	}
	/**
	 * 获取：今年截至目前的销售额
	 */
	public String getCurrentSales() {
		return currentSales;
	}
	/**
	 * 设置：企业应收账款总额、收款周期
	 */
	public void setAccountsReceivable(String accountsReceivable) {
		this.accountsReceivable = accountsReceivable;
	}
	/**
	 * 获取：企业应收账款总额、收款周期
	 */
	public String getAccountsReceivable() {
		return accountsReceivable;
	}
	/**
	 * 设置：企业应付账款总额、付款周期
	 */
	public void setAccountsPayable(String accountsPayable) {
		this.accountsPayable = accountsPayable;
	}
	/**
	 * 获取：企业应付账款总额、付款周期
	 */
	public String getAccountsPayable() {
		return accountsPayable;
	}
	/**
	 * 设置：企业收付款时现金和承兑各占多少
	 */
	public void setCashRatio(String cashRatio) {
		this.cashRatio = cashRatio;
	}
	/**
	 * 获取：企业收付款时现金和承兑各占多少
	 */
	public String getCashRatio() {
		return cashRatio;
	}
	/**
	 * 设置：企业负债情况
	 */
	public void setLiabilities(String liabilities) {
		this.liabilities = liabilities;
	}
	/**
	 * 获取：企业负债情况
	 */
	public String getLiabilities() {
		return liabilities;
	}
	/**
	 * 设置：企业名下主要资产
	 */
	public void setEnterpriseAssets(String enterpriseAssets) {
		this.enterpriseAssets = enterpriseAssets;
	}
	/**
	 * 获取：企业名下主要资产
	 */
	public String getEnterpriseAssets() {
		return enterpriseAssets;
	}
	/**
	 * 设置：个人名下主要资产
	 */
	public void setPersonalAssets(String personalAssets) {
		this.personalAssets = personalAssets;
	}
	/**
	 * 获取：个人名下主要资产
	 */
	public String getPersonalAssets() {
		return personalAssets;
	}
	/**
	 * 设置：企业员工人数、高管人数、每月工资总数，发工资时间
	 */
	public void setEmpInformation(String empInformation) {
		this.empInformation = empInformation;
	}
	/**
	 * 获取：企业员工人数、高管人数、每月工资总数，发工资时间
	 */
	public String getEmpInformation() {
		return empInformation;
	}
	/**
	 * 设置：企业办公场地
	 */
	public void setOfficeSpace(String officeSpace) {
		this.officeSpace = officeSpace;
	}
	/**
	 * 获取：企业办公场地
	 */
	public String getOfficeSpace() {
		return officeSpace;
	}
	/**
	 * 设置：企业个人涉诉、违法情况
	 */
	public void setBadCreditreporting(String badCreditreporting) {
		this.badCreditreporting = badCreditreporting;
	}
	/**
	 * 获取：企业个人涉诉、违法情况
	 */
	public String getBadCreditreporting() {
		return badCreditreporting;
	}
	/**
	 * 设置：拟质押应收账款，往来方历史
	 */
	public void setBusiness(String business) {
		this.business = business;
	}
	/**
	 * 获取：拟质押应收账款，往来方历史
	 */
	public String getBusiness() {
		return business;
	}
	/**
	 * 设置：拟担保企业情况
	 */
	public void setGuarantee(String guarantee) {
		this.guarantee = guarantee;
	}
	/**
	 * 获取：拟担保企业情况
	 */
	public String getGuarantee() {
		return guarantee;
	}
	/**
	 * 设置：拟抵押资产情况
	 */
	public void setMortgageSituation(String mortgageSituation) {
		this.mortgageSituation = mortgageSituation;
	}
	/**
	 * 获取：拟抵押资产情况
	 */
	public String getMortgageSituation() {
		return mortgageSituation;
	}
	public String getMaterials() {
		return materials;
	}
	public void setMaterials(String materials) {
		this.materials = materials;
	}
	public String getEnterprise() {
		return enterprise;
	}
	public void setEnterprise(String enterprise) {
		this.enterprise = enterprise;
	}
	public String getAdvice() {
		return advice;
	}
	public void setAdvice(String advice) {
		this.advice = advice;
	}
	public Integer getRecordPersonnel() {
		return recordPersonnel;
	}
	public void setRecordPersonnel(Integer recordPersonnel) {
		this.recordPersonnel = recordPersonnel;
	}
	public Integer getCompanyId() {
		return companyId;
	}
	public void setCompanyId(Integer companyId) {
		this.companyId = companyId;
	}
	public Integer getResult() {
		return result;
	}
	public void setResult(Integer result) {
		this.result = result;
	}
	public String getEnterpriseName() {
		return enterpriseName;
	}
	public void setEnterpriseName(String enterpriseName) {
		this.enterpriseName = enterpriseName;
	}
	public String getRecordPersonnelName() {
		return recordPersonnelName;
	}
	public void setRecordPersonnelName(String recordPersonnelName) {
		this.recordPersonnelName = recordPersonnelName;
	}
	public String getResultName() {
		return resultName;
	}
	public void setResultName(String resultName) {
		this.resultName = resultName;
	}
	public Date getApplyTime() {
		return applyTime;
	}
	public void setApplyTime(Date applyTime) {
		this.applyTime = applyTime;
	}
	
}
