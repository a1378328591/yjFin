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

import com.yjcaifu.modules.generator.entity.ReviewOpinionsEntity;
import com.yjcaifu.modules.generator.service.ReviewOpinionsService;
import com.yjcaifu.common.utils.PageUtils;
import com.yjcaifu.common.utils.R;



/**
 * InnoDB free: 9216 kB
 *
 * @author chenshun
 * @email sunlightcs@gmail.com
 * @date 2018-05-08 10:30:21
 */
@RestController
@RequestMapping("generator/reviewopinions")
public class ReviewOpinionsController {
    @Autowired
    private ReviewOpinionsService reviewOpinionsService;

    /**
     * 列表
     */
    @RequestMapping("/list")
    @RequiresPermissions("generator:reviewopinions:list")
    public R list(@RequestParam Map<String, Object> params){
        PageUtils page = reviewOpinionsService.queryPage(params);

        return R.ok().put("page", page);
    }


    /**
     * 信息
     */
    @RequestMapping("/info/{userid}")
    @RequiresPermissions("generator:reviewopinions:info")
    public R info(@PathVariable("userid") Integer userid){
			ReviewOpinionsEntity reviewOpinions = reviewOpinionsService.selectById(userid);

        return R.ok().put("reviewOpinions", reviewOpinions);
    }

    /**
     * 保存
     */
    @RequestMapping("/save")
    @RequiresPermissions("generator:reviewopinions:save")
    public R save(@RequestBody ReviewOpinionsEntity reviewOpinions){
			reviewOpinionsService.insert(reviewOpinions);

        return R.ok();
    }

    /**
     * 修改
     */
    @RequestMapping("/update")
    @RequiresPermissions("generator:reviewopinions:update")
    public R update(@RequestBody ReviewOpinionsEntity reviewOpinions){
			reviewOpinionsService.updateById(reviewOpinions);

        return R.ok();
    }

    /**
     * 删除
     */
    @RequestMapping("/delete")
    @RequiresPermissions("generator:reviewopinions:delete")
    public R delete(@RequestBody Integer[] userids){
			reviewOpinionsService.deleteBatchIds(Arrays.asList(userids));

        return R.ok();
    }

}
