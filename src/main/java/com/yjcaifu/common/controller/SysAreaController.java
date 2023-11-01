package com.yjcaifu.common.controller;

import java.util.ArrayList;
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

import com.yjcaifu.common.entity.SysAreaEntity;
import com.yjcaifu.common.service.SysAreaService;
import com.yjcaifu.common.utils.PageUtils;
import com.yjcaifu.common.utils.R;
import com.yjcaifu.modules.app.entity.UserEntity;



/**
 * 
 *
 * @author htshen
 * @email htshen@tom.com
 * @date 2018-05-08 13:30:23
 */
@RestController
@RequestMapping("/common")
public class SysAreaController {
    @Autowired
    private SysAreaService sysAreaService;

    /**
     * 省列表
     */
    @RequestMapping("/sysprovince/provinceList")
    public R provinceList(@RequestParam Map<String, Object> params){
    	List<SysAreaEntity> provinceLists=sysAreaService.queryList(params);
        if(null!=provinceLists){
        	for(SysAreaEntity pro:provinceLists){
        		pro.setChildren(new ArrayList<SysAreaEntity>());
        	}
        }
        return R.ok().put("list", provinceLists);
    }
    /**
     * 市列表
     */
    @RequestMapping("/syscity/cityList")
    public R cityList(@RequestParam Map<String, Object> params){
        List<SysAreaEntity> cityList=sysAreaService.querycityList(params);

        return R.ok().put("page", cityList);
    }
    /**
     * cascader:市列表(包含区)
     */
    @RequestMapping("/syscity/cascaderCityList")
    public R cascaderCityList(@RequestParam Map<String, Object> params){
        List<SysAreaEntity> cityList=sysAreaService.queryList(params);
        for(SysAreaEntity city:cityList){
        	params.put("pid", city.getId());
        	List<SysAreaEntity> area=sysAreaService.queryList(params);
        	if(null!=area){
        		city.setChildren(area);
        	}
        }
        return R.ok().put("list", cityList);
    }
    /**
     * 区列表
     */
    @RequestMapping("/systown/townList")
    public R list(@RequestParam Map<String, Object> params){
        PageUtils page = sysAreaService.queryPage(params);

        return R.ok().put("page", page);
    }


    /**
     * 信息
     */
    @RequestMapping("/sysarea/info/{id}")
    @RequiresPermissions("generator:sysarea:info")
    public R info(@PathVariable("id") Integer id){
			SysAreaEntity sysArea = sysAreaService.selectById(id);

        return R.ok().put("sysArea", sysArea);
    }

    /**
     * 保存
     */
    @RequestMapping("/sysarea/save")
    @RequiresPermissions("generator:sysarea:save")
    public R save(@RequestBody SysAreaEntity sysArea){
			sysAreaService.insert(sysArea);

        return R.ok();
    }

    /**
     * 修改
     */
    @RequestMapping("/sysarea/update")
    @RequiresPermissions("generator:sysarea:update")
    public R update(@RequestBody SysAreaEntity sysArea){
			sysAreaService.updateById(sysArea);

        return R.ok();
    }

    /**
     * 删除
     */
    @RequestMapping("/sysarea/delete")
    @RequiresPermissions("generator:sysarea:delete")
    public R delete(@RequestBody Integer[] ids){
			sysAreaService.deleteBatchIds(Arrays.asList(ids));

        return R.ok();
    }

}
