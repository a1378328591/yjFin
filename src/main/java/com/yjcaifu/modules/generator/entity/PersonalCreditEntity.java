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
public class PersonalCreditEntity implements Serializable {
	private static final long serialVersionUID = 1L;

	/**
	 * 个人征信信息
	 */
	private CusCreditInformationEntity perCredit;
	/**
	 * 贷款信息
	 */
	private List<CusLoanInfoEntity> loanInfo;
	/**
	 * 个人征信信息(进件管理用到)
	 */
	private List<CusCreditInformationEntity> perCreditList;
	
	/**
	 * 
	 */
	public CusCreditInformationEntity getPerCredit() {
		return perCredit;
	}
	public void setPerCredit(CusCreditInformationEntity perCredit) {
		this.perCredit = perCredit;
	}
	public List<CusLoanInfoEntity> getLoanInfo() {
		return loanInfo;
	}
	public void setLoanInfo(List<CusLoanInfoEntity> loanInfo) {
		this.loanInfo = loanInfo;
	}
	public List<CusCreditInformationEntity> getPerCreditList() {
		return perCreditList;
	}
	public void setPerCreditList(List<CusCreditInformationEntity> perCreditList) {
		this.perCreditList = perCreditList;
	}
	
	
}
