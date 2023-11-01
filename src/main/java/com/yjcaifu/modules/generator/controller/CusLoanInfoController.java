package com.yjcaifu.modules.generator.controller;

import java.util.Arrays;
import java.util.Map;

import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.yjcaifu.modules.generator.entity.CusLoanInfoEntity;
import com.yjcaifu.modules.generator.service.CusLoanInfoService;
import com.yjcaifu.common.utils.PageUtils;
import com.yjcaifu.common.utils.R;



/**
 * 
 *
 * @author htshen
 * @email htshen@tom.com
 * @date 2018-05-14 09:47:26
 */
@RestController
@RequestMapping("/generator/cusloaninfo")
public class CusLoanInfoController {
    @Autowired
    private CusLoanInfoService cusLoanInfoService;

    /**
     * 列表
     */
    @RequestMapping("/list")
    @RequiresPermissions("generator:cusloaninfo:list")
    public R list(@RequestParam Map<String, Object> params){
        PageUtils page = cusLoanInfoService.queryPage(params);

        return R.ok().put("page", page);
    }


    /**
     * 信息
     */
    @RequestMapping("/info/{id}")
    @RequiresPermissions("generator:cusloaninfo:info")
    public R info(@PathVariable("id") Integer id){
			CusLoanInfoEntity cusLoanInfo = cusLoanInfoService.selectById(id);

        return R.ok().put("cusLoanInfo", cusLoanInfo);
    }

    /**
     * 保存
     */
    @RequestMapping("/save")
    @RequiresPermissions("generator:cusloaninfo:save")
    public R save(@RequestBody CusLoanInfoEntity cusLoanInfo){
			cusLoanInfoService.insert(cusLoanInfo);

        return R.ok();
    }

    /**
     * 修改
     */
    @RequestMapping("/update")
    @RequiresPermissions("generator:cusloaninfo:update")
    public R update(@RequestBody CusLoanInfoEntity cusLoanInfo){
			cusLoanInfoService.updateById(cusLoanInfo);

        return R.ok();
    }

    /**
     * 删除
     */
    @RequestMapping("/delete")
    @RequiresPermissions("generator:cusloaninfo:delete")
    public R delete(@RequestBody Integer[] ids){
			cusLoanInfoService.deleteBatchIds(Arrays.asList(ids));

        return R.ok();
    }

}
