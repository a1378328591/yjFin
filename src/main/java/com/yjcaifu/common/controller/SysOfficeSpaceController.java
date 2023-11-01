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

import com.yjcaifu.common.entity.SysLoanTypesEntity;
import com.yjcaifu.common.entity.SysOfficeSpaceEntity;
import com.yjcaifu.common.service.SysOfficeSpaceService;
import com.yjcaifu.common.utils.PageUtils;
import com.yjcaifu.common.utils.R;



/**
 * 办公场所
 *
 * @author htshen
 * @email htshen@tom.com
 * @date 2018-06-12 14:29:44
 */
@RestController
@RequestMapping("common/sysofficespace")
public class SysOfficeSpaceController {
    @Autowired
    private SysOfficeSpaceService sysOfficeSpaceService;

    /**
     * 列表
     */
    @RequestMapping("/list")
    public R list(@RequestParam Map<String, Object> params){
    	List<SysOfficeSpaceEntity> list=sysOfficeSpaceService.queryList(params);
        return R.ok().put("list", list);
    }


    /**
     * 信息
     */
    @RequestMapping("/info/{id}")
    @RequiresPermissions("common:sysofficespace:info")
    public R info(@PathVariable("id") Integer id){
			SysOfficeSpaceEntity sysOfficeSpace = sysOfficeSpaceService.selectById(id);

        return R.ok().put("sysOfficeSpace", sysOfficeSpace);
    }

    /**
     * 保存
     */
    @RequestMapping("/save")
    @RequiresPermissions("common:sysofficespace:save")
    public R save(@RequestBody SysOfficeSpaceEntity sysOfficeSpace){
			sysOfficeSpaceService.insert(sysOfficeSpace);

        return R.ok();
    }

    /**
     * 修改
     */
    @RequestMapping("/update")
    @RequiresPermissions("common:sysofficespace:update")
    public R update(@RequestBody SysOfficeSpaceEntity sysOfficeSpace){
			sysOfficeSpaceService.updateById(sysOfficeSpace);

        return R.ok();
    }

    /**
     * 删除
     */
    @RequestMapping("/delete")
    @RequiresPermissions("common:sysofficespace:delete")
    public R delete(@RequestBody Integer[] ids){
			sysOfficeSpaceService.deleteBatchIds(Arrays.asList(ids));

        return R.ok();
    }

}
