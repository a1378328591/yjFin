package com.yjcaifu.modules.generator.controller;

import java.math.BigDecimal;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.List;
import java.util.Map;

import javax.annotation.sql.DataSourceDefinitions;

import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.yjcaifu.modules.generator.entity.RdBorrowTenderEntity;
import com.yjcaifu.modules.generator.entity.aaaEntity;
import com.yjcaifu.modules.generator.service.RdBorrowTenderService;
import com.yjcaifu.modules.sys.entity.SysUserEntity;
import com.yjcaifu.common.utils.PageUtils;
import com.yjcaifu.common.utils.R;
import com.yjcaifu.datasources.DataSourceNames;
import com.yjcaifu.datasources.annotation.DataSource;



/**
 * 投标表
 *
 * @author chenshun
 * @email sunlightcs@gmail.com
 * @date 2018-05-21 14:58:11
 */
@RestController
@RequestMapping("generator/rdborrowtender")
public class RdBorrowTenderController {
    @Autowired
    private RdBorrowTenderService rdBorrowTenderService;
    
    /**
     * 图表
     */
    @RequestMapping("/tubiao")
    @DataSource(name = DataSourceNames.THIRD)
    public R tubiao(@RequestParam Map<String, Object> params){
    	//日增总有效数
    	List<RdBorrowTenderEntity> rzzyxslist = rdBorrowTenderService.rzzyxs(params);
    	List<BigDecimal> rzzyxs=new ArrayList<>();
    	for(RdBorrowTenderEntity a:rzzyxslist){
    		rzzyxs.add(a.getRzzyxs());
    	}
    	//累计有效数
    	List<RdBorrowTenderEntity> ljyxslist = rdBorrowTenderService.ljyxs(params);
    	List<BigDecimal> ljyxs=new ArrayList<>();
    	for(RdBorrowTenderEntity a:ljyxslist){
    		ljyxs.add(a.getLjyxs());
    	}
    	//日新增注册数
    	List<RdBorrowTenderEntity> rxzzcslist = rdBorrowTenderService.rxzzcs(params);
    	List<BigDecimal> rxzzcs=new ArrayList<>();
    	for(RdBorrowTenderEntity a:rxzzcslist){
    		rxzzcs.add(a.getRxzzcs());
    		
    	}
    	//江西日增有效
    	List<RdBorrowTenderEntity> jxrzyxlist = rdBorrowTenderService.jxrzyx(params);
    	List<BigDecimal> jxrzyx=new ArrayList<>();
    	for(RdBorrowTenderEntity a:jxrzyxlist){
    		//a1 日增总有效数
    		//a2 江西日新增书
    		jxrzyx.add(a.getJxrzyx());
    	}
    	//签到登录数
    	List<RdBorrowTenderEntity> qddlslist = rdBorrowTenderService.qddls(params);
    	List<BigDecimal> qddls=new ArrayList<>();
    	for(RdBorrowTenderEntity a:qddlslist){
    		qddls.add(a.getQddls());
    	}
    	//提现充值投标数
    	List<RdBorrowTenderEntity> txcztbslist = rdBorrowTenderService.txcztbs(params);
    	List<BigDecimal> txcztbs=new ArrayList<>();
    	for(RdBorrowTenderEntity a:txcztbslist){
    		txcztbs.add(a.getTxcztbs());
    	}
    	List<aaaEntity> last=new ArrayList<aaaEntity>();
    	aaaEntity[] shuzhu={new aaaEntity(),new aaaEntity(),new aaaEntity(),new aaaEntity(),new aaaEntity()};
    	aaaEntity a1=new aaaEntity();
    	aaaEntity a2=new aaaEntity();
    	aaaEntity a3=new aaaEntity();
    	aaaEntity a4=new aaaEntity();
    	aaaEntity a5=new aaaEntity();
		for(int i=0;i<txcztbslist.size();i++){
			SimpleDateFormat format1 = new SimpleDateFormat("M月d日");
			shuzhu[i].setA(format1.format(txcztbslist.get(i).getTime().getTime()));
			shuzhu[i].setA1(rxzzcs.get(i));
			shuzhu[i].setA2(jxrzyx.get(i));
			shuzhu[i].setA3(rzzyxs.get(i));
			shuzhu[i].setA4(ljyxs.get(i));
			shuzhu[i].setA5(qddls.get(i));
			shuzhu[i].setA6(txcztbs.get(i));
		}
		last=Arrays.asList(shuzhu);
    	 return R.ok().put("rzzyxs",rzzyxs).put("ljyxs",ljyxs).put("rxzzcs",rxzzcs).put("jxrzyx",jxrzyx).put("qddls",qddls).put("txcztbs",txcztbs).put("last", last);
    }
    
