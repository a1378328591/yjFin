package com.yjcaifu.modules.generator.controller;

import com.alibaba.druid.stat.TableStat.Name;
import com.yjcaifu.common.entity.SysAreaEntity;
import com.yjcaifu.common.service.SysAreaService;
import com.yjcaifu.common.utils.DocUtil;
import com.yjcaifu.common.utils.R;
import com.yjcaifu.modules.app.entity.UserEntity;
import com.yjcaifu.modules.generator.dao.BorrowingInformationDao;
import com.yjcaifu.modules.generator.entity.BorBankStatementEntity;
import com.yjcaifu.modules.generator.entity.BorBaseCityEntity;
import com.yjcaifu.modules.generator.entity.BorBorrowerCompanyinfoEntity;
import com.yjcaifu.modules.generator.entity.BorBussinessDataEntity;
import com.yjcaifu.modules.generator.entity.BorBussinessRecordEntity;
import com.yjcaifu.modules.generator.entity.BorCoborrowerCompanyEntity;
import com.yjcaifu.modules.generator.entity.BorCoborrowerPersonalEntity;
import com.yjcaifu.modules.generator.entity.BorCreditEnterpriseEntity;
import com.yjcaifu.modules.generator.entity.BorCreditPersonalEntity;
import com.yjcaifu.modules.generator.entity.BorLoanPurposeEntity;
import com.yjcaifu.modules.generator.entity.BorRichTextsEntity;
import com.yjcaifu.modules.generator.entity.BorTaxConditionEntity;
import com.yjcaifu.modules.generator.entity.BorTaxRecordEntity;
import com.yjcaifu.modules.generator.entity.BorrManageEntity;
import com.yjcaifu.modules.generator.entity.BorrowingInformationEntity;
import com.yjcaifu.modules.generator.entity.CusBankStatementsEntity;
import com.yjcaifu.modules.generator.entity.CusCarEntity;
import com.yjcaifu.modules.generator.entity.CusCreditInformationEntity;
import com.yjcaifu.modules.generator.entity.CusEntcreditInformationEntity;
import com.yjcaifu.modules.generator.entity.CusEntloanInfoEntity;
import com.yjcaifu.modules.generator.entity.CusEstateEntity;
import com.yjcaifu.modules.generator.entity.CusLoanInfoEntity;
import com.yjcaifu.modules.generator.entity.EnterpriseCreditEntity;
import com.yjcaifu.modules.generator.entity.InvestigationTrialEntity;
import com.yjcaifu.modules.generator.entity.LoanAll;
import com.yjcaifu.modules.generator.entity.LoanMiddleEntity;
import com.yjcaifu.modules.generator.entity.LoanReviewOpinionsEntity;
import com.yjcaifu.modules.generator.entity.PersonalCreditEntity;
import com.yjcaifu.modules.generator.entity.PersonalInfoEntity;
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
import com.yjcaifu.modules.generator.service.BorRichTextsService;
import com.yjcaifu.modules.generator.service.BorTaxConditionService;
import com.yjcaifu.modules.generator.service.BorTaxRecordService;
import com.yjcaifu.modules.generator.service.CusBankStatementsService;
import com.yjcaifu.modules.generator.service.CusCreditInformationService;
import com.yjcaifu.modules.generator.service.CusEntcreditInformationService;
import com.yjcaifu.modules.generator.service.CusEntloanInfoService;
import com.yjcaifu.modules.generator.service.CusLoanInfoService;
import com.yjcaifu.modules.generator.service.InvestigationTrialService;
import com.yjcaifu.modules.generator.service.LoanMiddleService;
import com.yjcaifu.modules.generator.service.LoanReviewOpinionsService;
import com.yjcaifu.modules.generator.service.PersonalInfoService;
import com.yjcaifu.modules.sys.controller.AbstractController;
import com.yjcaifu.modules.sys.entity.SysUserEntity;
import com.yjcaifu.common.utils.R;
import com.yjcaifu.modules.sys.entity.SysUserEntity;
import com.yjcaifu.modules.sys.form.SysLoginForm;
import com.yjcaifu.modules.sys.service.SysCaptchaService;
import com.yjcaifu.modules.sys.service.SysUserService;
import com.yjcaifu.modules.sys.service.SysUserTokenService;

