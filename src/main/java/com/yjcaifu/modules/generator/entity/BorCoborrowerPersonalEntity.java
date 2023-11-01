package com.yjcaifu.modules.generator.entity;

import com.baomidou.mybatisplus.annotations.TableField;
import com.baomidou.mybatisplus.annotations.TableId;
import com.baomidou.mybatisplus.annotations.TableName;

import java.io.Serializable;
import java.math.BigDecimal;
import java.util.Date;

/**
 * 
 * 
 * @author htshen
 * @email htshen@tom.com
 * @date 2018-05-16 08:50:20
 */
@TableName("bor_coborrower_personal")
public class BorCoborrowerPersonalEntity implements Serializable {
	private static final long serialVersionUID = 1L;

	/**
	 * 
	 */
	@TableId
	private Integer id;
	/**
	 * 进件管理id
	 */
	private Integer refId;
	/**
	 * 共同借款人id
	 */
	private Integer coBorrowerId;
	/**
	 * 共同借款人name
	 */
	@TableField(exist=false)
	private String realname;
	
	/**
	 * 工作单位/月收入
	 */
	private BigDecimal workunitOrIncome;
	
	/**
	 * 共同借款-类型
	 */
	private Integer coBorrowerTypeId;
	/**
	 * 共同借款-类型（name）
	 */
	@TableField(exist=false)
	private String coBorrowerTypeName;
	/**
	 * 关系（如妻子）
	 */
	private String relation;
	/**
	 * 身份证
	 */
	@TableField(exist=false)
	private String idcard;
	/**
	 * 联系方式
	 */
	@TableField(exist=false)
	private String mobile;
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
	
	public Integer getCoBorrowerId() {
		return coBorrowerId;
	}
	public void setCoBorrowerId(Integer coBorrowerId) {
		this.coBorrowerId = coBorrowerId;
	}
	/**
	 * 设置：进件管理id
	 */
	public void setRefId(Integer refId) {
		this.refId = refId;
	}
	/**
	 * 获取：进件管理id
	 */
	public Integer getRefId() {
		return refId;
	}
	/**
	 * 设置：工作单位/月收入
	 */
	public void setWorkunitOrIncome(BigDecimal workunitOrIncome) {
		this.workunitOrIncome = workunitOrIncome;
	}
	/**
	 * 获取：工作单位/月收入
	 */
	public BigDecimal getWorkunitOrIncome() {
		return workunitOrIncome;
	}
	public Integer getCoBorrowerTypeId() {
		return coBorrowerTypeId;
	}
	public void setCoBorrowerTypeId(Integer coBorrowerTypeId) {
		this.coBorrowerTypeId = coBorrowerTypeId;
	}
	public String getRelation() {
		return relation;
	}
	public void setRelation(String relation) {
		this.relation = relation;
	}
	public String getIdcard() {
		return idcard;
	}
	public void setIdcard(String idcard) {
		this.idcard = idcard;
	}
	public String getMobile() {
		return mobile;
	}
	public void setMobile(String mobile) {
		this.mobile = mobile;
	}
	public String getRealname() {
		return realname;
	}
	public void setRealname(String realname) {
		this.realname = realname;
	}
	public String getCoBorrowerTypeName() {
		return coBorrowerTypeName;
	}
	public void setCoBorrowerTypeName(String coBorrowerTypeName) {
		this.coBorrowerTypeName = coBorrowerTypeName;
	}
	
	
}
