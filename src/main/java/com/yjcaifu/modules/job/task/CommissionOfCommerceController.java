package com.yjcaifu.modules.job.task;

import java.util.Arrays;
import java.util.Map;

import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.yjcaifu.common.utils.PageUtils;
import com.yjcaifu.common.utils.R;
import com.yjcaifu.modules.job.entity.CommissionOfCommerceEntity;
import com.yjcaifu.modules.job.service.CommissionOfCommerceService;



/**
 * 
 *
 * @author htshen
 * @email htshen@tom.com
 * @date 2018-07-06 10:44:39
 */
@RestController
@RequestMapping("generator/commissionofcommerce")
public class CommissionOfCommerceController {
    @Autowired
    private CommissionOfCommerceService commissionOfCommerceService;

    /**
     * 列表
     */
    @RequestMapping("/list")
    @RequiresPermissions("generator:commissionofcommerce:list")
    public R list(@RequestParam Map<String, Object> params){
        PageUtils page = commissionOfCommerceService.queryPage(params);

        return R.ok().put("page", page);
    }


    /**
     * 信息
     */
    @RequestMapping("/info/{id}")
    @RequiresPermissions("generator:commissionofcommerce:info")
    public R info(@PathVariable("id") Integer id){
			CommissionOfCommerceEntity commissionOfCommerce = commissionOfCommerceService.selectById(id);

        return R.ok().put("commissionOfCommerce", commissionOfCommerce);
    }

    /**
     * 保存
     */
    @RequestMapping("/save")
    @RequiresPermissions("generator:commissionofcommerce:save")
    public R save(@RequestBody CommissionOfCommerceEntity commissionOfCommerce){
			commissionOfCommerceService.insert(commissionOfCommerce);

        return R.ok();
    }

    /**
     * 修改
     */
    @RequestMapping("/update")
    @RequiresPermissions("generator:commissionofcommerce:update")
    public R update(@RequestBody CommissionOfCommerceEntity commissionOfCommerce){
			commissionOfCommerceService.updateById(commissionOfCommerce);

        return R.ok();
    }

    /**
     * 删除
     */
    @RequestMapping("/delete")
    @RequiresPermissions("generator:commissionofcommerce:delete")
    public R delete(@RequestBody Integer[] ids){
			commissionOfCommerceService.deleteBatchIds(Arrays.asList(ids));

        return R.ok();
    }

}
