package com.yjcaifu.modules.generator.entity;

import com.baomidou.mybatisplus.annotations.TableField;
import com.baomidou.mybatisplus.annotations.TableId;
import com.baomidou.mybatisplus.annotations.TableName;
import com.fasterxml.jackson.annotation.JsonFormat;

import java.io.Serializable;
import java.math.BigDecimal;
import java.util.Date;

/**
 * 
 * 
 * @author htshen
 * @email htshen@tom.com
 * @date 2018-05-14 09:47:26
 */
public class aaaEntity implements Serializable {
	private static final long serialVersionUID = 1L;
	private String a;
	private BigDecimal a1;
	private BigDecimal a2;
	private BigDecimal a3;
	private BigDecimal a4;
	private BigDecimal a5;
	private BigDecimal a6;
	public String getA() {
		return a;
	}
	public void setA(String string) {
		this.a = string;
	}
	public BigDecimal getA1() {
		return a1;
	}
	public void setA1(BigDecimal a1) {
		this.a1 = a1;
	}
	public BigDecimal getA2() {
		return a2;
	}
	public void setA2(BigDecimal a2) {
		this.a2 = a2;
	}
	public BigDecimal getA3() {
		return a3;
	}
	public void setA3(BigDecimal a3) {
		this.a3 = a3;
	}
	public BigDecimal getA4() {
		return a4;
	}
	public void setA4(BigDecimal a4) {
		this.a4 = a4;
	}
	public BigDecimal getA5() {
		return a5;
	}
	public void setA5(BigDecimal a5) {
		this.a5 = a5;
	}
	public BigDecimal getA6() {
		return a6;
	}
	public void setA6(BigDecimal a6) {
		this.a6 = a6;
	}
	
}
