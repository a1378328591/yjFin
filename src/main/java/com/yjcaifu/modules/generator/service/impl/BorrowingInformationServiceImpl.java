package com.yjcaifu.modules.generator.service.impl;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.baomidou.mybatisplus.plugins.Page;
import com.baomidou.mybatisplus.service.impl.ServiceImpl;
import com.yjcaifu.common.utils.PageUtils;
import com.yjcaifu.common.utils.Query;
import com.yjcaifu.common.utils.R;
import com.yjcaifu.modules.generator.dao.BorCoborrowerCompanyDao;
import com.yjcaifu.modules.generator.dao.BorrowingInformationDao;
import com.yjcaifu.modules.generator.entity.BorBankStatementEntity;
import com.yjcaifu.modules.generator.entity.BorBaseCityEntity;
import com.yjcaifu.modules.generator.entity.BorBorrowerCompanyinfoEntity;
import com.yjcaifu.modules.generator.entity.BorBussinessDataEntity;
import com.yjcaifu.modules.generator.entity.BorBussinessRecordEntity;
import com.yjcaifu.modules.generator.entity.BorCoborrowerCarEntity;
import com.yjcaifu.modules.generator.entity.BorCoborrowerCompanyEntity;
import com.yjcaifu.modules.generator.entity.BorCoborrowerEstateEntity;
import com.yjcaifu.modules.generator.entity.BorCoborrowerInquiryEntity;
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
import com.yjcaifu.modules.generator.entity.PersonalCreditEntity;
import com.yjcaifu.modules.generator.entity.PersonalInfoEntity;
import com.yjcaifu.modules.generator.entity.ReimbursementType;
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
import com.yjcaifu.modules.generator.service.BorrowingInformationService;
import com.yjcaifu.modules.generator.service.CusBankStatementsService;
import com.yjcaifu.modules.generator.service.CusCreditInformationService;
import com.yjcaifu.modules.generator.service.CusEntcreditInformationService;
import com.yjcaifu.modules.generator.service.CusEntloanInfoService;
import com.yjcaifu.modules.generator.service.CusLoanInfoService;
import com.yjcaifu.modules.generator.service.PersonalInfoService;




@Service("borrowingInformationService")
public class BorrowingInformationServiceImpl extends ServiceImpl<BorrowingInformationDao, BorrowingInformationEntity> implements BorrowingInformationService {

