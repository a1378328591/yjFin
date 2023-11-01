package com.yjcaifu.modules.generator.controller;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Map;

import javassist.expr.NewArray;

import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.yjcaifu.modules.generator.entity.CusBankStatementsEntity;
import com.yjcaifu.modules.generator.service.CusBankStatementsService;
import com.yjcaifu.common.utils.PageUtils;
import com.yjcaifu.common.utils.R;



/**
 * 
 *
 * @author htshen
 * @email htshen@tom.com
 * @date 2018-05-14 15:23:46
 */
@RestController
@RequestMapping("generator/cusbankstatements")
public class CusBankStatementsController {
    @Autowired
    private CusBankStatementsService cusBankStatementsService;

    /**
     * 列表
     */
    @RequestMapping("/list")
    @RequiresPermissions("generator:cusbankstatements:list")
    public R list(@RequestParam Map<String, Object> params){
        PageUtils page = cusBankStatementsService.queryPage(params);

        return R.ok().put("page", page);
    }
    
    /**
     * 列表
     */
    @RequestMapping("/listByPersonalId")
    public R listByPersonalId(@RequestParam Map<String, Object> params){
        PageUtils page = cusBankStatementsService.listByPersonalId(params);
        return R.ok().put("page", page);
    }
    
    
    /**
     * 列表
     */
    @RequestMapping("/queryByIds")
    public R queryByIds(@RequestBody Map<String, Object> params){
    	if(((List<Integer>)params.get("ids")).size()<1){
    		return R.ok().put("list", new ArrayList<CusBankStatementsEntity>());
    	}
        List<CusBankStatementsEntity> list = cusBankStatementsService.queryByIds(params);
        return R.ok().put("list", list);
    }

    /**
     * 信息
     */
    @RequestMapping("/info/{id}")
    @RequiresPermissions("generator:cusbankstatements:info")
    public R info(@PathVariable("id") Integer id){
			CusBankStatementsEntity cusBankStatements = cusBankStatementsService.selectById(id);

        return R.ok().put("cusBankStatements", cusBankStatements);
    }

    /**
     * 保存
     */
    @RequestMapping("/save")
    @RequiresPermissions("generator:cusbankstatements:save")
    public R save(@RequestBody CusBankStatementsEntity cusBankStatements){
			cusBankStatementsService.insert(cusBankStatements);

        return R.ok();
    }

    /**
     * 修改
     */
    @RequestMapping("/update")
    @RequiresPermissions("generator:cusbankstatements:update")
    public R update(@RequestBody CusBankStatementsEntity cusBankStatements){
			cusBankStatementsService.updateById(cusBankStatements);

        return R.ok();
    }

    /**
     * 删除
     */
    @RequestMapping("/delete")
    @RequiresPermissions("generator:cusbankstatements:delete")
    public R delete(@RequestBody Integer[] ids){
			cusBankStatementsService.deleteBatchIds(Arrays.asList(ids));

        return R.ok();
    }

}
