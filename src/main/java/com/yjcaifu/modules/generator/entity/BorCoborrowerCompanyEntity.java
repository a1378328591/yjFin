package com.yjcaifu.modules.generator.entity;

import com.baomidou.mybatisplus.annotations.TableField;
import com.baomidou.mybatisplus.annotations.TableId;
import com.baomidou.mybatisplus.annotations.TableName;
import com.fasterxml.jackson.annotation.JsonFormat;

import java.io.Serializable;
import java.math.BigDecimal;
import java.util.Date;

/**
 * 
 * 
 * @author htshen
 * @email htshen@tom.com
 * @date 2018-05-18 14:26:32
 */
@TableName("bor_coborrower_company")
public class BorCoborrowerCompanyEntity implements Serializable {
	private static final long serialVersionUID = 1L;

	/**
	 * 
	 */
	@TableId
	private Integer id;
	/**
	 * 进件管理id
	 */
	private Integer refId;
	/**
	 * 共同借款企业id
	 */
	private Integer coCompanyId;
	/**
	 * 共同借款企业name
	 */
	private String enterpriseName;
	
	/**
	 * 关系（借款/担保企业）
	 */
	private Integer coBorrowerTypeId;
	/**
	 * 关系（借款/担保企业）（name）
	 */
	@TableField(exist=false)
	private String coBorrowerTypeName;
	/**
	 * 法人
	 */
	private String legalPerson;
	/**
	 * 股权结构
	 */
	private String ownershipStructure;
	/**
	 * 注册时间
	 */
	@JsonFormat(pattern = "yyyy-MM-dd",timezone="GMT+8")
	private Date establishmentTime;
	/**
	 * 注册时间(string)
	 */
	@TableField(exist=false)
	private String establishmentTimeStr;
	/**
	 * 注册资本
	 */
	private BigDecimal registeredAssets;

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
	 * 设置：
	 */
	public void setCoCompanyId(Integer coCompanyId) {
		this.coCompanyId = coCompanyId;
	}
	/**
	 * 获取：
	 */
	public Integer getCoCompanyId() {
		return coCompanyId;
	}
	public String getLegalPerson() {
		return legalPerson;
	}
	public void setLegalPerson(String legalPerson) {
		this.legalPerson = legalPerson;
	}
	public String getOwnershipStructure() {
		return ownershipStructure;
	}
	public void setOwnershipStructure(String ownershipStructure) {
		this.ownershipStructure = ownershipStructure;
	}
	public Date getEstablishmentTime() {
		return establishmentTime;
	}
	public void setEstablishmentTime(Date establishmentTime) {
		this.establishmentTime = establishmentTime;
	}
	public BigDecimal getRegisteredAssets() {
		return registeredAssets;
	}
	public void setRegisteredAssets(BigDecimal registeredAssets) {
		this.registeredAssets = registeredAssets;
	}
	public Integer getCoBorrowerTypeId() {
		return coBorrowerTypeId;
	}
	public void setCoBorrowerTypeId(Integer coBorrowerTypeId) {
		this.coBorrowerTypeId = coBorrowerTypeId;
	}
	public String getEnterpriseName() {
		return enterpriseName;
	}
	public void setEnterpriseName(String enterpriseName) {
		this.enterpriseName = enterpriseName;
	}
	public String getCoBorrowerTypeName() {
		return coBorrowerTypeName;
	}
	public void setCoBorrowerTypeName(String coBorrowerTypeName) {
		this.coBorrowerTypeName = coBorrowerTypeName;
	}
	public String getEstablishmentTimeStr() {
		return establishmentTimeStr;
	}
	public void setEstablishmentTimeStr(String establishmentTimeStr) {
		this.establishmentTimeStr = establishmentTimeStr;
	}
	
}
