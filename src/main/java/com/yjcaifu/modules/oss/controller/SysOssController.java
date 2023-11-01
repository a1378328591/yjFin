/**
 * Copyright 2018 YJFintech
 * <p>
 * Licensed under the Apache License, Version 2.0 (the "License"); you may not
 * use this file except in compliance with the License. You may obtain a copy of
 * the License at
 * <p>
 * http://www.apache.org/licenses/LICENSE-2.0
 * <p>
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS, WITHOUT
 * WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the
 * License for the specific language governing permissions and limitations under
 * the License.
 */

package com.yjcaifu.modules.oss.controller;

import com.aliyun.oss.model.OSSObject;
import com.google.gson.Gson;
import com.yjcaifu.common.exception.RRException;
import com.yjcaifu.common.utils.ConfigConstant;
import com.yjcaifu.common.utils.Constant;
import com.yjcaifu.common.utils.PageUtils;
import com.yjcaifu.common.utils.R;
import com.yjcaifu.common.validator.ValidatorUtils;
import com.yjcaifu.common.validator.group.AliyunGroup;
import com.yjcaifu.common.validator.group.QcloudGroup;
import com.yjcaifu.common.validator.group.QiniuGroup;
import com.yjcaifu.common.exception.RRException;
import com.yjcaifu.common.utils.ConfigConstant;
import com.yjcaifu.common.utils.Constant;
import com.yjcaifu.common.utils.PageUtils;
import com.yjcaifu.common.utils.R;
import com.yjcaifu.common.validator.ValidatorUtils;
import com.yjcaifu.common.validator.group.AliyunGroup;
import com.yjcaifu.common.validator.group.QcloudGroup;
import com.yjcaifu.common.validator.group.QiniuGroup;
import com.yjcaifu.modules.generator.entity.BorOssEntity;
import com.yjcaifu.modules.generator.entity.SysContractEntity;
import com.yjcaifu.modules.generator.service.BorOssService;
import com.yjcaifu.modules.generator.service.SysContractService;
import com.yjcaifu.modules.oss.cloud.CloudStorageConfig;
import com.yjcaifu.modules.oss.cloud.OSSFactory;
import com.yjcaifu.modules.oss.entity.SysOssEntity;
import com.yjcaifu.modules.oss.service.SysOssService;
import com.yjcaifu.modules.sys.service.SysConfigService;

import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.apache.tomcat.jni.File;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import java.util.Arrays;
import java.util.Date;
import java.util.Map;

/**
 * 文件上传
 * 
 * @author htshen
 * @email htshen@tom.com
 * @date 2017-03-25 12:13:26
 */
@RestController
@RequestMapping("sys/oss")
public class SysOssController {
	@Autowired
	private SysOssService sysOssService;
    @Autowired
    private SysConfigService sysConfigService;
    @Autowired
    private BorOssService borOssService;
    @Autowired
    private SysContractService sysContractService;
    
    private final static String KEY = ConfigConstant.CLOUD_STORAGE_CONFIG_KEY;
	
	/**
	 * 列表
	 */
	@GetMapping("/list")
	@RequiresPermissions("sys:oss:all")
	public R list(@RequestParam Map<String, Object> params){
		PageUtils page = sysOssService.queryPage(params);

		return R.ok().put("page", page);
	}


    /**
     * 云存储配置信息
     */
    @GetMapping("/config")
    @RequiresPermissions("sys:oss:all")
    public R config(){
        CloudStorageConfig config = sysConfigService.getConfigObject(KEY, CloudStorageConfig.class);

        return R.ok().put("config", config);
    }


