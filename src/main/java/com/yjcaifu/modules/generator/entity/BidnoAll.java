package com.yjcaifu.modules.generator.entity;

import com.baomidou.mybatisplus.annotations.TableField;
import com.baomidou.mybatisplus.annotations.TableId;
import com.baomidou.mybatisplus.annotations.TableName;
import com.fasterxml.jackson.annotation.JsonFormat;

import java.io.Serializable;
import java.util.Date;
import java.util.List;

public class BidnoAll implements Serializable{
	private static final long serialVersionUID = 1L;
	/**
	 * BidNoEntity的数组
	 */
	
	private Integer id;
	/**
	 * 
	 */
	private Integer refId;
	/**
	 * 
	 */
	private BidNoEntity bidno;
	
	
	public BidNoEntity getBidno() {
		return bidno;
	}
	public void setBidno(BidNoEntity bidno) {
		this.bidno = bidno;
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
	
	
}
