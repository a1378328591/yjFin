package com.yjcaifu.modules.generator.entity;

import com.baomidou.mybatisplus.annotations.TableId;
import com.baomidou.mybatisplus.annotations.TableName;

import java.math.BigDecimal;
import java.io.Serializable;
import java.util.Date;

/**
 * 借款标
 * 
 * @author htshen
 * @email htshen@tom.com
 * @date 2018-07-06 15:55:09
 */
@TableName("rd_borrow")
public class RdBorrowEntity implements Serializable {
	private static final long serialVersionUID = 1L;

	/**
	 * 主键
	 */
	@TableId
	private Integer id;
	/**
	 * 唯一标识符
	 */
	private String uuid;
	/**
	 * 用户ID
	 */
	private Integer userId;
	/**
	 * 借款标题
	 */
	private String name;
	/**
	 * 借款标信息内容
	 */
	private String content;
	/**
	 * 标种 101秒标;102信用标;103给力标;104净值标;105担保标;106文化艺术品标;107慈善标;108前期标;109项目标;110流转标;112线下担保标;113质押标;114爱心捐助;115实业标;116联名担保标
	 */
	private Integer type;
	/**
	 * 标状态  -1已撤回;0等待初审;1初审通过;2初审未通过;3复审通过;4/49复审未通过;5/59用户取消;6还款中;7部分还款;8还款成功
	 */
	private Integer status;
	/**
	 * 期数
	 */
	private Integer period;
	/**
	 * 借款总额
	 */
	private BigDecimal account;
	/**
	 * 实还总金额
	 */
	private BigDecimal accountYes;
	/**
	 * 完成比例
	 */
	private BigDecimal scales;
	/**
	 * 年利率
	 */
	private BigDecimal apr;
	/**
	 * 
	 */
	private Integer style;
	/**
	 * 
	 */
	private String borrowUse;
	/**
	 * 
	 */
	private Integer borrowTimeType;
	/**
	 * 借款期限(月标)
	 */
	private Integer timeLimit;
	/**
	 * 定向密码
	 */
	private String pwd;
	/**
	 * 
	 */
	private Date fixedTime;
	/**
	 * 流转标金额
	 */
	private BigDecimal flowMoney;
	/**
	 * 流转标的总份数
	 */
	private Integer flowCount;
	/**
	 * 流转标已经购买的份数
	 */
	private Integer flowYesCount;
	/**
	 * 是否推荐0：不推荐，1：推荐
	 */
	private Integer isRecommend;
	/**
	 * 最低投标金额
	 */
	private BigDecimal lowestAccount;
	/**
	 * 最多投标金额
	 */
	private BigDecimal mostAccount;
	/**
	 * 单笔最低限额
	 */
	private BigDecimal lowestSingleLimit;
	/**
	 * 单笔最高限额
	 */
	private BigDecimal mostSingleLimit;
	/**
	 * 应还本金
	 */
	private BigDecimal repaymentAccount;
	/**
	 * 实还本金
	 */
	private BigDecimal repaymentYesAccount;
	/**
	 * 实还利息
	 */
	private BigDecimal repaymentYesInterest;
	/**
	 * 投标完成笔数
	 */
	private Integer tenderTimes;
	/**
	 * 添加时间
	 */
	private Date addTime;
	/**
	 * ip
	 */
	private String addIp;
	/**
	 * 存放截标前account
	 */
	private BigDecimal oldAccount;
	/**
	 * 投标奖励  0没有奖励;1比例奖励;2分摊奖励
	 */
	private Integer award;
	/**
	 * 比例奖励的比例
	 */
	private BigDecimal partAccount;
	/**
	 * 分摊奖励金额
	 */
	private BigDecimal funds;
	/**
	 * 标号
	 */
	private String bidNo;
	/**
	 * 资产包性质
	 */
	private String portfolioProp;
	/**
	 * 担保公司ID
	 */
	private Long vouchId;
	/**
	 * 
	 */
	private String dealNo;
	/**
	 * 
	 */
	private Date registerTime;
	/**
	 * 
	 */
	private BigDecimal borrowManageRate;
	/**
	 * 
	 */
	private String guaranteeNo;
	/**
	 * 
	 */
	private BigDecimal guaranteeRate;
	/**
	 * 复审时间
	 */
	private Date reviewTime;
	/**
	 * 
	 */
	private BigDecimal manageFee;
	/**
	 * 开标时间
	 */
	private Date putStartTime;
	/**
	 * 1：普通标，0：新手标，2：代理人标，3：麦芽标，4：车贷标
	 */
	private Integer category;
	/**
	 * 
	 */
	private Integer investCount;
	/**
	 * 发标地 added xudc
	 */
	private String province;
	/**
	 * 推荐费率，暂时不用added by xudc
	 */
	private Double recommendRate;
	/**
	 * 产品名称类型
	 */
	private Integer borrowProjectType;
	/**
	 * 担保类型  信用 保证 质押 抵押
	 */
	private Integer warrantType;
	/**
	 * 合同签署地 dict表配置 默认1   1、江苏省无锡市滨湖区  2.江西省上饶市信州区 
	 */
	private Integer signedPlaceCatalog;
	/**
	 * 平台贴息是否开启 默认不开启
	 */
	private Integer discountInterestFlag;
	/**
	 * 甲方指定收款账户-户名
	 */
	private String agentCollectionRealName;
	/**
	 * 甲方指定收款账户-开户行
	 */
	private String agentCollectionBankName;
	/**
	 * 甲方指定收款账户-账号
	 */
	private String agentCollectionAccountNum;
	/**
	 * 麦芽标，借款批号
	 */
	private String myBatchNo;
	/**
	 * 麦芽居间服务费百分比，写到合同中
	 */
	private BigDecimal myServerFee;
	/**
	 * 借贷服务费（发标时、借款管理、录入，用于还款前短信通知）
	 */
	private BigDecimal yjServerFee;
	/**
	 * 车贷宝,父级唯一标识
	 */
	private String puuid;
	/**
	 * 车贷宝,1第一期(第一年)，2第二期(第二年)，3第三期(第三年)
	 */
	private Integer cdbPeriod;
	/**
	 * 车架号
	 */
	private String cjh;
	/**
	 * 车贷福，担保函编号
	 */
	private String cdLetterOfGuarantee;
	/**
	 * 车贷实际购车人，没有则自己就是实际购车人
	 */
	private String cdbBuyRealName;

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
	 * 设置：唯一标识符
	 */
	public void setUuid(String uuid) {
		this.uuid = uuid;
	}
	/**
	 * 获取：唯一标识符
	 */
	public String getUuid() {
		return uuid;
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
	 * 设置：借款标题
	 */
	public void setName(String name) {
		this.name = name;
	}
	/**
	 * 获取：借款标题
	 */
	public String getName() {
		return name;
	}
	/**
	 * 设置：借款标信息内容
	 */
	public void setContent(String content) {
		this.content = content;
	}
	/**
	 * 获取：借款标信息内容
	 */
	public String getContent() {
		return content;
	}
	/**
	 * 设置：标种 101秒标;102信用标;103给力标;104净值标;105担保标;106文化艺术品标;107慈善标;108前期标;109项目标;110流转标;112线下担保标;113质押标;114爱心捐助;115实业标;116联名担保标
	 */
	public void setType(Integer type) {
		this.type = type;
	}
	/**
	 * 获取：标种 101秒标;102信用标;103给力标;104净值标;105担保标;106文化艺术品标;107慈善标;108前期标;109项目标;110流转标;112线下担保标;113质押标;114爱心捐助;115实业标;116联名担保标
	 */
	public Integer getType() {
		return type;
	}
	/**
	 * 设置：标状态  -1已撤回;0等待初审;1初审通过;2初审未通过;3复审通过;4/49复审未通过;5/59用户取消;6还款中;7部分还款;8还款成功
	 */
	public void setStatus(Integer status) {
		this.status = status;
	}
	/**
	 * 获取：标状态  -1已撤回;0等待初审;1初审通过;2初审未通过;3复审通过;4/49复审未通过;5/59用户取消;6还款中;7部分还款;8还款成功
	 */
	public Integer getStatus() {
		return status;
	}
	/**
	 * 设置：期数
	 */
	public void setPeriod(Integer period) {
		this.period = period;
	}
	/**
	 * 获取：期数
	 */
	public Integer getPeriod() {
		return period;
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
	 * 设置：实还总金额
	 */
	public void setAccountYes(BigDecimal accountYes) {
		this.accountYes = accountYes;
	}
	/**
	 * 获取：实还总金额
	 */
	public BigDecimal getAccountYes() {
		return accountYes;
	}
	/**
	 * 设置：完成比例
	 */
	public void setScales(BigDecimal scales) {
		this.scales = scales;
	}
	/**
	 * 获取：完成比例
	 */
	public BigDecimal getScales() {
		return scales;
	}
	/**
	 * 设置：年利率
	 */
	public void setApr(BigDecimal apr) {
		this.apr = apr;
	}
	/**
	 * 获取：年利率
	 */
	public BigDecimal getApr() {
		return apr;
	}
	/**
	 * 设置：
	 */
	public void setStyle(Integer style) {
		this.style = style;
	}
	/**
	 * 获取：
	 */
	public Integer getStyle() {
		return style;
	}
	/**
	 * 设置：
	 */
	public void setBorrowUse(String borrowUse) {
		this.borrowUse = borrowUse;
	}
	/**
	 * 获取：
	 */
	public String getBorrowUse() {
		return borrowUse;
	}
	/**
	 * 设置：
	 */
	public void setBorrowTimeType(Integer borrowTimeType) {
		this.borrowTimeType = borrowTimeType;
	}
	/**
	 * 获取：
	 */
	public Integer getBorrowTimeType() {
		return borrowTimeType;
	}
	/**
	 * 设置：借款期限(月标)
	 */
	public void setTimeLimit(Integer timeLimit) {
		this.timeLimit = timeLimit;
	}
	/**
	 * 获取：借款期限(月标)
	 */
	public Integer getTimeLimit() {
		return timeLimit;
	}
	/**
	 * 设置：定向密码
	 */
	public void setPwd(String pwd) {
		this.pwd = pwd;
	}
	/**
	 * 获取：定向密码
	 */
	public String getPwd() {
		return pwd;
	}
	/**
	 * 设置：
	 */
	public void setFixedTime(Date fixedTime) {
		this.fixedTime = fixedTime;
	}
	/**
	 * 获取：
	 */
	public Date getFixedTime() {
		return fixedTime;
	}
	/**
	 * 设置：流转标金额
	 */
	public void setFlowMoney(BigDecimal flowMoney) {
		this.flowMoney = flowMoney;
	}
	/**
	 * 获取：流转标金额
	 */
	public BigDecimal getFlowMoney() {
		return flowMoney;
	}
	/**
	 * 设置：流转标的总份数
	 */
	public void setFlowCount(Integer flowCount) {
		this.flowCount = flowCount;
	}
	/**
	 * 获取：流转标的总份数
	 */
	public Integer getFlowCount() {
		return flowCount;
	}
	/**
	 * 设置：流转标已经购买的份数
	 */
	public void setFlowYesCount(Integer flowYesCount) {
		this.flowYesCount = flowYesCount;
	}
	/**
	 * 获取：流转标已经购买的份数
	 */
	public Integer getFlowYesCount() {
		return flowYesCount;
	}
	/**
	 * 设置：是否推荐0：不推荐，1：推荐
	 */
	public void setIsRecommend(Integer isRecommend) {
		this.isRecommend = isRecommend;
	}
	/**
	 * 获取：是否推荐0：不推荐，1：推荐
	 */
	public Integer getIsRecommend() {
		return isRecommend;
	}
	/**
	 * 设置：最低投标金额
	 */
	public void setLowestAccount(BigDecimal lowestAccount) {
		this.lowestAccount = lowestAccount;
	}
	/**
	 * 获取：最低投标金额
	 */
	public BigDecimal getLowestAccount() {
		return lowestAccount;
	}
	/**
	 * 设置：最多投标金额
	 */
	public void setMostAccount(BigDecimal mostAccount) {
		this.mostAccount = mostAccount;
	}
	/**
	 * 获取：最多投标金额
	 */
	public BigDecimal getMostAccount() {
		return mostAccount;
	}
	/**
	 * 设置：单笔最低限额
	 */
	public void setLowestSingleLimit(BigDecimal lowestSingleLimit) {
		this.lowestSingleLimit = lowestSingleLimit;
	}
	/**
	 * 获取：单笔最低限额
	 */
	public BigDecimal getLowestSingleLimit() {
		return lowestSingleLimit;
	}
	/**
	 * 设置：单笔最高限额
	 */
	public void setMostSingleLimit(BigDecimal mostSingleLimit) {
		this.mostSingleLimit = mostSingleLimit;
	}
	/**
	 * 获取：单笔最高限额
	 */
	public BigDecimal getMostSingleLimit() {
		return mostSingleLimit;
	}
	/**
	 * 设置：应还本金
	 */
	public void setRepaymentAccount(BigDecimal repaymentAccount) {
		this.repaymentAccount = repaymentAccount;
	}
	/**
	 * 获取：应还本金
	 */
	public BigDecimal getRepaymentAccount() {
		return repaymentAccount;
	}
	/**
	 * 设置：实还本金
	 */
	public void setRepaymentYesAccount(BigDecimal repaymentYesAccount) {
		this.repaymentYesAccount = repaymentYesAccount;
	}
	/**
	 * 获取：实还本金
	 */
	public BigDecimal getRepaymentYesAccount() {
		return repaymentYesAccount;
	}
	/**
	 * 设置：实还利息
	 */
	public void setRepaymentYesInterest(BigDecimal repaymentYesInterest) {
		this.repaymentYesInterest = repaymentYesInterest;
	}
	/**
	 * 获取：实还利息
	 */
	public BigDecimal getRepaymentYesInterest() {
		return repaymentYesInterest;
	}
	/**
	 * 设置：投标完成笔数
	 */
	public void setTenderTimes(Integer tenderTimes) {
		this.tenderTimes = tenderTimes;
	}
	/**
	 * 获取：投标完成笔数
	 */
	public Integer getTenderTimes() {
		return tenderTimes;
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
	 * 设置：存放截标前account
	 */
	public void setOldAccount(BigDecimal oldAccount) {
		this.oldAccount = oldAccount;
	}
	/**
	 * 获取：存放截标前account
	 */
	public BigDecimal getOldAccount() {
		return oldAccount;
	}
	/**
	 * 设置：投标奖励  0没有奖励;1比例奖励;2分摊奖励
	 */
	public void setAward(Integer award) {
		this.award = award;
	}
	/**
	 * 获取：投标奖励  0没有奖励;1比例奖励;2分摊奖励
	 */
	public Integer getAward() {
		return award;
	}
	/**
	 * 设置：比例奖励的比例
	 */
	public void setPartAccount(BigDecimal partAccount) {
		this.partAccount = partAccount;
	}
	/**
	 * 获取：比例奖励的比例
	 */
	public BigDecimal getPartAccount() {
		return partAccount;
	}
	/**
	 * 设置：分摊奖励金额
	 */
	public void setFunds(BigDecimal funds) {
		this.funds = funds;
	}
	/**
	 * 获取：分摊奖励金额
	 */
	public BigDecimal getFunds() {
		return funds;
	}
	/**
	 * 设置：标号
	 */
	public void setBidNo(String bidNo) {
		this.bidNo = bidNo;
	}
	/**
	 * 获取：标号
	 */
	public String getBidNo() {
		return bidNo;
	}
	/**
	 * 设置：资产包性质
	 */
	public void setPortfolioProp(String portfolioProp) {
		this.portfolioProp = portfolioProp;
	}
	/**
	 * 获取：资产包性质
	 */
	public String getPortfolioProp() {
		return portfolioProp;
	}
	/**
	 * 设置：担保公司ID
	 */
	public void setVouchId(Long vouchId) {
		this.vouchId = vouchId;
	}
	/**
	 * 获取：担保公司ID
	 */
	public Long getVouchId() {
		return vouchId;
	}
	/**
	 * 设置：
	 */
	public void setDealNo(String dealNo) {
		this.dealNo = dealNo;
	}
	/**
	 * 获取：
	 */
	public String getDealNo() {
		return dealNo;
	}
	/**
	 * 设置：
	 */
	public void setRegisterTime(Date registerTime) {
		this.registerTime = registerTime;
	}
	/**
	 * 获取：
	 */
	public Date getRegisterTime() {
		return registerTime;
	}
	/**
	 * 设置：
	 */
	public void setBorrowManageRate(BigDecimal borrowManageRate) {
		this.borrowManageRate = borrowManageRate;
	}
	/**
	 * 获取：
	 */
	public BigDecimal getBorrowManageRate() {
		return borrowManageRate;
	}
	/**
	 * 设置：
	 */
	public void setGuaranteeNo(String guaranteeNo) {
		this.guaranteeNo = guaranteeNo;
	}
	/**
	 * 获取：
	 */
	public String getGuaranteeNo() {
		return guaranteeNo;
	}
	/**
	 * 设置：
	 */
	public void setGuaranteeRate(BigDecimal guaranteeRate) {
		this.guaranteeRate = guaranteeRate;
	}
	/**
	 * 获取：
	 */
	public BigDecimal getGuaranteeRate() {
		return guaranteeRate;
	}
	/**
	 * 设置：复审时间
	 */
	public void setReviewTime(Date reviewTime) {
		this.reviewTime = reviewTime;
	}
	/**
	 * 获取：复审时间
	 */
	public Date getReviewTime() {
		return reviewTime;
	}
	/**
	 * 设置：
	 */
	public void setManageFee(BigDecimal manageFee) {
		this.manageFee = manageFee;
	}
	/**
	 * 获取：
	 */
	public BigDecimal getManageFee() {
		return manageFee;
	}
	/**
	 * 设置：开标时间
	 */
	public void setPutStartTime(Date putStartTime) {
		this.putStartTime = putStartTime;
	}
	/**
	 * 获取：开标时间
	 */
	public Date getPutStartTime() {
		return putStartTime;
	}
	/**
	 * 设置：1：普通标，0：新手标，2：代理人标，3：麦芽标，4：车贷标
	 */
	public void setCategory(Integer category) {
		this.category = category;
	}
	/**
	 * 获取：1：普通标，0：新手标，2：代理人标，3：麦芽标，4：车贷标
	 */
	public Integer getCategory() {
		return category;
	}
	/**
	 * 设置：
	 */
	public void setInvestCount(Integer investCount) {
		this.investCount = investCount;
	}
	/**
	 * 获取：
	 */
	public Integer getInvestCount() {
		return investCount;
	}
	/**
	 * 设置：发标地 added xudc
	 */
	public void setProvince(String province) {
		this.province = province;
	}
	/**
	 * 获取：发标地 added xudc
	 */
	public String getProvince() {
		return province;
	}
	/**
	 * 设置：推荐费率，暂时不用added by xudc
	 */
	public void setRecommendRate(Double recommendRate) {
		this.recommendRate = recommendRate;
	}
	/**
	 * 获取：推荐费率，暂时不用added by xudc
	 */
	public Double getRecommendRate() {
		return recommendRate;
	}
	/**
	 * 设置：产品名称类型
	 */
	public void setBorrowProjectType(Integer borrowProjectType) {
		this.borrowProjectType = borrowProjectType;
	}
	/**
	 * 获取：产品名称类型
	 */
	public Integer getBorrowProjectType() {
		return borrowProjectType;
	}
	/**
	 * 设置：担保类型  信用 保证 质押 抵押
	 */
	public void setWarrantType(Integer warrantType) {
		this.warrantType = warrantType;
	}
	/**
	 * 获取：担保类型  信用 保证 质押 抵押
	 */
	public Integer getWarrantType() {
		return warrantType;
	}
	/**
	 * 设置：合同签署地 dict表配置 默认1   1、江苏省无锡市滨湖区  2.江西省上饶市信州区 
	 */
	public void setSignedPlaceCatalog(Integer signedPlaceCatalog) {
		this.signedPlaceCatalog = signedPlaceCatalog;
	}
	/**
	 * 获取：合同签署地 dict表配置 默认1   1、江苏省无锡市滨湖区  2.江西省上饶市信州区 
	 */
	public Integer getSignedPlaceCatalog() {
		return signedPlaceCatalog;
	}
	/**
	 * 设置：平台贴息是否开启 默认不开启
	 */
	public void setDiscountInterestFlag(Integer discountInterestFlag) {
		this.discountInterestFlag = discountInterestFlag;
	}
	/**
	 * 获取：平台贴息是否开启 默认不开启
	 */
	public Integer getDiscountInterestFlag() {
		return discountInterestFlag;
	}
	/**
	 * 设置：甲方指定收款账户-户名
	 */
	public void setAgentCollectionRealName(String agentCollectionRealName) {
		this.agentCollectionRealName = agentCollectionRealName;
	}
	/**
	 * 获取：甲方指定收款账户-户名
	 */
	public String getAgentCollectionRealName() {
		return agentCollectionRealName;
	}
	/**
	 * 设置：甲方指定收款账户-开户行
	 */
	public void setAgentCollectionBankName(String agentCollectionBankName) {
		this.agentCollectionBankName = agentCollectionBankName;
	}
	/**
	 * 获取：甲方指定收款账户-开户行
	 */
	public String getAgentCollectionBankName() {
		return agentCollectionBankName;
	}
	/**
	 * 设置：甲方指定收款账户-账号
	 */
	public void setAgentCollectionAccountNum(String agentCollectionAccountNum) {
		this.agentCollectionAccountNum = agentCollectionAccountNum;
	}
	/**
	 * 获取：甲方指定收款账户-账号
	 */
	public String getAgentCollectionAccountNum() {
		return agentCollectionAccountNum;
	}
	/**
	 * 设置：麦芽标，借款批号
	 */
	public void setMyBatchNo(String myBatchNo) {
		this.myBatchNo = myBatchNo;
	}
	/**
	 * 获取：麦芽标，借款批号
	 */
	public String getMyBatchNo() {
		return myBatchNo;
	}
	/**
	 * 设置：麦芽居间服务费百分比，写到合同中
	 */
	public void setMyServerFee(BigDecimal myServerFee) {
		this.myServerFee = myServerFee;
	}
	/**
	 * 获取：麦芽居间服务费百分比，写到合同中
	 */
	public BigDecimal getMyServerFee() {
		return myServerFee;
	}
	/**
	 * 设置：借贷服务费（发标时、借款管理、录入，用于还款前短信通知）
	 */
	public void setYjServerFee(BigDecimal yjServerFee) {
		this.yjServerFee = yjServerFee;
	}
	/**
	 * 获取：借贷服务费（发标时、借款管理、录入，用于还款前短信通知）
	 */
	public BigDecimal getYjServerFee() {
		return yjServerFee;
	}
	/**
	 * 设置：车贷宝,父级唯一标识
	 */
	public void setPuuid(String puuid) {
		this.puuid = puuid;
	}
	/**
	 * 获取：车贷宝,父级唯一标识
	 */
	public String getPuuid() {
		return puuid;
	}
	/**
	 * 设置：车贷宝,1第一期(第一年)，2第二期(第二年)，3第三期(第三年)
	 */
	public void setCdbPeriod(Integer cdbPeriod) {
		this.cdbPeriod = cdbPeriod;
	}
	/**
	 * 获取：车贷宝,1第一期(第一年)，2第二期(第二年)，3第三期(第三年)
	 */
	public Integer getCdbPeriod() {
		return cdbPeriod;
	}
	/**
	 * 设置：车架号
	 */
	public void setCjh(String cjh) {
		this.cjh = cjh;
	}
	/**
	 * 获取：车架号
	 */
	public String getCjh() {
		return cjh;
	}
	/**
	 * 设置：车贷福，担保函编号
	 */
	public void setCdLetterOfGuarantee(String cdLetterOfGuarantee) {
		this.cdLetterOfGuarantee = cdLetterOfGuarantee;
	}
	/**
	 * 获取：车贷福，担保函编号
	 */
	public String getCdLetterOfGuarantee() {
		return cdLetterOfGuarantee;
	}
	/**
	 * 设置：车贷实际购车人，没有则自己就是实际购车人
	 */
	public void setCdbBuyRealName(String cdbBuyRealName) {
		this.cdbBuyRealName = cdbBuyRealName;
	}
	/**
	 * 获取：车贷实际购车人，没有则自己就是实际购车人
	 */
	public String getCdbBuyRealName() {
		return cdbBuyRealName;
	}
}
