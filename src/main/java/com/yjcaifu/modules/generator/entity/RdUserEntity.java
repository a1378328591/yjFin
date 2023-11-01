package com.yjcaifu.modules.generator.entity;

import com.baomidou.mybatisplus.annotations.TableId;
import com.baomidou.mybatisplus.annotations.TableName;
import com.fasterxml.jackson.annotation.JsonFormat;

import java.io.Serializable;
import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

/**
 * 用户基本信息表
 * 
 * @author htshen
 * @email htshen@tom.com
 * @date 2018-05-04 13:56:02
 */
@TableName("rd_user")
public class RdUserEntity implements Serializable {
	private static final long serialVersionUID = 1L;

	/**
	 * 用户ID
	 */
	@TableId
	private Integer userId;
	/**
	 * 用户名
	 */
	private String userName;
	/**
	 * 证件ID
	 */
	private String cardId;
	/**
	 * 手机号码
	 */
	private String mobilePhone;
	/**
	 * 婚姻状况(0:未婚,1：已婚)
	 */
	private Integer maritalStatus;
	/**
	 * 家庭结构
	 */
	private String familyStructure;
	/**
	 * 关系
	 */
	private String relation;
	/**
	 * 工作单位/月收入
	 */
	private String workunitOrMonthlyincome;
	/**
	 * 
	 */
	private String enterpriseName;
	/**
	 * 法人代表
	 */
	private String legalPerson;
	/**
	 * 企业类型
	 */
	private String companyType;
	/**
	 * 股权结构
	 */
	private String ownershipStructure;
	/**
	 * 注册时间
	 */
	@DateTimeFormat(pattern="yyyy-MM-dd")
	private Date registrationTime;
	/**
	 * 注册资本
	 */
	private String registeredCapital;
	/**
	 * 经营范围
	 */
	private String businessScope;
	/**
	 * 住所
	 */
	private String domicile;
	/**
	 * 办公场所
	 */
	private String officeSpace;
	/**
	 * 个人或企业(0:个人,1:企业)
	 */
	private Integer personalOrEnterprise;
	/**
	 * 共同借款人/企业(0:共同借款人，1：共同借款企业)
	 */
	private Integer borrowerOrVenture;

	/**
	 * 设置：用户ID
	 */
	public void setUserId(Integer userId) {
		this.userId = userId;
	}
	/**
	 * 获取：用户ID
	 */
	public Integer getUserId() {
		return userId;
	}
	/**
	 * 设置：用户名
	 */
	public void setUserName(String userName) {
		this.userName = userName;
	}
	/**
	 * 获取：用户名
	 */
	public String getUserName() {
		return userName;
	}
	/**
	 * 设置：证件ID
	 */
	public void setCardId(String cardId) {
		this.cardId = cardId;
	}
	/**
	 * 获取：证件ID
	 */
	public String getCardId() {
		return cardId;
	}
	/**
	 * 设置：手机号码
	 */
	public void setMobilePhone(String mobilePhone) {
		this.mobilePhone = mobilePhone;
	}
	/**
	 * 获取：手机号码
	 */
	public String getMobilePhone() {
		return mobilePhone;
	}
	/**
	 * 设置：婚姻状况(0:未婚,1：已婚)
	 */
	public void setMaritalStatus(Integer maritalStatus) {
		this.maritalStatus = maritalStatus;
	}
	/**
	 * 获取：婚姻状况(0:未婚,1：已婚)
	 */
	public Integer getMaritalStatus() {
		return maritalStatus;
	}
	/**
	 * 设置：家庭结构
	 */
	public void setFamilyStructure(String familyStructure) {
		this.familyStructure = familyStructure;
	}
	/**
	 * 获取：家庭结构
	 */
	public String getFamilyStructure() {
		return familyStructure;
	}
	/**
	 * 设置：关系
	 */
	public void setRelation(String relation) {
		this.relation = relation;
	}
	/**
	 * 获取：关系
	 */
	public String getRelation() {
		return relation;
	}
	/**
	 * 设置：工作单位/月收入
	 */
	public void setWorkunitOrMonthlyincome(String workunitOrMonthlyincome) {
		this.workunitOrMonthlyincome = workunitOrMonthlyincome;
	}
	/**
	 * 获取：工作单位/月收入
	 */
	public String getWorkunitOrMonthlyincome() {
		return workunitOrMonthlyincome;
	}
	/**
	 * 设置：
	 */
	public void setEnterpriseName(String enterpriseName) {
		this.enterpriseName = enterpriseName;
	}
	/**
	 * 获取：
	 */
	public String getEnterpriseName() {
		return enterpriseName;
	}
	/**
	 * 设置：法人代表
	 */
	public void setLegalPerson(String legalPerson) {
		this.legalPerson = legalPerson;
	}
	/**
	 * 获取：法人代表
	 */
	public String getLegalPerson() {
		return legalPerson;
	}
	/**
	 * 设置：企业类型
	 */
	public void setCompanyType(String companyType) {
		this.companyType = companyType;
	}
	/**
	 * 获取：企业类型
	 */
	public String getCompanyType() {
		return companyType;
	}
	/**
	 * 设置：股权结构
	 */
	public void setOwnershipStructure(String ownershipStructure) {
		this.ownershipStructure = ownershipStructure;
	}
	/**
	 * 获取：股权结构
	 */
	public String getOwnershipStructure() {
		return ownershipStructure;
	}
	/**
	 * 设置：注册时间
	 */
	public void setRegistrationTime(Date registrationTime) {
		this.registrationTime = registrationTime;
	}
	/**
	 * 获取：注册时间
	 */
	public Date getRegistrationTime() {
		return registrationTime;
	}
	/**
	 * 设置：注册资本
	 */
	public void setRegisteredCapital(String registeredCapital) {
		this.registeredCapital = registeredCapital;
	}
	/**
	 * 获取：注册资本
	 */
	public String getRegisteredCapital() {
		return registeredCapital;
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
	 * 设置：办公场所
	 */
	public void setOfficeSpace(String officeSpace) {
		this.officeSpace = officeSpace;
	}
	/**
	 * 获取：办公场所
	 */
	public String getOfficeSpace() {
		return officeSpace;
	}
	/**
	 * 设置：个人或企业(0:个人,1:企业)
	 */
	public void setPersonalOrEnterprise(Integer personalOrEnterprise) {
		this.personalOrEnterprise = personalOrEnterprise;
	}
	/**
	 * 获取：个人或企业(0:个人,1:企业)
	 */
	public Integer getPersonalOrEnterprise() {
		return personalOrEnterprise;
	}
	/**
	 * 设置：共同借款人/企业(0:共同借款人，1：共同借款企业)
	 */
	public void setBorrowerOrVenture(Integer borrowerOrVenture) {
		this.borrowerOrVenture = borrowerOrVenture;
	}
	/**
	 * 获取：共同借款人/企业(0:共同借款人，1：共同借款企业)
	 */
	public Integer getBorrowerOrVenture() {
		return borrowerOrVenture;
	}
}
