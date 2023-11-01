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

import com.yjcaifu.modules.generator.entity.CusCarEntity;
import com.yjcaifu.modules.generator.entity.CusEstateEntity;
import com.yjcaifu.modules.generator.entity.PersonalInfoEntity;
import com.yjcaifu.modules.generator.service.BorCoborrowerCarService;
import com.yjcaifu.modules.generator.service.BorCoborrowerEstateService;
import com.yjcaifu.modules.generator.service.CusCarService;
import com.yjcaifu.common.annotation.SysLog;
import com.yjcaifu.common.utils.PageUtils;
import com.yjcaifu.common.utils.R;



/**
 * InnoDB free: 9216 kB
 *
 * @author chenshun
 * @email sunlightcs@gmail.com
 * @date 2018-05-09 10:51:08
 */
@RestController
@RequestMapping("generator/cuscar")
public class CusCarController {
    @Autowired
    private CusCarService cusCarService;
    @Autowired
    private BorCoborrowerCarService borCoborrowerCarService;

    /**
     * 列表
     */
    @RequestMapping("/list")
    @RequiresPermissions("generator:cuscar:list")
    public R list(@RequestParam Map<String, Object> params){
        PageUtils page = cusCarService.queryPage(params);

        return R.ok().put("page", page);
    }
    
    /**
     * 所有汽车信息（包含担保人，params：ids）
     */
    @RequestMapping("/listByIds")
    @RequiresPermissions("generator:cusestate:list")
    public R listByIds(@RequestBody Map<String, Object> params){
        List<CusCarEntity> listCar = cusCarService.listByIds(params);

        return R.ok().put("list", listCar);
    }

    /**
     * 信息
     */
    @RequestMapping("/info/{id}")
    @RequiresPermissions("generator:cuscar:info")
    public R info(@PathVariable("id") Integer id){
			CusCarEntity cusCar = cusCarService.selectById(id);

        return R.ok().put("cusCar", cusCar);
    }

    @RequestMapping("/findOwner")
    public List<PersonalInfoEntity> findOwner(){
    	return cusCarService.findOwner();
    }
    
    /**
     * 保存
     */
    @SysLog("保存车辆信息")
    @RequestMapping("/save")
    @RequiresPermissions("generator:cuscar:save")
    public R save(@RequestBody CusCarEntity cusCar){
			cusCarService.insert(cusCar);

        return R.ok();
    }

    /**
     * 修改
     */
    @SysLog("修改车辆信息")
    @RequestMapping("/update")
    @RequiresPermissions("generator:cuscar:update")
    public R update(@RequestBody CusCarEntity cusCar){
			cusCarService.updateById(cusCar);

        return R.ok();
    }

    /**
     * 删除
     */
    @SysLog("删除车辆信息")
    @RequestMapping("/delete")
    @RequiresPermissions("generator:cuscar:delete")
    public R delete(@RequestBody Integer[] ids){
			cusCarService.deleteBatchIds(Arrays.asList(ids));
			borCoborrowerCarService.deleteByCarIds(Arrays.asList(ids));
        return R.ok();
    }
    /**
     * 返回list
     */
    @RequestMapping("/queryByIds")
    public R queryByIds(@RequestBody Map<String, Object> params){
		List<CusCarEntity> carList =cusCarService.queryByIds(params);
        return R.ok().put("list", carList);
    }
}
