package com.yjcaifu.modules.generator.entity;

import com.baomidou.mybatisplus.annotations.TableField;
import com.baomidou.mybatisplus.annotations.TableId;
import com.baomidou.mybatisplus.annotations.TableName;

import java.io.Serializable;
import java.net.URL;
import java.util.Date;

/**
 * InnoDB free: 9216 kB
 * 
 * @author chenshun
 * @email sunlightcs@gmail.com
 * @date 2018-06-12 16:41:19
 */
@TableName("sys_contract")
public class SysContractEntity implements Serializable {
	private static final long serialVersionUID = 1L;

	/**
	 * 
	 */
	@TableId
	private Integer id;
	/**
	 * refid
	 */
	private Integer refId;
	
	/**
	 * 文件名
	 */
	private String fileName;
	/**
	 * 
	 */
	private String fileType;
	/**
	 * 文件后缀
	 */
	private String filePostfix;
	/**
	 * url
	 */
	private String url;
	/**
	 * certificateType
	 */
	private Integer certificateType;
	/**
	 * 
	 */
	@TableField(exist=false)
	private URL downloadUrl;
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
	 * 设置：文件名
	 */
	public void setFileName(String fileName) {
		this.fileName = fileName;
	}
	/**
	 * 获取：文件名
	 */
	public String getFileName() {
		return fileName;
	}
	/**
	 * 设置：
	 */
	public void setFileType(String fileType) {
		this.fileType = fileType;
	}
	/**
	 * 获取：
	 */
	public String getFileType() {
		return fileType;
	}
	public String getFilePostfix() {
		return filePostfix;
	}
	public void setFilePostfix(String filePostfix) {
		this.filePostfix = filePostfix;
	}
	public String getUrl() {
		return url;
	}
	public void setUrl(String url) {
		this.url = url;
	}
	public Integer getCertificateType() {
		return certificateType;
	}
	public void setCertificateType(Integer certificateType) {
		this.certificateType = certificateType;
	}
	public Integer getRefId() {
		return refId;
	}
	public void setRefId(Integer refId) {
		this.refId = refId;
	}
	public URL getDownloadUrl() {
		return downloadUrl;
	}
	public void setDownloadUrl(URL downloadUrl) {
		this.downloadUrl = downloadUrl;
	}
}
