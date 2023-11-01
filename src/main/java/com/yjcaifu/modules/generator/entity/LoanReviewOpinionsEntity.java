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
 * @date 2018-05-24 11:29:56
 */
@TableName("loan_review_opinions")
public class LoanReviewOpinionsEntity implements Serializable {
	private static final long serialVersionUID = 1L;

	/**
	 * 
	 */
	@TableId
	private Integer id;
	/**
	 * 进件id关联
	 */
	private Integer refId;
	/**
	 * 贷审会成员id
	 */
	private Integer personnel;
	/**
	 * 贷审会成员name
	 */
	private String username;
	/**
	 * 记录人
	 */
	private Integer recordPersonnel;
	
	@TableField(exist=false)
	private String realname;
	/**
	 * 优势
	 */
	private String advantage;
	/**
	 * 风险点
	 */
	private String risk;
	/**
	 * 意见
	 */
	private String opinion;
	/**
	 * 中间表id
	 */
	private Integer loanMiddleId;
	
	/**
	 * 时间
	 */
	@JsonFormat(pattern = "yyyy-MM-dd", timezone = "GMT+8")
	private Date time;

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
	 * 设置：进件id关联
	 */
	public void setRefId(Integer refId) {
		this.refId = refId;
	}
	/**
	 * 获取：进件id关联
	 */
	public Integer getRefId() {
		return refId;
	}
	
	/**
	 * 设置：审核人员
	 */
	public void setPersonnel(Integer personnel) {
		this.personnel = personnel;
	}
	/**
	 * 获取：审核人员
	 */
	public Integer getPersonnel() {
		return personnel;
	}
	/**
	 * 获取：记录人员
	 */
	public Integer getRecordPersonnel() {
		return recordPersonnel;
	}
	public void setRecordPersonnel(Integer recordPersonnel) {
		this.recordPersonnel = recordPersonnel;
	}
	public String getRealname() {
		return realname;
	}
	public void setRealname(String realname) {
		this.realname = realname;
	}
	/**
	 * 设置：优势
	 */
	public void setAdvantage(String advantage) {
		this.advantage = advantage;
	}
	/**
	 * 获取：优势
	 */
	public String getAdvantage() {
		return advantage;
	}
	/**
	 * 设置：风险点
	 */
	public void setRisk(String risk) {
		this.risk = risk;
	}
	/**
	 * 获取：风险点
	 */
	public String getRisk() {
		return risk;
	}
	/**
	 * 设置：意见
	 */
	public void setOpinion(String opinion) {
		this.opinion = opinion;
	}
	/**
	 * 获取：意见
	 */
	public String getOpinion() {
		return opinion;
	}
	/**
	 * 设置：时间
	 */
	public void setTime(Date time) {
		this.time = time;
	}
	/**
	 * 获取：时间
	 */
	public Date getTime() {
		return time;
	}
	public Integer getLoanMiddleId() {
		return loanMiddleId;
	}
	public void setLoanMiddleId(Integer loanMiddleId) {
		this.loanMiddleId = loanMiddleId;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	
	
}
