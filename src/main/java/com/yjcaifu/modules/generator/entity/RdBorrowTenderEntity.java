package com.yjcaifu.modules.generator.entity;

import com.baomidou.mybatisplus.annotations.TableId;
import com.baomidou.mybatisplus.annotations.TableName;

import java.math.BigDecimal;
import java.io.Serializable;
import java.sql.Timestamp;
import java.util.Date;

/**
 * 投标表
 * 
 * @author chenshun
 * @email sunlightcs@gmail.com
 * @date 2018-05-21 14:58:11
 */
@TableName("rd_borrow_tender")
public class RdBorrowTenderEntity implements Serializable {
	private static final long serialVersionUID = 1L;
	private BigDecimal rzzyxs;//日增总有效数
	private BigDecimal ljyxs;//累计有效数
	private BigDecimal rxzzcs;//日新增注册数
	private BigDecimal jxrzyx;//江西日增有效
	private BigDecimal qddls;//签到登录数
	private BigDecimal txcztbs;//提现充值投标数
	private Date time;
	
	

	private BigDecimal rcz;//日充值
	private BigDecimal rtx;//日提现
	
	
	private String name;//姓名
	private String tjr;//推荐人
	private String czdate;//充值日期
	private String czmoney;//充值金额
	
	private String txname;//提现姓名
	private String txtjr;//提现推荐人
	private String txmoney;//提现总额
	private String zzr;//追踪人
	
	
	private String tenczdate;//十日充值日期
	private String tenczmoney;//十日充值总额
	private String tbdate;//十日投标日期
	
	private Date atime;//时间
	private BigDecimal kyye;//可用余额
	private BigDecimal dslx;//待收利息
	private BigDecimal dsbj;//待收本金
	private BigDecimal zhze;//账户总额
	
	private BigDecimal drfbe;//当日发标额
	private BigDecimal drhke;//当日还款额
	private BigDecimal drkyze;//当日可用总额
	
	private BigDecimal ljcjje;//累计成交金额
	
