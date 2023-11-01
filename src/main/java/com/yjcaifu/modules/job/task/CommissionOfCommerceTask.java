package com.yjcaifu.modules.job.task;

import java.math.BigDecimal;
import java.text.SimpleDateFormat;
import java.util.Arrays;
import java.util.Calendar;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.yjcaifu.common.utils.PageUtils;
import com.yjcaifu.common.utils.R;
import com.yjcaifu.modules.generator.entity.BorrowingInformationEntity;
import com.yjcaifu.modules.generator.service.BorrowingInformationService;
import com.yjcaifu.modules.job.entity.CommissionOfCommerceEntity;
import com.yjcaifu.modules.job.service.CommissionOfCommerceService;



/**
 * 
 *
 * @author htshen
 * @email htshen@tom.com
 * @date 2018-07-06 10:44:39
 */
@Component("CommissionOfCommerceTask")
public class CommissionOfCommerceTask {
	private Logger logger = LoggerFactory.getLogger(getClass());
    @Autowired
    private CommissionOfCommerceService commissionOfCommerceService;
    @Autowired
    private BorrowingInformationService borrowingInformationService;

    /**
     * 列表
     */
    public void list(){
    	Calendar cal = Calendar.getInstance();
    	SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd");
    	cal.set(Calendar.DAY_OF_MONTH,1);
    	String firstDay = df.format(cal.getTime())+" 00:00:00";
    	cal.set(Calendar.DAY_OF_MONTH, cal.getActualMaximum(Calendar.DAY_OF_MONTH));  
    	String lastDay = df.format(cal.getTime()) + " 23:59:59";
    	System.out.println(firstDay+"---"+lastDay);
    	Map<String, Object> params = new HashMap<String, Object>();
    	params.put("firstDay", firstDay);
    	params.put("lastDay", lastDay);
    	List<BorrowingInformationEntity>  intoManage= borrowingInformationService.queryCurrentMonthIntoManage(params);
    	/*
    	 * 	select a.*  from borrowing_information a inner join cus_personal_info b on a.ref_id=b.id INNER JOIN bid_no c on a.id=c.ref_id
			where c.review_time &gt;= #{firstDay} and c.review_time &lt;= #{lastDay}
			group by a.id
    	 */
    	for(BorrowingInformationEntity temp:intoManage){
    		if(null != temp.getCompanyRetained() && 0 == temp.getCompanyRetained()){	//公司留存已收取
    			temp.setCompanyRetained(1);
    			borrowingInformationService.updateById(temp);
    		}
    		List<BorrowingInformationEntity>  bidNoList= borrowingInformationService.queryCurrentMonthBidNo(params);
    		for(BorrowingInformationEntity bidNo:bidNoList){
    			BigDecimal ratifyMoney = bidNo.getRatifyMoney();//批准额度
    			BigDecimal riskFund = bidNo.getRiskFund();//风控金
    			
    		}
    	}
    }

}
