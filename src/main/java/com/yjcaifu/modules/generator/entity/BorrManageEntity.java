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
 * @author chenshun
 * @email sunlightcs@gmail.com
 * @date 2018-05-04 17:09:03
 */
@TableName("borrowing_information")
public class BorrManageEntity implements Serializable {
	private static final long serialVersionUID = 1L;

	/**
	 * 
	 */
	private Integer id;
	/**
	 * 共同借款/担保 人
	 */
	private List<BorCoborrowerPersonalEntity> personalBorr;
	/**
	 * 共同借款/担保 企业
	 */
	private List<BorCoborrowerCompanyEntity> entrpriseBorr;
	/**
	 * 进件信息
	 */
	private BorrowingInformationEntity borrowingInfo;
	/**
	 * 基本要素
	 */
	private PersonalInfoEntity personalBase;
	/**
	 * 实地调查人
	 */
	private List<Integer> empInquirer;
	/**
	 * 个人担保-车辆信息
	 */
	private List<CusCarEntity> carBorr;
	/**
	 * 个人担保-房产信息
	 */
	private List<CusEstateEntity> estateBorr;
	/**
	 * 借款/担保企业信息
	 */
	private List<BorBorrowerCompanyinfoEntity> entrpriseInfo;
	/**
	 * 借款用途审核
	 */
	private List<BorLoanPurposeEntity> loanPurpose;
	/**
	 * 个人征信(保存时：id)
	 */
	private Integer[] perCredit;
	/**
	 * 企业征信
	 */
	private Integer[] entCredit;
	/**
	 * 个人征信（回显时返回的对象）
	 */
	private PersonalCreditEntity perCreditEntity;
	/**
	 * 个人征信
	 */
	private EnterpriseCreditEntity entCreditEntity;
	/**
	 * 个人银行流水
	 */
	private List<BorBankStatementEntity> borrBankStatement;
	/**
	 * 借款主体税务票据情况
	 */
	private List<BorTaxConditionEntity> taxCondition;
	/**
	 * 企业财务数据分析
	 */
	private List<BorBussinessDataEntity> borBussinessData;
	/**
	 * 富文本
	 */
	private String borRichTexts;
	/**
	 * 富文本
	 */
	private List<Integer> cityName;
	
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public List<BorCoborrowerPersonalEntity> getPersonalBorr() {
		return personalBorr;
	}
	public void setPersonalBorr(List<BorCoborrowerPersonalEntity> personalBorr) {
		this.personalBorr = personalBorr;
	}
	public List<BorCoborrowerCompanyEntity> getEntrpriseBorr() {
		return entrpriseBorr;
	}
	public void setEntrpriseBorr(List<BorCoborrowerCompanyEntity> entrpriseBorr) {
		this.entrpriseBorr = entrpriseBorr;
	}
	
	public PersonalInfoEntity getPersonalBase() {
		return personalBase;
	}
	public void setPersonalBase(PersonalInfoEntity personalBase) {
		this.personalBase = personalBase;
	}
	public BorrowingInformationEntity getBorrowingInfo() {
		return borrowingInfo;
	}
	public void setBorrowingInfo(BorrowingInformationEntity borrowingInfo) {
		this.borrowingInfo = borrowingInfo;
	}
	public List<Integer> getEmpInquirer() {
		return empInquirer;
	}
	public void setEmpInquirer(List<Integer> empInquirer) {
		this.empInquirer = empInquirer;
	}
	public List<CusCarEntity> getCarBorr() {
		return carBorr;
	}
	public void setCarBorr(List<CusCarEntity> carBorr) {
		this.carBorr = carBorr;
	}
	public List<CusEstateEntity> getEstateBorr() {
		return estateBorr;
	}
	public void setEstateBorr(List<CusEstateEntity> estateBorr) {
		this.estateBorr = estateBorr;
	}
	public List<BorBorrowerCompanyinfoEntity> getEntrpriseInfo() {
		return entrpriseInfo;
	}
	public void setEntrpriseInfo(List<BorBorrowerCompanyinfoEntity> entrpriseInfo) {
		this.entrpriseInfo = entrpriseInfo;
	}
	public List<BorLoanPurposeEntity> getLoanPurpose() {
		return loanPurpose;
	}
	public void setLoanPurpose(List<BorLoanPurposeEntity> loanPurpose) {
		this.loanPurpose = loanPurpose;
	}
	public Integer[] getPerCredit() {
		return perCredit;
	}
	public void setPerCredit(Integer[] perCredit) {
		this.perCredit = perCredit;
	}
	public Integer[] getEntCredit() {
		return entCredit;
	}
	public void setEntCredit(Integer[] entCredit) {
		this.entCredit = entCredit;
	}
	public PersonalCreditEntity getPerCreditEntity() {
		return perCreditEntity;
	}
	public void setPerCreditEntity(PersonalCreditEntity perCreditEntity) {
		this.perCreditEntity = perCreditEntity;
	}
	public EnterpriseCreditEntity getEntCreditEntity() {
		return entCreditEntity;
	}
	public void setEntCreditEntity(EnterpriseCreditEntity entCreditEntity) {
		this.entCreditEntity = entCreditEntity;
	}
	public List<BorBankStatementEntity> getBorrBankStatement() {
		return borrBankStatement;
	}
	public void setBorrBankStatement(List<BorBankStatementEntity> borrBankStatement) {
		this.borrBankStatement = borrBankStatement;
	}
	public List<BorTaxConditionEntity> getTaxCondition() {
		return taxCondition;
	}
	public void setTaxCondition(List<BorTaxConditionEntity> taxCondition) {
		this.taxCondition = taxCondition;
	}
	public List<BorBussinessDataEntity> getBorBussinessData() {
		return borBussinessData;
	}
	public void setBorBussinessData(List<BorBussinessDataEntity> borBussinessData) {
		this.borBussinessData = borBussinessData;
	}
	public String getBorRichTexts() {
		return borRichTexts;
	}
	public void setBorRichTexts(String borRichTexts) {
		this.borRichTexts = borRichTexts;
	}
	public List<Integer> getCityName() {
		return cityName;
	}
	public void setCityName(List<Integer> cityName) {
		this.cityName = cityName;
	}
	
}
