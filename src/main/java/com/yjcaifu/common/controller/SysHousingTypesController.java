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
import com.yjcaifu.common.entity.SysHousingTypesEntity;
import com.yjcaifu.common.service.SysHousingTypesService;
import com.yjcaifu.common.utils.PageUtils;
import com.yjcaifu.common.utils.R;



/**
 * 房屋类型
 *
 * @author htshen
 * @email htshen@tom.com
 * @date 2018-06-12 14:29:44
 */
@RestController
@RequestMapping("common/syshousingtypes")
public class SysHousingTypesController {
    @Autowired
    private SysHousingTypesService sysHousingTypesService;

    /**
     * 列表
     */
    @RequestMapping("/list")
    public R list(@RequestParam Map<String, Object> params){
    	List<SysHousingTypesEntity> list=sysHousingTypesService.queryList(params);
        return R.ok().put("list", list);
    }


    /**
     * 信息
     */
    @RequestMapping("/info/{id}")
    @RequiresPermissions("common:syshousingtypes:info")
    public R info(@PathVariable("id") Integer id){
			SysHousingTypesEntity sysHousingTypes = sysHousingTypesService.selectById(id);

        return R.ok().put("sysHousingTypes", sysHousingTypes);
    }

    /**
     * 保存
     */
    @RequestMapping("/save")
    @RequiresPermissions("common:syshousingtypes:save")
    public R save(@RequestBody SysHousingTypesEntity sysHousingTypes){
			sysHousingTypesService.insert(sysHousingTypes);

        return R.ok();
    }

    /**
     * 修改
     */
    @RequestMapping("/update")
    @RequiresPermissions("common:syshousingtypes:update")
    public R update(@RequestBody SysHousingTypesEntity sysHousingTypes){
			sysHousingTypesService.updateById(sysHousingTypes);

        return R.ok();
    }

    /**
     * 删除
     */
    @RequestMapping("/delete")
    @RequiresPermissions("common:syshousingtypes:delete")
    public R delete(@RequestBody Integer[] ids){
			sysHousingTypesService.deleteBatchIds(Arrays.asList(ids));

        return R.ok();
    }

}
