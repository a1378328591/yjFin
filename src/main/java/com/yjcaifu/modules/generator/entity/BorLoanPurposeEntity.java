package com.yjcaifu.modules.generator.entity;

import com.baomidou.mybatisplus.annotations.TableField;
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
 * @date 2018-05-23 15:23:15
 */
@TableName("bor_loan_purpose")
public class BorLoanPurposeEntity implements Serializable {
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
	 * 往来对手
	 */
	private String partner;
	/**
	 * 合同价值
	 */
	private String contractValue;
	/**
	 * 签订日期
	 */
	@JsonFormat(pattern = "yyyy-MM-dd",timezone="GMT+8")
	private Date signingTime;
	/**
	 * 签订日期Str
	 */
	@TableField(exist=false)
	private String signingTimeStr;
	/**
	 * 付款方式
	 */
	private String paymentMethod;
	/**
	 * 备注
	 */
	private String remark;
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public Integer getRefId() {
		return refId;
	}
	public void setRefId(Integer refId) {
		this.refId = refId;
	}
	public String getPartner() {
		return partner;
	}
	public void setPartner(String partner) {
		this.partner = partner;
	}
	public String getContractValue() {
		return contractValue;
	}
	public void setContractValue(String contractValue) {
		this.contractValue = contractValue;
	}
	public Date getSigningTime() {
		return signingTime;
	}
	public void setSigningTime(Date signingTime) {
		this.signingTime = signingTime;
	}
	public String getPaymentMethod() {
		return paymentMethod;
	}
	public void setPaymentMethod(String paymentMethod) {
		this.paymentMethod = paymentMethod;
	}
	public String getRemark() {
		return remark;
	}
	public void setRemark(String remark) {
		this.remark = remark;
	}
	public String getSigningTimeStr() {
		return signingTimeStr;
	}
	public void setSigningTimeStr(String signingTimeStr) {
		this.signingTimeStr = signingTimeStr;
	}

	
}
