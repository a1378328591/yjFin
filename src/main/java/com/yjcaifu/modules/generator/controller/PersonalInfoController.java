package com.yjcaifu.modules.generator.controller;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Date;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.yjcaifu.modules.generator.dao.EnterpriseInfoDao;
import com.yjcaifu.modules.generator.entity.BorBussinessDataEntity;
import com.yjcaifu.modules.generator.entity.BorBussinessRecordEntity;
import com.yjcaifu.modules.generator.entity.PersonalInfoEntity;
import com.yjcaifu.modules.generator.entity.RegisterInfoEntity;
import com.yjcaifu.modules.generator.entity.TempNameEntity;
import com.yjcaifu.modules.generator.service.BorBankStatementService;
import com.yjcaifu.modules.generator.service.BorBaseCityService;
import com.yjcaifu.modules.generator.service.BorBorrowerCompanyinfoService;
import com.yjcaifu.modules.generator.service.BorBussinessDataService;
import com.yjcaifu.modules.generator.service.BorBussinessRecordService;
import com.yjcaifu.modules.generator.service.BorCoborrowerCarService;
import com.yjcaifu.modules.generator.service.BorCoborrowerCompanyService;
import com.yjcaifu.modules.generator.service.BorCoborrowerEstateService;
import com.yjcaifu.modules.generator.service.BorCoborrowerInquiryService;
import com.yjcaifu.modules.generator.service.BorCoborrowerPersonalService;
import com.yjcaifu.modules.generator.service.BorCreditEnterpriseService;
import com.yjcaifu.modules.generator.service.BorCreditPersonalService;
import com.yjcaifu.modules.generator.service.BorLoanPurposeService;
import com.yjcaifu.modules.generator.service.BorOssService;
import com.yjcaifu.modules.generator.service.BorRichTextsService;
import com.yjcaifu.modules.generator.service.BorTaxConditionService;
import com.yjcaifu.modules.generator.service.BorTaxRecordService;
import com.yjcaifu.modules.generator.service.BorrowingInformationService;
import com.yjcaifu.modules.generator.service.CusBankStatementsService;
import com.yjcaifu.modules.generator.service.CusCarService;
import com.yjcaifu.modules.generator.service.CusCreditInformationService;
import com.yjcaifu.modules.generator.service.CusEntcreditInformationService;
import com.yjcaifu.modules.generator.service.CusEntloanInfoService;
import com.yjcaifu.modules.generator.service.CusEstateService;
import com.yjcaifu.modules.generator.service.CusLoanInfoService;
import com.yjcaifu.modules.generator.service.EnterpriseInfoService;
import com.yjcaifu.modules.generator.service.InvestigationTrialService;
import com.yjcaifu.modules.generator.service.LoanMiddleService;
import com.yjcaifu.modules.generator.service.LoanReviewOpinionsService;
import com.yjcaifu.modules.generator.service.PersonalInfoService;
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
@RequestMapping("generator/personalinfo")
public class PersonalInfoController {
    @Autowired
    private PersonalInfoService personalInfoService;
    @Autowired
    private RegisterInfoService registerInfoService;
    @Autowired
    private EnterpriseInfoService enterpriseInfoService;
    @Autowired
    private InvestigationTrialService investigationTrialService;
    @Autowired
    private CusCarService cusCarService;
    @Autowired
    private BorCoborrowerCarService borCoborrowerCarService;
    @Autowired
    private BorCoborrowerEstateService borCoborrowerEstateService;
    @Autowired
    private CusEstateService cusEstateService;
    @Autowired
    private CusCreditInformationService cusCreditInformationService;
    @Autowired
    private BorCreditPersonalService borCreditPersonalService;
    @Autowired
    private CusLoanInfoService cusLoanInfoService;
    @Autowired
    private BorrowingInformationService borrowingInformationService;
    @Autowired
    private BorBankStatementService borBankStatementService;
    @Autowired
    private CusBankStatementsService cusBankStatementsService;
    @Autowired
    private BorBaseCityService borBaseCityService;
    @Autowired
    private BorCoborrowerInquiryService borCoborrowerInquiryService;
    @Autowired
    private BorCoborrowerPersonalService borCoborrowerPersonalService;
    @Autowired
    private BorCoborrowerCompanyService borCoborrowerCompanyService;
    @Autowired
    private BorBorrowerCompanyinfoService borBorrowerCompanyinfoService;
    @Autowired
    private BorLoanPurposeService borLoanPurposeService;
    @Autowired
    private BorCreditEnterpriseService borCreditEnterpriseService;
    @Autowired
    private BorBussinessDataService borBussinessDataService;
    @Autowired
    private BorBussinessRecordService borBussinessRecordService;
    @Autowired
    private BorTaxConditionService borTaxConditionService;
    @Autowired
    private BorTaxRecordService borTaxRecordService;
    @Autowired
    private BorRichTextsService borRichTextsService;
    @Autowired
    private LoanMiddleService loanMiddleService;
    @Autowired
    private LoanReviewOpinionsService loanReviewOpinionsService;
    @Autowired
    private BorOssService borOssService;
    

