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

import com.yjcaifu.common.entity.SysHousingTypesEntity;
import com.yjcaifu.common.entity.SysLandStatusEntity;
import com.yjcaifu.common.service.SysLandStatusService;
import com.yjcaifu.common.utils.PageUtils;
import com.yjcaifu.common.utils.R;



/**
 * 土地性质
 *
 * @author htshen
 * @email htshen@tom.com
 * @date 2018-06-12 14:29:44
 */
@RestController
@RequestMapping("common/syslandstatus")
public class SysLandStatusController {
    @Autowired
    private SysLandStatusService sysLandStatusService;

    /**
     * 列表
     */
    @RequestMapping("/list")
    public R list(@RequestParam Map<String, Object> params){
    	List<SysLandStatusEntity> list=sysLandStatusService.queryList(params);
        return R.ok().put("list", list);
    }


    /**
     * 信息
     */
    @RequestMapping("/info/{id}")
    @RequiresPermissions("common:syslandstatus:info")
    public R info(@PathVariable("id") Integer id){
			SysLandStatusEntity sysLandStatus = sysLandStatusService.selectById(id);

        return R.ok().put("sysLandStatus", sysLandStatus);
    }

    /**
     * 保存
     */
    @RequestMapping("/save")
    @RequiresPermissions("common:syslandstatus:save")
    public R save(@RequestBody SysLandStatusEntity sysLandStatus){
			sysLandStatusService.insert(sysLandStatus);

        return R.ok();
    }

    /**
     * 修改
     */
    @RequestMapping("/update")
    @RequiresPermissions("common:syslandstatus:update")
    public R update(@RequestBody SysLandStatusEntity sysLandStatus){
			sysLandStatusService.updateById(sysLandStatus);

        return R.ok();
    }

    /**
     * 删除
     */
    @RequestMapping("/delete")
    @RequiresPermissions("common:syslandstatus:delete")
    public R delete(@RequestBody Integer[] ids){
			sysLandStatusService.deleteBatchIds(Arrays.asList(ids));

        return R.ok();
    }

}
