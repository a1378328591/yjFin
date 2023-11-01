package com.yjcaifu.modules.generator.entity;

import com.baomidou.mybatisplus.annotations.TableField;
import com.baomidou.mybatisplus.annotations.TableId;
import com.baomidou.mybatisplus.annotations.TableName;
import com.fasterxml.jackson.annotation.JsonFormat;

import java.math.BigDecimal;
import java.io.Serializable;
import java.util.Date;

/**
 * 
 * 
 * @author htshen
 * @email htshen@tom.com
 * @date 2018-05-07 17:13:49
 */
@TableName("cus_personal_info")
public class PersonalInfoEntity implements Serializable {
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
	 * 姓名
	 */
	private String realname;
	/**
	 * 性别
	 */
	private Integer sex;
	/**
	 * 手机号
	 */
	private String mobile;
	/**
	 * 身份证
	 */
	private String idcard;
	/**
	 * 省
	 */
	private Integer province;
	/**
	 * 市
	 */
	private Integer city;
	/**
	 * 市
	 */
	@TableField(exist=false)
	private String cityName;
	
	/**
	 * 区
	 */
	private Integer town;
	/**
	 * 出生日期
	 */
	@JsonFormat(pattern = "yyyy-MM-dd",timezone="GMT+8")
	private Date birthday;
	/**
	 * 工作单位
	 */
	private String workUnit;
	/**
	 * 月收入
	 */
	private BigDecimal monthlyIncome;
	/**
	 * 员工编号
	 */
	private Integer empId;
	/**
	 * 员工姓名
	 */
	@TableField(exist=false)
	private String empName;
	/**
	 * 婚姻状况
	 */
	private Integer maritalStatus;
	/**
	 * 婚姻状况name
	 */
	@TableField(exist=false)
	private String maritalStatusName;
	/**
	 * 家庭结构
	 */
	private String familyStructure;
	/**
	 * 进件管理中的关系
	 */
	@TableField(exist=false)
	private String relation;
	/**
	 * 进件管理中的工作单位/月收入
	 */
	@TableField(exist=false)
	private BigDecimal workunitOrIncome;
	/**
	 * 进件管理中的共同借款人/企业
	 */
	@TableField(exist=false)
	private Integer coBorrowerTypeId;
	/**
	 * 进件管理中的项目区域（name）
	 */
	@TableField(exist=false)
	private String areaName;
	/**
	 * 进件管理中的实地调查人（name）
	 */
	@TableField(exist=false)
	private String empInquirer;
	/**
	 * 设置：id
	 */
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	/**
	 * 设置：empId
	 */
	public Integer getEmpId() {
		return empId;
	}
	public void setEmpId(Integer empId) {
		this.empId = empId;
	}
	public String getEmpName() {
		return empName;
	}
	public void setEmpName(String empName) {
		this.empName = empName;
	}
	
	public Integer getRefId() {
		return refId;
	}
	public void setRefId(Integer refId) {
		this.refId = refId;
	}
	/**
	 * 设置：姓名
	 */
	public void setRealname(String realname) {
		this.realname = realname;
	}
	/**
	 * 获取：姓名
	 */
	public String getRealname() {
		return realname;
	}
	/**
	 * 设置：性别
	 */
	public void setSex(Integer sex) {
		this.sex = sex;
	}
	/**
	 * 获取：性别
	 */
	public Integer getSex() {
		return sex;
	}
	/**
	 * 设置：手机号
	 */
	public void setMobile(String mobile) {
		this.mobile = mobile;
	}
	/**
	 * 获取：手机号
	 */
	public String getMobile() {
		return mobile;
	}
	/**
	 * 设置：身份证
	 */
	public void setIdcard(String idcard) {
		this.idcard = idcard;
	}
	/**
	 * 获取：身份证
	 */
	public String getIdcard() {
		return idcard;
	}
	/**
	 * 设置：省
	 */
	public void setProvince(Integer province) {
		this.province = province;
	}
	/**
	 * 获取：省
	 */
	public Integer getProvince() {
		return province;
	}
	/**
	 * 设置：市
	 */
	public void setCity(Integer city) {
		this.city = city;
	}
	/**
	 * 获取：市
	 */
	public Integer getCity() {
		return city;
	}
	
	public String getCityName() {
		return cityName;
	}
	public void setCityName(String cityName) {
		this.cityName = cityName;
	}
	/**
	 * 设置：区
	 */
	public void setTown(Integer town) {
		this.town = town;
	}
	/**
	 * 获取：区
	 */
	public Integer getTown() {
		return town;
	}
	/**
	 * 设置：出生日期
	 */
	public void setBirthday(Date birthday) {
		this.birthday = birthday;
	}
	/**
	 * 获取：出生日期
	 */
	public Date getBirthday() {
		return birthday;
	}
	/**
	 * 设置：工作单位
	 */
	public void setWorkUnit(String workUnit) {
		this.workUnit = workUnit;
	}
	/**
	 * 获取：工作单位
	 */
	public String getWorkUnit() {
		return workUnit;
	}
	/**
	 * 设置：月收入
	 */
	public void setMonthlyIncome(BigDecimal monthlyIncome) {
		this.monthlyIncome = monthlyIncome;
	}
	/**
	 * 获取：月收入
	 */
	public BigDecimal getMonthlyIncome() {
		return monthlyIncome;
	}
	public Integer getMaritalStatus() {
		return maritalStatus;
	}
	public void setMaritalStatus(Integer maritalStatus) {
		this.maritalStatus = maritalStatus;
	}
	public String getFamilyStructure() {
		return familyStructure;
	}
	public void setFamilyStructure(String familyStructure) {
		this.familyStructure = familyStructure;
	}
	public String getRelation() {
		return relation;
	}
	public void setRelation(String relation) {
		this.relation = relation;
	}
	public BigDecimal getWorkunitOrIncome() {
		return workunitOrIncome;
	}
	public void setWorkunitOrIncome(BigDecimal bigDecimal) {
		this.workunitOrIncome = bigDecimal;
	}
	public Integer getCoBorrowerTypeId() {
		return coBorrowerTypeId;
	}
	public void setCoBorrowerTypeId(Integer coBorrowerTypeId) {
		this.coBorrowerTypeId = coBorrowerTypeId;
	}
	public String getAreaName() {
		return areaName;
	}
	public void setAreaName(String areaName) {
		this.areaName = areaName;
	}
	public String getEmpInquirer() {
		return empInquirer;
	}
	public void setEmpInquirer(String empInquirer) {
		this.empInquirer = empInquirer;
	}
	public String getMaritalStatusName() {
		return maritalStatusName;
	}
	public void setMaritalStatusName(String maritalStatusName) {
		this.maritalStatusName = maritalStatusName;
	}
	
}