    /**
     * 图表日充值VS日提现
     */
    @RequestMapping("/rczti")
    @DataSource(name = DataSourceNames.THIRD)
    public R rczti(@RequestParam Map<String, Object> params){
    	//日充值
    	List<RdBorrowTenderEntity> rczlist = rdBorrowTenderService.rcz(params);
    	List<BigDecimal> rcz=new ArrayList<>();
    	for(RdBorrowTenderEntity a:rczlist){
    		rcz.add(a.getRcz());
    	}
    	//日提现
    	List<RdBorrowTenderEntity> rtxlist = rdBorrowTenderService.rtx(params);
    	List<BigDecimal> rtx=new ArrayList<>();
    	for(RdBorrowTenderEntity a:rtxlist){
    		rtx.add(a.getRtx());
    	}
    	//差额
    	List<BigDecimal> ce=new ArrayList<>();
    	for(int i =0;i<rczlist.size();i++){
    		ce.add(rczlist.get(i).getRcz().subtract(rtxlist.get(i).getRtx()));
    	}
    	
    	List<aaaEntity> last=new ArrayList<aaaEntity>();
    	aaaEntity[] shuzhu={new aaaEntity(),new aaaEntity(),new aaaEntity(),new aaaEntity(),new aaaEntity()};
		for(int i=0;i<rczlist.size();i++){
			SimpleDateFormat format1 = new SimpleDateFormat("M月d日");
			format1.format(rczlist.get(4).getTime());
			format1.format(rczlist.get(4).getTime().getTime());
			
			shuzhu[i].setA(format1.format(rczlist.get(i).getTime().getTime()));
			shuzhu[i].setA1(rcz.get(i));
			shuzhu[i].setA2(rtx.get(i));
			shuzhu[i].setA3(ce.get(i));
		}
		last=Arrays.asList(shuzhu);
    	 return R.ok().put("rcz",rcz).put("rtx",rtx).put("ce",ce).put("last", last);
    }
    
    /**
     * 当日充值明细
     */
    @RequestMapping("/drczmx")
    @DataSource(name = DataSourceNames.THIRD)
    public R drczmx(@RequestParam Map<String, Object> params){
    	List<RdBorrowTenderEntity> drczmx = rdBorrowTenderService.drczmx(params);
    	 return R.ok().put("drczmx",drczmx);
    }
    
    /**
     * 当日提现明细及原因分析
     */
    @RequestMapping("/drtx")
    @DataSource(name = DataSourceNames.THIRD)
    public R drtx(@RequestParam Map<String, Object> params){
    	List<RdBorrowTenderEntity> drtx = rdBorrowTenderService.drtx(params);
    	for(int i =0;i<drtx.size();i++){
    		drtx.get(i).setZzr(((SysUserEntity) SecurityUtils.getSubject().getPrincipal()).getUsername());
    	}
    	 return R.ok().put("drtx",drtx);
    }
    
    /**
     * 近10日充值及投标分析
     */
    @RequestMapping("/tencztbfx")
    @DataSource(name = DataSourceNames.THIRD)
    public R tencztbfx(@RequestParam Map<String, Object> params){
    	List<RdBorrowTenderEntity> tencztbfx = rdBorrowTenderService.tencztbfx(params);
    	for(int i =0;i<tencztbfx.size();i++){
    		tencztbfx.get(i).setZzr(((SysUserEntity) SecurityUtils.getSubject().getPrincipal()).getUsername());
    	}
    	 return R.ok().put("tencztbfx",tencztbfx);
    }
    
    /**
     * 可用余额+待收利息+待收本金=账户总额
     */
    @RequestMapping("/zhze")
    @DataSource(name = DataSourceNames.THIRD)
    public R zhze(@RequestParam Map<String, Object> params){
    	List<RdBorrowTenderEntity> zhzelist = rdBorrowTenderService.zhze(params);
    	//可用余额
    	List<BigDecimal> kyye=new ArrayList<>();
    	for(int i =0;i<zhzelist.size();i++){
    		kyye.add(zhzelist.get(i).getKyye());
    	}//待收利息
    	List<BigDecimal> dslx=new ArrayList<>();
    	for(int i =0;i<zhzelist.size();i++){
    		dslx.add(zhzelist.get(i).getDslx());
    	}//待收本金
    	List<BigDecimal> dsbj=new ArrayList<>();
    	for(int i =0;i<zhzelist.size();i++){
    		dsbj.add(zhzelist.get(i).getDsbj());
    	}
    	//账户总额
    	List<BigDecimal> zhze=new ArrayList<>();
    	for(int i =0;i<zhzelist.size();i++){
    		zhze.add(zhzelist.get(i).getZhze());
    	}
    	List<aaaEntity> last=new ArrayList<aaaEntity>();
    	aaaEntity[] shuzhu={new aaaEntity(),new aaaEntity(),new aaaEntity(),new aaaEntity(),new aaaEntity()};
		for(int i=0;i<zhzelist.size();i++){
			SimpleDateFormat format1 = new SimpleDateFormat("M月d日");
			shuzhu[i].setA(format1.format(zhzelist.get(i).getAtime().getTime()));
			shuzhu[i].setA1(kyye.get(i));
			shuzhu[i].setA2(dslx.get(i));
			shuzhu[i].setA3(dsbj.get(i));
			shuzhu[i].setA4(zhze.get(i));
		}
		last=Arrays.asList(shuzhu);
   	 return R.ok().put("kyye",kyye).put("dslx",dslx).put("dsbj",dsbj).put("zhze",zhze).put("last", last);
    }
    