    /**
     * 列表
     */
    @RequestMapping("/list")
    @RequiresPermissions("generator:personalinfo:list")
    public R list(@RequestParam Map<String, Object> params){
        PageUtils page = personalInfoService.queryPage(params);

        return R.ok().put("page", page);
    }
    
    /**
     * 个人信息
     */
    @RequestMapping("/personalList")
    public R personalList(@RequestParam Map<String, Object> params){
    	List<PersonalInfoEntity> personal=personalInfoService.queryPersonalList(params);

        return R.ok().put("list", personal);
    }
    
    /**
     * 房产-个人/企业信息 （params：OwnerType，realname）
     */
    @RequestMapping("/nameListByOwnerType")
    public R nameListByOwnerType(@RequestParam Map<String, Object> params){
    	//List<PersonalInfoEntity> personal=personalInfoService.nameListByOwnerType(params);
    	List<TempNameEntity> nameList=new ArrayList<TempNameEntity>();
    	if("0".equals(params.get("ownerType"))){
			//个人
    		nameList=personalInfoService.nameListByOwnerType(params);
		}else{
			nameList=enterpriseInfoService.nameListByOwnerType(params);
		}
        return R.ok().put("list", nameList);
    }
    
    /**
     * 房产-个人/企业信息 （params：OwnerType，realname）
     */
    @RequestMapping("/nameListById")
    public R nameListById(@RequestParam Map<String, Object> params){
    	//List<PersonalInfoEntity> personal=personalInfoService.nameListByOwnerType(params);
    	List<TempNameEntity> nameList=new ArrayList<TempNameEntity>();
    	if("0".equals(params.get("ownerType"))){
			//个人
    		nameList=personalInfoService.nameListById(params);
		}else{
			nameList=enterpriseInfoService.nameListById(params);
		}
        return R.ok().put("list", nameList);
    }
    
    /**
     * 省列表
     */
    @RequestMapping("/provinceList")
    public R provinceList(@RequestParam Map<String, Object> params){
        PageUtils page = personalInfoService.queryPage(params);

        return R.ok().put("page", page);
    }

    /**
     * 信息
     */
    @RequestMapping("/info/{id}")
    @RequiresPermissions("generator:personalinfo:info")
    public R info(@PathVariable("id") Integer id){
			PersonalInfoEntity personalInfo = personalInfoService.selectById(id);

        return R.ok().put("personalInfo", personalInfo);
    }
    
    /**
     * 信息
     */
    @RequestMapping("/intoManagePerSel")
    public R intoManagePerSel(@RequestParam Map<String, Object> params){
		PersonalInfoEntity personalInfo = personalInfoService.intoManagePerSel(params);
        return R.ok().put("personalInfo", personalInfo);
    }
    
    /**
     * 保存
     */
    @SysLog("保存个人信息")
    @RequestMapping("/save")
    @RequiresPermissions("generator:personalinfo:save")
    @Transactional
    public R save(@RequestBody PersonalInfoEntity personalInfo){
    	/*RegisterInfoEntity reginfo=new RegisterInfoEntity();
    	reginfo.setEmpId(personalInfo.getEmpId());
    	reginfo.setMobile(personalInfo.getMobile());
    	reginfo.setRegTime(new Date());
    	//主表
    	Integer id= registerInfoService.insertAndReturnId(reginfo);
    	//从表
    	personalInfo.setRefId(reginfo.getId());*/
		personalInfoService.insert(personalInfo);

        return R.ok();
    }

    /**
     * 修改
     */
    @SysLog("修改个人信息")
    @RequestMapping("/update")
    @RequiresPermissions("generator:personalinfo:update")
    @Transactional
    public R update(@RequestBody PersonalInfoEntity personalInfo){
    	/*RegisterInfoEntity reginfo=new RegisterInfoEntity();
    	reginfo.setId(personalInfo.getRefId());
    	reginfo.setEmpId(personalInfo.getEmpId());
    	reginfo.setMobile(personalInfo.getMobile());
    	//主表
    	registerInfoService.updateById(reginfo);
    	//从表
		//personalInfoService.insert(personalInfo);
*/		personalInfoService.updateById(personalInfo);

        return R.ok();
    }

