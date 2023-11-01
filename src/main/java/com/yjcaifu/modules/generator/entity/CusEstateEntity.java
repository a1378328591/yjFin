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
 * @date 2018-05-09 17:47:13
 */
@TableName("cus_estate")
public class CusEstateEntity implements Serializable {
	private static final long serialVersionUID = 1L;

	/**
	 * 
	 */
	@TableId
	private Integer id;
	/**
	 * 
	 */
	@TableField(exist=false)
	private Integer refId;
	/**
	 * 所有权人
	 */
	private Integer ownership;
	/**
	 * 所有权人name
	 */
	@TableField(exist=false)
	private String ownershipname;
	/**
	 * 地址
	 */
	private String address;
	/**
	 * 面积
	 */
	private String area;
	/**
	 * 评估价值
	 */
	@TableField(exist=false)
	private BigDecimal price;
	/**
	 * 土地性质
	 */
	private Integer nature;
	/**
	 * 土地性质Name
	 */
	@TableField(exist=false)
	private String natureName;
	/**
	 * 建筑时间
	 */
	private Date constructionTime;
	/**
	 * 贷款余额
	 */
	@TableField(exist=false)
	private BigDecimal loanBalance;
	/**
	 * 抵押余额
	 */
	@TableField(exist=false)
	private BigDecimal mortgageBalance;
	/**
	 * 抵押方式
	 */
	@TableField(exist=false)
	private String mortgageWay;
	/**
	 * 贷款性质
	 */
	@TableField(exist=false)
	private Integer loanProperty;
	/**
	 * 贷款性质name
	 */
	@TableField(exist=false)
	private String loanPropertyName;
	/**
	 * 房屋类型
	 */
	private Integer roomType;
	/**
	 * 房屋类型Name
	 */
	@TableField(exist=false)
	private String roomTypeName;
	/**
	 * 所属权人（0：个人，1:企业）
	 */
	private Integer ownerType;
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
	 * 设置：所有权人
	 */
	public void setOwnership(Integer ownership) {
		this.ownership = ownership;
	}
	/**
	 * 获取：所有权人
	 */
	public Integer getOwnership() {
		return ownership;
	}
	/**
	 * 设置：地址
	 */
	public void setAddress(String address) {
		this.address = address;
	}
	/**
	 * 获取：地址
	 */
	public String getAddress() {
		return address;
	}
	/**
	 * 设置：面积
	 */
	public void setArea(String area) {
		this.area = area;
	}
	/**
	 * 获取：面积
	 */
	public String getArea() {
		return area;
	}
	/**
	 * 设置：价格
	 */
	public void setPrice(BigDecimal price) {
		this.price = price;
	}
	/**
	 * 获取：价格
	 */
	public BigDecimal getPrice() {
		return price;
	}
	/**
	 * 设置：土地性质
	 */
	public void setNature(Integer nature) {
		this.nature = nature;
	}
	/**
	 * 获取：土地性质
	 */
	public Integer getNature() {
		return nature;
	}
	/**
	 * 设置：建筑时间
	 */
	public void setConstructionTime(Date constructionTime) {
		this.constructionTime = constructionTime;
	}
	/**
	 * 获取：建筑时间
	 */
	@JsonFormat(pattern = "yyyy-MM-dd",timezone="GMT+8")
	public Date getConstructionTime() {
		return constructionTime;
	}
	/**
	 * 设置：贷款余额
	 */
	public void setLoanBalance(BigDecimal loanBalance) {
		this.loanBalance = loanBalance;
	}
	/**
	 * 获取：贷款余额
	 */
	public BigDecimal getLoanBalance() {
		return loanBalance;
	}
	/**
	 * 设置：抵押余额
	 */
	public void setMortgageBalance(BigDecimal mortgageBalance) {
		this.mortgageBalance = mortgageBalance;
	}
	/**
	 * 获取：抵押余额
	 */
	public BigDecimal getMortgageBalance() {
		return mortgageBalance;
	}
	/**
	 * 设置：抵押方式
	 */
	public void setMortgageWay(String mortgageWay) {
		this.mortgageWay = mortgageWay;
	}
	/**
	 * 获取：抵押方式
	 */
	public String getMortgageWay() {
		return mortgageWay;
	}
	public String getOwnershipname() {
		return ownershipname;
	}
	public void setOwnershipname(String ownershipname) {
		this.ownershipname = ownershipname;
	}
	public Integer getRoomType() {
		return roomType;
	}
	public void setRoomType(Integer roomType) {
		this.roomType = roomType;
	}
	public Integer getLoanProperty() {
		return loanProperty;
	}
	public void setLoanProperty(Integer loanProperty) {
		this.loanProperty = loanProperty;
	}
	public Integer getOwnerType() {
		return ownerType;
	}
	public void setOwnerType(Integer ownerType) {
		this.ownerType = ownerType;
	}
	public String getNatureName() {
		return natureName;
	}
	public void setNatureName(String natureName) {
		this.natureName = natureName;
	}
	public String getRoomTypeName() {
		return roomTypeName;
	}
	public void setRoomTypeName(String roomTypeName) {
		this.roomTypeName = roomTypeName;
	}
	public String getLoanPropertyName() {
		return loanPropertyName;
	}
	public void setLoanPropertyName(String loanPropertyName) {
		this.loanPropertyName = loanPropertyName;
	}
	
}
