package com.yjcaifu.modules.generator.entity;

import com.baomidou.mybatisplus.annotations.TableField;
import com.baomidou.mybatisplus.annotations.TableId;
import com.baomidou.mybatisplus.annotations.TableName;

import java.io.Serializable;
import java.util.Date;
import java.util.List;

/**
 * 
 * 
 * @author htshen
 * @email htshen@tom.com
 * @date 2018-05-27 11:20:01
 */
@TableName("bor_tax_condition")
public class BorTaxConditionEntity implements Serializable {
	private static final long serialVersionUID = 1L;

	/**
	 * 
	 */
	@TableId
	private Integer id;
	/**
	 * 进件ID
	 */
	private Integer refId;
	/**
	 * 异常情况
	 */
	private String exceptionDecl;
	/**
	 * 税票明细
	 */
	@TableField(exist=false)
	private List<BorTaxRecordEntity> records; 
	/**
	 * 异常情况
	 */
	private String mainBody;
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
	 * 设置：进件ID
	 */
	public void setRefId(Integer refId) {
		this.refId = refId;
	}
	/**
	 * 获取：进件ID
	 */
	public Integer getRefId() {
		return refId;
	}
	public String getExceptionDecl() {
		return exceptionDecl;
	}
	public void setExceptionDecl(String exceptionDecl) {
		this.exceptionDecl = exceptionDecl;
	}
	public List<BorTaxRecordEntity> getRecords() {
		return records;
	}
	public void setRecords(List<BorTaxRecordEntity> records) {
		this.records = records;
	}
	public String getMainBody() {
		return mainBody;
	}
	public void setMainBody(String mainBody) {
		this.mainBody = mainBody;
	}
	
}