	/**
	 * 提现原因
	 */
	private String cashReason;
	private Integer reasonidInteger;//提现id
	
	
	public Integer getReasonidInteger() {
		return reasonidInteger;
	}
	public void setReasonidInteger(Integer reasonidInteger) {
		this.reasonidInteger = reasonidInteger;
	}
	public String getCashReason() {
		return cashReason;
	}
	public void setCashReason(String cashReason) {
		this.cashReason = cashReason;
	}
	public BigDecimal getLjcjje() {
		return ljcjje;
	}
	public void setLjcjje(BigDecimal ljcjje) {
		this.ljcjje = ljcjje;
	}
	public BigDecimal getDrfbe() {
		return drfbe;
	}
	public void setDrfbe(BigDecimal drfbe) {
		this.drfbe = drfbe;
	}
	public BigDecimal getDrhke() {
		return drhke;
	}
	public void setDrhke(BigDecimal drhke) {
		this.drhke = drhke;
	}
	public BigDecimal getDrkyze() {
		return drkyze;
	}
	public void setDrkyze(BigDecimal drkyze) {
		this.drkyze = drkyze;
	}
	public Date getAtime() {
		return atime;
	}
	public void setAtime(Date atime) {
		this.atime = atime;
	}
	public BigDecimal getKyye() {
		return kyye;
	}
	public void setKyye(BigDecimal kyye) {
		this.kyye = kyye;
	}
	public BigDecimal getDslx() {
		return dslx;
	}
	public void setDslx(BigDecimal dslx) {
		this.dslx = dslx;
	}
	public BigDecimal getDsbj() {
		return dsbj;
	}
	public void setDsbj(BigDecimal dsbj) {
		this.dsbj = dsbj;
	}
	public BigDecimal getZhze() {
		return zhze;
	}
	public void setZhze(BigDecimal zhze) {
		this.zhze = zhze;
	}
	public String getTenczdate() {
		return tenczdate;
	}
	public void setTenczdate(String tenczdate) {
		this.tenczdate = tenczdate;
	}
	public String getTenczmoney() {
		return tenczmoney;
	}
	public void setTenczmoney(String tenczmoney) {
		this.tenczmoney = tenczmoney;
	}
	public String getTbdate() {
		return tbdate;
	}
	public void setTbdate(String tbdate) {
		this.tbdate = tbdate;
	}
	public String getZzr() {
		return zzr;
	}
	public void setZzr(String zzr) {
		this.zzr = zzr;
	}
	public String getTxname() {
		return txname;
	}
	public void setTxname(String txname) {
		this.txname = txname;
	}
	public String getTxtjr() {
		return txtjr;
	}
	public void setTxtjr(String txtjr) {
		this.txtjr = txtjr;
	}
	public String getTxmoney() {
		return txmoney;
	}
	public void setTxmoney(String txmoney) {
		this.txmoney = txmoney;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getTjr() {
		return tjr;
	}
	public void setTjr(String tjr) {
		this.tjr = tjr;
	}
	public String getCzdate() {
		return czdate;
	}
	public void setCzdate(String czdate) {
		this.czdate = czdate;
	}
	public String getCzmoney() {
		return czmoney;
	}
	public void setCzmoney(String czmoney) {
		this.czmoney = czmoney;
	}
	public BigDecimal getRcz() {
		return rcz;
	}
	public void setRcz(BigDecimal rcz) {
		this.rcz = rcz;
	}
	public BigDecimal getRtx() {
		return rtx;
	}
	public void setRtx(BigDecimal rtx) {
		this.rtx = rtx;
	}
	public Date getTime() {
		return time;
	}
	public void setTime(Date time) {
		this.time = time;
	}
	public BigDecimal getTxcztbs() {
		return txcztbs;
	}
	public void setTxcztbs(BigDecimal txcztbs) {
		this.txcztbs = txcztbs;
	}
	public BigDecimal getQddls() {
		return qddls;
	}
	public void setQddls(BigDecimal qddls) {
		this.qddls = qddls;
	}
	public BigDecimal getJxrzyx() {
		return jxrzyx;
	}
	public void setJxrzyx(BigDecimal jxrzyx) {
		this.jxrzyx = jxrzyx;
	}
	public BigDecimal getRxzzcs() {
		return rxzzcs;
	}
	public void setRxzzcs(BigDecimal rxzzcs) {
		this.rxzzcs = rxzzcs;
	}
	public BigDecimal getLjyxs() {
		return ljyxs;
	}
	public void setLjyxs(BigDecimal ljyxs) {
		this.ljyxs = ljyxs;
	}
	public BigDecimal getRzzyxs() {
		return rzzyxs;
	}
	public void setRzzyxs(BigDecimal rzzyxs) {
		this.rzzyxs = rzzyxs;
	}
	
	/**
	 * 主键
	 */
	@TableId
	private Integer id;
	/**
	 * 用户ID
	 */
	private Integer userId;
	/**
	 * 借款ID
	 */
	private Integer borrowId;
	/**
	 * 还款状态 0投标待处理，1成功，2失败
	 */
	private Integer status;
	/**
	 * 投标金额
	 */
	private BigDecimal money;
	/**
	 * 借款总额
	 */
	private BigDecimal account;
	/**
	 * 用户真实资金
	 */
	private BigDecimal realAmount;
	/**
	 * 预还总额(+利息)
	 */
	private BigDecimal repaymentAccount;
	/**
	 * 利息
	 */
	private BigDecimal interest;
	/**
	 * 已还金额
	 */
	private BigDecimal repaymentYesAccount;
	/**
	 * 已还利息
	 */
	private BigDecimal repaymentYesInterest;
	/**
	 * 待还总额
	 */
	private BigDecimal waitAccount;
	/**
	 * 待还利息
	 */
	private BigDecimal waitInterest;
	/**
	 * 投标类型  0网站投标;1自动投标;2手机投标
	 */
	private Integer tenderType;
	/**
	 * 添加时间
	 */
	private Date addTime;
	/**
	 * ip
	 */
	private String addIp;
	/**
	 * 投标时候的订单号
	 */
	private String tenderBilNo;
	/**
	 * 
	 */
	private String trxId;
	/**
	 * 
	 */
	private String tenderBilDate;
	/**
	 * 
	 */
	private Double diffMoney;

	/**
	 * 设置：主键
	 */
	public void setId(Integer id) {
		this.id = id;
	}
	/**
	 * 获取：主键
	 */
	public Integer getId() {
		return id;
	}
	/**
	 * 设置：用户ID
	 */
	public void setUserId(Integer userId) {
		this.userId = userId;
	}
	/**
	 * 获取：用户ID
	 */
	public Integer getUserId() {
		return userId;
	}
	/**
	 * 设置：借款ID
	 */
	public void setBorrowId(Integer borrowId) {
		this.borrowId = borrowId;
	}
	/**
	 * 获取：借款ID
	 */
	public Integer getBorrowId() {
		return borrowId;
	}
	/**
	 * 设置：还款状态 0投标待处理，1成功，2失败
	 */
	public void setStatus(Integer status) {
		this.status = status;
	}
	/**
	 * 获取：还款状态 0投标待处理，1成功，2失败
	 */
	public Integer getStatus() {
		return status;
	}
	/**
	 * 设置：投标金额
	 */
	public void setMoney(BigDecimal money) {
		this.money = money;
	}
	/**
	 * 获取：投标金额
	 */
	public BigDecimal getMoney() {
		return money;
	}
	/**
	 * 设置：借款总额
	 */
	public void setAccount(BigDecimal account) {
		this.account = account;
	}
	/**
	 * 获取：借款总额
	 */
	public BigDecimal getAccount() {
		return account;
	}
	/**
	 * 设置：用户真实资金
	 */
	public void setRealAmount(BigDecimal realAmount) {
		this.realAmount = realAmount;
	}
	/**
	 * 获取：用户真实资金
	 */
	public BigDecimal getRealAmount() {
		return realAmount;
	}
	/**
	 * 设置：预还总额(+利息)
	 */
	public void setRepaymentAccount(BigDecimal repaymentAccount) {
		this.repaymentAccount = repaymentAccount;
	}
	/**
	 * 获取：预还总额(+利息)
	 */
	public BigDecimal getRepaymentAccount() {
		return repaymentAccount;
	}
	/**
	 * 设置：利息
	 */
	public void setInterest(BigDecimal interest) {
		this.interest = interest;
	}
	/**
	 * 获取：利息
	 */
	public BigDecimal getInterest() {
		return interest;
	}
	/**
	 * 设置：已还金额
	 */
	public void setRepaymentYesAccount(BigDecimal repaymentYesAccount) {
		this.repaymentYesAccount = repaymentYesAccount;
	}
	/**
	 * 获取：已还金额
	 */
	public BigDecimal getRepaymentYesAccount() {
		return repaymentYesAccount;
	}
	/**
	 * 设置：已还利息
	 */
	public void setRepaymentYesInterest(BigDecimal repaymentYesInterest) {
		this.repaymentYesInterest = repaymentYesInterest;
	}
	/**
	 * 获取：已还利息
	 */
	public BigDecimal getRepaymentYesInterest() {
		return repaymentYesInterest;
	}
	/**
	 * 设置：待还总额
	 */
	public void setWaitAccount(BigDecimal waitAccount) {
		this.waitAccount = waitAccount;
	}
	/**
	 * 获取：待还总额
	 */
	public BigDecimal getWaitAccount() {
		return waitAccount;
	}
	/**
	 * 设置：待还利息
	 */
	public void setWaitInterest(BigDecimal waitInterest) {
		this.waitInterest = waitInterest;
	}
	/**
	 * 获取：待还利息
	 */
	public BigDecimal getWaitInterest() {
		return waitInterest;
	}
	/**
	 * 设置：投标类型  0网站投标;1自动投标;2手机投标
	 */
	public void setTenderType(Integer tenderType) {
		this.tenderType = tenderType;
	}
	/**
	 * 获取：投标类型  0网站投标;1自动投标;2手机投标
	 */
	public Integer getTenderType() {
		return tenderType;
	}
	/**
	 * 设置：添加时间
	 */
	public void setAddTime(Date addTime) {
		this.addTime = addTime;
	}
	/**
	 * 获取：添加时间
	 */
	public Date getAddTime() {
		return addTime;
	}
	/**
	 * 设置：ip
	 */
	public void setAddIp(String addIp) {
		this.addIp = addIp;
	}
	/**
	 * 获取：ip
	 */
	public String getAddIp() {
		return addIp;
	}
	/**
	 * 设置：投标时候的订单号
	 */
	public void setTenderBilNo(String tenderBilNo) {
		this.tenderBilNo = tenderBilNo;
	}
	/**
	 * 获取：投标时候的订单号
	 */
	public String getTenderBilNo() {
		return tenderBilNo;
	}
	/**
	 * 设置：
	 */
	public void setTrxId(String trxId) {
		this.trxId = trxId;
	}
	/**
	 * 获取：
	 */
	public String getTrxId() {
		return trxId;
	}
	/**
	 * 设置：
	 */
	public void setTenderBilDate(String tenderBilDate) {
		this.tenderBilDate = tenderBilDate;
	}
	/**
	 * 获取：
	 */
	public String getTenderBilDate() {
		return tenderBilDate;
	}
	/**
	 * 设置：
	 */
	public void setDiffMoney(Double diffMoney) {
		this.diffMoney = diffMoney;
	}
	/**
	 * 获取：
	 */
	public Double getDiffMoney() {
		return diffMoney;
	}
}
