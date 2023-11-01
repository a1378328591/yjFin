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
 * @date 2018-05-22 15:35:53
 */
@TableName("bor_coborrower_estate")
public class BorCoborrowerEstateEntity implements Serializable {
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
	private Integer estateId;
	/**
	 * 评估价值
	 */
	private BigDecimal price;
	/**
	 * 贷款余额
	 */
	private BigDecimal loanBalance;
	/**
	 * 抵押余额
	 */
	private BigDecimal mortgageBalance;
	/**
	 * 抵押方式
	 */
	private String mortgageWay;
	/**
	 * 贷款性质
	 */
	private Integer loanProperty;

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
	public void setEstateId(Integer estateId) {
		this.estateId = estateId;
	}
	/**
	 * 获取：
	 */
	public Integer getEstateId() {
		return estateId;
	}
	/**
	 * 设置：评估价值
	 */
	public void setPrice(BigDecimal price) {
		this.price = price;
	}
	/**
	 * 获取：评估价值
	 */
	public BigDecimal getPrice() {
		return price;
	}
	/**
	 * 设置：贷款余额
	 */
	public void setLoanBalance(BigDecimal loanBalance) {
		this.loanBalance = loanBalance;
	}
	/**
	 * 获取：贷款余额
	 */
	public BigDecimal getLoanBalance() {
		return loanBalance;
	}
	/**
	 * 设置：抵押余额
	 */
	public void setMortgageBalance(BigDecimal mortgageBalance) {
		this.mortgageBalance = mortgageBalance;
	}
	/**
	 * 获取：抵押余额
	 */
	public BigDecimal getMortgageBalance() {
		return mortgageBalance;
	}
	/**
	 * 设置：抵押方式
	 */
	public void setMortgageWay(String mortgageWay) {
		this.mortgageWay = mortgageWay;
	}
	/**
	 * 获取：抵押方式
	 */
	public String getMortgageWay() {
		return mortgageWay;
	}
	/**
	 * 设置：贷款性质
	 */
	public void setLoanProperty(Integer loanProperty) {
		this.loanProperty = loanProperty;
	}
	/**
	 * 获取：贷款性质
	 */
	public Integer getLoanProperty() {
		return loanProperty;
	}
}
