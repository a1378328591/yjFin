package com.yjcaifu.common.entity;

import com.baomidou.mybatisplus.annotations.TableId;
import com.baomidou.mybatisplus.annotations.TableName;

import java.io.Serializable;
import java.util.Date;

/**
 * 车辆类型
 * 
 * @author htshen
 * @email htshen@tom.com
 * @date 2018-06-12 14:29:44
 */
@TableName("sys_vehicle_types")
public class SysVehicleTypesEntity implements Serializable {
	private static final long serialVersionUID = 1L;

	/**
	 * 车辆类型code
	 */
	@TableId
	private Integer id;
	/**
	 * 车辆类型name
	 */
	private String name;

	/**
	 * 设置：车辆类型code
	 */
	public void setId(Integer id) {
		this.id = id;
	}
	/**
	 * 获取：车辆类型code
	 */
	public Integer getId() {
		return id;
	}
	/**
	 * 设置：车辆类型name
	 */
	public void setName(String name) {
		this.name = name;
	}
	/**
	 * 获取：车辆类型name
	 */
	public String getName() {
		return name;
	}
}
