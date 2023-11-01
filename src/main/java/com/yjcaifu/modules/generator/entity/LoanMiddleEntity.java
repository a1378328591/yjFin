package com.yjcaifu.modules.generator.entity;

import com.baomidou.mybatisplus.annotations.TableField;
import com.baomidou.mybatisplus.annotations.TableId;
import com.baomidou.mybatisplus.annotations.TableName;
import com.fasterxml.jackson.annotation.JsonFormat;

import java.io.Serializable;
import java.util.Date;
import java.util.List;

/**
 * InnoDB free: 9216 kB
 * 
 * @author chenshun
 * @email sunlightcs@gmail.com
 * @date 2018-05-25 14:39:19
 */
@TableName("loan_middle")
public class LoanMiddleEntity implements Serializable {
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
	@JsonFormat(pattern = "yyyy-MM-dd", timezone = "GMT+8")
	private Date time;
	/**
	 * 记录人
	 */
	private Integer recordPersonnel;
	/**
	 * 记录人name
	 */
	@TableField(exist=false)
	private String username;
	/**
	 * 总体意见
	 */
	private String consensus;
	/**
	 * 贷审会结果
	 */
	private Integer result;
	/**
	 * 贷审会结果
	 */
	@TableField(exist=false)
	private String resultStr;
	/**
	 * 
	 */
	@TableField(exist=false)
	private List<LoanReviewOpinionsEntity> loanReviewOpinions;

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
	public void setTime(Date time) {
		this.time = time;
	}
	/**
	 * 获取：
	 */
	public Date getTime() {
		return time;
	}
	
	
	public Integer getRecordPersonnel() {
		return recordPersonnel;
	}
	public void setRecordPersonnel(Integer recordPersonnel) {
		this.recordPersonnel = recordPersonnel;
	}
	public List<LoanReviewOpinionsEntity> getLoanReviewOpinions() {
		return loanReviewOpinions;
	}
	public void setLoanReviewOpinions(List<LoanReviewOpinionsEntity> loanReviewOpinions) {
		this.loanReviewOpinions = loanReviewOpinions;
	}
	public String getConsensus() {
		return consensus;
	}
	public void setConsensus(String consensus) {
		this.consensus = consensus;
	}
	public Integer getResult() {
		return result;
	}
	public void setResult(Integer result) {
		this.result = result;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getResultStr() {
		return resultStr;
	}
	public void setResultStr(String resultStr) {
		this.resultStr = resultStr;
	}
	
	
	
}
