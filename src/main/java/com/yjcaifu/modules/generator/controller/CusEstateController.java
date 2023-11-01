package com.yjcaifu.modules.generator.controller;

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

import com.yjcaifu.modules.generator.entity.CusEstateEntity;
import com.yjcaifu.modules.generator.service.BorCoborrowerEstateService;
import com.yjcaifu.modules.generator.service.CusEstateService;
import com.yjcaifu.common.annotation.SysLog;
import com.yjcaifu.common.utils.PageUtils;
import com.yjcaifu.common.utils.R;



/**
 * InnoDB free: 9216 kB
 *
 * @author chenshun
 * @email sunlightcs@gmail.com
 * @date 2018-05-09 17:47:13
 */
@RestController
@RequestMapping("generator/cusestate")
public class CusEstateController {
    @Autowired
    private CusEstateService cusEstateService;
    @Autowired
    private BorCoborrowerEstateService borCoborrowerEstateService;

    /**
     * 列表
     */
    @RequestMapping("/list")
    @RequiresPermissions("generator:cusestate:list")
    public R list(@RequestParam Map<String, Object> params){
        PageUtils page = cusEstateService.queryPage(params);

        return R.ok().put("page", page);
    }
    /**
     * 所有房产信息（包含担保人，params：ids）
     */
    @RequestMapping("/listByIds")
    @RequiresPermissions("generator:cusestate:list")
    public R listByIds(@RequestBody Map<String, Object> params){
        List<CusEstateEntity> list = cusEstateService.listByIds(params);

        return R.ok().put("list", list);
    }
    /**
     * 信息
     */
    @RequestMapping("/info/{id}")
    @RequiresPermissions("generator:cusestate:info")
    public R info(@PathVariable("id") Integer id){
			CusEstateEntity cusEstate = cusEstateService.selectById(id);

        return R.ok().put("cusEstate", cusEstate);
    }

    /**
     * 保存
     */
    @SysLog("保存房产信息")
    @RequestMapping("/save")
    @RequiresPermissions("generator:cusestate:save")
    public R save(@RequestBody CusEstateEntity cusEstate){
			cusEstateService.insert(cusEstate);

        return R.ok();
    }

    /**
     * 修改
     */
    @SysLog("修改房产信息")
    @RequestMapping("/update")
    @RequiresPermissions("generator:cusestate:update")
    public R update(@RequestBody CusEstateEntity cusEstate){
			cusEstateService.updateById(cusEstate);

        return R.ok();
    }

    /**
     * 删除
     */
    @SysLog("删除房产信息")
    @RequestMapping("/delete")
    @RequiresPermissions("generator:cusestate:delete")
    public R delete(@RequestBody Integer[] ids){
			cusEstateService.deleteBatchIds(Arrays.asList(ids));
			borCoborrowerEstateService.deleteByEsateIds(Arrays.asList(ids));
        return R.ok();
    }
    
    /**
     * 返回list
     */
    @RequestMapping("/queryByIds")
    public R queryByIds(@RequestBody Map<String, Object> params){
		List<CusEstateEntity> entities =cusEstateService.queryByIds(params);
        return R.ok().put("list", entities);
    }

}
