package com.yjcaifu.modules.generator.entity;

import com.baomidou.mybatisplus.annotations.TableId;
import com.baomidou.mybatisplus.annotations.TableName;

import java.io.Serializable;
import java.math.BigDecimal;
import java.util.Date;

/**
 * 
 * 
 * @author htshen
 * @email htshen@tom.com
 * @date 2018-05-22 15:35:54
 */
@TableName("bor_coborrower_car")
public class BorCoborrowerCarEntity implements Serializable {
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
	 * 汽车基本信息id
	 */
	private Integer carId;
	/**
	 * 
	 */
	private BigDecimal assessedValue;
	/**
	 * 贷款情况
	 */
	private Integer loans;
	/**
	 * 按揭-按揭余额
	 */
	private BigDecimal mortgageBalance;
	/**
	 * 已抵押-贷款余额
	 */
	private BigDecimal mortgagedLoansBalance;
	/**
	 * 抵押方式
	 */
	private Integer mortgageWay;

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
	 * 设置：汽车基本信息id
	 */
	public void setCarId(Integer carId) {
		this.carId = carId;
	}
	/**
	 * 获取：汽车基本信息id
	 */
	public Integer getCarId() {
		return carId;
	}
	/**
	 * 设置：
	 */
	public void setAssessedValue(BigDecimal assessedValue) {
		this.assessedValue = assessedValue;
	}
	/**
	 * 获取：
	 */
	public BigDecimal getAssessedValue() {
		return assessedValue;
	}
	/**
	 * 设置：贷款情况
	 */
	public void setLoans(Integer loans) {
		this.loans = loans;
	}
	/**
	 * 获取：贷款情况
	 */
	public Integer getLoans() {
		return loans;
	}
	/**
	 * 设置：按揭-按揭余额
	 */
	public void setMortgageBalance(BigDecimal mortgageBalance) {
		this.mortgageBalance = mortgageBalance;
	}
	/**
	 * 获取：按揭-按揭余额
	 */
	public BigDecimal getMortgageBalance() {
		return mortgageBalance;
	}
	/**
	 * 设置：已抵押-贷款余额
	 */
	public void setMortgagedLoansBalance(BigDecimal mortgagedLoansBalance) {
		this.mortgagedLoansBalance = mortgagedLoansBalance;
	}
	/**
	 * 获取：已抵押-贷款余额
	 */
	public BigDecimal getMortgagedLoansBalance() {
		return mortgagedLoansBalance;
	}
	/**
	 * 设置：抵押方式
	 */
	public void setMortgageWay(Integer mortgageWay) {
		this.mortgageWay = mortgageWay;
	}
	/**
	 * 获取：抵押方式
	 */
	public Integer getMortgageWay() {
		return mortgageWay;
	}
}
