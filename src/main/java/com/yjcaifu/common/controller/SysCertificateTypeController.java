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

import com.yjcaifu.common.entity.SysCertificateTypeEntity;
import com.yjcaifu.common.service.SysCertificateTypeService;
import com.yjcaifu.common.utils.PageUtils;
import com.yjcaifu.common.utils.R;



/**
 * 
 *
 * @author htshen
 * @email htshen@tom.com
 * @date 2018-05-29 16:56:57
 */
@RestController
@RequestMapping("generator/syscertificatetype")
public class SysCertificateTypeController {
    @Autowired
    private SysCertificateTypeService sysCertificateTypeService;

    /**
     * 列表
     */
    @RequestMapping("/list")
    public R list(@RequestParam Map<String, Object> params){
        PageUtils page = sysCertificateTypeService.queryPage(params);

        return R.ok().put("page", page);
    }
    /**
     * List
     */
    @RequestMapping("/allList")
    public R allList(@RequestParam Map<String, Object> params){
        List<SysCertificateTypeEntity> list=sysCertificateTypeService.allList(params);

        return R.ok().put("list", list);
    }

    /**
     * 信息
     */
    @RequestMapping("/info/{id}")
    public R info(@PathVariable("id") Integer id){
			SysCertificateTypeEntity sysCertificateType = sysCertificateTypeService.selectById(id);

        return R.ok().put("sysCertificateType", sysCertificateType);
    }

    /**
     * 保存
     */
    @RequestMapping("/save")
    @RequiresPermissions("generator:syscertificatetype:save")
    public R save(@RequestBody SysCertificateTypeEntity sysCertificateType){
			sysCertificateTypeService.insert(sysCertificateType);

        return R.ok();
    }

    /**
     * 修改
     */
    @RequestMapping("/update")
    @RequiresPermissions("generator:syscertificatetype:update")
    public R update(@RequestBody SysCertificateTypeEntity sysCertificateType){
			sysCertificateTypeService.updateById(sysCertificateType);

        return R.ok();
    }

    /**
     * 删除
     */
    @RequestMapping("/delete")
    public R delete(@RequestBody Integer[] ids){
			sysCertificateTypeService.deleteBatchIds(Arrays.asList(ids));

        return R.ok();
    }

}
