package com.yjcaifu.modules.generator.entity;

import com.baomidou.mybatisplus.annotations.TableField;
import com.baomidou.mybatisplus.annotations.TableId;
import com.baomidou.mybatisplus.annotations.TableName;
import com.fasterxml.jackson.annotation.JsonFormat;

import java.io.Serializable;
import java.util.Date;
import java.util.List;

import org.apache.commons.io.filefilter.FalseFileFilter;

/**
 * InnoDB free: 9216 kB
 * 
 * @author chenshun
 * @email sunlightcs@gmail.com
 * @date 2018-05-29 14:38:59
 */
@TableName("application_requirements")
public class ApplicationRequirementsEntity implements Serializable {
	private static final long serialVersionUID = 1L;

	/**
	 * 
	 */
	@TableId
	private Integer id;
	/**
	 * username申请人
	 */
	@TableField(exist=false)
	private String username;
	/**
	 * 需求描述
	 */
	private String demand;
	/**
	 * 申请时间
	 */
	@JsonFormat(pattern = "yyyy-MM-dd", timezone = "GMT+8")
	private Date applyTime;
	/**
	 * 申请部门ID
	 */
	private Long deptApply;
	/**
	 * 申请部门name
	 */
	@TableField(exist=false)
	private String deptApplyName;
	/**
	 * 申请人
	 */
	private Long applicant;
	/**
	 * 技术部确认人id
	 */
	private Long confirmPersonnel;
	/**
	 * 技术部确认人
	 */
	@TableField(exist=false)
	private String confirmPersonnelName;
	/**
	 * 执行人ID
	 */
	private Long executor;
	/**
	 * 执行人name
	 */
	@TableField(exist=false)
	private String executorName;
	/**
	 * 预计开发周期
	 */
	private String expectedCycle;
	/**
	 * 完成时间
	 */
	@JsonFormat(pattern = "yyyy-MM-dd", timezone = "GMT+8")
	private Date completionTime;
	/**
	 * 状态码
	 */
	private Integer stateCode;
	/**
	 * 日志，回显，绑定在这个实体类
	 */
	@TableField(exist=false)
	private List<ApplicationRequirementsLogEntity> logs;
	
	
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
	 * 设置：需求描述
	 */
	public void setDemand(String demand) {
		this.demand = demand;
	}
	/**
	 * 获取：需求描述
	 */
	public String getDemand() {
		return demand;
	}
	/**
	 * 设置：申请时间
	 */
	public void setApplyTime(Date applyTime) {
		this.applyTime = applyTime;
	}
	/**
	 * 获取：申请时间
	 */
	public Date getApplyTime() {
		return applyTime;
	}
	/**
	 * 设置：申请部门
	 */
	public void setDeptApply(Long deptApply) {
		this.deptApply = deptApply;
	}
	/**
	 * 获取：申请部门
	 */
	public Long getDeptApply() {
		return deptApply;
	}
	/**
	 * 设置：申请人
	 */
	public void setApplicant(Long applicant) {
		this.applicant = applicant;
	}
	/**
	 * 获取：申请人
	 */
	public Long getApplicant() {
		return applicant;
	}
	/**
	 * 设置：技术部确认人
	 */
	public Long getConfirmPersonnel() {
		return confirmPersonnel;
	}
	public void setConfirmPersonnel(Long confirmPersonnel) {
		this.confirmPersonnel = confirmPersonnel;
	}
	
	/**
	 * 设置：预计开发周期
	 */
	public void setExpectedCycle(String expectedCycle) {
		this.expectedCycle = expectedCycle;
	}
	/**
	 * 获取：预计开发周期
	 */
	public String getExpectedCycle() {
		return expectedCycle;
	}
	/**
	 * 设置：完成时间
	 */
	public void setCompletionTime(Date completionTime) {
		this.completionTime = completionTime;
	}
	/**
	 * 获取：完成时间
	 */
	public Date getCompletionTime() {
		return completionTime;
	}
	public Integer getStateCode() {
		return stateCode;
	}
	public void setStateCode(Integer stateCode) {
		this.stateCode = stateCode;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getConfirmPersonnelName() {
		return confirmPersonnelName;
	}
	public void setConfirmPersonnelName(String confirmPersonnelName) {
		this.confirmPersonnelName = confirmPersonnelName;
	}
	public String getDeptApplyName() {
		return deptApplyName;
	}
	public void setDeptApplyName(String deptApplyName) {
		this.deptApplyName = deptApplyName;
	}
	public Long getExecutor() {
		return executor;
	}
	public void setExecutor(Long executor) {
		this.executor = executor;
	}
	public String getExecutorName() {
		return executorName;
	}
	public void setExecutorName(String executorName) {
		this.executorName = executorName;
	}
	public List<ApplicationRequirementsLogEntity> getLogs() {
		return logs;
	}
	public void setLogs(List<ApplicationRequirementsLogEntity> logs) {
		this.logs = logs;
	}
	
	
}
