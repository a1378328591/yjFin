package com.yjcaifu.modules.generator.entity;

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
 * @date 2018-05-27 15:17:32
 */
@TableName("bor_bussiness_record")
public class BorBussinessRecordEntity implements Serializable {
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
	 * 年份
	 */
	private String year;
	/**
	 * 主营收入
	 */
	private BigDecimal income;
	/**
	 * 毛利润
	 */
	private BigDecimal grossProfit;
	/**
	 * 净利润
	 */
	private BigDecimal retainedProfit;
	/**
	 * 主营业务同比增长
	 */
	private BigDecimal incomeGrowth;
	/**
	 * 净利润同比增长
	 */
	private BigDecimal retainedGrowth;
	/**
	 * 盈利能力-净资产收益率
	 */
	private BigDecimal yieldRate;
	/**
	 * 盈利能力-毛利率
	 */
	private BigDecimal grossProfitRate;
	/**
	 * 净利率
	 */
	private BigDecimal retainedProfits;
	/**
	 * 总资产周转天数
	 */
	private BigDecimal totalDays;
	/**
	 * 应收账款周转天数
	 */
	private BigDecimal receivablesDays;
	/**
	 * 存货周转天数
	 */
	private BigDecimal inventoryDays;
	/**
	 * 资产负债率
	 */
	private BigDecimal debtRatio;
	/**
	 * 销贷比
	 */
	private BigDecimal sellBorrRatio;
	/**
	 * 流动比例
	 */
	private String flowRate;
	/**
	 * 速冻比例
	 */
	private String quickRate;

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
	 * 设置：年份
	 */
	public void setYear(String year) {
		this.year = year;
	}
	/**
	 * 获取：年份
	 */
	public String getYear() {
		return year;
	}
	/**
	 * 设置：主营收入
	 */
	public void setIncome(BigDecimal income) {
		this.income = income;
	}
	/**
	 * 获取：主营收入
	 */
	public BigDecimal getIncome() {
		return income;
	}
	/**
	 * 设置：毛利润
	 */
	public void setGrossProfit(BigDecimal grossProfit) {
		this.grossProfit = grossProfit;
	}
	/**
	 * 获取：毛利润
	 */
	public BigDecimal getGrossProfit() {
		return grossProfit;
	}
	/**
	 * 设置：净利润
	 */
	public void setRetainedProfit(BigDecimal retainedProfit) {
		this.retainedProfit = retainedProfit;
	}
	/**
	 * 获取：净利润
	 */
	public BigDecimal getRetainedProfit() {
		return retainedProfit;
	}
	/**
	 * 设置：主营业务同比增长
	 */
	public void setIncomeGrowth(BigDecimal incomeGrowth) {
		this.incomeGrowth = incomeGrowth;
	}
	/**
	 * 获取：主营业务同比增长
	 */
	public BigDecimal getIncomeGrowth() {
		return incomeGrowth;
	}
	/**
	 * 设置：净利润同比增长
	 */
	public void setRetainedGrowth(BigDecimal retainedGrowth) {
		this.retainedGrowth = retainedGrowth;
	}
	/**
	 * 获取：净利润同比增长
	 */
	public BigDecimal getRetainedGrowth() {
		return retainedGrowth;
	}
	/**
	 * 设置：盈利能力-净资产收益率
	 */
	public void setYieldRate(BigDecimal yieldRate) {
		this.yieldRate = yieldRate;
	}
	/**
	 * 获取：盈利能力-净资产收益率
	 */
	public BigDecimal getYieldRate() {
		return yieldRate;
	}
	/**
	 * 设置：盈利能力-毛利率
	 */
	public void setGrossProfitRate(BigDecimal grossProfitRate) {
		this.grossProfitRate = grossProfitRate;
	}
	/**
	 * 获取：盈利能力-毛利率
	 */
	public BigDecimal getGrossProfitRate() {
		return grossProfitRate;
	}
	/**
	 * 设置：净利率
	 */
	public void setRetainedProfits(BigDecimal retainedProfits) {
		this.retainedProfits = retainedProfits;
	}
	/**
	 * 获取：净利率
	 */
	public BigDecimal getRetainedProfits() {
		return retainedProfits;
	}
	/**
	 * 设置：总资产周转天数
	 */
	public void setTotalDays(BigDecimal totalDays) {
		this.totalDays = totalDays;
	}
	/**
	 * 获取：总资产周转天数
	 */
	public BigDecimal getTotalDays() {
		return totalDays;
	}
	/**
	 * 设置：应收账款周转天数
	 */
	public void setReceivablesDays(BigDecimal receivablesDays) {
		this.receivablesDays = receivablesDays;
	}
	/**
	 * 获取：应收账款周转天数
	 */
	public BigDecimal getReceivablesDays() {
		return receivablesDays;
	}
	/**
	 * 设置：存货周转天数
	 */
	public void setInventoryDays(BigDecimal inventoryDays) {
		this.inventoryDays = inventoryDays;
	}
	/**
	 * 获取：存货周转天数
	 */
	public BigDecimal getInventoryDays() {
		return inventoryDays;
	}
	/**
	 * 设置：资产负债率
	 */
	public void setDebtRatio(BigDecimal debtRatio) {
		this.debtRatio = debtRatio;
	}
	/**
	 * 获取：资产负债率
	 */
	public BigDecimal getDebtRatio() {
		return debtRatio;
	}
	/**
	 * 设置：销贷比
	 */
	public void setSellBorrRatio(BigDecimal sellBorrRatio) {
		this.sellBorrRatio = sellBorrRatio;
	}
	/**
	 * 获取：销贷比
	 */
	public BigDecimal getSellBorrRatio() {
		return sellBorrRatio;
	}
	/**
	 * 设置：流动比例
	 */
	public void setFlowRate(String flowRate) {
		this.flowRate = flowRate;
	}
	/**
	 * 获取：流动比例
	 */
	public String getFlowRate() {
		return flowRate;
	}
	/**
	 * 设置：速冻比例
	 */
	public void setQuickRate(String quickRate) {
		this.quickRate = quickRate;
	}
	/**
	 * 获取：速冻比例
	 */
	public String getQuickRate() {
		return quickRate;
	}
}
