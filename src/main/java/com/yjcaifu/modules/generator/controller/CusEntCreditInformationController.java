package com.yjcaifu.modules.generator.controller;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.yjcaifu.modules.generator.entity.CusCreditInformationEntity;
import com.yjcaifu.modules.generator.entity.CusEntcreditInformationEntity;
import com.yjcaifu.modules.generator.entity.CusEntloanInfoEntity;
import com.yjcaifu.modules.generator.entity.CusLoanInfoEntity;
import com.yjcaifu.modules.generator.entity.EnterpriseCreditEntity;
import com.yjcaifu.modules.generator.entity.PersonalCreditEntity;
import com.yjcaifu.modules.generator.service.BorCreditEnterpriseService;
import com.yjcaifu.modules.generator.service.CusEntcreditInformationService;
import com.yjcaifu.modules.generator.service.CusEntloanInfoService;
import com.yjcaifu.common.annotation.SysLog;
import com.yjcaifu.common.utils.PageUtils;
import com.yjcaifu.common.utils.R;



/**
 * 
 *
 * @author htshen
 * @email htshen@tom.com
 * @date 2018-05-23 19:43:06
 */
@RestController
@RequestMapping("generator/cusentcreditinformation")
public class CusEntCreditInformationController {
    @Autowired
    private CusEntcreditInformationService cusEntcreditInformationService;
    @Autowired
    private CusEntloanInfoService cusEntloanInfoService;
    @Autowired
    private BorCreditEnterpriseService borCreditEnterpriseService;

    /**
     * 列表
     */
    @RequestMapping("/list")
    @RequiresPermissions("generator:cusentcreditinformation:list")
    public R list(@RequestParam Map<String, Object> params){
        PageUtils page = cusEntcreditInformationService.queryPage(params);

        return R.ok().put("page", page);
    }

    /**
     * 所有借款/担保企业征信（params：ids）
     */
    @RequestMapping("/pageByIds")
    @RequiresPermissions("generator:cuscreditinformation:list")
    public R pageByIds(@RequestBody Map<String, Object> params){
        PageUtils page = cusEntcreditInformationService.pageByIds(params);
        return R.ok().put("page", page);
    }
    
    /**
     * 所有借款/担保企业征信（params：ids）
     */
    @RequestMapping("/listByIds")
    @RequiresPermissions("generator:cusestate:list")
    public R listByIds(@RequestBody Map<String, Object> params){
    	// 借款/担保 征信信息List
        List<CusEntcreditInformationEntity> entCreditList = cusEntcreditInformationService.listByIds(params);
      //贷款信息
        for(CusEntcreditInformationEntity entCredit:entCreditList){
        	List<CusEntloanInfoEntity> entloanInfoList=cusEntloanInfoService.queryListByCreditId(entCredit.getId());
        	if(entloanInfoList.size()>0){
        		entCredit.setEntLoanInfo(entloanInfoList);
        	}else{
        		entCredit.setEntLoanInfo(new ArrayList<CusEntloanInfoEntity>());
        	}
        }
        return R.ok().put("list", entCreditList);
    }
    
    /**
     * 信息
     */
    @RequestMapping("/info/{id}")
    @RequiresPermissions("generator:cusentcreditinformation:info")
    public R info(@PathVariable("id") Integer id){
    	EnterpriseCreditEntity enterpriseCredit=new EnterpriseCreditEntity();
    	//企业征信信息
    	CusEntcreditInformationEntity cusEntCreditInformation = cusEntcreditInformationService.selectById(id);
    	enterpriseCredit.setEntCredit(cusEntCreditInformation);
		//贷款信息
		List<CusEntloanInfoEntity> loanInfoList=cusEntloanInfoService.queryListByCreditId(id);
		enterpriseCredit.setEntLoanInfo(loanInfoList);
        return R.ok().put("enterpriseCredit", enterpriseCredit);
    }
    
    /**
     * 进件管理-企业征信报告，下拉选中企业时触发回显
     */
    @RequestMapping("/intoManageEntCreditSel")
    @RequiresPermissions("generator:cuscreditinformation:info")
    public R intoManageEntCreditSel(@RequestParam Map<String, Object> params){
    	EnterpriseCreditEntity enterpriseCredit=new EnterpriseCreditEntity();
    	//企业征信信息
		CusEntcreditInformationEntity cusEntcreditInfo = cusEntcreditInformationService.selectByPerId(params);
		enterpriseCredit.setEntCredit(cusEntcreditInfo);
		//贷款信息
		if(null!=cusEntcreditInfo){
			List<CusEntloanInfoEntity> loanInfoList=cusEntloanInfoService.queryListByCreditId(cusEntcreditInfo.getId());
			enterpriseCredit.setEntLoanInfo(loanInfoList);
		}
        return R.ok().put("enterpriseCredit", enterpriseCredit);
    }
    /**
     * 保存 企业征信
     */
    @SysLog("保存企业征信")
    @RequestMapping("/save")
    @RequiresPermissions("generator:cusentcreditinformation:save")
    @Transactional
    public R save(@RequestBody EnterpriseCreditEntity enterpriseCreditEntity){
    	CusEntcreditInformationEntity cusEntCreditInfo=enterpriseCreditEntity.getEntCredit();    	
    	List<CusEntloanInfoEntity> entloanInfo=enterpriseCreditEntity.getEntLoanInfo();
    	cusEntcreditInformationService.insert(cusEntCreditInfo);
    	if(null!=entloanInfo){
    		for(CusEntloanInfoEntity entloan:entloanInfo){
    			entloan.setRefId(cusEntCreditInfo.getId());
    			cusEntloanInfoService.insert(entloan);
    		}
    	}
        return R.ok();
    }

    /**
     * 修改
     */
    @SysLog("修改企业征信")
    @RequestMapping("/update")
    @RequiresPermissions("generator:cusentcreditinformation:update")
    @Transactional
    public R update(@RequestBody EnterpriseCreditEntity enterpriseCreditEntity){
    	CusEntcreditInformationEntity cusEntCreditInfo=enterpriseCreditEntity.getEntCredit();
    	List<CusEntloanInfoEntity> entloanInfo=enterpriseCreditEntity.getEntLoanInfo();
    	//删除企业名下所有银行贷款记录
    	cusEntloanInfoService.deleteAllByEntCreditId(cusEntCreditInfo.getId());
    	if(null!=entloanInfo){
    		for(CusEntloanInfoEntity entloan:entloanInfo){
    			entloan.setRefId(cusEntCreditInfo.getId());
    			cusEntloanInfoService.insert(entloan);
    		}
    	}
    	 cusEntcreditInformationService.updateById(cusEntCreditInfo);
        return R.ok();
    }

    /**
     * 删除
     */
    @SysLog("删除企业征信")
    @RequestMapping("/delete")
    @RequiresPermissions("generator:cusentcreditinformation:delete")
    @Transactional
    public R delete(@RequestBody Integer[] ids){
    	Map<String, Object> params=new HashMap<String, Object>();
    	params.put("ids", Arrays.asList(ids));
    	cusEntcreditInformationService.deleteBatchIds(Arrays.asList(ids));
    	cusEntloanInfoService.deleteByCreditId(Arrays.asList(ids));
    	borCreditEnterpriseService.deleteByCreditId(Arrays.asList(ids));
        return R.ok();
    }

}