import org.apache.commons.beanutils.converters.StringArrayConverter;
import org.apache.commons.io.IOUtils;
import org.apache.shiro.crypto.hash.Sha256Hash;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import javax.imageio.ImageIO;
import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletResponse;

import java.awt.image.BufferedImage;
import java.io.BufferedInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/**
 * 登录相关
 * 
 * @author htshen
 * @email htshen@tom.com
 * @date 2016年11月10日 下午1:15:31
 */
@RestController
public class DownloadWordController extends AbstractController {
	@Autowired
	private SysUserService sysUserService;
	@Autowired
	private SysUserTokenService sysUserTokenService;
	@Autowired
	private SysCaptchaService sysCaptchaService;
	@Autowired
    private InvestigationTrialService investigationTrialService;
	@Autowired
    private BorBaseCityService borBaseCityService;
	@Autowired
	BorCoborrowerInquiryService borCoborrowerInquiryService;
	@Autowired
	BorCoborrowerEstateService borCoborrowerEstateService;
	@Autowired
	BorCoborrowerCarService borCoborrowerCarService;
	@Autowired
	BorBorrowerCompanyinfoService borBorrowerCompanyinfoService;
	@Autowired
	BorLoanPurposeService borLoanPurposeService;
	@Autowired
	BorCreditPersonalService borCreditPersonalService;
	@Autowired
	BorCreditEnterpriseService borCreditEnterpriseService;
	@Autowired
	CusCreditInformationService cusCreditInformationService;
	@Autowired
	CusLoanInfoService cusLoanInfoService;
	@Autowired
	CusEntcreditInformationService cusEntcreditInformationService;
	@Autowired
	CusEntloanInfoService cusEntloanInfoService;
	@Autowired
    private BorBankStatementService borBankStatementService;
    @Autowired
    private BorTaxConditionService borTaxConditionService;
    @Autowired
    private BorTaxRecordService borTaxRecordService;
    @Autowired
    private BorBussinessDataService borBussinessDataService;
    @Autowired
    private BorBussinessRecordService borBussinessRecordService;
    @Autowired
    private CusBankStatementsService cusBankStatementsService;
    @Autowired
    private BorRichTextsService borRichTextsService;
    @Autowired
	BorCoborrowerCompanyService borCoborrowerCompanyService;
	@Autowired
	BorCoborrowerPersonalService borCoborrowerPersonalService;
	@Autowired
	PersonalInfoService personalInfoService;
	@Autowired
	BorrowingInformationDao borrowingInformationDao;
	@Autowired
    private SysAreaService sysAreaService;
	@Autowired
    private LoanMiddleService loanMiddleService;
	@Autowired
    private LoanReviewOpinionsService loanReviewOpinionsService;