    /**
     * 删除
     */
    @SysLog("删除个人信息")
    @RequestMapping("/delete")
    @RequiresPermissions("generator:personalinfo:delete")
    @Transactional
    public R delete(@RequestBody Integer[] ids){
    	
    	if(ids.length>0){
    		//进件信息
    		List<Integer> borrInfoList = borrowingInformationService.queryListByPerIds(Arrays.asList(ids));//返回进件id
    		if(null != borrInfoList && borrInfoList.size() >0 ){
    			investigationTrialService.deleteBatchByRefIds(borrInfoList);//删除初审信息
    			//项目区域
    			borBaseCityService.deleteBatchByRefId(borrInfoList);
    			//实地调查人
    			borCoborrowerInquiryService.deleteBatchByRefId(borrInfoList);
    			//共同借款人/担保人信息
    			borCoborrowerPersonalService.deleteBatchByRefIds(borrInfoList);
    			//共同借款企业/担保企业
    			borCoborrowerCompanyService.deleteBatchByRefIds(borrInfoList);
    			//资产情况-房产(进件关联表)
    			borCoborrowerEstateService.deleteByRefIds(borrInfoList);
    			//资产情况-汽车(进件关联表)
    			borCoborrowerCarService.deleteBatchByRefIds(borrInfoList);
    			//征信-个人关联表
    			borCreditPersonalService.deleteBatchByRefIds(borrInfoList);
    			//企业征信(进件关联表)
    			borCreditEnterpriseService.deleteByRefIds(borrInfoList);
    			//资产情况-借款/担保企业信息
    			borBorrowerCompanyinfoService.deleteBatchByRefIds(borrInfoList);
    			//借款用途
    			borLoanPurposeService.deleteBatchByRefIds(borrInfoList);
    	        //银行流水
    	        List<Integer> bankSId = borBankStatementService.queryListIdByRefId(borrInfoList);
    	        if(null != bankSId && bankSId.size() >0){
    	        	borBankStatementService.deleteBatchIds(bankSId);
    	        	cusBankStatementsService.deleteBatchByBankSIds(bankSId);
    	        }
    	        //借款/担保企业财务数据分析
    	    	List<Integer> bussData = borBussinessDataService.queryListByRefIds(borrInfoList);//企业财务主表id
    	    	if(null != bussData && bussData.size()>0){
    	    		borBussinessDataService.deleteBatchIds(bussData);
    	    		borBussinessRecordService.deleteBatchByMainTabId(bussData);
    	    	}
    	    	//相关主体水电税票
    	    	List<Integer> taxCondition = borTaxConditionService.queryListByRefId(borrInfoList);
    	    	if(null != taxCondition && taxCondition.size()>0){
    	    		borTaxConditionService.deleteBatchIds(taxCondition);
    	    		borTaxRecordService.deleteBatchByMainTabIds(taxCondition);
    	    	}
    	    	//企业基础资料
    	    	borOssService.deleteBatchByRefIds(borrInfoList);
    	    	//贷审会意见
    	    	List<Integer> loanmiInt = loanMiddleService.queryListByRefId(borrInfoList);
    	    	if(null != loanmiInt && loanmiInt.size()>0){
    	    		loanMiddleService.deleteBatchIds(loanmiInt);
    	    		loanReviewOpinionsService.deleteBatchByMainTabIds(loanmiInt);
    	    	}
    	    	//备注-富文本
    	    	borRichTextsService.deleteBatchByRefIds(borrInfoList);
    	    	
    			borrowingInformationService.deleteBatchIds(borrInfoList);//删除复审主表
    		}
    		//
    		//
    	}
    	//房产信息(包括进件)
    	List<Integer> esateList = cusEstateService.queryListIntByPerIds(Arrays.asList(ids));
    	if(esateList.size()>0){
    		cusEstateService.deleteBatchIds(esateList);
    		borCoborrowerEstateService.deleteByEsateIds(esateList);
    	}
    	//汽车信息(包括进件)
    	List<Integer> carList = cusCarService.queryListIntByPerIds(Arrays.asList(ids));
    	if(carList.size()>0){
    		cusCarService.deleteBatchIds(carList);
    		borCoborrowerCarService.deleteByCarIds(carList);
    	}
    	//个人征信(包括进件)
    	List<Integer> entCIds=cusCreditInformationService.queryListByPerIds(Arrays.asList(ids));
    	if(entCIds.size()>0){
    		cusCreditInformationService.deleteBatchIds(entCIds);
    		cusLoanInfoService.deleteByCreditId(entCIds);
    		borCreditPersonalService.deleteByCreditId(entCIds);
    	}
    	//个人信息表
		personalInfoService.deleteBatchIds(Arrays.asList(ids));

        return R.ok();
    }

}
