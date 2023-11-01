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

import com.yjcaifu.modules.generator.entity.LoanMiddleEntity;
import com.yjcaifu.modules.generator.service.LoanMiddleService;
import com.yjcaifu.common.utils.PageUtils;
import com.yjcaifu.common.utils.R;



/**
 * InnoDB free: 9216 kB
 *
 * @author chenshun
 * @email sunlightcs@gmail.com
 * @date 2018-05-25 14:39:19
 */
@RestController
@RequestMapping("generator/loanmiddle")
public class LoanMiddleController {
    @Autowired
    private LoanMiddleService loanMiddleService;

    /**
     * 列表
     */
    @RequestMapping("/list")
    @RequiresPermissions("generator:loanmiddle:list")
    public R list(@RequestParam Map<String, Object> params){
        PageUtils page = loanMiddleService.queryPage(params);

        return R.ok().put("page", page);
    }


    /**
     * 信息
     */
    @RequestMapping("/info/{id}")
    @RequiresPermissions("generator:loanmiddle:info")
    public R info(@PathVariable("id") Integer id){
			LoanMiddleEntity loanMiddle = loanMiddleService.selectById(id);

        return R.ok().put("loanMiddle", loanMiddle);
    }

    /**
     * 保存
     */
    @RequestMapping("/save")
    @RequiresPermissions("generator:loanmiddle:save")
    public R save(@RequestBody LoanMiddleEntity loanMiddle){
			loanMiddleService.insert(loanMiddle);

        return R.ok();
    }

    /**
     * 修改
     */
    @RequestMapping("/update")
    @RequiresPermissions("generator:loanmiddle:update")
    public R update(@RequestBody LoanMiddleEntity loanMiddle){
			loanMiddleService.updateById(loanMiddle);

        return R.ok();
    }

    /**
     * 删除
     */
    @RequestMapping("/delete")
    @RequiresPermissions("generator:loanmiddle:delete")
    public R delete(@RequestBody Integer[] ids){
			loanMiddleService.deleteBatchIds(Arrays.asList(ids));

        return R.ok();
    }

}
