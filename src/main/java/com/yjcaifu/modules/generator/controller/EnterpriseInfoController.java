package com.yjcaifu.modules.generator.controller;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import net.sf.json.JSONArray;

import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.sun.org.apache.bcel.internal.generic.NEW;
import com.yjcaifu.modules.generator.entity.BorBorrowerCompanyinfoEntity;
import com.yjcaifu.modules.generator.entity.CusCarEntity;
import com.yjcaifu.modules.generator.entity.CusEntcreditInformationEntity;
import com.yjcaifu.modules.generator.entity.EnterpriseInfoEntity;
import com.yjcaifu.modules.generator.entity.RegisterInfoEntity;
import com.yjcaifu.modules.generator.service.BorBorrowerCompanyinfoService;
import com.yjcaifu.modules.generator.service.BorCoborrowerCarService;
import com.yjcaifu.modules.generator.service.BorCoborrowerCompanyService;
import com.yjcaifu.modules.generator.service.BorCoborrowerEstateService;
import com.yjcaifu.modules.generator.service.BorCreditEnterpriseService;
import com.yjcaifu.modules.generator.service.CusCarService;
import com.yjcaifu.modules.generator.service.CusEntcreditInformationService;
import com.yjcaifu.modules.generator.service.CusEntloanInfoService;
import com.yjcaifu.modules.generator.service.CusEstateService;
import com.yjcaifu.modules.generator.service.EnterpriseInfoService;
import com.yjcaifu.modules.generator.service.InvestigationTrialService;
import com.yjcaifu.modules.generator.service.RegisterInfoService;
import com.yjcaifu.common.annotation.SysLog;
import com.yjcaifu.common.utils.PageUtils;
import com.yjcaifu.common.utils.R;



/**
 * 
 *
 * @author htshen
 * @email htshen@tom.com
 * @date 2018-05-07 17:13:49
 */
@RestController
@RequestMapping("/generator/enterpriseinfo")
public class EnterpriseInfoController {
    @Autowired
    private EnterpriseInfoService enterpriseInfoService;
    @Autowired
    private RegisterInfoService registerInfoService;
    @Autowired
    private BorBorrowerCompanyinfoService borBorrowerCompanyinfoService;
    @Autowired
    private CusEntcreditInformationService cusEntcreditInformationService;
    @Autowired
    private CusEntloanInfoService cusEntloanInfoService;
    @Autowired
    private BorCreditEnterpriseService borCreditEnterpriseService;
    @Autowired
    private CusCarService cusCarService;
    @Autowired
    private BorCoborrowerCarService borCoborrowerCarService;
    @Autowired
    private BorCoborrowerEstateService borCoborrowerEstateService;
    @Autowired
    private CusEstateService cusEstateService;
    @Autowired
    private BorCoborrowerCompanyService borCoborrowerCompanyService;
    @Autowired
    private InvestigationTrialService investigationTrialService;
    /**
     * 列表
     */
    @RequestMapping("/list")
    @RequiresPermissions("generator:enterpriseinfo:list")
    public R list(@RequestParam Map<String, Object> params){
        PageUtils page = enterpriseInfoService.queryPage(params);

        return R.ok().put("page", page);
    }
    
    /**
     * 列表
     */
    @RequestMapping("/queryEnterpriseList")
    public R queryEnterpriseList(@RequestParam Map<String, Object> params){
    	if(null!=params.get("enterpriseId")){
    		//Object[] idS= JSONArray.fromObject("[{'name':'hehe','age':22}]").toArray();
    		String enterpriseId=((String)params.get("enterpriseId")).replace("[","").replace("]", "");
    		String[] idS=enterpriseId.split(",");
    		//((((String)params.get("enterpriseId")).replaceAll("[","")).replaceAll("]", "")).split(",");
    		params.put("enterpriseId",idS );
    	}
    	List<EnterpriseInfoEntity> enterpriseInfoEntities=enterpriseInfoService.queryEnterpriseList(params);
    	if(null!=params.get("enterprisename")||null!=params.get("id")||null!=params.get("enterpriseId")){
    		return R.ok().put("list", enterpriseInfoEntities);
    	}else{
    		return R.ok().put("list", new ArrayList<EnterpriseInfoEntity>());
    	}
    }
    
    /**
     * 所有汽车信息（包含担保人，params：ids）
     */
    @RequestMapping("/listByIds")
    @RequiresPermissions("generator:cusestate:list")
    public R listByIds(@RequestBody Map<String, Object> params){
        List<EnterpriseInfoEntity> list = enterpriseInfoService.listByIds(params);

        return R.ok().put("list", list);
    }
    /**
     * 所有汽车信息（包含担保人，params：ids）
     */
    @RequestMapping("/pageByIds")
    @RequiresPermissions("generator:cusestate:list")
    public R pageByIds(@RequestBody Map<String, Object> params){
        PageUtils page = enterpriseInfoService.pageByIds(params);
        return R.ok().put("page", page);
    }
    /**
     * 信息
     */
    @RequestMapping("/info/{id}")
    @RequiresPermissions("generator:enterpriseinfo:info")
    public R info(@PathVariable("id") Integer id){
			EnterpriseInfoEntity enterpriseInfo = enterpriseInfoService.selectById(id);

        return R.ok().put("enterpriseInfo", enterpriseInfo);
    }
    
