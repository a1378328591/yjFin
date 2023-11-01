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

import com.yjcaifu.common.entity.SysOfficeSpaceEntity;
import com.yjcaifu.common.entity.SysUseTypesEntity;
import com.yjcaifu.common.service.SysUseTypesService;
import com.yjcaifu.common.utils.PageUtils;
import com.yjcaifu.common.utils.R;



/**
 * 使用性质
 *
 * @author htshen
 * @email htshen@tom.com
 * @date 2018-06-12 14:29:44
 */
@RestController
@RequestMapping("common/sysusetypes")
public class SysUseTypesController {
    @Autowired
    private SysUseTypesService sysusetypesService;

    /**
     * 列表
     */
    @RequestMapping("/list")
    public R list(@RequestParam Map<String, Object> params){
    	List<SysUseTypesEntity> list=sysusetypesService.queryList(params);
        return R.ok().put("list", list);
    }


    /**
     * 信息
     */
    @RequestMapping("/info/{id}")
    @RequiresPermissions("common:sysusetypes:info")
    public R info(@PathVariable("id") Integer id){
			SysUseTypesEntity sysusetypes = sysusetypesService.selectById(id);

        return R.ok().put("sysusetypes", sysusetypes);
    }

    /**
     * 保存
     */
    @RequestMapping("/save")
    @RequiresPermissions("common:sysusetypes:save")
    public R save(@RequestBody SysUseTypesEntity sysusetypes){
			sysusetypesService.insert(sysusetypes);

        return R.ok();
    }

    /**
     * 修改
     */
    @RequestMapping("/update")
    @RequiresPermissions("common:sysusetypes:update")
    public R update(@RequestBody SysUseTypesEntity sysusetypes){
			sysusetypesService.updateById(sysusetypes);

        return R.ok();
    }

    /**
     * 删除
     */
    @RequestMapping("/delete")
    @RequiresPermissions("common:sysusetypes:delete")
    public R delete(@RequestBody Integer[] ids){
			sysusetypesService.deleteBatchIds(Arrays.asList(ids));

        return R.ok();
    }

}
