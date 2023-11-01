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

import com.yjcaifu.modules.generator.entity.LoanReviewOpinionsEntity;
import com.yjcaifu.modules.generator.service.LoanReviewOpinionsService;
import com.yjcaifu.common.utils.PageUtils;
import com.yjcaifu.common.utils.R;



/**
 * InnoDB free: 9216 kB
 *
 * @author chenshun
 * @email sunlightcs@gmail.com
 * @date 2018-05-24 11:29:56
 */
@RestController
@RequestMapping("generator/loanreviewopinions")
public class LoanReviewOpinionsController {
    @Autowired
    private LoanReviewOpinionsService loanReviewOpinionsService;

    /**
     * 列表
     */
    @RequestMapping("/list")
    @RequiresPermissions("generator:loanreviewopinions:list")
    public R list(@RequestParam Map<String, Object> params){
        PageUtils page = loanReviewOpinionsService.queryPage(params);

        return R.ok().put("page", page);
    }


    /**
     * 信息
     */
    @RequestMapping("/info/{id}")
    @RequiresPermissions("generator:loanreviewopinions:info")
    public R info(@PathVariable("id") Integer id){
			LoanReviewOpinionsEntity loanReviewOpinions = loanReviewOpinionsService.selectById(id);

        return R.ok().put("loanReviewOpinions", loanReviewOpinions);
    }

    /**
     * 保存
     */
    @RequestMapping("/save")
    @RequiresPermissions("generator:loanreviewopinions:save")
    public R save(@RequestBody LoanReviewOpinionsEntity loanReviewOpinions){
			loanReviewOpinionsService.insert(loanReviewOpinions);

        return R.ok();
    }

    /**
     * 修改
     */
    @RequestMapping("/update")
    @RequiresPermissions("generator:loanreviewopinions:update")
    public R update(@RequestBody LoanReviewOpinionsEntity loanReviewOpinions){
			loanReviewOpinionsService.updateById(loanReviewOpinions);

        return R.ok();
    }

    /**
     * 删除
     */
    @RequestMapping("/delete")
    @RequiresPermissions("generator:loanreviewopinions:delete")
    public R delete(@RequestBody Integer[] ids){
			loanReviewOpinionsService.deleteBatchIds(Arrays.asList(ids));

        return R.ok();
    }

}
