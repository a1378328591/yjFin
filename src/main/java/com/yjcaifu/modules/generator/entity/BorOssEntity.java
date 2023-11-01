package com.yjcaifu.modules.generator.entity;

import com.baomidou.mybatisplus.annotations.TableField;
import com.baomidou.mybatisplus.annotations.TableId;
import com.baomidou.mybatisplus.annotations.TableName;

import java.io.Serializable;
import java.net.URL;
import java.util.Date;

/**
 * 
 * 
 * @author htshen
 * @email htshen@tom.com
 * @date 2018-05-29 14:20:03
 */
@TableName("bor_oss")
public class BorOssEntity implements Serializable {
	private static final long serialVersionUID = 1L;

	/**
	 * 
	 */
	@TableId
	private Integer id;
	/**
	 * 进件id
	 */
	private Integer refId;
	/**
	 * 证件类型
	 */
	private Integer certificateType;
	/**
	 * 证件类型
	 */
	@TableField(exist=false)
	private String certificateName;
	
	/**
	 * 文件名称
	 */
	private String fileName;
	/**
	 * 文件后缀
	 */
	private String filePostfix;
	/**
	 * url
	 */
	private String url;
	/**
	 * 创建时间
	 */
	private Date createDate;
	/**
	 * 签名失效时间
	 */
	private Date expiration;
	/**
	 * 下载链接
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
	 * 设置：进件id
	 */
	public void setRefId(Integer refId) {
		this.refId = refId;
	}
	/**
	 * 获取：进件id
	 */
	public Integer getRefId() {
		return refId;
	}
	/**
	 * 设置：证件类型
	 */
	public void setCertificateType(Integer certificateType) {
		this.certificateType = certificateType;
	}
	/**
	 * 获取：证件类型
	 */
	public Integer getCertificateType() {
		return certificateType;
	}
	/**
	 * 设置：文件名称
	 */
	public void setFileName(String fileName) {
		this.fileName = fileName;
	}
	/**
	 * 获取：文件名称
	 */
	public String getFileName() {
		return fileName;
	}
	/**
	 * 设置：文件后缀
	 */
	public void setFilePostfix(String filePostfix) {
		this.filePostfix = filePostfix;
	}
	/**
	 * 获取：文件后缀
	 */
	public String getFilePostfix() {
		return filePostfix;
	}
	/**
	 * 设置：url
	 */
	public void setUrl(String url) {
		this.url = url;
	}
	/**
	 * 获取：url
	 */
	public String getUrl() {
		return url;
	}
	public Date getCreateDate() {
		return createDate;
	}
	public void setCreateDate(Date createDate) {
		this.createDate = createDate;
	}
	public String getCertificateName() {
		return certificateName;
	}
	public void setCertificateName(String certificateName) {
		this.certificateName = certificateName;
	}
	public Date getExpiration() {
		return expiration;
	}
	public void setExpiration(Date expiration) {
		this.expiration = expiration;
	}
	public URL getDownloadUrl() {
		return downloadUrl;
	}
	public void setDownloadUrl(URL downloadUrl) {
		this.downloadUrl = downloadUrl;
	}
	
}