	@Autowired
	BorrowingInformationDao borrowingInformationDao;
	@Autowired
	BorCoborrowerCompanyService borCoborrowerCompanyService;
	@Autowired
	BorCoborrowerPersonalService borCoborrowerPersonalService;
	@Autowired
	PersonalInfoService personalInfoService;
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
    private BorBaseCityService borBaseCityService;
    
	
    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<BorrowingInformationEntity> borrowingInformationPage=new Query<BorrowingInformationEntity>(params).getPage();
        borrowingInformationPage.setRecords(borrowingInformationDao.queryPage(borrowingInformationPage,params));
        return new PageUtils(borrowingInformationPage);
    }

	@Override
	public List<ReimbursementType> findReimbursementType() {
		List<ReimbursementType> type = borrowingInformationDao.findReimbursementType();
		return type;
	}

	@Override
	public BorrowingInformationEntity selectById(Integer id) {
		BorrowingInformationEntity borrowingInformationEntity = borrowingInformationDao.selectById(id);
		return borrowingInformationEntity;
	}

	@Override
	public BorrManageEntity queryManageInfo(Map<String, Object> params) {
		Integer borrId=Integer.valueOf((String)params.get("refId"));
		BorrManageEntity borManage=new BorrManageEntity();
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
		borManage.setCityName(cityList);
		//实地调查人
		List<Integer> inquiryList=borCoborrowerInquiryService.queryList(borrId);
		borManage.setEmpInquirer(inquiryList);
		//借款人基本信息
		PersonalInfoEntity perInfo=personalInfoService.selectByBorrId(borrId);
		borManage.setPersonalBase(perInfo);
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
		BorrowingInformationEntity borrInfo=borrowingInformationDao.selectById(borrId);
		borManage.setBorrowingInfo(borrInfo);
		// TODO Auto-generated method stub
		borManage.setId(borrId);
		//个人房产信息
		List<CusEstateEntity> estateList=borCoborrowerEstateService.queryList(params);
		if(null==estateList || estateList.size() == 0){
			estateList.add(new CusEstateEntity());
		}
		borManage.setEstateBorr(estateList);
		//个人汽车信息
		List<CusCarEntity> carList=borCoborrowerCarService.queryList(params);
		if(null == carList || carList.size() == 0){
			carList.add(new CusCarEntity());
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
		borManage.setEntrpriseInfo(borBorrCompInfoList);
		//借款用途-往来对手
		List<BorLoanPurposeEntity> loanPurposeList=borLoanPurposeService.queryListById(params);
		if(null != loanPurposeList && loanPurposeList.size() == 0){
			loanPurposeList.add(new BorLoanPurposeEntity());
		}
		borManage.setLoanPurpose(loanPurposeList);
		//个人征信信息
		PersonalCreditEntity personalCredit=new PersonalCreditEntity();
		List<BorCreditPersonalEntity> perExist= borCreditPersonalService.queryByRefId(params);
		List<CusCreditInformationEntity> retCusCreditList=new ArrayList<CusCreditInformationEntity>();
		if(null!=perExist && perExist.size()>0){
			for(BorCreditPersonalEntity borCredit:perExist){
				CusCreditInformationEntity cusCreditInformation = cusCreditInformationService.selectById(borCredit.getCreditId());
				if(null!=cusCreditInformation){
					List<CusLoanInfoEntity> loanInfoList=cusLoanInfoService.queryListByCreditId(borCredit.getCreditId());
					if(loanInfoList.size()>0){
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
		if(null!=entExist && entExist.size()>0){
			for(BorCreditEnterpriseEntity borCreditEnt:entExist){
				CusEntcreditInformationEntity cusEntCreditInformation = cusEntcreditInformationService.selectById(borCreditEnt.getCreditId());
				if(null!=cusEntCreditInformation){
					List<CusEntloanInfoEntity> entLoanInfoList=cusEntloanInfoService.queryListByCreditId(borCreditEnt.getCreditId());
					if(entLoanInfoList.size()>0){
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
		if(null!=taxCondition && taxCondition.size() > 0){
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
			List<BorTaxRecordEntity> taxList = new ArrayList<BorTaxRecordEntity>();
			taxList.add(new BorTaxRecordEntity());
			empty.setRecords(taxList);
			retTaxCondition.add(empty);
		}
		borManage.setTaxCondition(retTaxCondition);
		//企业财务数据分析
		List<BorBussinessDataEntity> retbussBorBussinessData = new ArrayList<BorBussinessDataEntity>();
		List<BorBussinessDataEntity> bussDataList=borBussinessDataService.queryByRefId(params);
		if(null!=bussDataList && bussDataList.size() > 0){
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

	@Override
	public List<Integer> queryListByPerIds(List<Integer> perIds) {
		List<Integer> borrInfoList = baseMapper.queryListByPerIds(perIds);
		return borrInfoList;
	}

	@Override
	public List<BorrowingInformationEntity> queryCurrentMonthIntoManage(Map<String, Object> params) {
		List<BorrowingInformationEntity> intoManegr = baseMapper.queryCurrentMonthIntoManage(params);
		return intoManegr;
	}

	@Override
	public List<BorrowingInformationEntity> queryCurrentMonthBidNo(Map<String, Object> params) {
		List<BorrowingInformationEntity> bidNo = baseMapper.queryCurrentMonthBidNo(params);
		return bidNo;
	}

}
