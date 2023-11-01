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

import com.yjcaifu.modules.generator.entity.RdAccountCashReasonReportEntity;
import com.yjcaifu.modules.generator.service.RdAccountCashReasonReportService;
import com.yjcaifu.common.utils.PageUtils;
import com.yjcaifu.common.utils.R;
import com.yjcaifu.datasources.DataSourceNames;
import com.yjcaifu.datasources.annotation.DataSource;



/**
 * 
 *
 * @author chenshun
 * @email sunlightcs@gmail.com
 * @date 2018-06-15 16:31:15
 */
@RestController
@RequestMapping("generator/rdaccountcashreasonreport")
public class RdAccountCashReasonReportController {
    @Autowired
    private RdAccountCashReasonReportService rdAccountCashReasonReportService;

    /**
     * 列表
     */
    @RequestMapping("/list")
    @RequiresPermissions("generator:rdaccountcashreasonreport:list")
    public R list(@RequestParam Map<String, Object> params){
        PageUtils page = rdAccountCashReasonReportService.queryPage(params);

        return R.ok().put("page", page);
    }


    /**
     * 信息
     */
    @RequestMapping("/info/{id}")
    @RequiresPermissions("generator:rdaccountcashreasonreport:info")
    public R info(@PathVariable("id") Integer id){
			RdAccountCashReasonReportEntity rdAccountCashReasonReport = rdAccountCashReasonReportService.selectById(id);

        return R.ok().put("rdAccountCashReasonReport", rdAccountCashReasonReport);
    }

    /**
     * 保存
     */
    @RequestMapping("/save")
    @DataSource(name = DataSourceNames.THIRD)
    public R save(@RequestBody RdAccountCashReasonReportEntity rdAccountCashReasonReport){
    	if(rdAccountCashReasonReport.getId()!=null){
    		rdAccountCashReasonReportService.updateById(rdAccountCashReasonReport);
    	}else{
			rdAccountCashReasonReportService.insert(rdAccountCashReasonReport);
    	}
        return R.ok();
    }

    /**
     * 修改
     */
    @RequestMapping("/update")
    @RequiresPermissions("generator:rdaccountcashreasonreport:update")
    public R update(@RequestBody RdAccountCashReasonReportEntity rdAccountCashReasonReport){
			rdAccountCashReasonReportService.updateById(rdAccountCashReasonReport);

        return R.ok();
    }

    /**
     * 删除
     */
    @RequestMapping("/delete")
    @RequiresPermissions("generator:rdaccountcashreasonreport:delete")
    public R delete(@RequestBody Integer[] ids){
			rdAccountCashReasonReportService.deleteBatchIds(Arrays.asList(ids));

        return R.ok();
    }

}
