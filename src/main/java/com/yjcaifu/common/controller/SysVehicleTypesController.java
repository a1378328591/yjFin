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

import com.yjcaifu.common.entity.SysUseTypesEntity;
import com.yjcaifu.common.entity.SysVehicleTypesEntity;
import com.yjcaifu.common.service.SysVehicleTypesService;
import com.yjcaifu.common.utils.PageUtils;
import com.yjcaifu.common.utils.R;



/**
 * 车辆类型
 *
 * @author htshen
 * @email htshen@tom.com
 * @date 2018-06-12 14:29:44
 */
@RestController
@RequestMapping("common/sysvehicletypes")
public class SysVehicleTypesController {
    @Autowired
    private SysVehicleTypesService sysVehicleTypesService;

    /**
     * 列表
     */
    @RequestMapping("/list")
    public R list(@RequestParam Map<String, Object> params){
    	List<SysVehicleTypesEntity> list=sysVehicleTypesService.queryList(params);
        return R.ok().put("list", list);
    }


    /**
     * 信息
     */
    @RequestMapping("/info/{id}")
    @RequiresPermissions("common:sysvehicletypes:info")
    public R info(@PathVariable("id") Integer id){
			SysVehicleTypesEntity sysVehicleTypes = sysVehicleTypesService.selectById(id);

        return R.ok().put("sysVehicleTypes", sysVehicleTypes);
    }

    /**
     * 保存
     */
    @RequestMapping("/save")
    @RequiresPermissions("common:sysvehicletypes:save")
    public R save(@RequestBody SysVehicleTypesEntity sysVehicleTypes){
			sysVehicleTypesService.insert(sysVehicleTypes);

        return R.ok();
    }

    /**
     * 修改
     */
    @RequestMapping("/update")
    @RequiresPermissions("common:sysvehicletypes:update")
    public R update(@RequestBody SysVehicleTypesEntity sysVehicleTypes){
			sysVehicleTypesService.updateById(sysVehicleTypes);

        return R.ok();
    }

    /**
     * 删除
     */
    @RequestMapping("/delete")
    @RequiresPermissions("common:sysvehicletypes:delete")
    public R delete(@RequestBody Integer[] ids){
			sysVehicleTypesService.deleteBatchIds(Arrays.asList(ids));

        return R.ok();
    }

}
