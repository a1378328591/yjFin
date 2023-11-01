package com.yjcaifu.modules.job.entity;

import com.baomidou.mybatisplus.annotations.TableId;
import com.baomidou.mybatisplus.annotations.TableName;

import java.math.BigDecimal;
import java.io.Serializable;
import java.util.Date;

/**
 * 
 * 
 * @author htshen
 * @email htshen@tom.com
 * @date 2018-07-06 10:44:39
 */
@TableName("commission_of_commerce")
public class CommissionOfCommerceEntity implements Serializable {
	private static final long serialVersionUID = 1L;

	/**
	 * ID
	 */
	@TableId
	private Integer id;
	/**
	 * 月份
	 */
	private Date month;
	/**
	 * 推荐人
	 */
	private Integer referrer;
	/**
	 * 公司留存
	 */
	private BigDecimal companyRetained;
	/**
	 * 推荐人佣金
	 */
	private BigDecimal referrerRetained;

	/**
	 * 设置：ID
	 */
	public void setId(Integer id) {
		this.id = id;
	}
	/**
	 * 获取：ID
	 */
	public Integer getId() {
		return id;
	}
	/**
	 * 设置：月份
	 */
	public void setMonth(Date month) {
		this.month = month;
	}
	/**
	 * 获取：月份
	 */
	public Date getMonth() {
		return month;
	}
	/**
	 * 设置：推荐人
	 */
	public void setReferrer(Integer referrer) {
		this.referrer = referrer;
	}
	/**
	 * 获取：推荐人
	 */
	public Integer getReferrer() {
		return referrer;
	}
	/**
	 * 设置：公司留存
	 */
	public void setCompanyRetained(BigDecimal companyRetained) {
		this.companyRetained = companyRetained;
	}
	/**
	 * 获取：公司留存
	 */
	public BigDecimal getCompanyRetained() {
		return companyRetained;
	}
	/**
	 * 设置：推荐人佣金
	 */
	public void setReferrerRetained(BigDecimal referrerRetained) {
		this.referrerRetained = referrerRetained;
	}
	/**
	 * 获取：推荐人佣金
	 */
	public BigDecimal getReferrerRetained() {
		return referrerRetained;
	}
}
