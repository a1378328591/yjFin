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

import com.yjcaifu.modules.generator.entity.BorCoborrowerCompanyEntity;
import com.yjcaifu.modules.generator.service.BorCoborrowerCompanyService;
import com.yjcaifu.common.utils.PageUtils;
import com.yjcaifu.common.utils.R;



/**
 * 
 *
 * @author htshen
 * @email htshen@tom.com
 * @date 2018-05-16 08:50:20
 */
@RestController
@RequestMapping("generator/borcoborrowercompany")
public class BorCoborrowerCompanyController {
    @Autowired
    private BorCoborrowerCompanyService borCoborrowerCompanyService;

    /**
     * 列表
     */
    @RequestMapping("/list")
    @RequiresPermissions("generator:borcoborrowercompany:list")
    public R list(@RequestParam Map<String, Object> params){
        PageUtils page = borCoborrowerCompanyService.queryPage(params);

        return R.ok().put("page", page);
    }


    /**
     * 信息
     */
    @RequestMapping("/info/{id}")
    @RequiresPermissions("generator:borcoborrowercompany:info")
    public R info(@PathVariable("id") Integer id){
			BorCoborrowerCompanyEntity borCoborrowerCompany = borCoborrowerCompanyService.selectById(id);

        return R.ok().put("borCoborrowerCompany", borCoborrowerCompany);
    }

    /**
     * 保存
     */
    @RequestMapping("/save")
    @RequiresPermissions("generator:borcoborrowercompany:save")
    public R save(@RequestBody BorCoborrowerCompanyEntity borCoborrowerCompany){
			borCoborrowerCompanyService.insert(borCoborrowerCompany);

        return R.ok();
    }

    /**
     * 修改
     */
    @RequestMapping("/update")
    @RequiresPermissions("generator:borcoborrowercompany:update")
    public R update(@RequestBody BorCoborrowerCompanyEntity borCoborrowerCompany){
			borCoborrowerCompanyService.updateById(borCoborrowerCompany);

        return R.ok();
    }

    /**
     * 删除
     */
    @RequestMapping("/delete")
    @RequiresPermissions("generator:borcoborrowercompany:delete")
    public R delete(@RequestBody Integer[] ids){
			borCoborrowerCompanyService.deleteBatchIds(Arrays.asList(ids));

        return R.ok();
    }

}