	/**
	 * 导出初审
	 */
	@RequestMapping(value = "/download/trialManageWord", method = RequestMethod.GET)  
	public void trialManageWord(@RequestParam Map<String, Object> params,HttpServletResponse response)throws IOException {
		Integer idInt=Integer.valueOf((String)params.get("id"));
		Map<String, Object> param = new HashMap<String, Object>();
		InvestigationTrialEntity retInv=new InvestigationTrialEntity();
    	InvestigationTrialEntity investigationTrial = investigationTrialService.selectByIntoManageId(idInt);
    	if(null == investigationTrial){
    		retInv.setRefId(idInt);
    		investigationTrialService.insert(retInv);
    		investigationTrial = investigationTrialService.selectByIntoManageId(idInt);
    	}
    	if(null == investigationTrial.getEnterpriseName()){
    		investigationTrial.setEnterpriseName("");
    	}
    	if(null == investigationTrial.getRecordPersonnelName()){
    		investigationTrial.setRecordPersonnelName("");
    	}
		param.put("obj", investigationTrial);
		SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMdd");  
		String dataString= sdf.format(investigationTrial.getApplyTime());
		DocUtil docUtil = new DocUtil();
		String dou = docUtil.createDoc(param, investigationTrial.getRealname()+dataString+"(初审)","trialManage");
		/*if(dou!=null && !"".equals(dou)){
			File downFile=new file
		}*/
		String filenameString=null;
		filenameString = new String(dou.getBytes("utf-8"),"ISO8859-1");
		File downloadFile = new File("upload/"+dou);
		response.setHeader("Content-Type", "application/octet-stream");
		response.setHeader("Content-Disposition", "attachment;filename="+filenameString);
		response.setContentType("application/force-download");
        byte[] buffer = new byte[1024];
        FileInputStream fis = null;
        BufferedInputStream bis = null;
        ServletOutputStream  os = null;
        try {
        	os = response.getOutputStream();
        	fis = new FileInputStream(downloadFile);
        	bis = new BufferedInputStream(fis);
        	while (bis.read(buffer) != -1) {
				os.write(buffer);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			bis.close();
			fis.close();
		}
	}
	
	/**
	 * 导出复审
	 */
	@RequestMapping(value = "/download/intoManageWord", method = RequestMethod.GET)  
	public void intoManageWord(@RequestParam Map<String, Object> params,HttpServletResponse response)throws IOException {
		Integer idInt=Integer.valueOf((String)params.get("refId"));
		Map<String, Object> param = new HashMap<String, Object>();
		BorrManageEntity borrManage = returnIntoManage(params);
    	
		param.put("personalBase", borrManage.getPersonalBase());
		param.put("personalBorrs", borrManage.getPersonalBorr());
		param.put("entrpriseBorrs", borrManage.getEntrpriseBorr());
		param.put("borrowingInfo", borrManage.getBorrowingInfo());
		param.put("estates", borrManage.getEstateBorr());
		param.put("cars", borrManage.getCarBorr());
		param.put("entInfos", borrManage.getEntrpriseInfo());
		param.put("purposes", borrManage.getLoanPurpose());//往来对手
		param.put("perCs", borrManage.getPerCreditEntity().getPerCreditList());//个人征信
		param.put("entCs", borrManage.getEntCreditEntity().getEntCreditList());//企业征信
		param.put("bankSs", borrManage.getBorrBankStatement());//银行流水
		param.put("bussDatas", borrManage.getBorBussinessData());//借款/担保企业财务数据分析（Firest）
		param.put("taxConditions", borrManage.getTaxCondition());//相关主体水电税务
    	Integer refId = Integer.valueOf((String) params.get("refId"));
    	List<LoanMiddleEntity> loanMiddle = loanMiddleService.selectByRefId(refId);//主表
    	for (LoanMiddleEntity loanMiddleEntity : loanMiddle) {
    		if(null!=loanMiddleEntity.getResult()){
    			if(1==loanMiddleEntity.getResult()){
    				loanMiddleEntity.setResultStr("通过");
    			}else{
    				loanMiddleEntity.setResultStr("不通过");
    			}
    		}else {
    			loanMiddleEntity.setResultStr("");
			}
    		//从表services
    		List<LoanReviewOpinionsEntity> loanReviewOpinions= loanReviewOpinionsService.selectByrefId(loanMiddleEntity.getId());//从表
			loanMiddleEntity.setLoanReviewOpinions(loanReviewOpinions);
		}
    	param.put("ideaArrs", loanMiddle);//贷审会意见
    	String borRichTextStr="";
    	if(null!=borrManage.getBorRichTexts()){
    		borRichTextStr=delHTMLTag(borrManage.getBorRichTexts());//富文本
    	}
    	param.put("borRichTexts",borRichTextStr);
		SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMdd");  
		String dataString= sdf.format(borrManage.getBorrowingInfo().getApplyTime());
		DocUtil docUtil = new DocUtil();
		String dou = docUtil.createDoc(param, borrManage.getPersonalBase().getRealname()+dataString+"(复审)","intoMange");
		/*if(dou!=null && !"".equals(dou)){
			File downFile=new file
		}*/
		String filenameString=null;
		filenameString = new String(dou.getBytes("utf-8"),"ISO8859-1");
		File downloadFile = new File("upload/"+dou);
		response.setHeader("Content-Type", "application/octet-stream");
		response.setHeader("Content-Disposition", "attachment;filename="+filenameString);
		response.setContentType("application/force-download");
        byte[] buffer = new byte[1024];
        FileInputStream fis = null;
        BufferedInputStream bis = null;
        ServletOutputStream  os = null;
        try {
        	os = response.getOutputStream();
        	fis = new FileInputStream(downloadFile);
        	bis = new BufferedInputStream(fis);
        	while (bis.read(buffer) != -1) {
				os.write(buffer);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			bis.close();
			fis.close();
		}
	}
	
	public BorrManageEntity returnIntoManage(Map<String, Object> params){
		Integer borrId=Integer.valueOf((String)params.get("refId"));
		BorrManageEntity borManage=new BorrManageEntity();
		//借款人基本信息
		PersonalInfoEntity perInfo=personalInfoService.selectByBorrId(borrId);
		borManage.setPersonalBase(perInfo);		//set基本信息
		BorBaseCityEntity cityEntity=borBaseCityService.queryByRefId(params);
		List<Integer> cityList=new ArrayList<Integer>();
		if(null!=cityEntity){
			String cityStr=cityEntity.getCity();
			if(null!=cityStr){
				String[] cityArr=cityStr.split(",");
				if(cityArr.length>0){
					for(String id:cityArr){
						cityList.add(Integer.valueOf(id));
					}
				}
			}
		}
		String areaName="";
		if(cityList.size()>=3){
			SysAreaEntity sysArea = sysAreaService.selectById(cityList.get(2));
			areaName= sysArea.getAreaName();
		}
		borManage.getPersonalBase().setAreaName(areaName);
		//基本信息-实地调查人
		String inquiryName="";
		List<Integer> inquiryList=borCoborrowerInquiryService.queryList(borrId);
		if(null!=inquiryList && inquiryList.size()>0){
			params.put("userIds", inquiryList);
			List<UserEntity> userList = sysUserService.queryUserListByUseridList(params);
			if(null != userList){
				for(UserEntity user:userList){
					inquiryName += user.getUsername();
				}
			}
		}
		borManage.getPersonalBase().setEmpInquirer(inquiryName);
		//基本信息-婚姻状况
		if(null!=borManage.getPersonalBase().getMaritalStatus()){
			if(0 == borManage.getPersonalBase().getMaritalStatus()){
				borManage.getPersonalBase().setMaritalStatusName("已婚");
			}else if(1 == borManage.getPersonalBase().getMaritalStatus()){
				borManage.getPersonalBase().setMaritalStatusName("未婚");
			}else{
				borManage.getPersonalBase().setMaritalStatusName("");
			}
		}
		if(null==borManage.getPersonalBase().getRealname()){
			borManage.getPersonalBase().setRealname("");
		}
		//共同借款人等信息
		List<BorCoborrowerPersonalEntity> borPer=borCoborrowerPersonalService.queryList(params);
		if(null != borPer && borPer.size() == 0){
			borPer.add(new BorCoborrowerPersonalEntity());
		}
		borManage.setPersonalBorr(borPer);
		//共同借款企业信息
		List<BorCoborrowerCompanyEntity> comList=borCoborrowerCompanyService.queryBorCompList(params);
		if(null != comList && comList.size() == 0){
			comList.add(new BorCoborrowerCompanyEntity());
		}
		borManage.setEntrpriseBorr(comList);
		//进件基本信息
		BorrowingInformationEntity borrInfo=borrowingInformationDao.selectById(borrId);
		if(null == borrInfo.getRatifyMoney()){
			borrInfo.setRatifyMoneyStr("");
		}else{
			borrInfo.setRatifyMoneyStr(String.valueOf(borrInfo.getRatifyMoney()));
		}
		if(null == borrInfo.getRatifyTimeLimit()){
			borrInfo.setRatifyTimeLimitStr("");
		}else{
			borrInfo.setRatifyTimeLimitStr(String.valueOf(borrInfo.getRatifyTimeLimit()));
		}
		borManage.setBorrowingInfo(borrInfo);
		// TODO Auto-generated method stub
		borManage.setId(borrId);
		//个人房产信息
		List<CusEstateEntity> estateList=borCoborrowerEstateService.queryList(params);
		if(null==estateList || estateList.size() == 0){
			estateList.add(new CusEstateEntity());
		}
		if(null!=estateList){
			for(int i=0;i<estateList.size();i++){
				estateList.get(i).setId(i+1);
			}
		}
		borManage.setEstateBorr(estateList);
		//个人汽车信息
		List<CusCarEntity> carList=borCoborrowerCarService.queryList(params);
		if(null == carList || carList.size() == 0){
			CusCarEntity carEnt = new CusCarEntity();
			carEnt.setLoans(1000);
			carEnt.setMortgageWay(1000);//word只判断等于0,1,2情况
			carList.add(carEnt);
		}
		if(null!=estateList){
			for(int i=0;i<carList.size();i++){
				carList.get(i).setId(i+1);
			}
		}
		borManage.setCarBorr(carList);
		//借款/担保企业信息
		List<BorBorrowerCompanyinfoEntity> borBorrCompInfoList=new ArrayList<BorBorrowerCompanyinfoEntity>();
		List<BorBorrowerCompanyinfoEntity> compInfoList=borBorrowerCompanyinfoService.queryBorBorrCompInfo(params);
		if(compInfoList.size()>0){
			borBorrCompInfoList=compInfoList;
		}else{
			borBorrCompInfoList.add(new BorBorrowerCompanyinfoEntity());
		}
		for(BorBorrowerCompanyinfoEntity com:borBorrCompInfoList){
			if(null==com.getEstablishmentTime()){
				com.setEstablishmentTimeStr("");
			}
			if(null==com.getOfficeSpace()){
				com.setOfficeSpaceStr("");
			}
		}
		borManage.setEntrpriseInfo(borBorrCompInfoList);
		//往来对手
		List<BorLoanPurposeEntity> loanPurposeList=borLoanPurposeService.queryListById(params);
		if(null!=loanPurposeList){
			for(BorLoanPurposeEntity purpose:loanPurposeList){
				if(null==purpose.getSigningTimeStr()){
					purpose.setSigningTimeStr("");
				}
			}
		}
		borManage.setLoanPurpose(loanPurposeList);
		//个人征信信息
		PersonalCreditEntity personalCredit=new PersonalCreditEntity();
		List<BorCreditPersonalEntity> perExist= borCreditPersonalService.queryByRefId(params);
		List<CusCreditInformationEntity> retCusCreditList=new ArrayList<CusCreditInformationEntity>();
		if(null != perExist && perExist.size()>0){
			for(BorCreditPersonalEntity borCredit:perExist){
				CusCreditInformationEntity cusCreditInformation = cusCreditInformationService.selectById(borCredit.getCreditId());
				if(null!=cusCreditInformation){
					List<CusLoanInfoEntity> loanInfoList=cusLoanInfoService.queryListByCreditId(borCredit.getCreditId());
					if(loanInfoList.size()>0){
						for(CusLoanInfoEntity loan:loanInfoList){
							if(null==loan.getNewOrReloan()){
								loan.setNewOrReloanStr("");
							}else if (0==loan.getNewOrReloan()){
								loan.setNewOrReloanStr("新增");
							}else if (1==loan.getNewOrReloan()){
								loan.setNewOrReloanStr("再贷");
							}
						}
						cusCreditInformation.setPerLoanInfo(loanInfoList);
					}else{
						cusCreditInformation.setPerLoanInfo(new ArrayList<CusLoanInfoEntity>());
					}
				}else{
					cusCreditInformation=new CusCreditInformationEntity();
					cusCreditInformation.setPerLoanInfo(new ArrayList<CusLoanInfoEntity>());
				}
				retCusCreditList.add(cusCreditInformation);
			}
		}else{
			CusCreditInformationEntity empty =new CusCreditInformationEntity();
			List<CusLoanInfoEntity> perLoan= new ArrayList<CusLoanInfoEntity>();
			perLoan.add(new CusLoanInfoEntity());
			empty.setPerLoanInfo(perLoan);
			retCusCreditList.add(empty);
		}
		personalCredit.setPerCreditList(retCusCreditList);
		borManage.setPerCreditEntity(personalCredit);
		//企业征信信息
		EnterpriseCreditEntity enterpriseCredit=new EnterpriseCreditEntity();
		List<BorCreditEnterpriseEntity> entExist= borCreditEnterpriseService.queryByRefId(params);
		List<CusEntcreditInformationEntity> retEntCreditInformation=new ArrayList<CusEntcreditInformationEntity>();
		if(null !=entExist && entExist.size()>0){
			for(BorCreditEnterpriseEntity borCreditEnt:entExist){
				CusEntcreditInformationEntity cusEntCreditInformation = cusEntcreditInformationService.selectById(borCreditEnt.getCreditId());
				if(null!=cusEntCreditInformation){
					List<CusEntloanInfoEntity> entLoanInfoList=cusEntloanInfoService.queryListByCreditId(borCreditEnt.getCreditId());
					if(entLoanInfoList.size()>0){
						for(CusEntloanInfoEntity loan:entLoanInfoList){
							if(null==loan.getNewOrReloan()){
								loan.setNewOrReloanStr("");
							}else if (0==loan.getNewOrReloan()){
								loan.setNewOrReloanStr("新增");
							}else if (1==loan.getNewOrReloan()){
								loan.setNewOrReloanStr("再贷");
							}
						}
						cusEntCreditInformation.setEntLoanInfo(entLoanInfoList);
					}else{
						cusEntCreditInformation.setEntLoanInfo(new ArrayList<CusEntloanInfoEntity>());
					}
				}else{
					cusEntCreditInformation=new CusEntcreditInformationEntity();
					cusEntCreditInformation.setEntLoanInfo(new ArrayList<CusEntloanInfoEntity>());
				}
				retEntCreditInformation.add(cusEntCreditInformation);
			}
		}else{
			CusEntcreditInformationEntity emptyCusEnt =new CusEntcreditInformationEntity();
			List<CusEntloanInfoEntity> listEntloan=new ArrayList<CusEntloanInfoEntity>();
			listEntloan.add(new CusEntloanInfoEntity());
			emptyCusEnt.setEntLoanInfo(listEntloan);
			retEntCreditInformation.add(emptyCusEnt);
		}
		enterpriseCredit.setEntCreditList(retEntCreditInformation);
		borManage.setEntCreditEntity(enterpriseCredit);
		//个人银行流水
		List<BorBankStatementEntity> retBorBankS=new ArrayList<BorBankStatementEntity>();
		List<BorBankStatementEntity> isExistBorBankStatement=borBankStatementService.queryByRefId(params);
		if(null!=isExistBorBankStatement){
			for(BorBankStatementEntity borBank:isExistBorBankStatement){
				params.put("bankStatementId", borBank.getId());
				List<CusBankStatementsEntity> records=cusBankStatementsService.queryListByMainTableId(params);
				if(null!=records){
					borBank.setMonths(records);
				}else{
					borBank.setMonths(new ArrayList<CusBankStatementsEntity>());
				}
				retBorBankS.add(borBank);
			}
		}else{
			BorBankStatementEntity temp=new BorBankStatementEntity();
			temp.setMonths(new ArrayList<CusBankStatementsEntity>());
			retBorBankS.add(temp);
		}
		borManage.setBorrBankStatement(retBorBankS);
		//借款相关主体水电税票情况
		List<BorTaxConditionEntity> retTaxCondition=new ArrayList<BorTaxConditionEntity>();
		List<BorTaxConditionEntity> taxCondition=borTaxConditionService.queryListByRefIdParam(params);
		if(null!=taxCondition){
			for(BorTaxConditionEntity taxC:taxCondition){
				params.put("taxConditionId", taxC.getId());
				List<BorTaxRecordEntity> taxRecord=borTaxRecordService.queryListByTaxCondId(params);
				if(null==taxRecord){
					taxC.setRecords(new ArrayList<BorTaxRecordEntity>());
				}else{
					taxC.setRecords(taxRecord);
				}
			}
			retTaxCondition=taxCondition;
		}else{
			BorTaxConditionEntity empty = new BorTaxConditionEntity();
			empty.setRecords(new ArrayList<BorTaxRecordEntity>());
			retTaxCondition.add(empty);
		}
		borManage.setTaxCondition(retTaxCondition);
		//企业财务数据分析
		List<BorBussinessDataEntity> retbussBorBussinessData = new ArrayList<BorBussinessDataEntity>();
		List<BorBussinessDataEntity> bussDataList=borBussinessDataService.queryByRefId(params);
		if(null!=bussDataList){
			for(BorBussinessDataEntity bussData:bussDataList){
				params.put("bussinessDataId", bussData.getId());
				List<BorBussinessRecordEntity> dataRecords=borBussinessRecordService.queryAllByBussDataId(params);
				if(dataRecords.size()>0){
					bussData.setBussinessDataF(dataRecords.get(0));
					bussData.setBussinessDataS(dataRecords.get(1));
					bussData.setBussinessDataT(dataRecords.get(2));
				}else{
					List<BorBussinessRecordEntity> recList= new ArrayList<BorBussinessRecordEntity>();
					bussData.setBussinessDataF(new BorBussinessRecordEntity());
					bussData.setBussinessDataS(new BorBussinessRecordEntity());
					bussData.setBussinessDataT(new BorBussinessRecordEntity());
				}
			}
			retbussBorBussinessData=bussDataList;
		}else{
				List<BorBussinessRecordEntity> retList = new ArrayList<BorBussinessRecordEntity>();
				BorBussinessRecordEntity bussinessRecord1=new BorBussinessRecordEntity();
				SimpleDateFormat sdf = new SimpleDateFormat("yyyy");  
				Calendar c = Calendar.getInstance();
				c.setTime(new Date());
				c.add(Calendar.YEAR, -2);
				String year="";
				year=sdf.format(c.getTime());
				bussinessRecord1.setYear(year);
				retList.add(bussinessRecord1);
				c.add(Calendar.YEAR, 1);
				year=sdf.format(c.getTime());
				BorBussinessRecordEntity bussinessRecord2=new BorBussinessRecordEntity();
				bussinessRecord2.setYear(year);
				retList.add(bussinessRecord2);
				c.add(Calendar.YEAR, 1);
				year=sdf.format(c.getTime());
				BorBussinessRecordEntity bussinessRecord3=new BorBussinessRecordEntity();
				bussinessRecord3.setYear(year);
				retList.add(bussinessRecord3);
				BorBussinessDataEntity bussinessData=new BorBussinessDataEntity();
				bussinessData.setBussinessDataF(retList.get(0));
				bussinessData.setBussinessDataS(retList.get(1));
				bussinessData.setBussinessDataT(retList.get(2));
				retbussBorBussinessData.add(bussinessData);
		}
		borManage.setBorBussinessData(retbussBorBussinessData);
		//富文本
		 BorRichTextsEntity richTexts=borRichTextsService.queryByRefId(params); 
		 if(null!=richTexts){
			 borManage.setBorRichTexts(richTexts.getText());
		 }else{
			 borManage.setBorRichTexts("");
		 }
		return borManage;
	}
	public static String delHTMLTag(String htmlStr){ 
        String regEx_script="<script[^>]*?>[\\s\\S]*?<\\/script>"; //定义script的正则表达式 
        String regEx_style="<style[^>]*?>[\\s\\S]*?<\\/style>"; //定义style的正则表达式 
        String regEx_html="<[^>]+>"; //定义HTML标签的正则表达式 
         
        Pattern p_script=Pattern.compile(regEx_script,Pattern.CASE_INSENSITIVE); 
        Matcher m_script=p_script.matcher(htmlStr); 
        htmlStr=m_script.replaceAll(""); //过滤script标签 
         
        Pattern p_style=Pattern.compile(regEx_style,Pattern.CASE_INSENSITIVE); 
        Matcher m_style=p_style.matcher(htmlStr); 
        htmlStr=m_style.replaceAll(""); //过滤style标签 
         
        Pattern p_html=Pattern.compile(regEx_html,Pattern.CASE_INSENSITIVE); 
        Matcher m_html=p_html.matcher(htmlStr); 
        htmlStr=m_html.replaceAll(""); //过滤html标签 

        return htmlStr.trim(); //返回文本字符串 
    }
}
