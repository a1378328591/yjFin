package com.yjcaifu.modules.generator.entity;

import com.baomidou.mybatisplus.annotations.TableField;
import com.baomidou.mybatisplus.annotations.TableId;
import com.baomidou.mybatisplus.annotations.TableName;
import com.fasterxml.jackson.annotation.JsonFormat;

import java.io.Serializable;
import java.math.BigDecimal;
import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

/**
 * 
 * 
 * @author htshen
 * @email htshen@tom.com
 * @date 2018-05-07 17:13:49
 */
@TableName("cus_enterprise_info")
public class EnterpriseInfoEntity implements Serializable {
	private static final long serialVersionUID = 1L;

	/**
	 * 
	 */
	@TableId
	private Integer id;
	/**
	 * 担保/借款企业id
	 */
	private Integer borrCompanyId;
	/**
	 * 关联注册信息表id
	 */
	private Integer refId;
	/**
	 * 企业名称
	 */
	private String enterpriseName;
	/**
	 * 企业法人
	 */
	private String legalPerson;
	/**
	 * 统一社会信用代码
	 */
	private String enterpriseCode;
	/**
	 * 注册资本
	 */
	private BigDecimal registeredAssets;
	/**
	 * 成立日期
	 */
	@JsonFormat(pattern = "yyyy-MM-dd",timezone="GMT+8")
	private Date establishmentTime;
	/**
	 * 营业期限
	 */
	private String busnissTerm;
	/**
	 * 企业规模
	 */
	private String enterpriseScale;
	/**
	 * 营业范围
	 */
	private String businessScope;
	/**
	 * 住所
	 */
	private String domicile;
	/**
	 * 手机号
	 */
	private String mobile;
	/**
	 * 员工编号
	 */
	private Integer empId;
	/**
	 * 员工姓名
	 */
	@TableField(exist=false)
	private String empName;
	/**
	 * 进件管理（共同借款/担保企业）
	 */
	@TableField(exist=false)
	private Integer coBorrowerTypeId;
	/**
	 * 股权结构
	 */
	private String ownershipStructure;
	/**
	 * 企业类型
	 */
	private String enterpriseType;

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
	 * 获取：
	 */
	public Integer getRefId() {
		return refId;
	}
	/**
	 * 设置：
	 */
	public void setRefId(Integer refId) {
		this.refId = refId;
	}
	/**
	 * 设置：企业名称
	 */
	public void setEnterpriseName(String enterpriseName) {
		this.enterpriseName = enterpriseName;
	}
	/**
	 * 获取：企业名称
	 */
	public String getEnterpriseName() {
		return enterpriseName;
	}
	
	/**
	 * 设置：企业法人
	 */
	public void setLegalPerson(String legalPerson) {
		this.legalPerson = legalPerson;
	}
	/**
	 * 获取：企业法人
	 */
	public String getLegalPerson() {
		return legalPerson;
	}
	/**
	 * 设置：统一社会信用代码
	 */
	public void setEnterpriseCode(String enterpriseCode) {
		this.enterpriseCode = enterpriseCode;
	}
	/**
	 * 获取：统一社会信用代码
	 */
	public String getEnterpriseCode() {
		return enterpriseCode;
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
	 * 设置：营业期限
	 */
	public void setBusnissTerm(String busnissTerm) {
		this.busnissTerm = busnissTerm;
	}
	/**
	 * 获取：营业期限
	 */
	public String getBusnissTerm() {
		return busnissTerm;
	}
	/**
	 * 设置：企业规模
	 */
	public void setEnterpriseScale(String enterpriseScale) {
		this.enterpriseScale = enterpriseScale;
	}
	/**
	 * 获取：企业规模
	 */
	public String getEnterpriseScale() {
		return enterpriseScale;
	}
	/**
	 * 设置：营业范围
	 */
	public void setBusinessScope(String businessScope) {
		this.businessScope = businessScope;
	}
	/**
	 * 获取：营业范围
	 */
	public String getBusinessScope() {
		return businessScope;
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
	public String getMobile() {
		return mobile;
	}
	public void setMobile(String mobile) {
		this.mobile = mobile;
	}
	public Integer getEmpId() {
		return empId;
	}
	public void setEmpId(Integer empId) {
		this.empId = empId;
	}
	public String getEmpName() {
		return empName;
	}
	public void setEmpName(String empName) {
		this.empName = empName;
	}
	public Integer getCoBorrowerTypeId() {
		return coBorrowerTypeId;
	}
	public void setCoBorrowerTypeId(Integer coBorrowerTypeId) {
		this.coBorrowerTypeId = coBorrowerTypeId;
	}
	public String getOwnershipStructure() {
		return ownershipStructure;
	}
	public void setOwnershipStructure(String ownershipStructure) {
		this.ownershipStructure = ownershipStructure;
	}
	public String getEnterpriseType() {
		return enterpriseType;
	}
	public void setEnterpriseType(String enterpriseType) {
		this.enterpriseType = enterpriseType;
	}
	public Integer getBorrCompanyId() {
		return borrCompanyId;
	}
	public void setBorrCompanyId(Integer borrCompanyId) {
		this.borrCompanyId = borrCompanyId;
	}
	
}
