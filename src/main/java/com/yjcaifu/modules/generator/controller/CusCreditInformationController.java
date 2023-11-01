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
import com.yjcaifu.modules.generator.entity.CusLoanInfoEntity;
import com.yjcaifu.modules.generator.entity.EnterpriseInfoEntity;
import com.yjcaifu.modules.generator.entity.PersonalCreditEntity;
import com.yjcaifu.modules.generator.entity.PersonalInfoEntity;
import com.yjcaifu.modules.generator.service.BorCreditPersonalService;
import com.yjcaifu.modules.generator.service.CusCreditInformationService;
import com.yjcaifu.modules.generator.service.CusLoanInfoService;
import com.yjcaifu.common.annotation.SysLog;
import com.yjcaifu.common.utils.PageUtils;
import com.yjcaifu.common.utils.R;



/**
 * InnoDB free: 9216 kB
 *
 * @author chenshun
 * @email sunlightcs@gmail.com
 * @date 2018-05-14 09:46:19
 */
@RestController
@RequestMapping("generator/cuscreditinformation")
public class CusCreditInformationController {
    @Autowired
    private CusCreditInformationService cusCreditInformationService;
    @Autowired
    private CusLoanInfoService cusLoanInfoService;
    @Autowired
    private BorCreditPersonalService borCreditPersonalService;
    /**
     * 列表
     */
    @RequestMapping("/list")
    @RequiresPermissions("generator:cuscreditinformation:list")
    public R list(@RequestParam Map<String, Object> params){
        PageUtils page = cusCreditInformationService.queryPage(params);

        return R.ok().put("page", page);
    }

    
    @RequestMapping("/findHumen")
    public List<PersonalInfoEntity> findOwner(){
    	return cusCreditInformationService.findHumen();
    }

    /**
     * 信息
     */
    @RequestMapping("/info/{id}")
    @RequiresPermissions("generator:cuscreditinformation:info")
    public R info(@PathVariable("id") Integer id){
    	PersonalCreditEntity personalCredit=new PersonalCreditEntity();
    	//个人征信信息
		CusCreditInformationEntity cusCreditInformation = cusCreditInformationService.selectById(id);
		personalCredit.setPerCredit(cusCreditInformation);
		//贷款信息
		List<CusLoanInfoEntity> loanInfoList=cusLoanInfoService.queryListByCreditId(id);
		personalCredit.setLoanInfo(loanInfoList);
        return R.ok().put("personalCredit", personalCredit);
    }
    
    /**
     * 所有个人征信（包含担保人，params：ids）
     */
    @RequestMapping("/pageByIds")
    @RequiresPermissions("generator:cuscreditinformation:list")
    public R pageByIds(@RequestBody Map<String, Object> params){
        PageUtils page = cusCreditInformationService.pageByIds(params);
        return R.ok().put("page", page);
    }
    
    /**
     * 所有个人征信（包含担保人，params：ids）
     */
    @RequestMapping("/listByIds")
    @RequiresPermissions("generator:cusestate:list")
    public R listByIds(@RequestBody Map<String, Object> params){
    	// 借款/担保 征信信息List
        List<CusCreditInformationEntity> perCreditList = cusCreditInformationService.listByIds(params);
      //贷款信息
        for(CusCreditInformationEntity percCredit:perCreditList){
        	List<CusLoanInfoEntity> loanInfoList=cusLoanInfoService.queryListByCreditId(percCredit.getId());
        	if(loanInfoList.size()>0){
        		percCredit.setPerLoanInfo(loanInfoList);
        	}else{
        		percCredit.setPerLoanInfo(new ArrayList<CusLoanInfoEntity>());
        	}
        }
        return R.ok().put("list", perCreditList);
    }
    /**
     * 进件管理-企业征信报告，下拉选中企业时触发回显
     */
    @RequestMapping("/intoManagePerCreditSel")
    @RequiresPermissions("generator:cuscreditinformation:info")
    public R intoManagePerCreditSel(@RequestParam Map<String, Object> params){
    	PersonalCreditEntity personalCredit=new PersonalCreditEntity();
    	//个人征信信息
		CusCreditInformationEntity cusCreditInformation = cusCreditInformationService.selectByPerId(params);
		personalCredit.setPerCredit(cusCreditInformation);
		//贷款信息
		if(null!=cusCreditInformation){
			List<CusLoanInfoEntity> loanInfoList=cusLoanInfoService.queryListByCreditId(cusCreditInformation.getId());
			personalCredit.setLoanInfo(loanInfoList);
		}
        return R.ok().put("personalCredit", personalCredit);
    }
    /**
     * 保存 个人
     */
    @SysLog("保存个人征信")
    @RequestMapping("/save")
    @RequiresPermissions("generator:cuscreditinformation:save")
    @Transactional
    public R save(@RequestBody PersonalCreditEntity personalCreditEntity){
    	CusCreditInformationEntity cusCreditInformation=personalCreditEntity.getPerCredit();
    	List<CusLoanInfoEntity> loanInfoEntity=personalCreditEntity.getLoanInfo();
    	cusCreditInformationService.insert(cusCreditInformation);
    	if(null!=loanInfoEntity){
    		for(CusLoanInfoEntity loan:loanInfoEntity){
    			loan.setRefId(cusCreditInformation.getId());
    			cusLoanInfoService.insert(loan);
    		}
    	}
        return R.ok();
    }

    /**
     * 修改
     */
    @SysLog("修改个人征信")
    @RequestMapping("/update")
    @RequiresPermissions("generator:cuscreditinformation:update")
    @Transactional
    public R update(@RequestBody PersonalCreditEntity personalCreditEntity){
    	CusCreditInformationEntity cusCreditInformation=personalCreditEntity.getPerCredit();
    	List<CusLoanInfoEntity> loanInfoEntity=personalCreditEntity.getLoanInfo();
    	//删除个人名下所有银行贷款记录
    	cusLoanInfoService.deleteAllByPerCreditId(cusCreditInformation.getId());
    	if(null!=loanInfoEntity){
    		for(CusLoanInfoEntity loan:loanInfoEntity){
    			loan.setRefId(cusCreditInformation.getId());
    			cusLoanInfoService.insert(loan);
    		}
    	}
		cusCreditInformationService.updateById(cusCreditInformation);

        return R.ok();
    }

    /**
     * 删除
     */
    @SysLog("删除个人征信")
    @RequestMapping("/delete")
    @RequiresPermissions("generator:cuscreditinformation:delete")
    @Transactional
    public R delete(@RequestBody Integer[] ids){
    	Map<String, Object> params=new HashMap<String, Object>();
    	params.put("ids", Arrays.asList(ids));
		cusCreditInformationService.deleteBatchIds(Arrays.asList(ids));
		cusLoanInfoService.deleteByCreditId(Arrays.asList(ids));
		borCreditPersonalService.deleteByCreditId(Arrays.asList(ids));
        return R.ok();
    }

}
