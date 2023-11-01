package com.yjcaifu.modules.generator.entity;

import com.baomidou.mybatisplus.annotations.TableField;
import com.baomidou.mybatisplus.annotations.TableId;
import com.baomidou.mybatisplus.annotations.TableName;

import java.io.Serializable;
import java.util.Date;

/**
 * 
 * 
 * @author htshen
 * @email htshen@tom.com
 * @date 2018-05-04 17:10:45
 */
@TableName("cus_register_info")
public class RegisterInfoEntity implements Serializable {
	private static final long serialVersionUID = 1L;

	/**
	 * ID
	 */
	@TableId
	private Integer id;
	/**
	 * 账户
	 */
	private String userName;
	/**
	 * 密码
	 */
	private String password;
	/**
	 * 手机
	 */
	private String mobile;
	/**
	 * 邮件
	 */
	private String email;
	/**
	 * 注册时间
	 */
	private Date regTime;
	/**
	 * 员工编号
	 */
	private Integer empId;
	/**
	 * 员工姓名
	 */
	@TableField(exist=false)
	private String empName;

	public String getEmpName() {
		return empName;
	}
	public void setEmpName(String empName) {
		this.empName = empName;
	}
	/**
	 * 设置：ID
	 */
	public void setId(Integer id) {
		this.id = id;
	}
	/**
	 * 获取：ID
	 */
	public Integer getId() {
		return id;
	}
	/**
	 * 设置：账户
	 */
	public void setUserName(String userName) {
		this.userName = userName;
	}
	/**
	 * 获取：账户
	 */
	public String getUserName() {
		return userName;
	}
	/**
	 * 设置：密码
	 */
	public void setPassword(String password) {
		this.password = password;
	}
	/**
	 * 获取：密码
	 */
	public String getPassword() {
		return password;
	}
	/**
	 * 设置：手机
	 */
	public void setMobile(String mobile) {
		this.mobile = mobile;
	}
	/**
	 * 获取：手机
	 */
	public String getMobile() {
		return mobile;
	}
	/**
	 * 设置：邮件
	 */
	public void setEmail(String email) {
		this.email = email;
	}
	/**
	 * 获取：邮件
	 */
	public String getEmail() {
		return email;
	}
	/**
	 * 设置：注册时间
	 */
	public void setRegTime(Date regTime) {
		this.regTime = regTime;
	}
	/**
	 * 获取：注册时间
	 */
	public Date getRegTime() {
		return regTime;
	}
	/**
	 * 设置：员工编号
	 */
	public void setEmpId(Integer empId) {
		this.empId = empId;
	}
	/**
	 * 获取：员工编号
	 */
	public Integer getEmpId() {
		return empId;
	}
}
