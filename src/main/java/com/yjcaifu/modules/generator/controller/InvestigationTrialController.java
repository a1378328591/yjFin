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

import com.yjcaifu.modules.generator.entity.InvestigationTrialEntity;
import com.yjcaifu.modules.generator.service.InvestigationTrialService;
import com.yjcaifu.common.utils.PageUtils;
import com.yjcaifu.common.utils.R;



/**
 * InnoDB free: 9216 kB
 *
 * @author chenshun
 * @email sunlightcs@gmail.com
 * @date 2018-05-22 11:02:58
 */
@RestController
@RequestMapping("generator/investigationtrial")
public class InvestigationTrialController {
    @Autowired
    private InvestigationTrialService investigationTrialService;

    /**
     * 列表
     */
    @RequestMapping("/list")
    @RequiresPermissions("generator:investigationtrial:list")
    public R list(@RequestParam Map<String, Object> params){
        PageUtils page = investigationTrialService.queryPage(params);

        return R.ok().put("page", page);
    }


    /**
     * 信息
     */
    @RequestMapping("/info/{id}")
    @RequiresPermissions("generator:investigationtrial:info")
    public R info(@PathVariable("id") Integer id){
			InvestigationTrialEntity investigationTrial = investigationTrialService.selectById(id);

        return R.ok().put("investigationTrial", investigationTrial);
    }

    /**
     * 保存
     */
    @RequestMapping("/save")
    @RequiresPermissions("generator:investigationtrial:save")
    public R save(@RequestBody InvestigationTrialEntity investigationTrial){
			investigationTrialService.insert(investigationTrial);

        return R.ok();
    }

    /**
     * 修改
     */
    @RequestMapping("/update")
    @RequiresPermissions("generator:investigationtrial:update")
    public R update(@RequestBody InvestigationTrialEntity investigationTrial){
			investigationTrialService.updateById(investigationTrial);

        return R.ok();
    }

    /**
     * 删除
     */
    @RequestMapping("/delete")
    @RequiresPermissions("generator:investigationtrial:delete")
    public R delete(@RequestBody Integer[] ids){
			investigationTrialService.deleteBatchIds(Arrays.asList(ids));

        return R.ok();
    }

}