    /**
     * 共同借款/担保企业信息
     */
    @RequestMapping("/intoManageEntSel")
    @RequiresPermissions("generator:enterpriseinfo:info")
    public R intoManageEntSel(@RequestParam Map<String, Object> params){
			EnterpriseInfoEntity enterpriseInfo = enterpriseInfoService.intoManageEntSel(params);

        return R.ok().put("enterpriseInfo", enterpriseInfo);
    }
    /**
     * 借款/担保企业信息信息
     */
    @RequestMapping("/intoManageEntInfoSel")
    @RequiresPermissions("generator:enterpriseinfo:info")
    public R intoManageEntInfoSel(@RequestParam Map<String, Object> params){
    	BorBorrowerCompanyinfoEntity companyInfo=new BorBorrowerCompanyinfoEntity();
    	EnterpriseInfoEntity enterpriseInfo = enterpriseInfoService.intoManageEntSel(params);
		BorBorrowerCompanyinfoEntity borcompanyInfo = borBorrowerCompanyinfoService.intoManageEntInfoSel(params);
		if(null!=enterpriseInfo){
			companyInfo.setEnterpriseType(enterpriseInfo.getEnterpriseType());
			companyInfo.setBorrCompanyId(enterpriseInfo.getId());
			companyInfo.setDomicile(enterpriseInfo.getDomicile());
			companyInfo.setLegalPerson(enterpriseInfo.getLegalPerson());
			companyInfo.setRegisteredAssets(enterpriseInfo.getRegisteredAssets());
			companyInfo.setEstablishmentTime(enterpriseInfo.getEstablishmentTime());
			companyInfo.setBusinessScope(enterpriseInfo.getBusinessScope());
		}
		if(null!=borcompanyInfo){
			companyInfo.setFinancialSituation(borcompanyInfo.getFinancialSituation());
			companyInfo.setOfficeSpace(borcompanyInfo.getOfficeSpace());
			companyInfo.setEmployees(borcompanyInfo.getEmployees());
			companyInfo.setMonthlyStaffSalary(borcompanyInfo.getMonthlyStaffSalary());
			companyInfo.setSalarySettlement(borcompanyInfo.getSalarySettlement());
			companyInfo.setEntLiabilitiesBalance(borcompanyInfo.getEntLiabilitiesBalance());
			companyInfo.setPerLiabilitiesBalance(borcompanyInfo.getPerLiabilitiesBalance());
			companyInfo.setAbnormalCondition(borcompanyInfo.getAbnormalCondition());
		}
        return R.ok().put("companyInfo", companyInfo);
    }
    /**
     * 保存
     */
    @SysLog("保存企业信息")
    @RequestMapping("/save")
    @RequiresPermissions("generator:enterpriseinfo:save")
    public R save(@RequestBody EnterpriseInfoEntity enterpriseInfo){
    	
    	/*RegisterInfoEntity reginfo=new RegisterInfoEntity();
    	reginfo.setEmpId(enterpriseInfo.getEmpId());
    	reginfo.setMobile(enterpriseInfo.getMobile());
    	reginfo.setRegTime(new Date());
    	//从表
    	Integer id= registerInfoService.insertAndReturnId(reginfo);
    	//主表
    	//enterpriseInfo.setRefId(reginfo.getId());*/
		enterpriseInfoService.insert(enterpriseInfo);
        return R.ok();
    }

    /**
     * 修改
     */
    @SysLog("修改企业信息")
    @RequestMapping("/update")
    @RequiresPermissions("generator:enterpriseinfo:update")
    public R update(@RequestBody EnterpriseInfoEntity enterpriseInfo){
    	
    	/*RegisterInfoEntity reginfo=new RegisterInfoEntity();
    	reginfo.setId(enterpriseInfo.getRefId());
    	reginfo.setEmpId(enterpriseInfo.getEmpId());
    	reginfo.setMobile(enterpriseInfo.getMobile());
    	//从表
    	registerInfoService.updateById(reginfo);
    	//主表
*/		enterpriseInfoService.updateById(enterpriseInfo);

        return R.ok();
    }

    /**
     * 删除
     */
    @SysLog("删除企业信息")
    @RequestMapping("/delete")
    @RequiresPermissions("generator:enterpriseinfo:delete")
    @Transactional
    public R delete(@RequestBody Integer[] ids){
    	if(ids.length>0){
    		//初审信息
    		investigationTrialService.updateBatchByEntIds(Arrays.asList(ids));
    		//复审-共同借款企业
    		borCoborrowerCompanyService.deleteBatchByEntIds(Arrays.asList(ids));
    		//借款/担保企业信息
    		borBorrowerCompanyinfoService.deleteBatchByEntIds(Arrays.asList(ids));
    	}
    	//房产信息(包括进件)
    	List<Integer> esateList = cusEstateService.queryListIntByEntIds(Arrays.asList(ids));
    	if(esateList.size()>0){
    		cusEstateService.deleteBatchIds(esateList);
    		borCoborrowerEstateService.deleteByEsateIds(esateList);
    	}
    	//汽车信息(包括进件)
    	List<Integer> carList = cusCarService.queryListIntByEntIds(Arrays.asList(ids));
    	if(carList.size()>0){
    		cusCarService.deleteBatchIds(carList);
    		borCoborrowerCarService.deleteByCarIds(carList);
    	}
    	//企业征信(包括进件)
    	List<Integer> entCIds=cusEntcreditInformationService.queryListByEntIds(Arrays.asList(ids));
    	if(entCIds.size()>0){
    		cusEntcreditInformationService.deleteBatchIds(entCIds);
        	cusEntloanInfoService.deleteByCreditId(entCIds);
        	borCreditEnterpriseService.deleteByCreditId(entCIds);
    	}
    	//企业信息表
    	enterpriseInfoService.deleteBatchIds(Arrays.asList(ids));
        return R.ok();
    }

}
