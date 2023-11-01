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
 * @date 2018-05-23 09:48:34
 */
@TableName("bor_borrower_companyinfo")
public class BorBorrowerCompanyinfoEntity implements Serializable {
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
	 * 借款企业id
	 */
	private Integer borrCompanyId;
	/**
	 * 借款企业name
	 */
	@TableField(exist=false)
	private String enterpriseName;
	/**
	 * 企业类型
	 */
	@TableField(exist=false)	
	private String enterpriseType;
	/**
	 * 住所
	 */
	@TableField(exist=false)
	private String domicile;
	/**
	 * 法定代表人
	 */
	@TableField(exist=false)
	private String legalPerson;
	/**
	 * 注册资本
	 */
	@TableField(exist=false)
	private BigDecimal registeredAssets;
	/**
	 * 成立日期
	 */
	@TableField(exist=false)
	@JsonFormat(pattern = "yyyy-MM-dd",timezone="GMT+8")
	private Date establishmentTime;
	/**
	 * 成立日期
	 */
	@TableField(exist=false)
	private String establishmentTimeStr;
	/**
	 * 经营范围
	 */
	@TableField(exist=false)
	private String businessScope;
	/**
	 * 企业财务状况(万元)
	 */
	private String financialSituation;
	/**
	 * 办公场所
	 */
	private Integer officeSpace;
	/**
	 * 办公场所Str
	 */
	@TableField(exist=false)
	private String officeSpaceStr;
	/**
	 * 企业员工人数
	 */
	private String employees;
	/**
	 * 每月员工工资
	 */
	private BigDecimal monthlyStaffSalary;
	/**
	 * 员工工资结算方式
	 */
	private String salarySettlement;
	/**
	 * 企业负债余额
	 */
	private String entLiabilitiesBalance;
	/**
	 * 个人负债余额
	 */
	private String perLiabilitiesBalance;
	/**
	 * 异常情况
	 */
	private String abnormalCondition;

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
	 * 设置：借款企业id
	 */
	public void setBorrCompanyId(Integer borrCompanyId) {
		this.borrCompanyId = borrCompanyId;
	}
	/**
	 * 获取：借款企业id
	 */
	public Integer getBorrCompanyId() {
		return borrCompanyId;
	}
	/**
	 * 设置：企业类型
	 */
	public void setEnterpriseType(String enterpriseType) {
		this.enterpriseType = enterpriseType;
	}
	/**
	 * 获取：企业类型
	 */
	public String getEnterpriseType() {
		return enterpriseType;
	}
	/**
	 * 设置：住所
	 */
	public void setDomicile(String domicile) {
		this.domicile = domicile;
	}
	/**
	 * 获取：住所
	 */
	public String getDomicile() {
		return domicile;
	}
	/**
	 * 设置：法定代表人
	 */
	public void setLegalPerson(String legalPerson) {
		this.legalPerson = legalPerson;
	}
	/**
	 * 获取：法定代表人
	 */
	public String getLegalPerson() {
		return legalPerson;
	}
	/**
	 * 设置：注册资本
	 */
	public void setRegisteredAssets(BigDecimal registeredAssets) {
		this.registeredAssets = registeredAssets;
	}
	/**
	 * 获取：注册资本
	 */
	public BigDecimal getRegisteredAssets() {
		return registeredAssets;
	}
	/**
	 * 设置：成立日期
	 */
	public void setEstablishmentTime(Date establishmentTime) {
		this.establishmentTime = establishmentTime;
	}
	/**
	 * 获取：成立日期
	 */
	public Date getEstablishmentTime() {
		return establishmentTime;
	}
	/**
	 * 设置：经营范围
	 */
	public void setBusinessScope(String businessScope) {
		this.businessScope = businessScope;
	}
	/**
	 * 获取：经营范围
	 */
	public String getBusinessScope() {
		return businessScope;
	}
	/**
	 * 设置：企业财务状况(万元)
	 */
	public void setFinancialSituation(String financialSituation) {
		this.financialSituation = financialSituation;
	}
	/**
	 * 获取：企业财务状况(万元)
	 */
	public String getFinancialSituation() {
		return financialSituation;
	}
	/**
	 * 设置：办公场所
	 */
	public void setOfficeSpace(Integer officeSpace) {
		this.officeSpace = officeSpace;
	}
	/**
	 * 获取：办公场所
	 */
	public Integer getOfficeSpace() {
		return officeSpace;
	}
	/**
	 * 设置：企业员工人数
	 */
	public void setEmployees(String employees) {
		this.employees = employees;
	}
	/**
	 * 获取：企业员工人数
	 */
	public String getEmployees() {
		return employees;
	}
	/**
	 * 设置：每月员工工资
	 */
	public void setMonthlyStaffSalary(BigDecimal monthlyStaffSalary) {
		this.monthlyStaffSalary = monthlyStaffSalary;
	}
	/**
	 * 获取：每月员工工资
	 */
	public BigDecimal getMonthlyStaffSalary() {
		return monthlyStaffSalary;
	}
	/**
	 * 设置：员工工资结算方式
	 */
	public void setSalarySettlement(String salarySettlement) {
		this.salarySettlement = salarySettlement;
	}
	/**
	 * 获取：员工工资结算方式
	 */
	public String getSalarySettlement() {
		return salarySettlement;
	}
	/**
	 * 设置：企业负债余额
	 */
	public void setEntLiabilitiesBalance(String entLiabilitiesBalance) {
		this.entLiabilitiesBalance = entLiabilitiesBalance;
	}
	/**
	 * 获取：企业负债余额
	 */
	public String getEntLiabilitiesBalance() {
		return entLiabilitiesBalance;
	}
	/**
	 * 设置：个人负债余额
	 */
	public void setPerLiabilitiesBalance(String perLiabilitiesBalance) {
		this.perLiabilitiesBalance = perLiabilitiesBalance;
	}
	/**
	 * 获取：个人负债余额
	 */
	public String getPerLiabilitiesBalance() {
		return perLiabilitiesBalance;
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
	public String getEnterpriseName() {
		return enterpriseName;
	}
	public void setEnterpriseName(String enterpriseName) {
		this.enterpriseName = enterpriseName;
	}
	public String getOfficeSpaceStr() {
		return officeSpaceStr;
	}
	public void setOfficeSpaceStr(String officeSpaceStr) {
		this.officeSpaceStr = officeSpaceStr;
	}
	public String getEstablishmentTimeStr() {
		return establishmentTimeStr;
	}
	public void setEstablishmentTimeStr(String establishmentTimeStr) {
		this.establishmentTimeStr = establishmentTimeStr;
	}
	
}