	/**
	 * 保存云存储配置信息
	 */
	@PostMapping("/saveConfig")
	@RequiresPermissions("sys:oss:all")
	public R saveConfig(@RequestBody CloudStorageConfig config){
		//校验类型
		ValidatorUtils.validateEntity(config);

		if(config.getType() == Constant.CloudService.QINIU.getValue()){
			//校验七牛数据
			ValidatorUtils.validateEntity(config, QiniuGroup.class);
		}else if(config.getType() == Constant.CloudService.ALIYUN.getValue()){
			//校验阿里云数据
			ValidatorUtils.validateEntity(config, AliyunGroup.class);
		}else if(config.getType() == Constant.CloudService.QCLOUD.getValue()){
			//校验腾讯云数据
			ValidatorUtils.validateEntity(config, QcloudGroup.class);
		}

        sysConfigService.updateValueByKey(KEY, new Gson().toJson(config));

		return R.ok();
	}
	

	/**
	 * 上传文件
	 */
	@PostMapping("/upload")
	@RequiresPermissions("sys:oss:all")
	public R upload(@RequestParam("file") MultipartFile file) throws Exception {
		if (file.isEmpty()) {
			throw new RRException("上传文件不能为空");
		}

		//上传文件
		String suffix = file.getOriginalFilename().substring(file.getOriginalFilename().lastIndexOf("."));
		String url = OSSFactory.build().uploadSuffix(file.getBytes(), suffix);

		//保存文件信息
		SysOssEntity ossEntity = new SysOssEntity();
		ossEntity.setUrl(url);
		ossEntity.setCreateDate(new Date());
		sysOssService.insert(ossEntity);

		return R.ok().put("url", url);
	}
	
	/**
	 * 上传文件
	 */
	@PostMapping("/uploadEntBasicsData")
	public R uploadEntBasicsData(@RequestParam("file") MultipartFile file,@RequestParam("certificateType") Integer certificateType,@RequestParam("fileName") String fileName,@RequestParam("refId") Integer refId ) throws Exception {
		if (file.isEmpty()) {
			throw new RRException("上传文件不能为空");
		}

		//上传文件
		String suffix = file.getOriginalFilename().substring(file.getOriginalFilename().lastIndexOf("."));
		String url = OSSFactory.build().uploadSuffix(file.getBytes(), suffix);

		//保存文件信息
		BorOssEntity borOssEntity = new BorOssEntity();
		borOssEntity.setRefId(refId);
		borOssEntity.setCertificateType(certificateType);
		borOssEntity.setFileName(fileName);
		borOssEntity.setUrl(url);
		borOssEntity.setFilePostfix(suffix);
		borOssEntity.setCreateDate(new Date());
		borOssService.insert(borOssEntity);

		return R.ok().put("url", url);
	}
	
	/**
	 * 删除
	 */
	@PostMapping("/delete")
	@RequiresPermissions("sys:oss:all")
	public R delete(@RequestBody Long[] ids){
		sysOssService.deleteBatchIds(Arrays.asList(ids));

		return R.ok();
	}
	
	/**
	 * 上传合同模板
	 */
	@PostMapping("/uploadConData")
	public R uploadConData(@RequestParam("file") MultipartFile file,@RequestParam("certificateType") Integer certificateType,@RequestParam("fileName") String fileName,@RequestParam("refId") Integer refId ) throws Exception {
		if (file.isEmpty()) {
			throw new RRException("上传文件不能为空");
		}

		//上传文件
		String suffix = file.getOriginalFilename().substring(file.getOriginalFilename().lastIndexOf("."));
		String url = OSSFactory.build().uploadSuffix(file.getBytes(), suffix);

		//保存文件信息
		/**
		 *  borOssEntity.setRefId(refId);
		 *	borOssEntity.setCertificateType(certificateType);
		 *	borOssEntity.setFileName(fileName);
			borOssEntity.setUrl(url);
			borOssEntity.setFilePostfix(suffix);
			borOssEntity.setCreateDate(new Date());
			borOssService.insert(borOssEntity);
		 */
		SysContractEntity sysContractEntity = new SysContractEntity();
		sysContractEntity.setRefId(refId);
		sysContractEntity.setCertificateType(certificateType);
		sysContractEntity.setFileName(fileName);
		sysContractEntity.setUrl(url);
		sysContractEntity.setFilePostfix(suffix);
		sysContractService.insert(sysContractEntity);

		return R.ok().put("url", url);
	}

}
