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

import com.yjcaifu.modules.generator.entity.BorCoborrowerPersonalEntity;
import com.yjcaifu.modules.generator.service.BorCoborrowerPersonalService;
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
@RequestMapping("generator/borcoborrowerpersonal")
public class BorCoborrowerPersonalController {
    @Autowired
    private BorCoborrowerPersonalService borCoborrowerPersonalService;

    /**
     * 列表
     */
    @RequestMapping("/list")
    @RequiresPermissions("generator:borcoborrowerpersonal:list")
    public R list(@RequestParam Map<String, Object> params){
        PageUtils page = borCoborrowerPersonalService.queryPage(params);

        return R.ok().put("page", page);
    }


    /**
     * 信息
     */
    @RequestMapping("/info/{id}")
    @RequiresPermissions("generator:borcoborrowerpersonal:info")
    public R info(@PathVariable("id") Integer id){
			BorCoborrowerPersonalEntity borCoborrowerPersonal = borCoborrowerPersonalService.selectById(id);

        return R.ok().put("borCoborrowerPersonal", borCoborrowerPersonal);
    }

    /**
     * 保存
     */
    @RequestMapping("/save")
    @RequiresPermissions("generator:borcoborrowerpersonal:save")
    public R save(@RequestBody BorCoborrowerPersonalEntity borCoborrowerPersonal){
			borCoborrowerPersonalService.insert(borCoborrowerPersonal);

        return R.ok();
    }

    /**
     * 修改
     */
    @RequestMapping("/update")
    @RequiresPermissions("generator:borcoborrowerpersonal:update")
    public R update(@RequestBody BorCoborrowerPersonalEntity borCoborrowerPersonal){
			borCoborrowerPersonalService.updateById(borCoborrowerPersonal);

        return R.ok();
    }

    /**
     * 删除
     */
    @RequestMapping("/delete")
    @RequiresPermissions("generator:borcoborrowerpersonal:delete")
    public R delete(@RequestBody Integer[] ids){
			borCoborrowerPersonalService.deleteBatchIds(Arrays.asList(ids));

        return R.ok();
    }

}
