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

import com.yjcaifu.common.entity.SysLandStatusEntity;
import com.yjcaifu.common.entity.SysLoanTypesEntity;
import com.yjcaifu.common.service.SysLoanTypesService;
import com.yjcaifu.common.utils.PageUtils;
import com.yjcaifu.common.utils.R;



/**
 * 贷款性质
 *
 * @author htshen
 * @email htshen@tom.com
 * @date 2018-06-12 14:29:44
 */
@RestController
@RequestMapping("common/sysloantypes")
public class SysLoanTypesController {
    @Autowired
    private SysLoanTypesService sysLoanTypesService;

    /**
     * 列表
     */
    @RequestMapping("/list")
    public R list(@RequestParam Map<String, Object> params){
    	List<SysLoanTypesEntity> list=sysLoanTypesService.queryList(params);
        return R.ok().put("list", list);
    }


    /**
     * 信息
     */
    @RequestMapping("/info/{id}")
    @RequiresPermissions("common:sysloantypes:info")
    public R info(@PathVariable("id") Integer id){
			SysLoanTypesEntity sysLoanTypes = sysLoanTypesService.selectById(id);

        return R.ok().put("sysLoanTypes", sysLoanTypes);
    }

    /**
     * 保存
     */
    @RequestMapping("/save")
    @RequiresPermissions("common:sysloantypes:save")
    public R save(@RequestBody SysLoanTypesEntity sysLoanTypes){
			sysLoanTypesService.insert(sysLoanTypes);

        return R.ok();
    }

    /**
     * 修改
     */
    @RequestMapping("/update")
    @RequiresPermissions("common:sysloantypes:update")
    public R update(@RequestBody SysLoanTypesEntity sysLoanTypes){
			sysLoanTypesService.updateById(sysLoanTypes);

        return R.ok();
    }

    /**
     * 删除
     */
    @RequestMapping("/delete")
    @RequiresPermissions("common:sysloantypes:delete")
    public R delete(@RequestBody Integer[] ids){
			sysLoanTypesService.deleteBatchIds(Arrays.asList(ids));

        return R.ok();
    }

}
