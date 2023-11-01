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

import com.yjcaifu.modules.generator.entity.RdUserEntity;
import com.yjcaifu.modules.generator.service.RdUserService;
import com.yjcaifu.common.utils.PageUtils;
import com.yjcaifu.common.utils.R;



/**
 * 用户基本信息表
 *
 * @author htshen
 * @email htshen@tom.com
 * @date 2018-05-04 13:56:02
 */
@RestController
@RequestMapping("/generator/rduser")
public class RdUserController {
    @Autowired
    private RdUserService rdUserService;

    /**
     * 列表
     */
    @RequestMapping("/list")
    @RequiresPermissions("generator:rduser:list")
    public R list(@RequestParam Map<String, Object> params){
        PageUtils page = rdUserService.queryPage(params);

        return R.ok().put("page", page);
    }


    /**
     * 信息
     */
    @RequestMapping("/info/{userId}")
    @RequiresPermissions("generator:rduser:info")
    public R info(@PathVariable("userId") Integer userId){
			RdUserEntity rdUser = rdUserService.selectById(userId);

        return R.ok().put("rdUser", rdUser);
    }

    /**
     * 保存
     */
    @RequestMapping("/save")
    @RequiresPermissions("generator:rduser:save")
    public R save(@RequestBody RdUserEntity rdUser){
			rdUserService.insert(rdUser);

        return R.ok();
    }

    /**
     * 修改
     */
    @RequestMapping("/update")
    @RequiresPermissions("generator:rduser:update")
    public R update(@RequestBody RdUserEntity rdUser){
			rdUserService.updateById(rdUser);

        return R.ok();
    }

    /**
     * 删除
     */
    @RequestMapping("/delete")
    @RequiresPermissions("generator:rduser:delete")
    public R delete(@RequestBody Integer[] userIds){
			rdUserService.deleteBatchIds(Arrays.asList(userIds));

        return R.ok();
    }

}
