package com.yjcaifu.common.controller;

import java.util.Arrays;
import java.util.List;
import java.util.Map;

import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.yjcaifu.common.entity.SysEnsurePropertyEntity;
import com.yjcaifu.common.service.SysEnsurePropertyService;
import com.yjcaifu.common.utils.PageUtils;
import com.yjcaifu.common.utils.R;



/**
 * 保证性质
 *
 * @author htshen
 * @email htshen@tom.com
 * @date 2018-06-12 14:29:44
 */
@RestController
@RequestMapping("common/sysensureproperty")
public class SysEnsurePropertyController {
    @Autowired
    private SysEnsurePropertyService sysEnsurePropertyService;

    /**
     * 列表
     */
    @RequestMapping("/list")
    public R list(@RequestParam Map<String, Object> params){
    	List<SysEnsurePropertyEntity> list=sysEnsurePropertyService.queryList(params);
        return R.ok().put("list", list);
    }


    /**
     * 信息
     */
    @RequestMapping("/info/{id}")
    @RequiresPermissions("common:sysensureproperty:info")
    public R info(@PathVariable("id") Integer id){
			SysEnsurePropertyEntity sysEnsureProperty = sysEnsurePropertyService.selectById(id);

        return R.ok().put("sysEnsureProperty", sysEnsureProperty);
    }

    /**
     * 保存
     */
    @RequestMapping("/save")
    @RequiresPermissions("common:sysensureproperty:save")
    public R save(@RequestBody SysEnsurePropertyEntity sysEnsureProperty){
			sysEnsurePropertyService.insert(sysEnsureProperty);

        return R.ok();
    }

    /**
     * 修改
     */
    @RequestMapping("/update")
    @RequiresPermissions("common:sysensureproperty:update")
    public R update(@RequestBody SysEnsurePropertyEntity sysEnsureProperty){
			sysEnsurePropertyService.updateById(sysEnsureProperty);

        return R.ok();
    }

    /**
     * 删除
     */
    @RequestMapping("/delete")
    @RequiresPermissions("common:sysensureproperty:delete")
    public R delete(@RequestBody Integer[] ids){
			sysEnsurePropertyService.deleteBatchIds(Arrays.asList(ids));

        return R.ok();
    }

}
