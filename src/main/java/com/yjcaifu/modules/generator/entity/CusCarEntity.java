package com.yjcaifu.modules.generator.entity;

import com.baomidou.mybatisplus.annotations.TableField;
import com.baomidou.mybatisplus.annotations.TableId;
import com.baomidou.mybatisplus.annotations.TableName;
import com.fasterxml.jackson.annotation.JsonFormat;

import java.io.Serializable;
import java.math.BigDecimal;
import java.util.Date;

/**
 * InnoDB free: 9216 kB
 * 
 * @author chenshun
 * @email sunlightcs@gmail.com
 * @date 2018-05-09 10:51:08
 */
@TableName("cus_car")
public class CusCarEntity implements Serializable {
	private static final long serialVersionUID = 1L;

	/**
	 * 
	 */
	@TableId
	private Integer id;
	
	@TableField(exist=false)
	private String realname;
	
	/**
	 * 车牌号
	 */
	private String plateNo;
	/**
	 * 车辆类型
	 */
	private Integer vechicleType;
	/**
	 * 车辆类型name
	 */
	@TableField(exist=false)
	private String vechicleTypeName;
	/**
	 * 所有权人
	 */
	private Integer owner;
	/**
	 * 所有权人name
	 */
	@TableField(exist=false)
	private String ownershipname;
	/**
	 * 住址
	 */
	private String address;
	/**
	 * 使用性质
	 */
	private Integer useCharacter;
	/**
	 * 使用性质name
	 */
	@TableField(exist=false)
	private String useCharacterName;
	/**
	 * 品牌型号
	 */
	private String model;
	/**
	 * 车辆识别代号
	 */
	private String vin;
	/**
	 * 发动机号
	 */
	private String engineNo;
	/**
	 * 注册日期
	 */
	@JsonFormat(pattern = "yyyy-MM-dd", timezone = "GMT+8")
	private Date registerDate;
	/**
	 * 发证日期（购置时间）
	 */
	@JsonFormat(pattern = "yyyy-MM-dd", timezone = "GMT+8")
	private Date issueDate;
	/**
	 * 发证日期（购置时间）Str
	 */
	@TableField(exist=false)
	private String issueDateStr;
	/**
	 * 个人/企业
	 */
	private Integer ownerType;
	/**
	 * 评估价值
	 */
	@TableField(exist=false)
	private BigDecimal assessedValue;
	/**
	 * 贷款情况
	 */
	@TableField(exist=false)
	private Integer loans;
	/**
	 * 抵押方式
	 */
	@TableField(exist=false)
	private Integer mortgageWay;
	/**
	 * 按揭余额
	 */
	@TableField(exist=false)
	private BigDecimal mortgageBalance;
	/**
	 * 已抵押-贷款余额
	 */
	@TableField(exist=false)
	private BigDecimal mortgagedLoansBalance;

	
	public String getRealname() {
		return realname;
	}
	public void setRealname(String realname) {
		this.realname = realname;
	}
	/**
	 * 设置：车牌号
	 */
	public void setPlateNo(String plateNo) {
		this.plateNo = plateNo;
	}
	/**
	 * 获取：车牌号
	 */
	public String getPlateNo() {
		return plateNo;
	}
	/**
	 * 设置：车辆类型
	 */
	public void setVechicleType(Integer vechicleType) {
		this.vechicleType = vechicleType;
	}
	/**
	 * 获取：车辆类型
	 */
	public Integer getVechicleType() {
		return vechicleType;
	}
	/**
	 * 设置：所有人
	 */
	public void setOwner(Integer owner) {
		this.owner = owner;
	}
	/**
	 * 获取：所有人
	 */
	public Integer getOwner() {
		return owner;
	}
	/**
	 * 设置：住址
	 */
	public void setAddress(String address) {
		this.address = address;
	}
	/**
	 * 获取：住址
	 */
	public String getAddress() {
		return address;
	}
	/**
	 * 设置：使用性质
	 */
	public void setUseCharacter(Integer useCharacter) {
		this.useCharacter = useCharacter;
	}
	/**
	 * 获取：使用性质
	 */
	public Integer getUseCharacter() {
		return useCharacter;
	}
	/**
	 * 设置：品牌型号
	 */
	public void setModel(String model) {
		this.model = model;
	}
	/**
	 * 获取：品牌型号
	 */
	public String getModel() {
		return model;
	}
	/**
	 * 设置：车辆识别代号
	 */
	public void setVin(String vin) {
		this.vin = vin;
	}
	/**
	 * 获取：车辆识别代号
	 */
	public String getVin() {
		return vin;
	}
	/**
	 * 设置：发动机号
	 */
	public void setEngineNo(String engineNo) {
		this.engineNo = engineNo;
	}
	/**
	 * 获取：发动机号
	 */
	public String getEngineNo() {
		return engineNo;
	}
	/**
	 * 设置：注册日期
	 */
	public void setRegisterDate(Date registerDate) {
		this.registerDate = registerDate;
	}
	/**
	 * 获取：注册日期
	 */
	public Date getRegisterDate() {
		return registerDate;
	}
	/**
	 * 设置：发证日期
	 */
	public void setIssueDate(Date issueDate) {
		this.issueDate = issueDate;
	}
	/**
	 * 获取：发证日期
	 */
	public Date getIssueDate() {
		return issueDate;
	}
	/**
	 * 设置：评估价值
	 */
	public void setAssessedValue(BigDecimal assessedValue) {
		this.assessedValue = assessedValue;
	}
	/**
	 * 获取：评估价值
	 */
	public BigDecimal getAssessedValue() {
		return assessedValue;
	}
	/**
	 * 设置：贷款情况
	 */
	public void setLoans(Integer loans) {
		this.loans = loans;
	}
	/**
	 * 获取：贷款情况
	 */
	public Integer getLoans() {
		return loans;
	}
	/**
	 * 设置：抵押方式
	 */
	public void setMortgageWay(Integer mortgageWay) {
		this.mortgageWay = mortgageWay;
	}
	/**
	 * 获取：抵押方式
	 */
	public Integer getMortgageWay() {
		return mortgageWay;
	}
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
	public BigDecimal getMortgageBalance() {
		return mortgageBalance;
	}
	public void setMortgageBalance(BigDecimal mortgageBalance) {
		this.mortgageBalance = mortgageBalance;
	}
	public BigDecimal getMortgagedLoansBalance() {
		return mortgagedLoansBalance;
	}
	public void setMortgagedLoansBalance(BigDecimal mortgagedLoansBalance) {
		this.mortgagedLoansBalance = mortgagedLoansBalance;
	}
	public String getOwnershipname() {
		return ownershipname;
	}
	public void setOwnershipname(String ownershipname) {
		this.ownershipname = ownershipname;
	}
	public Integer getOwnerType() {
		return ownerType;
	}
	public void setOwnerType(Integer ownerType) {
		this.ownerType = ownerType;
	}
	public String getVechicleTypeName() {
		return vechicleTypeName;
	}
	public void setVechicleTypeName(String vechicleTypeName) {
		this.vechicleTypeName = vechicleTypeName;
	}
	public String getUseCharacterName() {
		return useCharacterName;
	}
	public void setUseCharacterName(String useCharacterName) {
		this.useCharacterName = useCharacterName;
	}
	public String getIssueDateStr() {
		return issueDateStr;
	}
	public void setIssueDateStr(String issueDateStr) {
		this.issueDateStr = issueDateStr;
	}
	
}
