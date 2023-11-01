package com.yjcaifu.modules.generator.entity;

import com.baomidou.mybatisplus.annotations.TableField;
import com.baomidou.mybatisplus.annotations.TableId;
import com.baomidou.mybatisplus.annotations.TableName;
import com.fasterxml.jackson.annotation.JsonFormat;

import java.io.Serializable;
import java.util.Date;
import java.util.List;

public class LoanAll implements Serializable{
	private static final long serialVersionUID = 1L;
	/**
	 * LoanMiddleEntity的数组
	 */
	
	private Integer id;
	/**
	 * 
	 */
	private Integer refId;
	/**
	 * 
	 */
	@JsonFormat(pattern = "yyyy-MM-dd", timezone = "GMT+8")
	private Date time;
	/**
	 * 
	 */
	private Integer recordPersonnel;
	
	private List<LoanMiddleEntity> loanAll;
	
	
	public List<LoanMiddleEntity> getLoanAll() {
		return loanAll;
	}
	public void setLoanAll(List<LoanMiddleEntity> loanAll) {
		this.loanAll = loanAll;
	}
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
	public Date getTime() {
		return time;
	}
	public void setTime(Date time) {
		this.time = time;
	}
	public Integer getRecordPersonnel() {
		return recordPersonnel;
	}
	public void setRecordPersonnel(Integer recordPersonnel) {
		this.recordPersonnel = recordPersonnel;
	}
	
	
}
