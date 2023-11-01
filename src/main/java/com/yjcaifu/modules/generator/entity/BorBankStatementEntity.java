package com.yjcaifu.modules.generator.entity;

import com.baomidou.mybatisplus.annotations.TableField;
import com.baomidou.mybatisplus.annotations.TableId;
import com.baomidou.mybatisplus.annotations.TableName;
import com.fasterxml.jackson.annotation.JsonFormat;

import java.math.BigDecimal;
import java.io.Serializable;
import java.util.Date;
import java.util.List;

/**
 * 
 * 
 * @author htshen
 * @email htshen@tom.com
 * @date 2018-05-14 15:23:46
 */
@TableName("bor_bank_statement")
public class BorBankStatementEntity implements Serializable {
	private static final long serialVersionUID = 1L;
	/**
	 * 
	 */
	private Integer id;
	/**
	 * 进件管理ID
	 */
	private Integer refId;
	/**
	 * 主体名称
	 */
	private String mainBody;
	/**
	 * 平均流入额
	 */
	private BigDecimal avgLimitIn;
	/**
	 * 平均流出额
	 */
	private BigDecimal avgLimitOut;
	/**
	 * 异常记录说明
	 */
	private String exceptionDecl;
	/**
	 * 
	 */
	@TableField(exist=false)
	private List<CusBankStatementsEntity> months;
	/**
	 * get/set
	 */
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
	public BigDecimal getAvgLimitIn() {
		return avgLimitIn;
	}
	public void setAvgLimitIn(BigDecimal avgLimitIn) {
		this.avgLimitIn = avgLimitIn;
	}
	public BigDecimal getAvgLimitOut() {
		return avgLimitOut;
	}
	public void setAvgLimitOut(BigDecimal avgLimitOut) {
		this.avgLimitOut = avgLimitOut;
	}
	public String getExceptionDecl() {
		return exceptionDecl;
	}
	public void setExceptionDecl(String exceptionDecl) {
		this.exceptionDecl = exceptionDecl;
	}
	public List<CusBankStatementsEntity> getMonths() {
		return months;
	}
	public void setMonths(List<CusBankStatementsEntity> months) {
		this.months = months;
	}
	public String getMainBody() {
		return mainBody;
	}
	public void setMainBody(String mainBody) {
		this.mainBody = mainBody;
	}
	
}
