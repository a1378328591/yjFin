package com.yjcaifu.modules.generator.entity;

import com.baomidou.mybatisplus.annotations.TableId;
import com.baomidou.mybatisplus.annotations.TableName;
import com.fasterxml.jackson.annotation.JsonFormat;

import java.io.Serializable;
import java.util.Date;

/**
 * 
 * 
 * @author chenshun
 * @email sunlightcs@gmail.com
 * @date 2018-06-15 16:31:15
 */
@TableName("rd_account_cash_reason_report")
public class RdAccountCashReasonReportEntity implements Serializable {
	private static final long serialVersionUID = 1L;

	/**
	 * 
	 */
	@TableId
	private Integer id;
	/**
	 * 用户ID
	 */
	private Integer userId;
	/**
	 * 数据日期
	 */
	@JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss",timezone="GMT+8")
	private Date cashTime;
	/**
	 * 提现原因
	 */
	private String cashReason;

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
	 * 设置：数据日期
	 */
	public void setCashTime(Date cashTime) {
		this.cashTime = cashTime;
	}
	/**
	 * 获取：数据日期
	 */
	public Date getCashTime() {
		return cashTime;
	}
	/**
	 * 设置：提现原因
	 */
	public void setCashReason(String cashReason) {
		this.cashReason = cashReason;
	}
	/**
	 * 获取：提现原因
	 */
	public String getCashReason() {
		return cashReason;
	}
}
