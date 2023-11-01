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

import com.yjcaifu.common.entity.SysCoborrowerTypeEntity;
import com.yjcaifu.common.service.SysCoborrowerTypeService;
import com.yjcaifu.common.utils.PageUtils;
import com.yjcaifu.common.utils.R;



/**
 * 
 *
 * @author htshen
 * @email htshen@tom.com
 * @date 2018-05-18 09:07:27
 */
@RestController
@RequestMapping("generator/syscoborrowertype")
public class SysCoborrowerTypeController {
    @Autowired
    private SysCoborrowerTypeService sysCoborrowerTypeService;

    /**
     * Page列表
     */
    @RequestMapping("/list")
    @RequiresPermissions("generator:syscoborrowertype:list")
    public R list(@RequestParam Map<String, Object> params){
        PageUtils page = sysCoborrowerTypeService.queryPage(params);

        return R.ok().put("page", page);
    }

    
    /**
     * list列表
     */
    @RequestMapping("/queryAllList")
    public R queryAllList(@RequestParam Map<String, Object> params){
        List<SysCoborrowerTypeEntity> list = sysCoborrowerTypeService.queryAllList(params);

        return R.ok().put("list", list);
    }
    /**
     * 信息
     */
    @RequestMapping("/info/{id}")
    @RequiresPermissions("generator:syscoborrowertype:info")
    public R info(@PathVariable("id") Integer id){
			SysCoborrowerTypeEntity sysCoborrowerType = sysCoborrowerTypeService.selectById(id);

        return R.ok().put("sysCoborrowerType", sysCoborrowerType);
    }

    /**
     * 保存
     */
    @RequestMapping("/save")
    @RequiresPermissions("generator:syscoborrowertype:save")
    public R save(@RequestBody SysCoborrowerTypeEntity sysCoborrowerType){
			sysCoborrowerTypeService.insert(sysCoborrowerType);

        return R.ok();
    }

    /**
     * 修改
     */
    @RequestMapping("/update")
    @RequiresPermissions("generator:syscoborrowertype:update")
    public R update(@RequestBody SysCoborrowerTypeEntity sysCoborrowerType){
			sysCoborrowerTypeService.updateById(sysCoborrowerType);

        return R.ok();
    }

    /**
     * 删除
     */
    @RequestMapping("/delete")
    @RequiresPermissions("generator:syscoborrowertype:delete")
    public R delete(@RequestBody Integer[] ids){
			sysCoborrowerTypeService.deleteBatchIds(Arrays.asList(ids));

        return R.ok();
    }

}
