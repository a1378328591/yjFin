package com.yjcaifu.modules.generator.controller;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Map;

import javax.management.relation.RoleList;

import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.mysql.fabric.xmlrpc.base.Array;
import com.yjcaifu.modules.app.entity.UserEntity;
import com.yjcaifu.modules.generator.entity.RegisterInfoEntity;
import com.yjcaifu.modules.generator.service.RegisterInfoService;
import com.yjcaifu.modules.sys.service.SysRoleService;
import com.yjcaifu.modules.sys.service.SysUserService;
import com.yjcaifu.common.utils.PageUtils;
import com.yjcaifu.common.utils.R;



/**
 * 
 *
 * @author htshen
 * @email htshen@tom.com
 * @date 2018-05-04 17:10:45
 */
@RestController
@RequestMapping("/generator/registerinfo")
public class RegisterInfoController {
    @Autowired
    private RegisterInfoService registerInfoService;
    @Autowired
	private SysUserService sysUserService;

    /**
     * 列表
     */
    @RequestMapping("/list")
    @RequiresPermissions("generator:registerinfo:list")
    public R list(@RequestParam Map<String, Object> params){
        PageUtils page = registerInfoService.queryPage(params);
        return R.ok().put("page", page);
    }
    
    /**
     * 员工列表
     */
    @RequestMapping("/rolelist")
    public R Rolelist(@RequestParam Map<String, Object> params){
        List<UserEntity> userLists = sysUserService.queryUserList(params);
        return R.ok().put("list", userLists);
    }

    /**
     * 信息
     */
    @RequestMapping("/info/{id}")
    @RequiresPermissions("generator:registerinfo:info")
    public R info(@PathVariable("id") Integer id){
		RegisterInfoEntity registerInfo = registerInfoService.selectById(id);

        return R.ok().put("registerInfo", registerInfo);
    }

    /**
     * 保存
     */
    @RequestMapping("/save")
    @RequiresPermissions("generator:registerinfo:save")
    public R save(@RequestBody RegisterInfoEntity registerInfo){
			registerInfoService.insert(registerInfo);

        return R.ok();
    }

    /**
     * 修改
     */
    @RequestMapping("/update")
    @RequiresPermissions("generator:registerinfo:update")
    public R update(@RequestBody RegisterInfoEntity registerInfo){
			registerInfoService.updateById(registerInfo);

        return R.ok();
    }

    /**
     * 删除
     */
    @RequestMapping("/delete")
    @RequiresPermissions("generator:registerinfo:delete")
    public R delete(@RequestBody Integer[] ids){
			registerInfoService.deleteBatchIds(Arrays.asList(ids));

        return R.ok();
    }

}
