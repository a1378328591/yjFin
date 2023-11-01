package com.yjcaifu.modules.generator.controller;

import java.math.BigDecimal;
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

import com.yjcaifu.modules.generator.entity.BidNoEntity;
import com.yjcaifu.modules.generator.entity.LoanMiddleEntity;
import com.yjcaifu.modules.generator.entity.LoanReviewOpinionsEntity;
import com.yjcaifu.modules.generator.entity.RdBorrowEntity;
import com.yjcaifu.modules.generator.entity.RdBorrowTenderEntity;
import com.yjcaifu.modules.generator.service.BidNoService;
import com.yjcaifu.modules.generator.service.RdBorrowTenderService;
import com.yjcaifu.common.utils.PageUtils;
import com.yjcaifu.common.utils.R;



/**
 * 标的号
 *
 * @author chenshun
 * @email sunlightcs@gmail.com
 * @date 2018-06-12 14:56:06
 */
@RestController
@RequestMapping("generator/bidno")
public class BidNoController {
    @Autowired
    private BidNoService bidNoService;
    @Autowired
    private RdBorrowTenderService rdBorrowTenderService;

    /**
     * 列表
     */
    @RequestMapping("/list")
    @RequiresPermissions("generator:bidno:list")
    public R list(@RequestParam Map<String, Object> params){
        PageUtils page = bidNoService.queryPage(params);

        return R.ok().put("page", page);
    }


    /**
     * 信息
     */
    @RequestMapping("/info/{id}")
    @RequiresPermissions("generator:bidno:info")
    public R info(@PathVariable("id") Integer id){
			BidNoEntity bidNo = bidNoService.selectById(id);

        return R.ok().put("bidNo", bidNo);
    }
    /**
     * 标的号
     */
    @RequestMapping("/selectByRefId/{id}")
    @RequiresPermissions("generator:bidno:selectByRefId")
    public R selectByRefId(@PathVariable("id") Integer id){
			List<BidNoEntity> bidNo = bidNoService.selectByRefId(id);
			
        return R.ok().put("bidNo", bidNo);
    }
    /**
     * 保存
     */
    @RequestMapping("/save")
    @RequiresPermissions("generator:bidno:save")
    public R save(@RequestBody BidNoEntity bidNo){
    	bidNoService.insert(bidNo);

        return R.ok();
    }

    /**
     * 修改
     */
    @RequestMapping("/update")
    @RequiresPermissions("generator:bidno:update")
    public R update(@RequestBody BidNoEntity bidnoAll){
    	List<BidNoEntity> bidnoAlls = bidnoAll.getBidnoAll();
    	//新增用的数据
    	for (BidNoEntity bidNoEntity : bidnoAlls) {
			bidNoService.insert(bidNoEntity);	
		}

        return R.ok();
    }

    /**
     * 删除
     */
    @RequestMapping("/delete")
    @RequiresPermissions("generator:bidno:delete")
    public R delete(@RequestBody Integer[] ids){
			bidNoService.deleteBatchIds(Arrays.asList(ids));

        return R.ok();
    }

    
    /**
     * 标的号名称列表
     */
    @RequestMapping("/selectBybidnoname")
    public R bidnonameInfo(@RequestParam Map<String, Object> params){
    	List<RdBorrowEntity> bidnonameInfo = rdBorrowTenderService.selectBybidnoname(params);
    	if(null!=bidnonameInfo && bidnonameInfo.size()>0){
    		BigDecimal riskFund = bidNoService.queryRiskFund((String)params.get("refId"));
    		if(null!=riskFund){
    			bidnonameInfo.get(0).setApr(riskFund);
    		}
    	}
    	 return R.ok().put("bidnonameInfo",bidnonameInfo);
    }
}
