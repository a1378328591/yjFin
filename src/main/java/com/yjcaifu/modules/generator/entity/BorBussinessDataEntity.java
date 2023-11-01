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
 * @date 2018-05-27 15:04:27
 */
@TableName("bor_bussiness_data")
public class BorBussinessDataEntity implements Serializable {
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
	 * 异常情况
	 */
	private String exceptionDecl;
	/**
	 * 相关主体名称
	 */
	private String mainBody;
	/**
	 * 企业财务数据分析明细(第一年)
	 */
	@TableField(exist=false)
	private BorBussinessRecordEntity bussinessDataF; 
	/**
	 * 企业财务数据分析明细(第二年)
	 */
	@TableField(exist=false)
	private BorBussinessRecordEntity bussinessDataS; 
	/**
	 * 企业财务数据分析明细(第三年)
	 */
	@TableField(exist=false)
	private BorBussinessRecordEntity bussinessDataT; 
	
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
	 * 设置：异常情况
	 */
	public void setExceptionDecl(String exceptionDecl) {
		this.exceptionDecl = exceptionDecl;
	}
	/**
	 * 获取：异常情况
	 */
	public String getExceptionDecl() {
		return exceptionDecl;
	}
	public BorBussinessRecordEntity getBussinessDataF() {
		return bussinessDataF;
	}
	public void setBussinessDataF(BorBussinessRecordEntity bussinessDataF) {
		this.bussinessDataF = bussinessDataF;
	}
	public BorBussinessRecordEntity getBussinessDataS() {
		return bussinessDataS;
	}
	public void setBussinessDataS(BorBussinessRecordEntity bussinessDataS) {
		this.bussinessDataS = bussinessDataS;
	}
	public BorBussinessRecordEntity getBussinessDataT() {
		return bussinessDataT;
	}
	public void setBussinessDataT(BorBussinessRecordEntity bussinessDataT) {
		this.bussinessDataT = bussinessDataT;
	}
	public String getMainBody() {
		return mainBody;
	}
	public void setMainBody(String mainBody) {
		this.mainBody = mainBody;
	}
	
}
