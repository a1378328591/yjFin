package com.yjcaifu.modules.generator.entity;

import com.baomidou.mybatisplus.annotations.TableField;
import com.baomidou.mybatisplus.annotations.TableId;
import com.baomidou.mybatisplus.annotations.TableName;

import java.io.Serializable;
import java.math.BigDecimal;
import java.util.Date;
import java.util.List;

/**
 * 借款信息; InnoDB free: 9216 kB
 * 
 * @author guxx
 * @email sunlightcs@gmail.com
 * @date 2018-05-04 17:09:03
 */
public class EnterpriseCreditEntity implements Serializable {
	private static final long serialVersionUID = 1L;

	/**
	 * 企业征信信息
	 */
	private CusEntcreditInformationEntity entCredit;
	/**
	 * 贷款信息
	 */
	private List<CusEntloanInfoEntity> entLoanInfo;
	/**
	 * 企业征信信息(进件管理用到)
	 */
	private List<CusEntcreditInformationEntity> entCreditList;
	
	public CusEntcreditInformationEntity getEntCredit() {
		return entCredit;
	}
	public void setEntCredit(CusEntcreditInformationEntity entCredit) {
		this.entCredit = entCredit;
	}
	public List<CusEntloanInfoEntity> getEntLoanInfo() {
		return entLoanInfo;
	}
	public void setEntLoanInfo(List<CusEntloanInfoEntity> entLoanInfo) {
		this.entLoanInfo = entLoanInfo;
	}
	public List<CusEntcreditInformationEntity> getEntCreditList() {
		return entCreditList;
	}
	public void setEntCreditList(List<CusEntcreditInformationEntity> entCreditList) {
		this.entCreditList = entCreditList;
	}
	
	
	
}
