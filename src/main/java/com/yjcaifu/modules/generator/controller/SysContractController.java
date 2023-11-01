package com.yjcaifu.modules.generator.controller;

import java.net.URL;
import java.util.Arrays;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;

import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.yjcaifu.modules.generator.entity.BorOssEntity;
import com.yjcaifu.modules.generator.entity.SysContractEntity;
import com.yjcaifu.modules.generator.service.SysContractService;
import com.yjcaifu.modules.oss.cloud.OSSFactory;
import com.yjcaifu.common.annotation.SysLog;
import com.yjcaifu.common.utils.PageUtils;
import com.yjcaifu.common.utils.R;



/**
 * InnoDB free: 9216 kB
 *
 * @author chenshun
 * @email sunlightcs@gmail.com
 * @date 2018-06-12 16:41:19
 */
@RestController
@RequestMapping("generator/syscontract")
public class SysContractController {
    @Autowired
    private SysContractService sysContractService;

    /**
     * 列表
     */
    @RequestMapping("/list")
    @RequiresPermissions("generator:syscontract:list")
    public R list(@RequestParam Map<String, Object> params){
        PageUtils page = sysContractService.queryPage(params);
        return R.ok().put("page", page);
    }


    /**
     * 信息
     */
    @RequestMapping("/info/{id}")
    @RequiresPermissions("generator:syscontract:info")
    public R info(@PathVariable("id") Integer id){
			SysContractEntity sysContract = sysContractService.selectById(id);

        return R.ok().put("sysContract", sysContract);
    }

    /**
     * 保存
     */
    @SysLog("保存合同模板")
    @RequestMapping("/save")
    @RequiresPermissions("generator:syscontract:save")
    public R save(@RequestBody SysContractEntity sysContract){
			sysContractService.insert(sysContract);

        return R.ok();
    }

    /**
     * 修改
     */
    @SysLog("修改合同模板")
    @RequestMapping("/update")
    @RequiresPermissions("generator:syscontract:update")
    public R update(@RequestBody SysContractEntity sysContract){
			sysContractService.updateById(sysContract);

        return R.ok();
    }

    /**
     * 删除
     */
//    @RequestMapping("/delete")
//    @RequiresPermissions("generator:syscontract:delete")
//    public R delete(@RequestBody Integer[] ids){
//			sysContractService.deleteBatchIds(Arrays.asList(ids));
//
//        return R.ok();
//    }
    /**
     * 删除
     */
    @SysLog("删除合同模板")
    @RequestMapping("/delete")
    public R delete(@RequestBody Map<String, Object> params){
    	Integer id = (Integer) params.get("id");
    	sysContractService.deleteByConId(id);

        return R.ok();
    }
    
    /**
     * 列表params:refId
     */
//    @RequestMapping("/listByRefId")
//    public R listByRefId(@RequestParam Map<String, Object> params){
//        List<SysContractEntity> list = sysContractService.listById(params);
//        for(SysContractEntity oss:list){
//        	String url=oss.getUrl();
//    		String suffix = url.substring((url.lastIndexOf("test")));
//        	// 设置URL过期时间为1min
//    		Date expiration = new Date(new Date().getTime() + 60 * 1000);
//    		//返回带签名的url
//    		URL retUrl = OSSFactory.build().download(suffix,expiration);
//    		oss.setDownloadUrl(retUrl);
//        }
//
//        return R.ok().put("list", list);
//    }

}
