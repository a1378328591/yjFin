package com.yjcaifu.modules.generator.controller;

import java.io.File;
import java.net.URL;
import java.util.Arrays;
import java.util.Date;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletResponse;

import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;

import com.aliyun.oss.model.GetObjectRequest;
import com.aliyun.oss.model.OSSObject;
import com.yjcaifu.modules.generator.entity.BorOssEntity;
import com.yjcaifu.modules.generator.service.BorOssService;
import com.yjcaifu.modules.oss.cloud.OSSFactory;
import com.yjcaifu.common.exception.RRException;
import com.yjcaifu.common.utils.PageUtils;
import com.yjcaifu.common.utils.R;



/**
 * 
 *
 * @author htshen
 * @email htshen@tom.com
 * @date 2018-05-30 09:19:43
 */
@RestController
@RequestMapping("generator/boross")
public class BorOssController {
    @Autowired
    private BorOssService borOssService;

    /**
     * 列表
     */
    @RequestMapping("/list")
    @RequiresPermissions("generator:boross:list")
    public R list(@RequestParam Map<String, Object> params){
        PageUtils page = borOssService.queryPage(params);

        return R.ok().put("page", page);
    }
    /**
     * 列表params:refId
     */
    @RequestMapping("/listByRefId")
    public R listByRefId(@RequestParam Map<String, Object> params){
        List<BorOssEntity> list = borOssService.listByRefId(params);
        for(BorOssEntity oss:list){
        	String url=oss.getUrl();
    		String suffix = url.substring((url.lastIndexOf("test")));
        	// 设置URL过期时间为1min
    		Date expiration = new Date(new Date().getTime() + 60 * 1000);
    		//返回带签名的url
    		URL retUrl = OSSFactory.build().download(suffix,expiration);
    		oss.setDownloadUrl(retUrl);
        }

        return R.ok().put("list", list);
    }

    /**
     * 信息
     */
    @RequestMapping("/info/{id}")
    @RequiresPermissions("generator:boross:info")
    public R info(@PathVariable("id") Integer id){
			BorOssEntity borOss = borOssService.selectById(id);

        return R.ok().put("borOss", borOss);
    }

    /**
     * 保存
     */
    @RequestMapping("/save")
    @RequiresPermissions("generator:boross:save")
    public R save(@RequestBody BorOssEntity borOss){
			borOssService.insert(borOss);

        return R.ok();
    }

    /**
     * 修改
     */
    @RequestMapping("/update")
    @RequiresPermissions("generator:boross:update")
    public R update(@RequestBody BorOssEntity borOss){
			borOssService.updateById(borOss);

        return R.ok();
    }

    /**
     * 删除
     */
    @RequestMapping("/delete")
    public R delete(@RequestBody Map<String, Object> params){
    	
			borOssService.deleteByBorOssId(params);

        return R.ok();
    }
    
    /**
	 * 下载文件
	 */
	@PostMapping("/downloadEntBasicsData")
	public R downloadEntBasicsData(@RequestBody Map<String, Object> params,HttpServletResponse response) throws Exception {
		BorOssEntity borOss = borOssService.selectById((Integer)params.get("id"));
		//上传文件
		String url=borOss.getUrl();
		String suffix = url.substring((url.lastIndexOf("test")));
		// 设置URL过期时间为1min
		Date expiration = new Date(new Date().getTime() + 60 * 1000);
		//返回带签名的url
		URL retUrl = OSSFactory.build().download(suffix,expiration);
		return R.ok().put("url", retUrl);
	}

}
