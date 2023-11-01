package com.yjcaifu.modules.generator.entity;

import com.baomidou.mybatisplus.annotations.TableId;
import com.baomidou.mybatisplus.annotations.TableName;

import java.io.Serializable;
import java.util.Date;

/**
 * InnoDB free: 9216 kB
 * 
 * @author chenshun
 * @email sunlightcs@gmail.com
 * @date 2018-05-08 10:30:21
 */
@TableName("review_opinions")
public class ReviewOpinionsEntity implements Serializable {
	private static final long serialVersionUID = 1L;

	/**
	 * 
	 */
	@TableId
	private Integer userid;
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
	 * 评审人
	 */
	private String reviewer;

	/**
	 * 设置：
	 */
	public void setUserid(Integer userid) {
		this.userid = userid;
	}
	/**
	 * 获取：
	 */
	public Integer getUserid() {
		return userid;
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
	 * 设置：评审人
	 */
	public void setReviewer(String reviewer) {
		this.reviewer = reviewer;
	}
	/**
	 * 获取：评审人
	 */
	public String getReviewer() {
		return reviewer;
	}
}