    /**
     * 当日发标额VS当日还款额VS当日可用总额
     */
    @RequestMapping("/drfbhk")
    @DataSource(name = DataSourceNames.THIRD)
    public R drfbhk(@RequestParam Map<String, Object> params){
    	List<RdBorrowTenderEntity> drfbhklist = rdBorrowTenderService.drfbhk(params);
    	//当日发标额
    	List<BigDecimal> drfbe=new ArrayList<>();
    	for(int i =0;i<drfbhklist.size();i++){
    		drfbe.add(drfbhklist.get(i).getDrfbe());
    	}//当日还款额
    	List<BigDecimal> drhke=new ArrayList<>();
    	for(int i =0;i<drfbhklist.size();i++){
    		drhke.add(drfbhklist.get(i).getDrhke());
    	}//当日可用总额
    	List<BigDecimal> drkyze=new ArrayList<>();
    	for(int i =0;i<drfbhklist.size();i++){
    		if(i==2){
    			drkyze.add(drfbhklist.get(1).getDrkyze().add(drhke.get(2)));
    		}else if(i==3){
    			drkyze.add(drfbhklist.get(1).getDrkyze().add(drhke.get(2)).add(drhke.get(3)));
    		}else if(i==4){
    			drkyze.add(drfbhklist.get(1).getDrkyze().add(drhke.get(2)).add(drhke.get(3)).add(drhke.get(4)));
    		}else{
    			drkyze.add(drfbhklist.get(i).getDrkyze());
    		}
    	}
    	List<aaaEntity> last=new ArrayList<aaaEntity>();
    	aaaEntity[] shuzhu={new aaaEntity(),new aaaEntity(),new aaaEntity(),new aaaEntity(),new aaaEntity()};
		for(int i=0;i<drfbhklist.size();i++){
			SimpleDateFormat format1 = new SimpleDateFormat("M月d日");
			shuzhu[i].setA(format1.format(drfbhklist.get(i).getTime().getTime()));
			shuzhu[i].setA1(drfbe.get(i));
			shuzhu[i].setA2(drhke.get(i));
			shuzhu[i].setA3(drkyze.get(i));
		}
		last=Arrays.asList(shuzhu);
   	 return R.ok().put("drfbe",drfbe).put("drhke",drhke).put("drkyze",drkyze).put("last", last);
    }
    
    /**
     * 累计成交金额
     */
    @RequestMapping("/ljcjje")
    @DataSource(name = DataSourceNames.THIRD)
    public R ljcjje(@RequestParam Map<String, Object> params){
    	List<RdBorrowTenderEntity> ljcjje = rdBorrowTenderService.ljcjje(params);
    	 return R.ok().put("ljcjje",ljcjje.get(0).getLjcjje());
    }

    /**
     * 列表
     */
    @RequestMapping("/list")
    @RequiresPermissions("generator:rdborrowtender:list")
    public R list(@RequestParam Map<String, Object> params){
        PageUtils page = rdBorrowTenderService.queryPage(params);

        return R.ok().put("page", page);
    }


    /**
     * 信息
     */
    @RequestMapping("/info/{id}")
    @RequiresPermissions("generator:rdborrowtender:info")
    public R info(@PathVariable("id") Integer id){
			RdBorrowTenderEntity rdBorrowTender = rdBorrowTenderService.selectById(id);

        return R.ok().put("rdBorrowTender", rdBorrowTender);
    }

    /**
     * 保存
     */
    @RequestMapping("/save")
    @RequiresPermissions("generator:rdborrowtender:save")
    public R save(@RequestBody RdBorrowTenderEntity rdBorrowTender){
			rdBorrowTenderService.insert(rdBorrowTender);

        return R.ok();
    }

    /**
     * 修改
     */
    @RequestMapping("/update")
    @RequiresPermissions("generator:rdborrowtender:update")
    public R update(@RequestBody RdBorrowTenderEntity rdBorrowTender){
			rdBorrowTenderService.updateById(rdBorrowTender);

        return R.ok();
    }

    /**
     * 删除
     */
    @RequestMapping("/delete")
    @RequiresPermissions("generator:rdborrowtender:delete")
    public R delete(@RequestBody Integer[] ids){
			rdBorrowTenderService.deleteBatchIds(Arrays.asList(ids));

        return R.ok();
    }

}
