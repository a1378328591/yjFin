/*
Navicat MySQL Data Transfer

Source Server         : yjcaifu
Source Server Version : 50640
Source Host           : 192.168.100.90:3306
Source Database       : yjfintech

Target Server Type    : MYSQL
Target Server Version : 50640
File Encoding         : 65001

Date: 2018-06-08 08:58:21
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for application_requirements
-- ----------------------------
DROP TABLE IF EXISTS `application_requirements`;
CREATE TABLE `application_requirements` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `demand` varchar(255) DEFAULT NULL COMMENT '需求描述',
  `apply_time` date DEFAULT NULL COMMENT '申请时间',
  `dept_apply` varchar(255) DEFAULT NULL COMMENT '申请部门',
  `applicant` int(255) DEFAULT NULL COMMENT '申请人',
  `confirm_personnel` varchar(255) DEFAULT NULL COMMENT '技术部确认人',
  `expected_cycle` varchar(255) DEFAULT NULL COMMENT '预计开发周期',
  `Completion_time` date DEFAULT NULL COMMENT '完成时间',
  `main_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of application_requirements
-- ----------------------------
INSERT INTO `application_requirements` VALUES ('3', '222', '2018-05-30', '2', '3', '2', '22', '2018-05-31', null);
INSERT INTO `application_requirements` VALUES ('8', 'qqq', '2018-05-30', 'qq', '3', 'qqq', '12', '2018-05-30', null);
INSERT INTO `application_requirements` VALUES ('9', 'qqq', '2018-05-30', 'qq', '3', 'qqq', '12', '2018-05-30', null);
INSERT INTO `application_requirements` VALUES ('10', 'vvv', '2018-05-30', '111', '6', '11', '1', '2018-05-30', null);
INSERT INTO `application_requirements` VALUES ('11', '9999', '2018-06-30', '9', '2', 'admin', 'admin', '2018-06-28', null);

-- ----------------------------
-- Table structure for borrowing_information
-- ----------------------------
DROP TABLE IF EXISTS `borrowing_information`;
CREATE TABLE `borrowing_information` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `ref_id` int(20) DEFAULT NULL,
  `money` decimal(28,4) DEFAULT NULL COMMENT '申请额度',
  `ratify_money` decimal(28,4) DEFAULT NULL COMMENT '批准额度',
  `percentage` decimal(28,2) DEFAULT NULL COMMENT '年化综合成本',
  `risk_fund` decimal(28,2) DEFAULT NULL COMMENT '风控金',
  `time_limit` int(20) DEFAULT NULL COMMENT '申请期限',
  `ratify_time_limit` int(20) DEFAULT NULL COMMENT '批准期限',
  `reimbursement_means` int(20) DEFAULT NULL COMMENT '还款方式',
  `borrowing_purposes` varchar(50) DEFAULT NULL COMMENT '借款用途',
  `source_repayment` varchar(50) DEFAULT NULL COMMENT '还款来源',
  `ensure` varchar(200) DEFAULT NULL COMMENT '保证措施',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8 COMMENT='借款信息';

-- ----------------------------
-- Records of borrowing_information
-- ----------------------------
INSERT INTO `borrowing_information` VALUES ('23', '4', '100.0000', null, '8.04', null, '6', null, '2', '购置树木', '经营所得', '房抵');
INSERT INTO `borrowing_information` VALUES ('24', '5', '1000000.0000', null, '0.08', null, '12', null, '0', '赎身', '..', '..');
INSERT INTO `borrowing_information` VALUES ('25', '7', '100.0000', null, '0.80', null, '12', null, '0', '生产', '经营所得', '房产');
INSERT INTO `borrowing_information` VALUES ('26', '6', '1.0000', null, '1.00', null, '1', null, '0', '1', '1', '1');
INSERT INTO `borrowing_information` VALUES ('27', '10', '100.0000', '80.0000', '7.20', '1.70', '12', '6', '0', '瓦大大', '我去额去', '亲吻额');
INSERT INTO `borrowing_information` VALUES ('28', '11', '1.0000', null, '1.00', '1.00', '1', null, '0', '1', '1', '1');
INSERT INTO `borrowing_information` VALUES ('29', '12', '1024.0000', null, '7.20', '1.50', '12', null, '0', '日常消费', '抵押', '房抵，车抵');

-- ----------------------------
-- Table structure for bor_bankstatement_record
-- ----------------------------
DROP TABLE IF EXISTS `bor_bankstatement_record`;
CREATE TABLE `bor_bankstatement_record` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ref_id` int(11) DEFAULT NULL COMMENT '个人银行流水，主表id',
  `bankstatement_id` int(11) DEFAULT NULL COMMENT '银行流水id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=134 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of bor_bankstatement_record
-- ----------------------------
INSERT INTO `bor_bankstatement_record` VALUES ('133', '3', '7');

-- ----------------------------
-- Table structure for bor_bank_statement
-- ----------------------------
DROP TABLE IF EXISTS `bor_bank_statement`;
CREATE TABLE `bor_bank_statement` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ref_id` int(11) DEFAULT NULL COMMENT '进件id',
  `main_body` varchar(50) COLLATE utf8_bin DEFAULT NULL COMMENT '主体名称',
  `avg_limit_in` decimal(28,2) DEFAULT NULL COMMENT '平均流入额',
  `avg_limit_out` decimal(28,2) DEFAULT NULL COMMENT '平均流出额',
  `exception_decl` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '异常记录说明',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of bor_bank_statement
-- ----------------------------
INSERT INTO `bor_bank_statement` VALUES ('6', '27', '张三2', '10.00', '11.00', '12');

-- ----------------------------
-- Table structure for bor_borrower_companyinfo
-- ----------------------------
DROP TABLE IF EXISTS `bor_borrower_companyinfo`;
CREATE TABLE `bor_borrower_companyinfo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ref_id` int(11) DEFAULT NULL COMMENT '进件id',
  `borr_company_id` int(11) DEFAULT NULL COMMENT '借款企业id',
  `financial_situation` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '企业财务状况(万元)',
  `office_space` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '办公场所',
  `employees` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '企业员工人数',
  `monthly_staff_salary` decimal(10,2) DEFAULT NULL COMMENT '每月员工工资',
  `salary_settlement` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '员工工资结算方式',
  `ent_liabilities_balance` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '企业负债余额',
  `per_liabilities_balance` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '个人负债余额',
  `abnormal_condition` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '异常情况',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=90 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of bor_borrower_companyinfo
-- ----------------------------
INSERT INTO `bor_borrower_companyinfo` VALUES ('1', '23', '5', '年销售额100万，', '无', '260人', null, 'qwe', '456', null, null);
INSERT INTO `bor_borrower_companyinfo` VALUES ('81', '29', null, null, null, null, null, null, null, null, null);
INSERT INTO `bor_borrower_companyinfo` VALUES ('88', '27', '5', '11', '11', '11', null, '11', '11', '11', '11');
INSERT INTO `bor_borrower_companyinfo` VALUES ('89', '27', '8', '22', '22', '22', null, '22', '22', '22', '22');

-- ----------------------------
-- Table structure for bor_bussiness_data
-- ----------------------------
DROP TABLE IF EXISTS `bor_bussiness_data`;
CREATE TABLE `bor_bussiness_data` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ref_id` int(11) DEFAULT NULL COMMENT '进件管理id',
  `exception_decl` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '异常情况',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of bor_bussiness_data
-- ----------------------------
INSERT INTO `bor_bussiness_data` VALUES ('5', '23', '785675757');
INSERT INTO `bor_bussiness_data` VALUES ('6', '24', null);
INSERT INTO `bor_bussiness_data` VALUES ('7', '27', '无');
INSERT INTO `bor_bussiness_data` VALUES ('8', '29', null);

-- ----------------------------
-- Table structure for bor_bussiness_record
-- ----------------------------
DROP TABLE IF EXISTS `bor_bussiness_record`;
CREATE TABLE `bor_bussiness_record` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ref_id` int(11) DEFAULT NULL,
  `year` varchar(10) COLLATE utf8_bin DEFAULT NULL COMMENT '年份',
  `income` decimal(28,2) DEFAULT NULL COMMENT '主营收入',
  `gross_profit` decimal(28,2) DEFAULT NULL COMMENT '毛利润',
  `retained_profit` decimal(28,2) DEFAULT NULL COMMENT '净利润',
  `income_growth` decimal(28,2) DEFAULT NULL COMMENT '主营业务同比增长',
  `retained_growth` decimal(28,2) DEFAULT NULL COMMENT '净利润同比增长',
  `yield_rate` decimal(28,0) DEFAULT NULL COMMENT '盈利能力-净资产收益率',
  `gross_profit_rate` decimal(28,0) DEFAULT NULL COMMENT '盈利能力-毛利率',
  `retained_profits` decimal(28,0) DEFAULT NULL COMMENT '净利率',
  `total_days` decimal(28,0) DEFAULT NULL COMMENT '总资产周转天数',
  `receivables_days` decimal(28,0) DEFAULT NULL COMMENT '应收账款周转天数',
  `inventory_days` decimal(28,0) DEFAULT NULL COMMENT '存货周转天数',
  `debt_ratio` decimal(28,0) DEFAULT NULL COMMENT '资产负债率',
  `sell_borr_ratio` decimal(28,0) DEFAULT NULL COMMENT '销贷比',
  `flow_rate` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '流动比例',
  `quick_rate` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '速冻比例',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2203 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of bor_bussiness_record
-- ----------------------------
INSERT INTO `bor_bussiness_record` VALUES ('73', '5', '2016', '2742.00', null, null, '72742.00', null, null, null, null, null, null, '757', null, null, null, null);
INSERT INTO `bor_bussiness_record` VALUES ('74', '5', '2017', null, null, null, null, '7856.00', null, null, '7527', null, null, null, null, '7567', null, null);
INSERT INTO `bor_bussiness_record` VALUES ('75', '5', '2018', null, null, null, null, null, null, null, null, null, null, null, null, '756', null, null);
INSERT INTO `bor_bussiness_record` VALUES ('76', '5', '2016', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `bor_bussiness_record` VALUES ('77', '5', '2017', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `bor_bussiness_record` VALUES ('78', '5', '2018', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `bor_bussiness_record` VALUES ('79', '5', '2016', '2742.00', null, null, '72742.00', null, null, null, null, null, null, '757', null, null, null, null);
INSERT INTO `bor_bussiness_record` VALUES ('80', '5', '2017', null, null, null, null, '7856.00', null, null, '7527', null, null, null, null, '7567', null, null);
INSERT INTO `bor_bussiness_record` VALUES ('81', '5', '2018', null, null, null, null, null, null, null, null, null, null, null, null, '756', null, null);
INSERT INTO `bor_bussiness_record` VALUES ('82', '5', '2016', '2742.00', null, null, '72742.00', null, null, null, null, null, null, '757', null, null, null, null);
INSERT INTO `bor_bussiness_record` VALUES ('83', '5', '2017', null, null, null, null, '7856.00', null, null, '7527', null, null, null, null, '7567', null, null);
INSERT INTO `bor_bussiness_record` VALUES ('84', '5', '2018', null, null, null, null, null, null, null, null, null, null, null, null, '756', null, null);
INSERT INTO `bor_bussiness_record` VALUES ('85', '5', '2017', '2742.00', null, null, '72742.00', null, null, null, null, null, null, '757', null, null, null, null);
INSERT INTO `bor_bussiness_record` VALUES ('86', '5', '2018', null, null, null, null, '7856.00', null, null, '7527', null, null, null, null, '7567', null, null);
INSERT INTO `bor_bussiness_record` VALUES ('87', '5', '2019', null, null, null, null, null, null, null, null, null, null, null, null, '756', null, null);
INSERT INTO `bor_bussiness_record` VALUES ('88', '5', '2016', '2742.00', null, null, '72742.00', null, null, null, null, null, null, '757', null, null, null, null);
INSERT INTO `bor_bussiness_record` VALUES ('89', '5', '2017', null, null, null, null, '7856.00', null, null, '7527', null, null, null, null, '7567', null, null);
INSERT INTO `bor_bussiness_record` VALUES ('90', '5', '2018', null, null, null, null, null, null, null, null, null, null, null, null, '756', null, null);
INSERT INTO `bor_bussiness_record` VALUES ('106', '6', '2016', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `bor_bussiness_record` VALUES ('107', '6', '2017', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `bor_bussiness_record` VALUES ('108', '6', '2018', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `bor_bussiness_record` VALUES ('109', '6', '2016', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `bor_bussiness_record` VALUES ('110', '6', '2017', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `bor_bussiness_record` VALUES ('111', '6', '2018', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `bor_bussiness_record` VALUES ('112', '6', '2016', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `bor_bussiness_record` VALUES ('113', '6', '2017', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `bor_bussiness_record` VALUES ('114', '6', '2018', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `bor_bussiness_record` VALUES ('115', '6', '2016', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `bor_bussiness_record` VALUES ('116', '6', '2017', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `bor_bussiness_record` VALUES ('117', '6', '2018', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `bor_bussiness_record` VALUES ('1765', '8', '2016', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `bor_bussiness_record` VALUES ('1766', '8', '2017', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `bor_bussiness_record` VALUES ('1767', '8', '2018', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `bor_bussiness_record` VALUES ('1768', '8', '2016', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `bor_bussiness_record` VALUES ('1769', '8', '2017', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `bor_bussiness_record` VALUES ('1770', '8', '2018', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `bor_bussiness_record` VALUES ('1771', '8', '2016', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `bor_bussiness_record` VALUES ('1772', '8', '2017', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `bor_bussiness_record` VALUES ('1773', '8', '2018', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `bor_bussiness_record` VALUES ('1774', '8', '2016', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `bor_bussiness_record` VALUES ('1775', '8', '2017', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `bor_bussiness_record` VALUES ('1776', '8', '2018', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `bor_bussiness_record` VALUES ('2092', '7', '2016', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `bor_bussiness_record` VALUES ('2093', '7', '2017', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `bor_bussiness_record` VALUES ('2094', '7', '2018-6', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `bor_bussiness_record` VALUES ('2095', '7', '2016', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `bor_bussiness_record` VALUES ('2096', '7', '2017', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `bor_bussiness_record` VALUES ('2097', '7', '2018', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `bor_bussiness_record` VALUES ('2098', '7', '2016', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `bor_bussiness_record` VALUES ('2099', '7', '2017', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `bor_bussiness_record` VALUES ('2100', '7', '2018-6', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `bor_bussiness_record` VALUES ('2101', '7', '2016', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `bor_bussiness_record` VALUES ('2102', '7', '2017', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `bor_bussiness_record` VALUES ('2103', '7', '2018-6', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `bor_bussiness_record` VALUES ('2104', '7', '2016', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `bor_bussiness_record` VALUES ('2105', '7', '2017', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `bor_bussiness_record` VALUES ('2106', '7', '2018-6', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `bor_bussiness_record` VALUES ('2107', '7', '2016', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `bor_bussiness_record` VALUES ('2108', '7', '2017', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `bor_bussiness_record` VALUES ('2109', '7', '2018-6', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `bor_bussiness_record` VALUES ('2110', '7', '2016', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `bor_bussiness_record` VALUES ('2111', '7', '2017', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `bor_bussiness_record` VALUES ('2112', '7', '2018-6', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `bor_bussiness_record` VALUES ('2113', '7', '2016', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `bor_bussiness_record` VALUES ('2114', '7', '2017', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `bor_bussiness_record` VALUES ('2115', '7', '2018-6', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `bor_bussiness_record` VALUES ('2116', '7', '2016', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `bor_bussiness_record` VALUES ('2117', '7', '2017', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `bor_bussiness_record` VALUES ('2118', '7', '2018-6', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `bor_bussiness_record` VALUES ('2119', '7', '2016', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `bor_bussiness_record` VALUES ('2120', '7', '2017', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `bor_bussiness_record` VALUES ('2121', '7', '2018-6', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `bor_bussiness_record` VALUES ('2122', '7', '2016', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `bor_bussiness_record` VALUES ('2123', '7', '2017', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `bor_bussiness_record` VALUES ('2124', '7', '2018-6', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `bor_bussiness_record` VALUES ('2125', '7', '2016', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `bor_bussiness_record` VALUES ('2126', '7', '2017', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `bor_bussiness_record` VALUES ('2127', '7', '2018-6', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `bor_bussiness_record` VALUES ('2128', '7', '2016', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `bor_bussiness_record` VALUES ('2129', '7', '2017', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `bor_bussiness_record` VALUES ('2130', '7', '2018-6', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `bor_bussiness_record` VALUES ('2131', '7', '2016', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `bor_bussiness_record` VALUES ('2132', '7', '2017', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `bor_bussiness_record` VALUES ('2133', '7', '2018-6', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `bor_bussiness_record` VALUES ('2134', '7', '2016', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `bor_bussiness_record` VALUES ('2135', '7', '2017', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `bor_bussiness_record` VALUES ('2136', '7', '2018-6', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `bor_bussiness_record` VALUES ('2137', '7', '2016', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `bor_bussiness_record` VALUES ('2138', '7', '2017', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `bor_bussiness_record` VALUES ('2139', '7', '2018-6', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `bor_bussiness_record` VALUES ('2140', '7', '2016', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `bor_bussiness_record` VALUES ('2141', '7', '2017', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `bor_bussiness_record` VALUES ('2142', '7', '2018-6', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `bor_bussiness_record` VALUES ('2143', '7', '2016', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `bor_bussiness_record` VALUES ('2144', '7', '2017', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `bor_bussiness_record` VALUES ('2145', '7', '2018-6', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `bor_bussiness_record` VALUES ('2146', '7', '2016', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `bor_bussiness_record` VALUES ('2147', '7', '2017', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `bor_bussiness_record` VALUES ('2148', '7', '2018-6', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `bor_bussiness_record` VALUES ('2149', '7', '2016', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `bor_bussiness_record` VALUES ('2150', '7', '2017', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `bor_bussiness_record` VALUES ('2151', '7', '2018-6', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `bor_bussiness_record` VALUES ('2152', '7', '2016', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `bor_bussiness_record` VALUES ('2153', '7', '2017', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `bor_bussiness_record` VALUES ('2154', '7', '2018-6', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `bor_bussiness_record` VALUES ('2155', '7', '2016', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `bor_bussiness_record` VALUES ('2156', '7', '2017', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `bor_bussiness_record` VALUES ('2157', '7', '2018-6', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `bor_bussiness_record` VALUES ('2158', '7', '2016', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `bor_bussiness_record` VALUES ('2159', '7', '2017', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `bor_bussiness_record` VALUES ('2160', '7', '2018-6', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `bor_bussiness_record` VALUES ('2161', '7', '2016', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `bor_bussiness_record` VALUES ('2162', '7', '2017', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `bor_bussiness_record` VALUES ('2163', '7', '2018-6', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `bor_bussiness_record` VALUES ('2164', '7', '2016', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `bor_bussiness_record` VALUES ('2165', '7', '2017', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `bor_bussiness_record` VALUES ('2166', '7', '2018-6', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `bor_bussiness_record` VALUES ('2167', '7', '2016', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `bor_bussiness_record` VALUES ('2168', '7', '2017', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `bor_bussiness_record` VALUES ('2169', '7', '2018-6', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `bor_bussiness_record` VALUES ('2170', '7', '2016', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `bor_bussiness_record` VALUES ('2171', '7', '2017', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `bor_bussiness_record` VALUES ('2172', '7', '2018-6', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `bor_bussiness_record` VALUES ('2173', '7', '2016', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `bor_bussiness_record` VALUES ('2174', '7', '2017', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `bor_bussiness_record` VALUES ('2175', '7', '2018-6', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `bor_bussiness_record` VALUES ('2176', '7', '2016', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `bor_bussiness_record` VALUES ('2177', '7', '2017', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `bor_bussiness_record` VALUES ('2178', '7', '2018-6', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `bor_bussiness_record` VALUES ('2179', '7', '2016', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `bor_bussiness_record` VALUES ('2180', '7', '2017', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `bor_bussiness_record` VALUES ('2181', '7', '2018-6', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `bor_bussiness_record` VALUES ('2182', '7', '2016', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `bor_bussiness_record` VALUES ('2183', '7', '2017', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `bor_bussiness_record` VALUES ('2184', '7', '2018-6', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `bor_bussiness_record` VALUES ('2185', '7', '2016', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `bor_bussiness_record` VALUES ('2186', '7', '2017', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `bor_bussiness_record` VALUES ('2187', '7', '2018-6', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `bor_bussiness_record` VALUES ('2188', '7', '2016', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `bor_bussiness_record` VALUES ('2189', '7', '2017', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `bor_bussiness_record` VALUES ('2190', '7', '2018-6', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `bor_bussiness_record` VALUES ('2191', '7', '2016', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `bor_bussiness_record` VALUES ('2192', '7', '2017', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `bor_bussiness_record` VALUES ('2193', '7', '2018-6', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `bor_bussiness_record` VALUES ('2194', '7', '2016', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `bor_bussiness_record` VALUES ('2195', '7', '2017', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `bor_bussiness_record` VALUES ('2196', '7', '2018-6', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `bor_bussiness_record` VALUES ('2197', '7', '2016', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `bor_bussiness_record` VALUES ('2198', '7', '2017', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `bor_bussiness_record` VALUES ('2199', '7', '2018-6', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `bor_bussiness_record` VALUES ('2200', '7', '2016', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `bor_bussiness_record` VALUES ('2201', '7', '2017', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `bor_bussiness_record` VALUES ('2202', '7', '2018-6', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

-- ----------------------------
-- Table structure for bor_coborrower_car
-- ----------------------------
DROP TABLE IF EXISTS `bor_coborrower_car`;
CREATE TABLE `bor_coborrower_car` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ref_id` int(11) DEFAULT NULL COMMENT '进件id',
  `car_id` int(11) DEFAULT NULL COMMENT '汽车基本信息id',
  `assessed_value` varchar(30) COLLATE utf8_bin DEFAULT NULL COMMENT '评估价值',
  `loans` int(11) DEFAULT NULL COMMENT '贷款情况',
  `mortgage_balance` varchar(30) COLLATE utf8_bin DEFAULT NULL COMMENT '按揭-按揭余额',
  `mortgaged_loans_balance` varchar(30) COLLATE utf8_bin DEFAULT NULL COMMENT '已抵押-贷款余额',
  `mortgage_way` int(1) DEFAULT NULL COMMENT '抵押方式',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of bor_coborrower_car
-- ----------------------------
INSERT INTO `bor_coborrower_car` VALUES ('1', '23', '11', '20万', '0', ' ', ' ', '1');
INSERT INTO `bor_coborrower_car` VALUES ('2', '23', '12', '2万', '0', ' ', ' ', '1');
INSERT INTO `bor_coborrower_car` VALUES ('3', '27', '13', null, '0', ' ', ' ', null);
INSERT INTO `bor_coborrower_car` VALUES ('4', '27', '14', null, '2', ' ', '100000', null);

-- ----------------------------
-- Table structure for bor_coborrower_company
-- ----------------------------
DROP TABLE IF EXISTS `bor_coborrower_company`;
CREATE TABLE `bor_coborrower_company` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ref_id` int(11) DEFAULT NULL,
  `co_company_id` int(11) DEFAULT NULL,
  `co_borrower_type_id` int(11) DEFAULT NULL COMMENT '借贷企业类型',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of bor_coborrower_company
-- ----------------------------
INSERT INTO `bor_coborrower_company` VALUES ('3', '23', '5', '3');
INSERT INTO `bor_coborrower_company` VALUES ('5', '24', '7', null);
INSERT INTO `bor_coborrower_company` VALUES ('6', '25', '7', null);
INSERT INTO `bor_coborrower_company` VALUES ('7', '27', '5', null);
INSERT INTO `bor_coborrower_company` VALUES ('8', '27', '8', null);
INSERT INTO `bor_coborrower_company` VALUES ('9', '29', '6', null);

-- ----------------------------
-- Table structure for bor_coborrower_estate
-- ----------------------------
DROP TABLE IF EXISTS `bor_coborrower_estate`;
CREATE TABLE `bor_coborrower_estate` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ref_id` int(11) DEFAULT NULL,
  `estate_id` int(11) DEFAULT NULL,
  `price` varchar(20) COLLATE utf8_bin DEFAULT NULL COMMENT '评估价值',
  `loan_balance` varchar(30) COLLATE utf8_bin DEFAULT NULL COMMENT '贷款余额',
  `mortgage_balance` varchar(30) COLLATE utf8_bin DEFAULT NULL COMMENT '抵押余额',
  `mortgage_way` varchar(50) COLLATE utf8_bin DEFAULT NULL COMMENT '抵押方式',
  `loan_property` varchar(30) COLLATE utf8_bin DEFAULT NULL COMMENT '贷款性质',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of bor_coborrower_estate
-- ----------------------------
INSERT INTO `bor_coborrower_estate` VALUES ('1', '23', '14', '420万', '181万', '240万', '004', '005');
INSERT INTO `bor_coborrower_estate` VALUES ('2', '23', '15', '006', '18', '008', '二抵', '卖艺');
INSERT INTO `bor_coborrower_estate` VALUES ('3', '27', '16', null, '110000', null, '101', null);
INSERT INTO `bor_coborrower_estate` VALUES ('4', '27', '17', null, '50000', null, '140', null);

-- ----------------------------
-- Table structure for bor_coborrower_inquiry
-- ----------------------------
DROP TABLE IF EXISTS `bor_coborrower_inquiry`;
CREATE TABLE `bor_coborrower_inquiry` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ref_id` int(11) DEFAULT NULL,
  `inquirer` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of bor_coborrower_inquiry
-- ----------------------------
INSERT INTO `bor_coborrower_inquiry` VALUES ('1', '23', '1');
INSERT INTO `bor_coborrower_inquiry` VALUES ('2', '29', '3');

-- ----------------------------
-- Table structure for bor_coborrower_personal
-- ----------------------------
DROP TABLE IF EXISTS `bor_coborrower_personal`;
CREATE TABLE `bor_coborrower_personal` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ref_id` int(11) DEFAULT NULL COMMENT '进件管理id',
  `co_borrower_id` int(11) DEFAULT NULL COMMENT '共同借款人id',
  `workunit_or_income` varchar(50) COLLATE utf8_bin DEFAULT NULL COMMENT '工作单位/月收入',
  `relation` varchar(30) COLLATE utf8_bin DEFAULT NULL,
  `co_borrower_type_id` int(11) DEFAULT NULL COMMENT '类型',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of bor_coborrower_personal
-- ----------------------------
INSERT INTO `bor_coborrower_personal` VALUES ('3', '23', '7', '10001', '七大姑', '1');
INSERT INTO `bor_coborrower_personal` VALUES ('5', '24', '5', '10001', null, null);
INSERT INTO `bor_coborrower_personal` VALUES ('6', '24', '6', '20002', null, null);
INSERT INTO `bor_coborrower_personal` VALUES ('7', '25', '9', '10001', null, null);
INSERT INTO `bor_coborrower_personal` VALUES ('8', '27', '10', null, null, null);
INSERT INTO `bor_coborrower_personal` VALUES ('9', '27', '11', null, null, null);
INSERT INTO `bor_coborrower_personal` VALUES ('10', '29', '10', null, null, '4');

-- ----------------------------
-- Table structure for bor_credit_enterprise
-- ----------------------------
DROP TABLE IF EXISTS `bor_credit_enterprise`;
CREATE TABLE `bor_credit_enterprise` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ref_id` int(11) DEFAULT NULL,
  `credit_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of bor_credit_enterprise
-- ----------------------------
INSERT INTO `bor_credit_enterprise` VALUES ('1', '23', '9');
INSERT INTO `bor_credit_enterprise` VALUES ('32', '29', '9');
INSERT INTO `bor_credit_enterprise` VALUES ('33', '29', '11');
INSERT INTO `bor_credit_enterprise` VALUES ('40', '27', '9');
INSERT INTO `bor_credit_enterprise` VALUES ('41', '27', '11');

-- ----------------------------
-- Table structure for bor_credit_personal
-- ----------------------------
DROP TABLE IF EXISTS `bor_credit_personal`;
CREATE TABLE `bor_credit_personal` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ref_id` int(11) DEFAULT NULL,
  `credit_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of bor_credit_personal
-- ----------------------------
INSERT INTO `bor_credit_personal` VALUES ('1', '23', '6');

-- ----------------------------
-- Table structure for bor_loan_purpose
-- ----------------------------
DROP TABLE IF EXISTS `bor_loan_purpose`;
CREATE TABLE `bor_loan_purpose` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ref_id` int(11) DEFAULT NULL COMMENT '进件id',
  `partner` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '往来对手',
  `contract_value` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '合同价值',
  `signing_time` date DEFAULT NULL COMMENT '签订日期',
  `payment_method` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '付款方式',
  `remark` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of bor_loan_purpose
-- ----------------------------
INSERT INTO `bor_loan_purpose` VALUES ('1', '23', '123', '789', '2018-05-22', '789', '101');
INSERT INTO `bor_loan_purpose` VALUES ('3', '24', 'qwe', null, null, null, null);

-- ----------------------------
-- Table structure for bor_oss
-- ----------------------------
DROP TABLE IF EXISTS `bor_oss`;
CREATE TABLE `bor_oss` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ref_id` int(11) DEFAULT NULL COMMENT '进件id',
  `certificate_type` int(11) DEFAULT NULL COMMENT '证件类型',
  `file_name` varchar(50) COLLATE utf8_bin DEFAULT NULL COMMENT '文件名称',
  `file_postfix` varchar(30) COLLATE utf8_bin DEFAULT NULL COMMENT '文件后缀',
  `url` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT 'url',
  `create_date` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '创建时间',
  `expiration` date DEFAULT NULL,
  `download_url` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of bor_oss
-- ----------------------------
INSERT INTO `bor_oss` VALUES ('2', '23', '3', '营业执照图片', '.jpg', 'http://yjfintechtest.oss-cn-hzfinance.aliyuncs.com/test/20180530/8e98bf2d3f25432b999646c7386d19ac.jpg', '2018-05-30 09:53:13', null, null);
INSERT INTO `bor_oss` VALUES ('3', '23', '2', '略略略', '.jpg', 'http://yjfintechtest.oss-cn-hzfinance.aliyuncs.com/test/20180530/52f1e56dc1914c2d8f9efae1e185bd8f.jpg', '2018-05-30 10:08:47', null, null);
INSERT INTO `bor_oss` VALUES ('5', '23', '1', '4652', '.jpg', 'http://yjfintechtest.oss-cn-hzfinance.aliyuncs.com/test/20180530/763420e972c444d9b9c52c9280a7ac59.jpg', '2018-05-30 13:36:54', null, null);
INSERT INTO `bor_oss` VALUES ('6', '27', '1', 'FSWF', '.jpg', 'http://yjfintechtest.oss-cn-hzfinance.aliyuncs.com/test/20180601/b71c6d1aca874097aa7eb0aa94881804.jpg', '2018-06-01 08:50:58', null, null);
INSERT INTO `bor_oss` VALUES ('7', '27', null, 'asd', '.jpg', 'http://yjfintechtest.oss-cn-hzfinance.aliyuncs.com/test/20180601/aace7be2152843be8d8cd422630cbbc9.jpg', '2018-06-01 11:21:22', null, null);
INSERT INTO `bor_oss` VALUES ('8', '27', null, 'xxx', '.7z', 'http://yjfintechtest.oss-cn-hzfinance.aliyuncs.com/test/20180601/a688bb74d82949ac912edad7cd8382db.7z', '2018-06-01 13:35:49', null, null);

-- ----------------------------
-- Table structure for bor_rich_texts
-- ----------------------------
DROP TABLE IF EXISTS `bor_rich_texts`;
CREATE TABLE `bor_rich_texts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `text` varchar(1000) DEFAULT NULL,
  `ref_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bor_rich_texts
-- ----------------------------
INSERT INTO `bor_rich_texts` VALUES ('1', ' <p>hello world!</p>', null);
INSERT INTO `bor_rich_texts` VALUES ('2', ' <p><img src=\"http://img.baidu.com/hi/jx2/j_0016.gif\"/><img src=\"http://img.baidu.com/hi/jx2/j_0021.gif\"/></p>', null);
INSERT INTO `bor_rich_texts` VALUES ('3', ' <p><img src=\"http://img.baidu.com/hi/jx2/j_0015.gif\"/></p>', null);
INSERT INTO `bor_rich_texts` VALUES ('4', ' <p>aaaa</p><p><img src=\"http://img.baidu.com/hi/jx2/j_0016.gif\"/><img src=\"http://img.baidu.com/hi/jx2/j_0021.gif\"/></p>', null);
INSERT INTO `bor_rich_texts` VALUES ('5', ' <p>aaaa</p><p><img src=\"http://img.baidu.com/hi/jx2/j_0016.gif\"/><img src=\"http://img.baidu.com/hi/jx2/j_0021.gif\"/></p>', null);
INSERT INTO `bor_rich_texts` VALUES ('6', ' <p>aaaa</p><p><img src=\"http://img.baidu.com/hi/jx2/j_0016.gif\"/><img src=\"http://img.baidu.com/hi/jx2/j_0021.gif\"/></p>', null);
INSERT INTO `bor_rich_texts` VALUES ('7', '<h1 style=\"font-size: 32px; font-weight: bold; border-bottom: 2px solid rgb(204, 204, 204); padding: 0px 4px 0px 0px; text-align: left; margin: 0px 0px 10px;\"><span style=\"font-size: 24px;\"><strong><span style=\"font-style: italic; font-weight: bold; color: rgb(51, 153, 204); line-height: 18px;\">123</span></strong><strong><span style=\"font-style: italic; font-weight: bold; color: rgb(51, 153, 204); line-height: 18px; font-family: 楷体, 楷体_GB2312, SimKai;\"></span></strong></span><strong><br/></strong></h1><hr/><p style=\"text-align: left;\"><strong>wqwe</strong></p><p style=\"text-align:center\"><img src=\"http://img.baidu.com/hi/jx2/j_0002.gif\"/></p><p style=\"text-align: left;\"><strong>∝℅▋〞Ⅷ⑼Ж</strong><br/></p>', '27');

-- ----------------------------
-- Table structure for bor_tax_condition
-- ----------------------------
DROP TABLE IF EXISTS `bor_tax_condition`;
CREATE TABLE `bor_tax_condition` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ref_id` int(11) DEFAULT NULL COMMENT '进件ID',
  `exception_decl` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '异常情况',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of bor_tax_condition
-- ----------------------------
INSERT INTO `bor_tax_condition` VALUES ('5', '23', '无1111');
INSERT INTO `bor_tax_condition` VALUES ('6', '24', null);
INSERT INTO `bor_tax_condition` VALUES ('7', '27', null);
INSERT INTO `bor_tax_condition` VALUES ('8', '29', null);

-- ----------------------------
-- Table structure for bor_tax_record
-- ----------------------------
DROP TABLE IF EXISTS `bor_tax_record`;
CREATE TABLE `bor_tax_record` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tax_id` int(11) DEFAULT NULL COMMENT '水电税务情况表id',
  `month` date DEFAULT NULL COMMENT '月份',
  `ratal` varchar(30) COLLATE utf8_bin DEFAULT NULL COMMENT '纳税额',
  `electric` varchar(30) COLLATE utf8_bin DEFAULT NULL COMMENT '电费',
  `gas` varchar(30) COLLATE utf8_bin DEFAULT NULL COMMENT '燃气费',
  `water` varchar(30) COLLATE utf8_bin DEFAULT NULL COMMENT '水费',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of bor_tax_record
-- ----------------------------
INSERT INTO `bor_tax_record` VALUES ('28', '5', '2018-05-01', '310001', null, null, null);
INSERT INTO `bor_tax_record` VALUES ('29', '5', '2018-03-01', '100002', '120000', null, null);

-- ----------------------------
-- Table structure for cus_bank_statements
-- ----------------------------
DROP TABLE IF EXISTS `cus_bank_statements`;
CREATE TABLE `cus_bank_statements` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ref_id` int(11) DEFAULT NULL,
  `month` date DEFAULT NULL COMMENT '月份',
  `inflow` decimal(28,2) DEFAULT NULL COMMENT '流入额(元)',
  `outflow` decimal(28,2) DEFAULT NULL COMMENT '流出额(元)',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of cus_bank_statements
-- ----------------------------
INSERT INTO `cus_bank_statements` VALUES ('15', '5', '2018-01-01', '1.00', '2.00');
INSERT INTO `cus_bank_statements` VALUES ('17', '5', '2018-04-01', '13.00', '14.00');
INSERT INTO `cus_bank_statements` VALUES ('18', '6', '2018-01-01', '1.00', '2.00');

-- ----------------------------
-- Table structure for cus_car
-- ----------------------------
DROP TABLE IF EXISTS `cus_car`;
CREATE TABLE `cus_car` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `plate_no` varchar(20) DEFAULT NULL COMMENT '车牌号',
  `vechicle_type` varchar(20) DEFAULT NULL COMMENT '车辆类型',
  `owner` int(20) DEFAULT NULL COMMENT '所有人',
  `address` varchar(50) DEFAULT NULL COMMENT '住址',
  `use_character` varchar(50) DEFAULT NULL COMMENT '使用性质',
  `model` varchar(20) DEFAULT NULL COMMENT '品牌型号',
  `vin` varchar(50) DEFAULT NULL COMMENT '车辆识别代号',
  `engine_no` varchar(50) DEFAULT NULL COMMENT '发动机号',
  `register_date` date DEFAULT NULL COMMENT '注册日期',
  `issue_date` date DEFAULT NULL COMMENT '发证日期(购置时间)',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cus_car
-- ----------------------------
INSERT INTO `cus_car` VALUES ('9', '123', '234234', '5', '234234', '234234', '234234', '234234', '23432', '2018-05-01', '2018-05-01');
INSERT INTO `cus_car` VALUES ('10', '233323', '宝马', '6', '2313123', '23123', '12312', '1234', '1213123', '2018-05-01', '2018-05-01');
INSERT INTO `cus_car` VALUES ('11', '苏B66666', 'suv', '4', '茂业', '自用', 'HAVAL', '123121563', '无', '2018-03-01', '2018-05-01');
INSERT INTO `cus_car` VALUES ('12', '苏B88888', '越野', '4', '新安', '自动', '奔驰G350', '4641132', '无', '2017-12-01', '2018-02-01');
INSERT INTO `cus_car` VALUES ('13', '都后期会', '会回来', '10', '打球的', '多钱啊多', '切切', '全额去', '全额去', '2018-05-22', '2018-05-28');
INSERT INTO `cus_car` VALUES ('14', '1', '1', '11', '1', '1', '1', '1', '1', '2018-06-01', '2018-06-01');
INSERT INTO `cus_car` VALUES ('15', '苏B66666', 'suv', '12', '无1', '无2', '无3', '无4', '无5', '2017-06-01', '2017-06-01');

-- ----------------------------
-- Table structure for cus_credit_information
-- ----------------------------
DROP TABLE IF EXISTS `cus_credit_information`;
CREATE TABLE `cus_credit_information` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ref_id` int(11) DEFAULT NULL,
  `report` date NOT NULL COMMENT '报告日期',
  `credit_cards` int(11) DEFAULT NULL COMMENT '信用卡数量',
  `loan_balance` varchar(20) DEFAULT NULL COMMENT '贷款余额',
  `avg_repayment` varchar(20) DEFAULT NULL COMMENT '近6个月平均应',
  `avg_useamount` varchar(20) DEFAULT NULL COMMENT '近6个月平均使用额度',
  `available_quota` varchar(20) DEFAULT NULL COMMENT '已使用额度',
  `credit_bank` varchar(50) DEFAULT NULL COMMENT '最高授信银行及额度',
  `number_enquiries` int(11) DEFAULT NULL COMMENT '近半年本人查询次数',
  `number_institutional` int(11) DEFAULT NULL COMMENT '近半年机构查询次数',
  `overdue_situation` varchar(50) DEFAULT NULL COMMENT '逾期情况',
  `abnormal_situation` varchar(100) DEFAULT NULL COMMENT '异常情况',
  `other_liabilities` varchar(255) DEFAULT NULL COMMENT '其他外债明细',
  `total_of_credit` varchar(255) DEFAULT NULL COMMENT '授信总额',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cus_credit_information
-- ----------------------------
INSERT INTO `cus_credit_information` VALUES ('8', '11', '2018-06-01', null, '1', '1', '', '', '', null, null, '', '', '', null);
INSERT INTO `cus_credit_information` VALUES ('9', '10', '2018-06-05', '12', '100000', '15000', '', '', '', '1', '2', '无', '无', '无', null);
INSERT INTO `cus_credit_information` VALUES ('10', '12', '2018-05-01', '6', '200000', '10000', '100000', '', '300000', null, null, '无', '无', '无', null);

-- ----------------------------
-- Table structure for cus_entcredit_information
-- ----------------------------
DROP TABLE IF EXISTS `cus_entcredit_information`;
CREATE TABLE `cus_entcredit_information` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ref_id` int(11) DEFAULT NULL,
  `report` date DEFAULT NULL COMMENT '报告日期',
  `loan_balance` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '贷款余额',
  `due_amount` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '最近三个月到期额度',
  `debt_detail` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '或有负债明细（对外担保）',
  `overdue_situation` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '逾期情况',
  `abnormal_condition` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '异常情况',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of cus_entcredit_information
-- ----------------------------
INSERT INTO `cus_entcredit_information` VALUES ('9', '5', '2018-05-24', '', '', '', 'zxc', '');
INSERT INTO `cus_entcredit_information` VALUES ('10', '6', '2018-05-14', '', '', '', 'zxcf', '');
INSERT INTO `cus_entcredit_information` VALUES ('11', '8', '2018-06-05', '100000', '30000', '无1', '无2', '无3');

-- ----------------------------
-- Table structure for cus_enterprise_info
-- ----------------------------
DROP TABLE IF EXISTS `cus_enterprise_info`;
CREATE TABLE `cus_enterprise_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ref_id` int(11) DEFAULT NULL,
  `enterprise_name` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '企业名称',
  `legal_person` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '企业法人',
  `enterprise_code` varchar(18) COLLATE utf8_bin DEFAULT NULL COMMENT '统一社会信用代码',
  `registered_assets` varchar(50) COLLATE utf8_bin DEFAULT NULL COMMENT '注册资本',
  `establishment_time` date DEFAULT NULL COMMENT '成立日期',
  `busniss_term` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '营业期限',
  `enterprise_scale` varchar(50) COLLATE utf8_bin DEFAULT NULL COMMENT '企业规模',
  `business_scope` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '营业范围',
  `domicile` varchar(150) COLLATE utf8_bin DEFAULT NULL COMMENT '住所',
  `ownership_structure` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '股权结构',
  `enterprise_type` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '企业类型',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of cus_enterprise_info
-- ----------------------------
INSERT INTO `cus_enterprise_info` VALUES ('5', '25', '58111', '111', '9999', '9999', '2018-05-08', '111', '111', '111', '111', '123', '有限责任公司');
INSERT INTO `cus_enterprise_info` VALUES ('6', '29', '58222', '2222', '222', '222', '2018-05-14', '21', '222', '222', '222', '456', '有限责任公司');
INSERT INTO `cus_enterprise_info` VALUES ('7', '34', '顾大欣', '顾三欣', '22222222', '100', '2018-05-01', '12', '1', '卖身', '滨湖区蠡湖大厦', '22222', '有限责任公司');
INSERT INTO `cus_enterprise_info` VALUES ('8', '36', '58333', '略略略', '888888888888', '100万', '2018-05-28', '2020-12-31', null, null, null, '略略略100%', null);
INSERT INTO `cus_enterprise_info` VALUES ('9', '37', '嗡嗡嗡', '嗡嗡嗡', '她她她', '天天', '2018-05-01', '2018-05-01', '她她她', '让人认同', '天天', '天天', null);
INSERT INTO `cus_enterprise_info` VALUES ('10', '39', 'hong', 'hong', '122222222222222', '2', '2018-06-01', null, null, null, null, '无', null);

-- ----------------------------
-- Table structure for cus_entloan_info
-- ----------------------------
DROP TABLE IF EXISTS `cus_entloan_info`;
CREATE TABLE `cus_entloan_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ref_id` int(11) DEFAULT NULL,
  `loan_bank` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '贷款银行',
  `loan_amount` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '贷款总额',
  `loan_balance` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '贷款余额',
  `start_time` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '起始日',
  `end_time` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '到期日',
  `loan_property` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '贷款性质',
  `guarantee_propety` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '保证性质',
  `repayment_type` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '还款方式',
  `new_or_reloan` int(1) DEFAULT NULL COMMENT '新增/再贷',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of cus_entloan_info
-- ----------------------------
INSERT INTO `cus_entloan_info` VALUES ('43', '8', '111', null, null, '2018-05-25 18:18:21', '2018-05-25 18:18:21', null, null, null, null);
INSERT INTO `cus_entloan_info` VALUES ('46', '10', 'qwe', null, null, '2018-05-25 18:18:22', '2018-05-25 18:18:22', null, null, null, null);
INSERT INTO `cus_entloan_info` VALUES ('49', '9', 'zxc', null, null, '2018-05-25 18:18:28', '2018-05-25 18:18:28', null, null, null, null);
INSERT INTO `cus_entloan_info` VALUES ('51', '11', '平安银行', '500000', null, null, null, null, null, null, null);

-- ----------------------------
-- Table structure for cus_estate
-- ----------------------------
DROP TABLE IF EXISTS `cus_estate`;
CREATE TABLE `cus_estate` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ref_id` int(32) DEFAULT '0',
  `ownership` int(11) DEFAULT NULL COMMENT '所有权人id',
  `address` varchar(50) DEFAULT NULL COMMENT '地址',
  `area` varchar(20) DEFAULT NULL COMMENT '面积',
  `nature` varchar(50) DEFAULT NULL COMMENT '土地性质',
  `construction_time` date DEFAULT NULL COMMENT '建筑时间',
  `room_type` varchar(30) DEFAULT NULL COMMENT '房屋类型',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cus_estate
-- ----------------------------
INSERT INTO `cus_estate` VALUES ('16', '0', '10', '和你换哪里哪里呢', '10000', '爽肤水 ', '2018-05-29', '额外若无 ');
INSERT INTO `cus_estate` VALUES ('17', '0', '11', '无', '200', '国有', '2018-06-01', null);
INSERT INTO `cus_estate` VALUES ('18', '0', '10', '茂业天地', '1000', '你猜', '2018-06-01', '你猜');
INSERT INTO `cus_estate` VALUES ('19', '0', '11', '世茂首府', '2000', 'emmm', '2018-06-14', '你猜');
INSERT INTO `cus_estate` VALUES ('20', '0', '12', '新安', '140', '无1', '2016-06-01', '无2');

-- ----------------------------
-- Table structure for cus_loan_info
-- ----------------------------
DROP TABLE IF EXISTS `cus_loan_info`;
CREATE TABLE `cus_loan_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ref_id` int(11) DEFAULT NULL,
  `loan_bank` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '贷款银行',
  `loan_amount` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '贷款总额',
  `loan_balance` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '贷款余额',
  `start_time` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '起始日',
  `end_time` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '到期日',
  `loan_property` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '贷款性质',
  `guarantee_propety` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '保证性质',
  `repayment_type` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '还款方式',
  `new_or_reloan` int(1) DEFAULT NULL COMMENT '新增/再贷',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of cus_loan_info
-- ----------------------------
INSERT INTO `cus_loan_info` VALUES ('22', '1', null, '11', null, null, null, null, null, null, null);
INSERT INTO `cus_loan_info` VALUES ('23', '1', null, '1', null, null, null, null, null, null, null);
INSERT INTO `cus_loan_info` VALUES ('24', '6', '江苏银行', '100000', '50000', '2018-05-24 00:00:00', '2018-05-31 00:00:00', null, null, null, null);
INSERT INTO `cus_loan_info` VALUES ('25', '1', null, null, null, null, null, null, null, null, null);
INSERT INTO `cus_loan_info` VALUES ('26', '1', null, null, null, null, null, null, null, null, null);
INSERT INTO `cus_loan_info` VALUES ('27', '1', '江苏银行', '200000', '100000', '2018-03-01 00:00:00', '2018-10-31 00:00:00', null, null, null, null);
INSERT INTO `cus_loan_info` VALUES ('28', '1', '农行', '500000', '100000', '2018-02-01 00:00:00', '2018-07-31 00:00:00', '无', null, null, null);
INSERT INTO `cus_loan_info` VALUES ('29', '8', '建设银行', '123456', null, null, null, null, null, null, null);
INSERT INTO `cus_loan_info` VALUES ('30', '9', '农业银行', '987654', null, null, null, null, null, null, null);
INSERT INTO `cus_loan_info` VALUES ('31', '10', '上海银行', '666666', null, null, null, null, null, null, null);

-- ----------------------------
-- Table structure for cus_personal_info
-- ----------------------------
DROP TABLE IF EXISTS `cus_personal_info`;
CREATE TABLE `cus_personal_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ref_id` int(11) DEFAULT NULL,
  `realname` varchar(30) COLLATE utf8_bin DEFAULT NULL COMMENT '姓名',
  `sex` int(1) DEFAULT NULL COMMENT '性别',
  `mobile` varchar(11) COLLATE utf8_bin DEFAULT NULL COMMENT '手机号',
  `idcard` varchar(18) COLLATE utf8_bin DEFAULT NULL COMMENT '身份证',
  `province` int(11) DEFAULT NULL COMMENT '省',
  `city` int(11) DEFAULT NULL COMMENT '市',
  `town` int(11) DEFAULT NULL COMMENT '区',
  `birthday` date DEFAULT NULL COMMENT '出生日期',
  `work_unit` varchar(50) COLLATE utf8_bin DEFAULT NULL COMMENT '工作单位',
  `monthly_income` decimal(28,2) DEFAULT NULL COMMENT '月收入',
  `marital_status` int(1) DEFAULT NULL COMMENT '婚姻状况',
  `family_structure` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of cus_personal_info
-- ----------------------------
INSERT INTO `cus_personal_info` VALUES ('10', '38', '张三', '0', '15888888888', '320888888888888888', '210000', '210500', '210505', '2018-05-23', '吴', '200000.00', '1', '无');
INSERT INTO `cus_personal_info` VALUES ('11', '40', 'hong', '1', '15106195972', '123456789712345', '110000', '110100', '110101', '2018-06-01', '无', '2.00', '1', null);
INSERT INTO `cus_personal_info` VALUES ('12', '41', '李四', '0', '15878965412', '320826999999999999', '130000', '130200', '130203', '1989-06-01', '无', '100000.00', '0', '。。。。。');

-- ----------------------------
-- Table structure for cus_register_info
-- ----------------------------
DROP TABLE IF EXISTS `cus_register_info`;
CREATE TABLE `cus_register_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `user_name` varchar(30) COLLATE utf8_bin DEFAULT NULL COMMENT '账户',
  `password` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '密码',
  `mobile` varchar(11) COLLATE utf8_bin DEFAULT NULL COMMENT '手机',
  `email` varchar(30) COLLATE utf8_bin DEFAULT NULL COMMENT '邮件',
  `reg_time` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '注册时间',
  `emp_id` int(11) DEFAULT NULL COMMENT '员工编号',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of cus_register_info
-- ----------------------------
INSERT INTO `cus_register_info` VALUES ('20', null, null, '15888888888', null, '2018-05-09 14:03:27', '1');
INSERT INTO `cus_register_info` VALUES ('25', null, null, '15999999999', null, '2018-05-09 17:48:02', '1');
INSERT INTO `cus_register_info` VALUES ('26', null, null, '15888888888', null, '2018-05-09 17:51:39', '1');
INSERT INTO `cus_register_info` VALUES ('27', null, null, '15899999999', null, '2018-05-09 17:52:46', '1');
INSERT INTO `cus_register_info` VALUES ('28', null, null, '15888888888', null, '2018-05-09 17:54:29', '1');
INSERT INTO `cus_register_info` VALUES ('29', null, null, '15888888888', null, '2018-05-10 15:51:08', '1');
INSERT INTO `cus_register_info` VALUES ('30', null, null, '13838389438', null, '2018-05-10 16:00:00', '1');
INSERT INTO `cus_register_info` VALUES ('31', null, null, '13838389438', null, '2018-05-11 13:06:49', '1');
INSERT INTO `cus_register_info` VALUES ('32', null, null, '15888888888', null, '2018-05-14 13:55:09', '1');
INSERT INTO `cus_register_info` VALUES ('33', null, null, '15888888888', null, '2018-05-14 13:57:47', '1');
INSERT INTO `cus_register_info` VALUES ('34', null, null, '13838389438', null, '2018-05-18 15:49:49', '1');
INSERT INTO `cus_register_info` VALUES ('35', null, null, '13838389438', null, '2018-05-18 15:57:08', '1');
INSERT INTO `cus_register_info` VALUES ('36', null, null, '15888888888', null, '2018-05-28 17:31:46', '3');
INSERT INTO `cus_register_info` VALUES ('37', null, null, '13111112222', null, '2018-05-31 13:38:52', '6');
INSERT INTO `cus_register_info` VALUES ('38', null, null, '15888888888', null, '2018-05-31 16:30:39', '3');
INSERT INTO `cus_register_info` VALUES ('39', null, null, '15106195972', null, '2018-06-01 10:27:38', '14');
INSERT INTO `cus_register_info` VALUES ('40', null, null, '15106195972', null, '2018-06-01 10:28:25', '14');
INSERT INTO `cus_register_info` VALUES ('41', null, null, '15878965412', null, '2018-06-05 09:55:45', '4');

-- ----------------------------
-- Table structure for investigation_trial
-- ----------------------------
DROP TABLE IF EXISTS `investigation_trial`;
CREATE TABLE `investigation_trial` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ref_id` int(11) DEFAULT NULL,
  `amounta_duration` varchar(255) DEFAULT NULL COMMENT '申请金额、期限',
  `use_repayment` varchar(255) DEFAULT NULL COMMENT '借款用途、还款来源',
  `founder_information` varchar(255) DEFAULT NULL COMMENT '创始人信息',
  `industry_attributes` varchar(255) DEFAULT NULL COMMENT '企业竞争对手业属性、主营业务及其市场竞争环境、竞争对手、竞争力',
  `corporate_clients` varchar(255) DEFAULT NULL COMMENT '企业下游主要客户',
  `lastyear_sales` varchar(255) DEFAULT NULL COMMENT '企业去年销售额、开票额、成本构成、毛利率',
  `current_sales` varchar(255) DEFAULT NULL COMMENT '今年截至目前的销售额',
  `accounts_receivable` varchar(255) DEFAULT NULL COMMENT '企业应收账款总额、收款周期',
  `accounts_payable` varchar(255) DEFAULT NULL COMMENT '企业应付账款总额、付款周期',
  `cash_ratio` varchar(255) DEFAULT NULL COMMENT '企业收付款时现金和承兑各占多少',
  `liabilities` varchar(255) DEFAULT NULL COMMENT '企业负债情况',
  `enterprise_assets` varchar(255) DEFAULT NULL COMMENT '企业名下主要资产',
  `personal_assets` varchar(255) DEFAULT NULL COMMENT '个人名下主要资产',
  `emp_information` varchar(255) DEFAULT '' COMMENT '企业员工人数、高管人数、每月工资总数，发工资时间',
  `office_space` varchar(255) DEFAULT NULL COMMENT '企业办公场地',
  `bad_creditreporting` varchar(255) DEFAULT NULL COMMENT '企业个人涉诉、违法情况',
  `business` varchar(255) DEFAULT NULL COMMENT '拟质押应收账款，往来方历史',
  `guarantee` varchar(255) DEFAULT NULL COMMENT '拟担保企业情况',
  `mortgage_situation` varchar(255) DEFAULT NULL COMMENT '拟抵押资产情况',
  `materials` varchar(255) DEFAULT NULL COMMENT '材料清单',
  `enterprise` varchar(255) DEFAULT NULL COMMENT '企业',
  `advice` varchar(255) DEFAULT NULL COMMENT '建议',
  `record_personnel` int(50) DEFAULT NULL COMMENT '记录人员',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of investigation_trial
-- ----------------------------
INSERT INTO `investigation_trial` VALUES ('5', '24', 'admin', 'admin', '11111', 'admin', '111111', 'admin', 'admin', null, null, null, null, null, null, '', null, null, null, null, null, '房产证', '税单', '价值充足', '3');
INSERT INTO `investigation_trial` VALUES ('6', '27', '100,12', '瓦大大,我去额去', '大打球的群二多阿达达到安全带', '亲吻', ' 全额', ' 贰千', '全额切切', '全额去二切切', '切切厄齐尔 亲吻切切', null, null, null, null, '', null, null, null, null, null, '切切', '全额去', '委屈二', '3');

-- ----------------------------
-- Table structure for loan_middle
-- ----------------------------
DROP TABLE IF EXISTS `loan_middle`;
CREATE TABLE `loan_middle` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ref_id` int(11) DEFAULT NULL,
  `time` date DEFAULT NULL,
  `record_personnel` int(11) DEFAULT NULL COMMENT '记录人',
  `consensus` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '总体意见',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of loan_middle
-- ----------------------------
INSERT INTO `loan_middle` VALUES ('12', '24', '2018-05-28', '6', null);
INSERT INTO `loan_middle` VALUES ('17', '24', '2018-05-29', '6', null);
INSERT INTO `loan_middle` VALUES ('18', '24', '2018-05-30', '4', null);
INSERT INTO `loan_middle` VALUES ('19', '24', '2018-05-31', '6', null);
INSERT INTO `loan_middle` VALUES ('20', '27', '2018-06-13', '2', '4');

-- ----------------------------
-- Table structure for loan_review_opinions
-- ----------------------------
DROP TABLE IF EXISTS `loan_review_opinions`;
CREATE TABLE `loan_review_opinions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ref_id` int(11) DEFAULT NULL COMMENT '进件id关联',
  `personnel` int(11) DEFAULT NULL COMMENT '审核人员',
  `record_personnel` int(11) DEFAULT NULL COMMENT '记录人',
  `advantage` varchar(255) DEFAULT NULL COMMENT '优势',
  `risk` varchar(255) DEFAULT NULL COMMENT '风险点',
  `opinion` varchar(255) DEFAULT NULL COMMENT '意见',
  `time` datetime DEFAULT NULL COMMENT '时间',
  `loan_middle_id` int(11) DEFAULT NULL COMMENT '中间表id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=65 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of loan_review_opinions
-- ----------------------------
INSERT INTO `loan_review_opinions` VALUES ('58', null, '4', null, 'asdad', 'qeq', ';ii', null, '12');
INSERT INTO `loan_review_opinions` VALUES ('59', null, '3', null, 'mkyhky', 'ykiy', 'yiy', null, '12');
INSERT INTO `loan_review_opinions` VALUES ('60', '24', '4', '6', 'ccc', 'ccc', 'ccc', null, '17');
INSERT INTO `loan_review_opinions` VALUES ('61', '24', '6', '4', 'qwe', 'qwe', 'scfs', null, '18');
INSERT INTO `loan_review_opinions` VALUES ('62', null, '3', null, 'dthrt', 'fhr', 'rgyr', null, '19');
INSERT INTO `loan_review_opinions` VALUES ('64', null, '3', null, '1', '2', '3', null, '20');

-- ----------------------------
-- Table structure for qrtz_blob_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_blob_triggers`;
CREATE TABLE `qrtz_blob_triggers` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `TRIGGER_NAME` varchar(200) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  `BLOB_DATA` blob,
  PRIMARY KEY (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`),
  KEY `SCHED_NAME` (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`),
  CONSTRAINT `qrtz_blob_triggers_ibfk_1` FOREIGN KEY (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`) REFERENCES `qrtz_triggers` (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qrtz_blob_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_calendars
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_calendars`;
CREATE TABLE `qrtz_calendars` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `CALENDAR_NAME` varchar(200) NOT NULL,
  `CALENDAR` blob NOT NULL,
  PRIMARY KEY (`SCHED_NAME`,`CALENDAR_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qrtz_calendars
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_cron_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_cron_triggers`;
CREATE TABLE `qrtz_cron_triggers` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `TRIGGER_NAME` varchar(200) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  `CRON_EXPRESSION` varchar(120) NOT NULL,
  `TIME_ZONE_ID` varchar(80) DEFAULT NULL,
  PRIMARY KEY (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`),
  CONSTRAINT `qrtz_cron_triggers_ibfk_1` FOREIGN KEY (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`) REFERENCES `qrtz_triggers` (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qrtz_cron_triggers
-- ----------------------------
INSERT INTO `qrtz_cron_triggers` VALUES ('YJFintechScheduler', 'TASK_1', 'DEFAULT', '0 0/30 * * * ?', 'Asia/Shanghai');
INSERT INTO `qrtz_cron_triggers` VALUES ('YJFintechScheduler', 'TASK_2', 'DEFAULT', '0 0/30 * * * ?', 'Asia/Shanghai');

-- ----------------------------
-- Table structure for qrtz_fired_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_fired_triggers`;
CREATE TABLE `qrtz_fired_triggers` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `ENTRY_ID` varchar(95) NOT NULL,
  `TRIGGER_NAME` varchar(200) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  `INSTANCE_NAME` varchar(200) NOT NULL,
  `FIRED_TIME` bigint(13) NOT NULL,
  `SCHED_TIME` bigint(13) NOT NULL,
  `PRIORITY` int(11) NOT NULL,
  `STATE` varchar(16) NOT NULL,
  `JOB_NAME` varchar(200) DEFAULT NULL,
  `JOB_GROUP` varchar(200) DEFAULT NULL,
  `IS_NONCONCURRENT` varchar(1) DEFAULT NULL,
  `REQUESTS_RECOVERY` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`SCHED_NAME`,`ENTRY_ID`),
  KEY `IDX_QRTZ_FT_TRIG_INST_NAME` (`SCHED_NAME`,`INSTANCE_NAME`),
  KEY `IDX_QRTZ_FT_INST_JOB_REQ_RCVRY` (`SCHED_NAME`,`INSTANCE_NAME`,`REQUESTS_RECOVERY`),
  KEY `IDX_QRTZ_FT_J_G` (`SCHED_NAME`,`JOB_NAME`,`JOB_GROUP`),
  KEY `IDX_QRTZ_FT_JG` (`SCHED_NAME`,`JOB_GROUP`),
  KEY `IDX_QRTZ_FT_T_G` (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`),
  KEY `IDX_QRTZ_FT_TG` (`SCHED_NAME`,`TRIGGER_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qrtz_fired_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_job_details
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_job_details`;
CREATE TABLE `qrtz_job_details` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `JOB_NAME` varchar(200) NOT NULL,
  `JOB_GROUP` varchar(200) NOT NULL,
  `DESCRIPTION` varchar(250) DEFAULT NULL,
  `JOB_CLASS_NAME` varchar(250) NOT NULL,
  `IS_DURABLE` varchar(1) NOT NULL,
  `IS_NONCONCURRENT` varchar(1) NOT NULL,
  `IS_UPDATE_DATA` varchar(1) NOT NULL,
  `REQUESTS_RECOVERY` varchar(1) NOT NULL,
  `JOB_DATA` blob,
  PRIMARY KEY (`SCHED_NAME`,`JOB_NAME`,`JOB_GROUP`),
  KEY `IDX_QRTZ_J_REQ_RECOVERY` (`SCHED_NAME`,`REQUESTS_RECOVERY`),
  KEY `IDX_QRTZ_J_GRP` (`SCHED_NAME`,`JOB_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qrtz_job_details
-- ----------------------------
INSERT INTO `qrtz_job_details` VALUES ('YJFintechScheduler', 'TASK_1', 'DEFAULT', null, 'com.yjcaifu.modules.job.utils.ScheduleJob', '0', '0', '0', '0', 0xACED0005737200156F72672E71756172747A2E4A6F62446174614D61709FB083E8BFA9B0CB020000787200266F72672E71756172747A2E7574696C732E537472696E674B65794469727479466C61674D61708208E8C3FBC55D280200015A0013616C6C6F77735472616E7369656E74446174617872001D6F72672E71756172747A2E7574696C732E4469727479466C61674D617013E62EAD28760ACE0200025A000564697274794C00036D617074000F4C6A6176612F7574696C2F4D61703B787001737200116A6176612E7574696C2E486173684D61700507DAC1C31660D103000246000A6C6F6164466163746F724900097468726573686F6C6478703F4000000000000C7708000000100000000174000D4A4F425F504152414D5F4B455973720030636F6D2E796A63616966752E6D6F64756C65732E6A6F622E656E746974792E5363686564756C654A6F62456E7469747900000000000000010200084C00086265616E4E616D657400124C6A6176612F6C616E672F537472696E673B4C000A63726561746554696D657400104C6A6176612F7574696C2F446174653B4C000E63726F6E45787072657373696F6E71007E00094C00056A6F6249647400104C6A6176612F6C616E672F4C6F6E673B4C000A6D6574686F644E616D6571007E00094C0006706172616D7371007E00094C000672656D61726B71007E00094C00067374617475737400134C6A6176612F6C616E672F496E74656765723B7870740008746573745461736B7372000E6A6176612E7574696C2E44617465686A81014B5974190300007870770800000158BAF593307874000E3020302F3330202A202A202A203F7372000E6A6176612E6C616E672E4C6F6E673B8BE490CC8F23DF0200014A000576616C7565787200106A6176612E6C616E672E4E756D62657286AC951D0B94E08B0200007870000000000000000174000474657374740009796A66696E74656368740023C3A6C593E280B0C3A5C28FE2809AC3A6E280A2C2B0C3A6C2B5E280B9C3A8C2AFE280A2737200116A6176612E6C616E672E496E746567657212E2A0A4F781873802000149000576616C75657871007E0013000000007800);
INSERT INTO `qrtz_job_details` VALUES ('YJFintechScheduler', 'TASK_2', 'DEFAULT', null, 'com.yjcaifu.modules.job.utils.ScheduleJob', '0', '0', '0', '0', 0xACED0005737200156F72672E71756172747A2E4A6F62446174614D61709FB083E8BFA9B0CB020000787200266F72672E71756172747A2E7574696C732E537472696E674B65794469727479466C61674D61708208E8C3FBC55D280200015A0013616C6C6F77735472616E7369656E74446174617872001D6F72672E71756172747A2E7574696C732E4469727479466C61674D617013E62EAD28760ACE0200025A000564697274794C00036D617074000F4C6A6176612F7574696C2F4D61703B787001737200116A6176612E7574696C2E486173684D61700507DAC1C31660D103000246000A6C6F6164466163746F724900097468726573686F6C6478703F4000000000000C7708000000100000000174000D4A4F425F504152414D5F4B455973720030636F6D2E796A63616966752E6D6F64756C65732E6A6F622E656E746974792E5363686564756C654A6F62456E7469747900000000000000010200084C00086265616E4E616D657400124C6A6176612F6C616E672F537472696E673B4C000A63726561746554696D657400104C6A6176612F7574696C2F446174653B4C000E63726F6E45787072657373696F6E71007E00094C00056A6F6249647400104C6A6176612F6C616E672F4C6F6E673B4C000A6D6574686F644E616D6571007E00094C0006706172616D7371007E00094C000672656D61726B71007E00094C00067374617475737400134C6A6176612F6C616E672F496E74656765723B7870740008746573745461736B7372000E6A6176612E7574696C2E44617465686A81014B5974190300007870770800000158C377C4607874000E3020302F3330202A202A202A203F7372000E6A6176612E6C616E672E4C6F6E673B8BE490CC8F23DF0200014A000576616C7565787200106A6176612E6C616E672E4E756D62657286AC951D0B94E08B02000078700000000000000002740005746573743270740023C3A6E28094C2A0C3A5C28FE2809AC3A6E280A2C2B0C3A6C2B5E280B9C3A8C2AFE280A2737200116A6176612E6C616E672E496E746567657212E2A0A4F781873802000149000576616C75657871007E0013000000017800);

-- ----------------------------
-- Table structure for qrtz_locks
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_locks`;
CREATE TABLE `qrtz_locks` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `LOCK_NAME` varchar(40) NOT NULL,
  PRIMARY KEY (`SCHED_NAME`,`LOCK_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qrtz_locks
-- ----------------------------
INSERT INTO `qrtz_locks` VALUES ('YJFintechScheduler', 'STATE_ACCESS');
INSERT INTO `qrtz_locks` VALUES ('YJFintechScheduler', 'TRIGGER_ACCESS');

-- ----------------------------
-- Table structure for qrtz_paused_trigger_grps
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_paused_trigger_grps`;
CREATE TABLE `qrtz_paused_trigger_grps` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  PRIMARY KEY (`SCHED_NAME`,`TRIGGER_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qrtz_paused_trigger_grps
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_scheduler_state
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_scheduler_state`;
CREATE TABLE `qrtz_scheduler_state` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `INSTANCE_NAME` varchar(200) NOT NULL,
  `LAST_CHECKIN_TIME` bigint(13) NOT NULL,
  `CHECKIN_INTERVAL` bigint(13) NOT NULL,
  PRIMARY KEY (`SCHED_NAME`,`INSTANCE_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qrtz_scheduler_state
-- ----------------------------
INSERT INTO `qrtz_scheduler_state` VALUES ('YJFintechScheduler', 'DESKTOP-IKUQKM51528418621603', '1528419499326', '15000');

-- ----------------------------
-- Table structure for qrtz_simple_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_simple_triggers`;
CREATE TABLE `qrtz_simple_triggers` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `TRIGGER_NAME` varchar(200) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  `REPEAT_COUNT` bigint(7) NOT NULL,
  `REPEAT_INTERVAL` bigint(12) NOT NULL,
  `TIMES_TRIGGERED` bigint(10) NOT NULL,
  PRIMARY KEY (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`),
  CONSTRAINT `qrtz_simple_triggers_ibfk_1` FOREIGN KEY (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`) REFERENCES `qrtz_triggers` (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qrtz_simple_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_simprop_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_simprop_triggers`;
CREATE TABLE `qrtz_simprop_triggers` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `TRIGGER_NAME` varchar(200) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  `STR_PROP_1` varchar(512) DEFAULT NULL,
  `STR_PROP_2` varchar(512) DEFAULT NULL,
  `STR_PROP_3` varchar(512) DEFAULT NULL,
  `INT_PROP_1` int(11) DEFAULT NULL,
  `INT_PROP_2` int(11) DEFAULT NULL,
  `LONG_PROP_1` bigint(20) DEFAULT NULL,
  `LONG_PROP_2` bigint(20) DEFAULT NULL,
  `DEC_PROP_1` decimal(13,4) DEFAULT NULL,
  `DEC_PROP_2` decimal(13,4) DEFAULT NULL,
  `BOOL_PROP_1` varchar(1) DEFAULT NULL,
  `BOOL_PROP_2` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`),
  CONSTRAINT `qrtz_simprop_triggers_ibfk_1` FOREIGN KEY (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`) REFERENCES `qrtz_triggers` (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qrtz_simprop_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_triggers`;
CREATE TABLE `qrtz_triggers` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `TRIGGER_NAME` varchar(200) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  `JOB_NAME` varchar(200) NOT NULL,
  `JOB_GROUP` varchar(200) NOT NULL,
  `DESCRIPTION` varchar(250) DEFAULT NULL,
  `NEXT_FIRE_TIME` bigint(13) DEFAULT NULL,
  `PREV_FIRE_TIME` bigint(13) DEFAULT NULL,
  `PRIORITY` int(11) DEFAULT NULL,
  `TRIGGER_STATE` varchar(16) NOT NULL,
  `TRIGGER_TYPE` varchar(8) NOT NULL,
  `START_TIME` bigint(13) NOT NULL,
  `END_TIME` bigint(13) DEFAULT NULL,
  `CALENDAR_NAME` varchar(200) DEFAULT NULL,
  `MISFIRE_INSTR` smallint(2) DEFAULT NULL,
  `JOB_DATA` blob,
  PRIMARY KEY (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`),
  KEY `IDX_QRTZ_T_J` (`SCHED_NAME`,`JOB_NAME`,`JOB_GROUP`),
  KEY `IDX_QRTZ_T_JG` (`SCHED_NAME`,`JOB_GROUP`),
  KEY `IDX_QRTZ_T_C` (`SCHED_NAME`,`CALENDAR_NAME`),
  KEY `IDX_QRTZ_T_G` (`SCHED_NAME`,`TRIGGER_GROUP`),
  KEY `IDX_QRTZ_T_STATE` (`SCHED_NAME`,`TRIGGER_STATE`),
  KEY `IDX_QRTZ_T_N_STATE` (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`,`TRIGGER_STATE`),
  KEY `IDX_QRTZ_T_N_G_STATE` (`SCHED_NAME`,`TRIGGER_GROUP`,`TRIGGER_STATE`),
  KEY `IDX_QRTZ_T_NEXT_FIRE_TIME` (`SCHED_NAME`,`NEXT_FIRE_TIME`),
  KEY `IDX_QRTZ_T_NFT_ST` (`SCHED_NAME`,`TRIGGER_STATE`,`NEXT_FIRE_TIME`),
  KEY `IDX_QRTZ_T_NFT_MISFIRE` (`SCHED_NAME`,`MISFIRE_INSTR`,`NEXT_FIRE_TIME`),
  KEY `IDX_QRTZ_T_NFT_ST_MISFIRE` (`SCHED_NAME`,`MISFIRE_INSTR`,`NEXT_FIRE_TIME`,`TRIGGER_STATE`),
  KEY `IDX_QRTZ_T_NFT_ST_MISFIRE_GRP` (`SCHED_NAME`,`MISFIRE_INSTR`,`NEXT_FIRE_TIME`,`TRIGGER_GROUP`,`TRIGGER_STATE`),
  CONSTRAINT `qrtz_triggers_ibfk_1` FOREIGN KEY (`SCHED_NAME`, `JOB_NAME`, `JOB_GROUP`) REFERENCES `qrtz_job_details` (`SCHED_NAME`, `JOB_NAME`, `JOB_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qrtz_triggers
-- ----------------------------
INSERT INTO `qrtz_triggers` VALUES ('YJFintechScheduler', 'TASK_1', 'DEFAULT', 'TASK_1', 'DEFAULT', null, '1528419600000', '-1', '5', 'WAITING', 'CRON', '1525394575000', '0', null, '2', 0xACED0005737200156F72672E71756172747A2E4A6F62446174614D61709FB083E8BFA9B0CB020000787200266F72672E71756172747A2E7574696C732E537472696E674B65794469727479466C61674D61708208E8C3FBC55D280200015A0013616C6C6F77735472616E7369656E74446174617872001D6F72672E71756172747A2E7574696C732E4469727479466C61674D617013E62EAD28760ACE0200025A000564697274794C00036D617074000F4C6A6176612F7574696C2F4D61703B787001737200116A6176612E7574696C2E486173684D61700507DAC1C31660D103000246000A6C6F6164466163746F724900097468726573686F6C6478703F4000000000000C7708000000100000000174000D4A4F425F504152414D5F4B455973720030636F6D2E796A63616966752E6D6F64756C65732E6A6F622E656E746974792E5363686564756C654A6F62456E7469747900000000000000010200084C00086265616E4E616D657400124C6A6176612F6C616E672F537472696E673B4C000A63726561746554696D657400104C6A6176612F7574696C2F446174653B4C000E63726F6E45787072657373696F6E71007E00094C00056A6F6249647400104C6A6176612F6C616E672F4C6F6E673B4C000A6D6574686F644E616D6571007E00094C0006706172616D7371007E00094C000672656D61726B71007E00094C00067374617475737400134C6A6176612F6C616E672F496E74656765723B7870740008746573745461736B7372000E6A6176612E7574696C2E44617465686A81014B5974190300007870770800000158BAF593307874000E3020302F3330202A202A202A203F7372000E6A6176612E6C616E672E4C6F6E673B8BE490CC8F23DF0200014A000576616C7565787200106A6176612E6C616E672E4E756D62657286AC951D0B94E08B0200007870000000000000000174000474657374740009796A66696E74656368740023C3A6C593E280B0C3A5C28FE2809AC3A6E280A2C2B0C3A6C2B5E280B9C3A8C2AFE280A2737200116A6176612E6C616E672E496E746567657212E2A0A4F781873802000149000576616C75657871007E0013000000007800);
INSERT INTO `qrtz_triggers` VALUES ('YJFintechScheduler', 'TASK_2', 'DEFAULT', 'TASK_2', 'DEFAULT', null, '1525395600000', '-1', '5', 'PAUSED', 'CRON', '1525394576000', '0', null, '2', 0xACED0005737200156F72672E71756172747A2E4A6F62446174614D61709FB083E8BFA9B0CB020000787200266F72672E71756172747A2E7574696C732E537472696E674B65794469727479466C61674D61708208E8C3FBC55D280200015A0013616C6C6F77735472616E7369656E74446174617872001D6F72672E71756172747A2E7574696C732E4469727479466C61674D617013E62EAD28760ACE0200025A000564697274794C00036D617074000F4C6A6176612F7574696C2F4D61703B787001737200116A6176612E7574696C2E486173684D61700507DAC1C31660D103000246000A6C6F6164466163746F724900097468726573686F6C6478703F4000000000000C7708000000100000000174000D4A4F425F504152414D5F4B455973720030636F6D2E796A63616966752E6D6F64756C65732E6A6F622E656E746974792E5363686564756C654A6F62456E7469747900000000000000010200084C00086265616E4E616D657400124C6A6176612F6C616E672F537472696E673B4C000A63726561746554696D657400104C6A6176612F7574696C2F446174653B4C000E63726F6E45787072657373696F6E71007E00094C00056A6F6249647400104C6A6176612F6C616E672F4C6F6E673B4C000A6D6574686F644E616D6571007E00094C0006706172616D7371007E00094C000672656D61726B71007E00094C00067374617475737400134C6A6176612F6C616E672F496E74656765723B7870740008746573745461736B7372000E6A6176612E7574696C2E44617465686A81014B5974190300007870770800000158C377C4607874000E3020302F3330202A202A202A203F7372000E6A6176612E6C616E672E4C6F6E673B8BE490CC8F23DF0200014A000576616C7565787200106A6176612E6C616E672E4E756D62657286AC951D0B94E08B02000078700000000000000002740005746573743270740023C3A6E28094C2A0C3A5C28FE2809AC3A6E280A2C2B0C3A6C2B5E280B9C3A8C2AFE280A2737200116A6176612E6C616E672E496E746567657212E2A0A4F781873802000149000576616C75657871007E0013000000017800);

-- ----------------------------
-- Table structure for reimbursement_type
-- ----------------------------
DROP TABLE IF EXISTS `reimbursement_type`;
CREATE TABLE `reimbursement_type` (
  `id` int(11) NOT NULL,
  `type` varchar(50) DEFAULT NULL COMMENT '还款方式',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of reimbursement_type
-- ----------------------------
INSERT INTO `reimbursement_type` VALUES ('0', '等额本息(按月分期付款)');
INSERT INTO `reimbursement_type` VALUES ('1', '利随本清(一次性还款)');
INSERT INTO `reimbursement_type` VALUES ('2', '每月还息到期还本');
INSERT INTO `reimbursement_type` VALUES ('3', '按比例分期');

-- ----------------------------
-- Table structure for review_opinions
-- ----------------------------
DROP TABLE IF EXISTS `review_opinions`;
CREATE TABLE `review_opinions` (
  `userId` int(32) NOT NULL DEFAULT '0',
  `advantage` varchar(200) DEFAULT NULL COMMENT '优势',
  `risk` varchar(200) DEFAULT NULL COMMENT '风险点',
  `opinion` varchar(200) DEFAULT NULL COMMENT '意见',
  `reviewer` varchar(20) DEFAULT NULL COMMENT '评审人',
  PRIMARY KEY (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of review_opinions
-- ----------------------------
INSERT INTO `review_opinions` VALUES ('0', '资金流动快', '该公司近来亏损较大', '定期查询该公司的经营状况', 'RedSheet');

-- ----------------------------
-- Table structure for schedule_job
-- ----------------------------
DROP TABLE IF EXISTS `schedule_job`;
CREATE TABLE `schedule_job` (
  `job_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ä»»åŠ¡id',
  `bean_name` varchar(200) DEFAULT NULL COMMENT 'spring beanåç§°',
  `method_name` varchar(100) DEFAULT NULL COMMENT 'æ–¹æ³•å',
  `params` varchar(2000) DEFAULT NULL COMMENT 'å‚æ•°',
  `cron_expression` varchar(100) DEFAULT NULL COMMENT 'cronè¡¨è¾¾å¼',
  `status` tinyint(4) DEFAULT NULL COMMENT 'ä»»åŠ¡çŠ¶æ€  0ï¼šæ­£å¸¸  1ï¼šæš‚åœ',
  `remark` varchar(255) DEFAULT NULL COMMENT 'å¤‡æ³¨',
  `create_time` datetime DEFAULT NULL COMMENT 'åˆ›å»ºæ—¶é—´',
  PRIMARY KEY (`job_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='å®šæ—¶ä»»åŠ¡';

-- ----------------------------
-- Records of schedule_job
-- ----------------------------
INSERT INTO `schedule_job` VALUES ('1', 'testTask', 'test', 'yjfintech', '0 0/30 * * * ?', '0', 'æœ‰å‚æ•°æµ‹è¯•', '2016-12-01 23:16:46');
INSERT INTO `schedule_job` VALUES ('2', 'testTask', 'test2', null, '0 0/30 * * * ?', '1', 'æ— å‚æ•°æµ‹è¯•', '2016-12-03 14:55:56');

-- ----------------------------
-- Table structure for schedule_job_log
-- ----------------------------
DROP TABLE IF EXISTS `schedule_job_log`;
CREATE TABLE `schedule_job_log` (
  `log_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ä»»åŠ¡æ—¥å¿—id',
  `job_id` bigint(20) NOT NULL COMMENT 'ä»»åŠ¡id',
  `bean_name` varchar(200) DEFAULT NULL COMMENT 'spring beanåç§°',
  `method_name` varchar(100) DEFAULT NULL COMMENT 'æ–¹æ³•å',
  `params` varchar(2000) DEFAULT NULL COMMENT 'å‚æ•°',
  `status` tinyint(4) NOT NULL COMMENT 'ä»»åŠ¡çŠ¶æ€    0ï¼šæˆåŠŸ    1ï¼šå¤±è´¥',
  `error` varchar(2000) DEFAULT NULL COMMENT 'å¤±è´¥ä¿¡æ¯',
  `times` int(11) NOT NULL COMMENT 'è€—æ—¶(å•ä½ï¼šæ¯«ç§’)',
  `create_time` datetime DEFAULT NULL COMMENT 'åˆ›å»ºæ—¶é—´',
  PRIMARY KEY (`log_id`),
  KEY `job_id` (`job_id`)
) ENGINE=InnoDB AUTO_INCREMENT=927 DEFAULT CHARSET=utf8 COMMENT='å®šæ—¶ä»»åŠ¡æ—¥å¿—';

-- ----------------------------
-- Records of schedule_job_log
-- ----------------------------
INSERT INTO `schedule_job_log` VALUES ('1', '1', 'testTask', 'test', 'yjfintech', '0', null, '1061', '2018-05-04 09:00:00');
INSERT INTO `schedule_job_log` VALUES ('2', '1', 'testTask', 'test', 'yjfintech', '0', null, '1016', '2018-05-04 09:30:00');
INSERT INTO `schedule_job_log` VALUES ('3', '1', 'testTask', 'test', 'yjfintech', '0', null, '1040', '2018-05-04 10:00:00');
INSERT INTO `schedule_job_log` VALUES ('4', '1', 'testTask', 'test', 'yjfintech', '0', null, '1079', '2018-05-04 10:30:00');
INSERT INTO `schedule_job_log` VALUES ('5', '1', 'testTask', 'test', 'yjfintech', '0', null, '1060', '2018-05-04 11:00:00');
INSERT INTO `schedule_job_log` VALUES ('6', '1', 'testTask', 'test', 'yjfintech', '0', null, '1055', '2018-05-04 11:30:00');
INSERT INTO `schedule_job_log` VALUES ('7', '1', 'testTask', 'test', 'yjfintech', '0', null, '1064', '2018-05-04 12:00:00');
INSERT INTO `schedule_job_log` VALUES ('8', '1', 'testTask', 'test', 'yjfintech', '0', null, '1086', '2018-05-04 13:30:00');
INSERT INTO `schedule_job_log` VALUES ('9', '1', 'testTask', 'test', 'yjfintech', '0', null, '1041', '2018-05-04 14:00:00');
INSERT INTO `schedule_job_log` VALUES ('10', '1', 'testTask', 'test', 'yjfintech', '0', null, '1024', '2018-05-04 14:30:00');
INSERT INTO `schedule_job_log` VALUES ('11', '1', 'testTask', 'test', 'yjfintech', '0', null, '1053', '2018-05-04 15:00:00');
INSERT INTO `schedule_job_log` VALUES ('12', '1', 'testTask', 'test', 'yjfintech', '0', null, '1038', '2018-05-04 15:30:01');
INSERT INTO `schedule_job_log` VALUES ('13', '1', 'testTask', 'test', 'yjfintech', '0', null, '1093', '2018-05-04 16:00:00');
INSERT INTO `schedule_job_log` VALUES ('14', '1', 'testTask', 'test', 'yjfintech', '0', null, '1046', '2018-05-04 16:30:00');
INSERT INTO `schedule_job_log` VALUES ('15', '1', 'testTask', 'test', 'yjfintech', '0', null, '1072', '2018-05-04 17:00:00');
INSERT INTO `schedule_job_log` VALUES ('16', '1', 'testTask', 'test', 'yjfintech', '0', null, '1080', '2018-05-04 17:30:00');
INSERT INTO `schedule_job_log` VALUES ('17', '1', 'testTask', 'test', 'yjfintech', '0', null, '1126', '2018-05-07 09:00:00');
INSERT INTO `schedule_job_log` VALUES ('18', '1', 'testTask', 'test', 'yjfintech', '0', null, '1067', '2018-05-07 09:30:00');
INSERT INTO `schedule_job_log` VALUES ('19', '1', 'testTask', 'test', 'yjfintech', '0', null, '1039', '2018-05-07 10:00:00');
INSERT INTO `schedule_job_log` VALUES ('20', '1', 'testTask', 'test', 'yjfintech', '0', null, '1094', '2018-05-07 10:30:00');
INSERT INTO `schedule_job_log` VALUES ('21', '1', 'testTask', 'test', 'yjfintech', '0', null, '1069', '2018-05-07 11:00:00');
INSERT INTO `schedule_job_log` VALUES ('22', '1', 'testTask', 'test', 'yjfintech', '0', null, '1037', '2018-05-07 11:30:00');
INSERT INTO `schedule_job_log` VALUES ('23', '1', 'testTask', 'test', 'yjfintech', '0', null, '1053', '2018-05-07 12:00:00');
INSERT INTO `schedule_job_log` VALUES ('24', '1', 'testTask', 'test', 'yjfintech', '0', null, '1017', '2018-05-07 13:00:00');
INSERT INTO `schedule_job_log` VALUES ('25', '1', 'testTask', 'test', 'yjfintech', '0', null, '1055', '2018-05-07 13:30:00');
INSERT INTO `schedule_job_log` VALUES ('26', '1', 'testTask', 'test', 'yjfintech', '0', null, '1077', '2018-05-07 14:00:00');
INSERT INTO `schedule_job_log` VALUES ('27', '1', 'testTask', 'test', 'yjfintech', '0', null, '1026', '2018-05-07 14:30:00');
INSERT INTO `schedule_job_log` VALUES ('28', '1', 'testTask', 'test', 'yjfintech', '0', null, '1024', '2018-05-07 15:00:00');
INSERT INTO `schedule_job_log` VALUES ('29', '1', 'testTask', 'test', 'yjfintech', '0', null, '1072', '2018-05-07 15:30:00');
INSERT INTO `schedule_job_log` VALUES ('30', '1', 'testTask', 'test', 'yjfintech', '0', null, '1068', '2018-05-07 16:00:00');
INSERT INTO `schedule_job_log` VALUES ('31', '1', 'testTask', 'test', 'yjfintech', '0', null, '1023', '2018-05-07 16:30:00');
INSERT INTO `schedule_job_log` VALUES ('32', '1', 'testTask', 'test', 'yjfintech', '0', null, '1020', '2018-05-07 17:00:00');
INSERT INTO `schedule_job_log` VALUES ('33', '1', 'testTask', 'test', 'yjfintech', '0', null, '1070', '2018-05-07 17:30:00');
INSERT INTO `schedule_job_log` VALUES ('34', '1', 'testTask', 'test', 'yjfintech', '0', null, '1034', '2018-05-08 09:00:00');
INSERT INTO `schedule_job_log` VALUES ('35', '1', 'testTask', 'test', 'yjfintech', '0', null, '1061', '2018-05-08 09:30:00');
INSERT INTO `schedule_job_log` VALUES ('36', '1', 'testTask', 'test', 'yjfintech', '0', null, '1029', '2018-05-08 10:00:00');
INSERT INTO `schedule_job_log` VALUES ('37', '1', 'testTask', 'test', 'yjfintech', '0', null, '1060', '2018-05-08 10:30:00');
INSERT INTO `schedule_job_log` VALUES ('38', '1', 'testTask', 'test', 'yjfintech', '0', null, '1021', '2018-05-08 11:00:00');
INSERT INTO `schedule_job_log` VALUES ('39', '1', 'testTask', 'test', 'yjfintech', '0', null, '1029', '2018-05-08 11:30:09');
INSERT INTO `schedule_job_log` VALUES ('40', '1', 'testTask', 'test', 'yjfintech', '0', null, '1010', '2018-05-08 12:00:00');
INSERT INTO `schedule_job_log` VALUES ('41', '1', 'testTask', 'test', 'yjfintech', '0', null, '1011', '2018-05-08 12:30:00');
INSERT INTO `schedule_job_log` VALUES ('42', '1', 'testTask', 'test', 'yjfintech', '0', null, '1008', '2018-05-08 13:00:00');
INSERT INTO `schedule_job_log` VALUES ('43', '1', 'testTask', 'test', 'yjfintech', '0', null, '1012', '2018-05-08 13:30:00');
INSERT INTO `schedule_job_log` VALUES ('44', '1', 'testTask', 'test', 'yjfintech', '0', null, '1077', '2018-05-08 14:00:00');
INSERT INTO `schedule_job_log` VALUES ('45', '1', 'testTask', 'test', 'yjfintech', '0', null, '1035', '2018-05-08 14:30:00');
INSERT INTO `schedule_job_log` VALUES ('46', '1', 'testTask', 'test', 'yjfintech', '0', null, '1051', '2018-05-08 15:00:00');
INSERT INTO `schedule_job_log` VALUES ('47', '1', 'testTask', 'test', 'yjfintech', '0', null, '1059', '2018-05-08 15:30:00');
INSERT INTO `schedule_job_log` VALUES ('48', '1', 'testTask', 'test', 'yjfintech', '0', null, '1058', '2018-05-08 16:00:00');
INSERT INTO `schedule_job_log` VALUES ('49', '1', 'testTask', 'test', 'yjfintech', '0', null, '1017', '2018-05-08 16:30:00');
INSERT INTO `schedule_job_log` VALUES ('50', '1', 'testTask', 'test', 'yjfintech', '0', null, '1047', '2018-05-08 17:00:00');
INSERT INTO `schedule_job_log` VALUES ('51', '1', 'testTask', 'test', 'yjfintech', '0', null, '1034', '2018-05-08 17:30:00');
INSERT INTO `schedule_job_log` VALUES ('52', '1', 'testTask', 'test', 'yjfintech', '0', null, '1026', '2018-05-08 18:30:00');
INSERT INTO `schedule_job_log` VALUES ('53', '1', 'testTask', 'test', 'yjfintech', '0', null, '1042', '2018-05-09 09:00:00');
INSERT INTO `schedule_job_log` VALUES ('54', '1', 'testTask', 'test', 'yjfintech', '0', null, '1071', '2018-05-09 09:30:00');
INSERT INTO `schedule_job_log` VALUES ('55', '1', 'testTask', 'test', 'yjfintech', '0', null, '1041', '2018-05-09 10:00:00');
INSERT INTO `schedule_job_log` VALUES ('56', '1', 'testTask', 'test', 'yjfintech', '0', null, '1043', '2018-05-09 10:30:00');
INSERT INTO `schedule_job_log` VALUES ('57', '1', 'testTask', 'test', 'yjfintech', '0', null, '1011', '2018-05-09 11:00:00');
INSERT INTO `schedule_job_log` VALUES ('58', '1', 'testTask', 'test', 'yjfintech', '0', null, '1037', '2018-05-09 11:30:00');
INSERT INTO `schedule_job_log` VALUES ('59', '1', 'testTask', 'test', 'yjfintech', '0', null, '1050', '2018-05-09 12:00:00');
INSERT INTO `schedule_job_log` VALUES ('60', '1', 'testTask', 'test', 'yjfintech', '0', null, '1011', '2018-05-09 12:30:00');
INSERT INTO `schedule_job_log` VALUES ('61', '1', 'testTask', 'test', 'yjfintech', '0', null, '1012', '2018-05-09 13:00:00');
INSERT INTO `schedule_job_log` VALUES ('62', '1', 'testTask', 'test', 'yjfintech', '0', null, '1030', '2018-05-09 13:30:00');
INSERT INTO `schedule_job_log` VALUES ('63', '1', 'testTask', 'test', 'yjfintech', '0', null, '1047', '2018-05-09 14:00:00');
INSERT INTO `schedule_job_log` VALUES ('64', '1', 'testTask', 'test', 'yjfintech', '0', null, '1033', '2018-05-09 15:00:00');
INSERT INTO `schedule_job_log` VALUES ('65', '1', 'testTask', 'test', 'yjfintech', '0', null, '1030', '2018-05-09 15:30:00');
INSERT INTO `schedule_job_log` VALUES ('66', '1', 'testTask', 'test', 'yjfintech', '0', null, '1058', '2018-05-09 16:00:00');
INSERT INTO `schedule_job_log` VALUES ('67', '1', 'testTask', 'test', 'yjfintech', '0', null, '1022', '2018-05-09 16:30:00');
INSERT INTO `schedule_job_log` VALUES ('68', '1', 'testTask', 'test', 'yjfintech', '0', null, '1025', '2018-05-09 17:00:00');
INSERT INTO `schedule_job_log` VALUES ('69', '1', 'testTask', 'test', 'yjfintech', '0', null, '1007', '2018-05-09 17:30:00');
INSERT INTO `schedule_job_log` VALUES ('70', '1', 'testTask', 'test', 'yjfintech', '0', null, '1047', '2018-05-10 09:00:00');
INSERT INTO `schedule_job_log` VALUES ('71', '1', 'testTask', 'test', 'yjfintech', '0', null, '1007', '2018-05-10 09:30:00');
INSERT INTO `schedule_job_log` VALUES ('72', '1', 'testTask', 'test', 'yjfintech', '0', null, '1021', '2018-05-10 10:00:00');
INSERT INTO `schedule_job_log` VALUES ('73', '1', 'testTask', 'test', 'yjfintech', '0', null, '1011', '2018-05-10 10:30:00');
INSERT INTO `schedule_job_log` VALUES ('74', '1', 'testTask', 'test', 'yjfintech', '0', null, '1057', '2018-05-10 11:00:00');
INSERT INTO `schedule_job_log` VALUES ('75', '1', 'testTask', 'test', 'yjfintech', '0', null, '1029', '2018-05-10 11:30:00');
INSERT INTO `schedule_job_log` VALUES ('76', '1', 'testTask', 'test', 'yjfintech', '0', null, '1029', '2018-05-10 12:00:00');
INSERT INTO `schedule_job_log` VALUES ('77', '1', 'testTask', 'test', 'yjfintech', '0', null, '1010', '2018-05-10 12:30:00');
INSERT INTO `schedule_job_log` VALUES ('78', '1', 'testTask', 'test', 'yjfintech', '0', null, '1011', '2018-05-10 13:00:00');
INSERT INTO `schedule_job_log` VALUES ('79', '1', 'testTask', 'test', 'yjfintech', '0', null, '1018', '2018-05-10 13:30:00');
INSERT INTO `schedule_job_log` VALUES ('80', '1', 'testTask', 'test', 'yjfintech', '0', null, '1010', '2018-05-10 14:00:00');
INSERT INTO `schedule_job_log` VALUES ('81', '1', 'testTask', 'test', 'yjfintech', '0', null, '1017', '2018-05-10 14:30:00');
INSERT INTO `schedule_job_log` VALUES ('82', '1', 'testTask', 'test', 'yjfintech', '0', null, '1009', '2018-05-10 15:00:00');
INSERT INTO `schedule_job_log` VALUES ('83', '1', 'testTask', 'test', 'yjfintech', '0', null, '1051', '2018-05-10 15:30:00');
INSERT INTO `schedule_job_log` VALUES ('84', '1', 'testTask', 'test', 'yjfintech', '0', null, '1018', '2018-05-10 16:00:00');
INSERT INTO `schedule_job_log` VALUES ('85', '1', 'testTask', 'test', 'yjfintech', '0', null, '1048', '2018-05-10 16:30:00');
INSERT INTO `schedule_job_log` VALUES ('86', '1', 'testTask', 'test', 'yjfintech', '0', null, '1013', '2018-05-10 17:00:00');
INSERT INTO `schedule_job_log` VALUES ('87', '1', 'testTask', 'test', 'yjfintech', '0', null, '1018', '2018-05-10 17:30:00');
INSERT INTO `schedule_job_log` VALUES ('88', '1', 'testTask', 'test', 'yjfintech', '0', null, '1074', '2018-05-11 09:30:00');
INSERT INTO `schedule_job_log` VALUES ('89', '1', 'testTask', 'test', 'yjfintech', '0', null, '1037', '2018-05-11 10:00:00');
INSERT INTO `schedule_job_log` VALUES ('90', '1', 'testTask', 'test', 'yjfintech', '0', null, '1039', '2018-05-11 10:30:00');
INSERT INTO `schedule_job_log` VALUES ('91', '1', 'testTask', 'test', 'yjfintech', '0', null, '1039', '2018-05-11 11:00:00');
INSERT INTO `schedule_job_log` VALUES ('92', '1', 'testTask', 'test', 'yjfintech', '0', null, '1092', '2018-05-11 11:30:00');
INSERT INTO `schedule_job_log` VALUES ('93', '1', 'testTask', 'test', 'yjfintech', '0', null, '1085', '2018-05-11 12:00:00');
INSERT INTO `schedule_job_log` VALUES ('94', '1', 'testTask', 'test', 'yjfintech', '0', null, '1086', '2018-05-11 12:30:00');
INSERT INTO `schedule_job_log` VALUES ('95', '1', 'testTask', 'test', 'yjfintech', '0', null, '1013', '2018-05-11 13:00:00');
INSERT INTO `schedule_job_log` VALUES ('96', '1', 'testTask', 'test', 'yjfintech', '0', null, '1007', '2018-05-11 13:30:00');
INSERT INTO `schedule_job_log` VALUES ('97', '1', 'testTask', 'test', 'yjfintech', '0', null, '1090', '2018-05-11 14:00:00');
INSERT INTO `schedule_job_log` VALUES ('98', '1', 'testTask', 'test', 'yjfintech', '0', null, '1037', '2018-05-11 14:30:00');
INSERT INTO `schedule_job_log` VALUES ('99', '1', 'testTask', 'test', 'yjfintech', '0', null, '1014', '2018-05-11 15:00:00');
INSERT INTO `schedule_job_log` VALUES ('100', '1', 'testTask', 'test', 'yjfintech', '0', null, '1042', '2018-05-11 15:30:00');
INSERT INTO `schedule_job_log` VALUES ('101', '1', 'testTask', 'test', 'yjfintech', '0', null, '1060', '2018-05-11 16:00:00');
INSERT INTO `schedule_job_log` VALUES ('102', '1', 'testTask', 'test', 'yjfintech', '0', null, '1086', '2018-05-11 16:30:00');
INSERT INTO `schedule_job_log` VALUES ('103', '1', 'testTask', 'test', 'yjfintech', '0', null, '1045', '2018-05-11 17:00:00');
INSERT INTO `schedule_job_log` VALUES ('104', '1', 'testTask', 'test', 'yjfintech', '0', null, '1037', '2018-05-11 17:30:00');
INSERT INTO `schedule_job_log` VALUES ('105', '1', 'testTask', 'test', 'yjfintech', '0', null, '1075', '2018-05-11 18:00:00');
INSERT INTO `schedule_job_log` VALUES ('106', '1', 'testTask', 'test', 'yjfintech', '0', null, '1063', '2018-05-11 18:30:00');
INSERT INTO `schedule_job_log` VALUES ('107', '1', 'testTask', 'test', 'yjfintech', '0', null, '1069', '2018-05-14 09:00:00');
INSERT INTO `schedule_job_log` VALUES ('108', '1', 'testTask', 'test', 'yjfintech', '0', null, '1055', '2018-05-14 09:30:00');
INSERT INTO `schedule_job_log` VALUES ('109', '1', 'testTask', 'test', 'yjfintech', '0', null, '1097', '2018-05-14 10:00:00');
INSERT INTO `schedule_job_log` VALUES ('110', '1', 'testTask', 'test', 'yjfintech', '0', null, '1083', '2018-05-14 10:30:00');
INSERT INTO `schedule_job_log` VALUES ('111', '1', 'testTask', 'test', 'yjfintech', '0', null, '1029', '2018-05-14 11:00:00');
INSERT INTO `schedule_job_log` VALUES ('112', '1', 'testTask', 'test', 'yjfintech', '0', null, '1054', '2018-05-14 11:30:00');
INSERT INTO `schedule_job_log` VALUES ('113', '1', 'testTask', 'test', 'yjfintech', '0', null, '1062', '2018-05-14 12:00:00');
INSERT INTO `schedule_job_log` VALUES ('114', '1', 'testTask', 'test', 'yjfintech', '0', null, '1061', '2018-05-14 12:30:00');
INSERT INTO `schedule_job_log` VALUES ('115', '1', 'testTask', 'test', 'yjfintech', '0', null, '1071', '2018-05-14 13:00:00');
INSERT INTO `schedule_job_log` VALUES ('116', '1', 'testTask', 'test', 'yjfintech', '0', null, '1043', '2018-05-14 13:30:00');
INSERT INTO `schedule_job_log` VALUES ('117', '1', 'testTask', 'test', 'yjfintech', '0', null, '1033', '2018-05-14 14:00:00');
INSERT INTO `schedule_job_log` VALUES ('118', '1', 'testTask', 'test', 'yjfintech', '0', null, '1088', '2018-05-14 14:30:00');
INSERT INTO `schedule_job_log` VALUES ('119', '1', 'testTask', 'test', 'yjfintech', '0', null, '1068', '2018-05-14 15:00:00');
INSERT INTO `schedule_job_log` VALUES ('120', '1', 'testTask', 'test', 'yjfintech', '0', null, '1077', '2018-05-14 15:30:00');
INSERT INTO `schedule_job_log` VALUES ('121', '1', 'testTask', 'test', 'yjfintech', '0', null, '1066', '2018-05-14 16:00:00');
INSERT INTO `schedule_job_log` VALUES ('122', '1', 'testTask', 'test', 'yjfintech', '0', null, '1055', '2018-05-14 16:30:00');
INSERT INTO `schedule_job_log` VALUES ('123', '1', 'testTask', 'test', 'yjfintech', '0', null, '1068', '2018-05-14 17:00:00');
INSERT INTO `schedule_job_log` VALUES ('124', '1', 'testTask', 'test', 'yjfintech', '0', null, '1058', '2018-05-14 17:30:00');
INSERT INTO `schedule_job_log` VALUES ('125', '1', 'testTask', 'test', 'yjfintech', '0', null, '1069', '2018-05-14 18:00:00');
INSERT INTO `schedule_job_log` VALUES ('126', '1', 'testTask', 'test', 'yjfintech', '0', null, '1066', '2018-05-14 18:30:00');
INSERT INTO `schedule_job_log` VALUES ('127', '1', 'testTask', 'test', 'yjfintech', '0', null, '1063', '2018-05-14 19:00:00');
INSERT INTO `schedule_job_log` VALUES ('128', '1', 'testTask', 'test', 'yjfintech', '0', null, '1056', '2018-05-14 19:30:00');
INSERT INTO `schedule_job_log` VALUES ('129', '1', 'testTask', 'test', 'yjfintech', '0', null, '1063', '2018-05-14 20:00:00');
INSERT INTO `schedule_job_log` VALUES ('130', '1', 'testTask', 'test', 'yjfintech', '0', null, '1055', '2018-05-14 20:30:00');
INSERT INTO `schedule_job_log` VALUES ('131', '1', 'testTask', 'test', 'yjfintech', '0', null, '1064', '2018-05-14 21:00:00');
INSERT INTO `schedule_job_log` VALUES ('132', '1', 'testTask', 'test', 'yjfintech', '0', null, '1063', '2018-05-14 21:30:00');
INSERT INTO `schedule_job_log` VALUES ('133', '1', 'testTask', 'test', 'yjfintech', '0', null, '1079', '2018-05-14 22:00:00');
INSERT INTO `schedule_job_log` VALUES ('134', '1', 'testTask', 'test', 'yjfintech', '0', null, '1055', '2018-05-14 22:30:00');
INSERT INTO `schedule_job_log` VALUES ('135', '1', 'testTask', 'test', 'yjfintech', '0', null, '1065', '2018-05-14 23:00:00');
INSERT INTO `schedule_job_log` VALUES ('136', '1', 'testTask', 'test', 'yjfintech', '0', null, '1054', '2018-05-14 23:30:00');
INSERT INTO `schedule_job_log` VALUES ('137', '1', 'testTask', 'test', 'yjfintech', '0', null, '1073', '2018-05-15 00:00:00');
INSERT INTO `schedule_job_log` VALUES ('138', '1', 'testTask', 'test', 'yjfintech', '0', null, '1064', '2018-05-15 00:30:00');
INSERT INTO `schedule_job_log` VALUES ('139', '1', 'testTask', 'test', 'yjfintech', '0', null, '1059', '2018-05-15 01:00:00');
INSERT INTO `schedule_job_log` VALUES ('140', '1', 'testTask', 'test', 'yjfintech', '0', null, '1048', '2018-05-15 01:30:00');
INSERT INTO `schedule_job_log` VALUES ('141', '1', 'testTask', 'test', 'yjfintech', '0', null, '1062', '2018-05-15 02:00:00');
INSERT INTO `schedule_job_log` VALUES ('142', '1', 'testTask', 'test', 'yjfintech', '0', null, '1063', '2018-05-15 02:30:00');
INSERT INTO `schedule_job_log` VALUES ('143', '1', 'testTask', 'test', 'yjfintech', '0', null, '1065', '2018-05-15 03:00:00');
INSERT INTO `schedule_job_log` VALUES ('144', '1', 'testTask', 'test', 'yjfintech', '0', null, '1054', '2018-05-15 03:30:00');
INSERT INTO `schedule_job_log` VALUES ('145', '1', 'testTask', 'test', 'yjfintech', '0', null, '1062', '2018-05-15 04:00:00');
INSERT INTO `schedule_job_log` VALUES ('146', '1', 'testTask', 'test', 'yjfintech', '0', null, '1067', '2018-05-15 04:30:00');
INSERT INTO `schedule_job_log` VALUES ('147', '1', 'testTask', 'test', 'yjfintech', '0', null, '1067', '2018-05-15 05:00:00');
INSERT INTO `schedule_job_log` VALUES ('148', '1', 'testTask', 'test', 'yjfintech', '0', null, '1068', '2018-05-15 05:30:00');
INSERT INTO `schedule_job_log` VALUES ('149', '1', 'testTask', 'test', 'yjfintech', '0', null, '1058', '2018-05-15 06:00:00');
INSERT INTO `schedule_job_log` VALUES ('150', '1', 'testTask', 'test', 'yjfintech', '0', null, '1067', '2018-05-15 06:30:00');
INSERT INTO `schedule_job_log` VALUES ('151', '1', 'testTask', 'test', 'yjfintech', '0', null, '1067', '2018-05-15 07:00:00');
INSERT INTO `schedule_job_log` VALUES ('152', '1', 'testTask', 'test', 'yjfintech', '0', null, '1058', '2018-05-15 07:30:00');
INSERT INTO `schedule_job_log` VALUES ('153', '1', 'testTask', 'test', 'yjfintech', '0', null, '1066', '2018-05-15 08:00:00');
INSERT INTO `schedule_job_log` VALUES ('154', '1', 'testTask', 'test', 'yjfintech', '0', null, '1062', '2018-05-15 08:30:00');
INSERT INTO `schedule_job_log` VALUES ('155', '1', 'testTask', 'test', 'yjfintech', '0', null, '1037', '2018-05-15 09:30:00');
INSERT INTO `schedule_job_log` VALUES ('156', '1', 'testTask', 'test', 'yjfintech', '0', null, '1010', '2018-05-15 10:00:00');
INSERT INTO `schedule_job_log` VALUES ('157', '1', 'testTask', 'test', 'yjfintech', '0', null, '1050', '2018-05-15 10:30:00');
INSERT INTO `schedule_job_log` VALUES ('158', '1', 'testTask', 'test', 'yjfintech', '0', null, '1061', '2018-05-15 11:00:00');
INSERT INTO `schedule_job_log` VALUES ('159', '1', 'testTask', 'test', 'yjfintech', '0', null, '1046', '2018-05-15 11:30:00');
INSERT INTO `schedule_job_log` VALUES ('160', '1', 'testTask', 'test', 'yjfintech', '0', null, '1084', '2018-05-15 12:00:00');
INSERT INTO `schedule_job_log` VALUES ('161', '1', 'testTask', 'test', 'yjfintech', '0', null, '1009', '2018-05-15 12:30:00');
INSERT INTO `schedule_job_log` VALUES ('162', '1', 'testTask', 'test', 'yjfintech', '0', null, '1055', '2018-05-15 13:00:00');
INSERT INTO `schedule_job_log` VALUES ('163', '1', 'testTask', 'test', 'yjfintech', '0', null, '1045', '2018-05-15 13:30:00');
INSERT INTO `schedule_job_log` VALUES ('164', '1', 'testTask', 'test', 'yjfintech', '0', null, '1060', '2018-05-15 14:00:00');
INSERT INTO `schedule_job_log` VALUES ('165', '1', 'testTask', 'test', 'yjfintech', '0', null, '1064', '2018-05-15 14:30:00');
INSERT INTO `schedule_job_log` VALUES ('166', '1', 'testTask', 'test', 'yjfintech', '0', null, '1064', '2018-05-15 15:00:00');
INSERT INTO `schedule_job_log` VALUES ('167', '1', 'testTask', 'test', 'yjfintech', '0', null, '1008', '2018-05-15 15:30:00');
INSERT INTO `schedule_job_log` VALUES ('168', '1', 'testTask', 'test', 'yjfintech', '0', null, '1053', '2018-05-15 16:00:00');
INSERT INTO `schedule_job_log` VALUES ('169', '1', 'testTask', 'test', 'yjfintech', '0', null, '1007', '2018-05-15 16:30:00');
INSERT INTO `schedule_job_log` VALUES ('170', '1', 'testTask', 'test', 'yjfintech', '0', null, '1067', '2018-05-15 17:00:00');
INSERT INTO `schedule_job_log` VALUES ('171', '1', 'testTask', 'test', 'yjfintech', '0', null, '1069', '2018-05-15 17:30:00');
INSERT INTO `schedule_job_log` VALUES ('172', '1', 'testTask', 'test', 'yjfintech', '0', null, '1062', '2018-05-15 18:00:00');
INSERT INTO `schedule_job_log` VALUES ('173', '1', 'testTask', 'test', 'yjfintech', '0', null, '1066', '2018-05-15 18:30:00');
INSERT INTO `schedule_job_log` VALUES ('174', '1', 'testTask', 'test', 'yjfintech', '0', null, '1063', '2018-05-15 19:00:00');
INSERT INTO `schedule_job_log` VALUES ('175', '1', 'testTask', 'test', 'yjfintech', '0', null, '1051', '2018-05-15 19:30:00');
INSERT INTO `schedule_job_log` VALUES ('176', '1', 'testTask', 'test', 'yjfintech', '0', null, '1069', '2018-05-15 20:00:00');
INSERT INTO `schedule_job_log` VALUES ('177', '1', 'testTask', 'test', 'yjfintech', '0', null, '1050', '2018-05-15 20:30:00');
INSERT INTO `schedule_job_log` VALUES ('178', '1', 'testTask', 'test', 'yjfintech', '0', null, '1057', '2018-05-15 21:00:00');
INSERT INTO `schedule_job_log` VALUES ('179', '1', 'testTask', 'test', 'yjfintech', '0', null, '1052', '2018-05-15 21:30:00');
INSERT INTO `schedule_job_log` VALUES ('180', '1', 'testTask', 'test', 'yjfintech', '0', null, '1061', '2018-05-15 22:00:00');
INSERT INTO `schedule_job_log` VALUES ('181', '1', 'testTask', 'test', 'yjfintech', '0', null, '1062', '2018-05-15 22:30:00');
INSERT INTO `schedule_job_log` VALUES ('182', '1', 'testTask', 'test', 'yjfintech', '0', null, '1062', '2018-05-15 23:00:00');
INSERT INTO `schedule_job_log` VALUES ('183', '1', 'testTask', 'test', 'yjfintech', '0', null, '1067', '2018-05-15 23:30:00');
INSERT INTO `schedule_job_log` VALUES ('184', '1', 'testTask', 'test', 'yjfintech', '0', null, '1101', '2018-05-16 00:00:00');
INSERT INTO `schedule_job_log` VALUES ('185', '1', 'testTask', 'test', 'yjfintech', '0', null, '1061', '2018-05-16 00:30:00');
INSERT INTO `schedule_job_log` VALUES ('186', '1', 'testTask', 'test', 'yjfintech', '0', null, '1049', '2018-05-16 01:00:00');
INSERT INTO `schedule_job_log` VALUES ('187', '1', 'testTask', 'test', 'yjfintech', '0', null, '1050', '2018-05-16 01:30:00');
INSERT INTO `schedule_job_log` VALUES ('188', '1', 'testTask', 'test', 'yjfintech', '0', null, '1054', '2018-05-16 02:00:00');
INSERT INTO `schedule_job_log` VALUES ('189', '1', 'testTask', 'test', 'yjfintech', '0', null, '1060', '2018-05-16 02:30:00');
INSERT INTO `schedule_job_log` VALUES ('190', '1', 'testTask', 'test', 'yjfintech', '0', null, '1053', '2018-05-16 03:00:00');
INSERT INTO `schedule_job_log` VALUES ('191', '1', 'testTask', 'test', 'yjfintech', '0', null, '1063', '2018-05-16 03:30:00');
INSERT INTO `schedule_job_log` VALUES ('192', '1', 'testTask', 'test', 'yjfintech', '0', null, '1052', '2018-05-16 04:00:00');
INSERT INTO `schedule_job_log` VALUES ('193', '1', 'testTask', 'test', 'yjfintech', '0', null, '1033', '2018-05-16 04:30:00');
INSERT INTO `schedule_job_log` VALUES ('194', '1', 'testTask', 'test', 'yjfintech', '0', null, '1043', '2018-05-16 05:00:00');
INSERT INTO `schedule_job_log` VALUES ('195', '1', 'testTask', 'test', 'yjfintech', '0', null, '1063', '2018-05-16 05:30:00');
INSERT INTO `schedule_job_log` VALUES ('196', '1', 'testTask', 'test', 'yjfintech', '0', null, '1056', '2018-05-16 06:00:00');
INSERT INTO `schedule_job_log` VALUES ('197', '1', 'testTask', 'test', 'yjfintech', '0', null, '1048', '2018-05-16 06:30:00');
INSERT INTO `schedule_job_log` VALUES ('198', '1', 'testTask', 'test', 'yjfintech', '0', null, '1052', '2018-05-16 07:00:00');
INSERT INTO `schedule_job_log` VALUES ('199', '1', 'testTask', 'test', 'yjfintech', '0', null, '1040', '2018-05-16 07:30:00');
INSERT INTO `schedule_job_log` VALUES ('200', '1', 'testTask', 'test', 'yjfintech', '0', null, '1046', '2018-05-16 08:00:00');
INSERT INTO `schedule_job_log` VALUES ('201', '1', 'testTask', 'test', 'yjfintech', '0', null, '1043', '2018-05-16 08:30:00');
INSERT INTO `schedule_job_log` VALUES ('202', '1', 'testTask', 'test', 'yjfintech', '0', null, '1023', '2018-05-16 09:00:00');
INSERT INTO `schedule_job_log` VALUES ('203', '1', 'testTask', 'test', 'yjfintech', '0', null, '1076', '2018-05-16 09:30:00');
INSERT INTO `schedule_job_log` VALUES ('204', '1', 'testTask', 'test', 'yjfintech', '0', null, '1042', '2018-05-16 10:00:00');
INSERT INTO `schedule_job_log` VALUES ('205', '1', 'testTask', 'test', 'yjfintech', '0', null, '1016', '2018-05-16 10:30:00');
INSERT INTO `schedule_job_log` VALUES ('206', '1', 'testTask', 'test', 'yjfintech', '0', null, '1017', '2018-05-16 11:00:00');
INSERT INTO `schedule_job_log` VALUES ('207', '1', 'testTask', 'test', 'yjfintech', '0', null, '1053', '2018-05-16 11:30:00');
INSERT INTO `schedule_job_log` VALUES ('208', '1', 'testTask', 'test', 'yjfintech', '0', null, '1332', '2018-05-16 12:00:00');
INSERT INTO `schedule_job_log` VALUES ('209', '1', 'testTask', 'test', 'yjfintech', '0', null, '1008', '2018-05-16 12:30:00');
INSERT INTO `schedule_job_log` VALUES ('210', '1', 'testTask', 'test', 'yjfintech', '0', null, '1037', '2018-05-16 13:30:00');
INSERT INTO `schedule_job_log` VALUES ('211', '1', 'testTask', 'test', 'yjfintech', '0', null, '1005', '2018-05-16 14:00:00');
INSERT INTO `schedule_job_log` VALUES ('212', '1', 'testTask', 'test', 'yjfintech', '0', null, '1066', '2018-05-16 14:30:00');
INSERT INTO `schedule_job_log` VALUES ('213', '1', 'testTask', 'test', 'yjfintech', '0', null, '1025', '2018-05-16 15:00:00');
INSERT INTO `schedule_job_log` VALUES ('214', '1', 'testTask', 'test', 'yjfintech', '0', null, '1032', '2018-05-16 15:30:00');
INSERT INTO `schedule_job_log` VALUES ('215', '1', 'testTask', 'test', 'yjfintech', '0', null, '1010', '2018-05-16 16:00:00');
INSERT INTO `schedule_job_log` VALUES ('216', '1', 'testTask', 'test', 'yjfintech', '0', null, '1082', '2018-05-16 16:30:00');
INSERT INTO `schedule_job_log` VALUES ('217', '1', 'testTask', 'test', 'yjfintech', '0', null, '1045', '2018-05-16 17:00:00');
INSERT INTO `schedule_job_log` VALUES ('218', '1', 'testTask', 'test', 'yjfintech', '0', null, '1078', '2018-05-16 17:30:00');
INSERT INTO `schedule_job_log` VALUES ('219', '1', 'testTask', 'test', 'yjfintech', '0', null, '1066', '2018-05-16 18:00:00');
INSERT INTO `schedule_job_log` VALUES ('220', '1', 'testTask', 'test', 'yjfintech', '0', null, '1033', '2018-05-16 18:30:00');
INSERT INTO `schedule_job_log` VALUES ('221', '1', 'testTask', 'test', 'yjfintech', '0', null, '1045', '2018-05-16 19:00:00');
INSERT INTO `schedule_job_log` VALUES ('222', '1', 'testTask', 'test', 'yjfintech', '0', null, '1063', '2018-05-16 19:30:00');
INSERT INTO `schedule_job_log` VALUES ('223', '1', 'testTask', 'test', 'yjfintech', '0', null, '1061', '2018-05-16 20:00:00');
INSERT INTO `schedule_job_log` VALUES ('224', '1', 'testTask', 'test', 'yjfintech', '0', null, '1058', '2018-05-16 20:30:00');
INSERT INTO `schedule_job_log` VALUES ('225', '1', 'testTask', 'test', 'yjfintech', '0', null, '1048', '2018-05-16 21:00:00');
INSERT INTO `schedule_job_log` VALUES ('226', '1', 'testTask', 'test', 'yjfintech', '0', null, '1054', '2018-05-16 21:30:00');
INSERT INTO `schedule_job_log` VALUES ('227', '1', 'testTask', 'test', 'yjfintech', '0', null, '1039', '2018-05-16 22:00:00');
INSERT INTO `schedule_job_log` VALUES ('228', '1', 'testTask', 'test', 'yjfintech', '0', null, '1048', '2018-05-16 22:30:00');
INSERT INTO `schedule_job_log` VALUES ('229', '1', 'testTask', 'test', 'yjfintech', '0', null, '1060', '2018-05-16 23:00:00');
INSERT INTO `schedule_job_log` VALUES ('230', '1', 'testTask', 'test', 'yjfintech', '0', null, '1037', '2018-05-16 23:30:00');
INSERT INTO `schedule_job_log` VALUES ('231', '1', 'testTask', 'test', 'yjfintech', '0', null, '1076', '2018-05-17 00:00:00');
INSERT INTO `schedule_job_log` VALUES ('232', '1', 'testTask', 'test', 'yjfintech', '0', null, '1041', '2018-05-17 00:30:00');
INSERT INTO `schedule_job_log` VALUES ('233', '1', 'testTask', 'test', 'yjfintech', '0', null, '1034', '2018-05-17 01:00:00');
INSERT INTO `schedule_job_log` VALUES ('234', '1', 'testTask', 'test', 'yjfintech', '0', null, '1042', '2018-05-17 01:30:00');
INSERT INTO `schedule_job_log` VALUES ('235', '1', 'testTask', 'test', 'yjfintech', '0', null, '1048', '2018-05-17 02:00:00');
INSERT INTO `schedule_job_log` VALUES ('236', '1', 'testTask', 'test', 'yjfintech', '0', null, '1046', '2018-05-17 02:30:00');
INSERT INTO `schedule_job_log` VALUES ('237', '1', 'testTask', 'test', 'yjfintech', '0', null, '1054', '2018-05-17 03:00:00');
INSERT INTO `schedule_job_log` VALUES ('238', '1', 'testTask', 'test', 'yjfintech', '0', null, '1041', '2018-05-17 03:30:00');
INSERT INTO `schedule_job_log` VALUES ('239', '1', 'testTask', 'test', 'yjfintech', '0', null, '1032', '2018-05-17 04:00:00');
INSERT INTO `schedule_job_log` VALUES ('240', '1', 'testTask', 'test', 'yjfintech', '0', null, '1041', '2018-05-17 04:30:00');
INSERT INTO `schedule_job_log` VALUES ('241', '1', 'testTask', 'test', 'yjfintech', '0', null, '1047', '2018-05-17 05:00:00');
INSERT INTO `schedule_job_log` VALUES ('242', '1', 'testTask', 'test', 'yjfintech', '0', null, '1043', '2018-05-17 05:30:00');
INSERT INTO `schedule_job_log` VALUES ('243', '1', 'testTask', 'test', 'yjfintech', '0', null, '1030', '2018-05-17 06:00:00');
INSERT INTO `schedule_job_log` VALUES ('244', '1', 'testTask', 'test', 'yjfintech', '0', null, '1033', '2018-05-17 06:30:00');
INSERT INTO `schedule_job_log` VALUES ('245', '1', 'testTask', 'test', 'yjfintech', '0', null, '1034', '2018-05-17 07:00:00');
INSERT INTO `schedule_job_log` VALUES ('246', '1', 'testTask', 'test', 'yjfintech', '0', null, '1041', '2018-05-17 07:30:00');
INSERT INTO `schedule_job_log` VALUES ('247', '1', 'testTask', 'test', 'yjfintech', '0', null, '1032', '2018-05-17 08:00:00');
INSERT INTO `schedule_job_log` VALUES ('248', '1', 'testTask', 'test', 'yjfintech', '0', null, '1040', '2018-05-17 08:30:00');
INSERT INTO `schedule_job_log` VALUES ('249', '1', 'testTask', 'test', 'yjfintech', '0', null, '1060', '2018-05-17 09:00:00');
INSERT INTO `schedule_job_log` VALUES ('250', '1', 'testTask', 'test', 'yjfintech', '0', null, '1042', '2018-05-17 09:30:00');
INSERT INTO `schedule_job_log` VALUES ('251', '1', 'testTask', 'test', 'yjfintech', '0', null, '1014', '2018-05-17 10:00:00');
INSERT INTO `schedule_job_log` VALUES ('252', '1', 'testTask', 'test', 'yjfintech', '0', null, '1048', '2018-05-17 10:30:00');
INSERT INTO `schedule_job_log` VALUES ('253', '1', 'testTask', 'test', 'yjfintech', '0', null, '1029', '2018-05-17 11:30:00');
INSERT INTO `schedule_job_log` VALUES ('254', '1', 'testTask', 'test', 'yjfintech', '0', null, '1050', '2018-05-17 12:00:00');
INSERT INTO `schedule_job_log` VALUES ('255', '1', 'testTask', 'test', 'yjfintech', '0', null, '1035', '2018-05-17 12:30:00');
INSERT INTO `schedule_job_log` VALUES ('256', '1', 'testTask', 'test', 'yjfintech', '0', null, '1055', '2018-05-17 13:00:00');
INSERT INTO `schedule_job_log` VALUES ('257', '1', 'testTask', 'test', 'yjfintech', '0', null, '1026', '2018-05-17 13:30:00');
INSERT INTO `schedule_job_log` VALUES ('258', '1', 'testTask', 'test', 'yjfintech', '0', null, '1019', '2018-05-17 14:00:00');
INSERT INTO `schedule_job_log` VALUES ('259', '1', 'testTask', 'test', 'yjfintech', '0', null, '1062', '2018-05-17 14:30:00');
INSERT INTO `schedule_job_log` VALUES ('260', '1', 'testTask', 'test', 'yjfintech', '0', null, '1045', '2018-05-17 15:00:00');
INSERT INTO `schedule_job_log` VALUES ('261', '1', 'testTask', 'test', 'yjfintech', '0', null, '1095', '2018-05-17 16:30:00');
INSERT INTO `schedule_job_log` VALUES ('262', '1', 'testTask', 'test', 'yjfintech', '0', null, '1048', '2018-05-17 17:00:00');
INSERT INTO `schedule_job_log` VALUES ('263', '1', 'testTask', 'test', 'yjfintech', '0', null, '1052', '2018-05-17 17:30:00');
INSERT INTO `schedule_job_log` VALUES ('264', '1', 'testTask', 'test', 'yjfintech', '0', null, '1040', '2018-05-17 18:00:00');
INSERT INTO `schedule_job_log` VALUES ('265', '1', 'testTask', 'test', 'yjfintech', '0', null, '1023', '2018-05-17 18:30:00');
INSERT INTO `schedule_job_log` VALUES ('266', '1', 'testTask', 'test', 'yjfintech', '0', null, '1037', '2018-05-17 19:00:00');
INSERT INTO `schedule_job_log` VALUES ('267', '1', 'testTask', 'test', 'yjfintech', '0', null, '1059', '2018-05-17 19:30:00');
INSERT INTO `schedule_job_log` VALUES ('268', '1', 'testTask', 'test', 'yjfintech', '0', null, '1048', '2018-05-17 20:00:00');
INSERT INTO `schedule_job_log` VALUES ('269', '1', 'testTask', 'test', 'yjfintech', '0', null, '1061', '2018-05-17 20:30:00');
INSERT INTO `schedule_job_log` VALUES ('270', '1', 'testTask', 'test', 'yjfintech', '0', null, '1062', '2018-05-17 21:00:00');
INSERT INTO `schedule_job_log` VALUES ('271', '1', 'testTask', 'test', 'yjfintech', '0', null, '1054', '2018-05-17 21:30:00');
INSERT INTO `schedule_job_log` VALUES ('272', '1', 'testTask', 'test', 'yjfintech', '0', null, '1057', '2018-05-17 22:00:00');
INSERT INTO `schedule_job_log` VALUES ('273', '1', 'testTask', 'test', 'yjfintech', '0', null, '1051', '2018-05-17 22:30:00');
INSERT INTO `schedule_job_log` VALUES ('274', '1', 'testTask', 'test', 'yjfintech', '0', null, '1046', '2018-05-17 23:00:00');
INSERT INTO `schedule_job_log` VALUES ('275', '1', 'testTask', 'test', 'yjfintech', '0', null, '1050', '2018-05-17 23:30:00');
INSERT INTO `schedule_job_log` VALUES ('276', '1', 'testTask', 'test', 'yjfintech', '0', null, '1080', '2018-05-18 00:00:00');
INSERT INTO `schedule_job_log` VALUES ('277', '1', 'testTask', 'test', 'yjfintech', '0', null, '1064', '2018-05-18 00:30:00');
INSERT INTO `schedule_job_log` VALUES ('278', '1', 'testTask', 'test', 'yjfintech', '0', null, '1067', '2018-05-18 01:00:00');
INSERT INTO `schedule_job_log` VALUES ('279', '1', 'testTask', 'test', 'yjfintech', '0', null, '1062', '2018-05-18 01:30:00');
INSERT INTO `schedule_job_log` VALUES ('280', '1', 'testTask', 'test', 'yjfintech', '0', null, '1066', '2018-05-18 02:00:00');
INSERT INTO `schedule_job_log` VALUES ('281', '1', 'testTask', 'test', 'yjfintech', '0', null, '1072', '2018-05-18 02:30:00');
INSERT INTO `schedule_job_log` VALUES ('282', '1', 'testTask', 'test', 'yjfintech', '0', null, '1053', '2018-05-18 03:00:00');
INSERT INTO `schedule_job_log` VALUES ('283', '1', 'testTask', 'test', 'yjfintech', '0', null, '1072', '2018-05-18 03:30:00');
INSERT INTO `schedule_job_log` VALUES ('284', '1', 'testTask', 'test', 'yjfintech', '0', null, '1055', '2018-05-18 04:00:00');
INSERT INTO `schedule_job_log` VALUES ('285', '1', 'testTask', 'test', 'yjfintech', '0', null, '1065', '2018-05-18 04:30:00');
INSERT INTO `schedule_job_log` VALUES ('286', '1', 'testTask', 'test', 'yjfintech', '0', null, '1069', '2018-05-18 05:00:00');
INSERT INTO `schedule_job_log` VALUES ('287', '1', 'testTask', 'test', 'yjfintech', '0', null, '1070', '2018-05-18 05:30:00');
INSERT INTO `schedule_job_log` VALUES ('288', '1', 'testTask', 'test', 'yjfintech', '0', null, '1068', '2018-05-18 06:00:00');
INSERT INTO `schedule_job_log` VALUES ('289', '1', 'testTask', 'test', 'yjfintech', '0', null, '1066', '2018-05-18 06:30:00');
INSERT INTO `schedule_job_log` VALUES ('290', '1', 'testTask', 'test', 'yjfintech', '0', null, '1068', '2018-05-18 07:00:00');
INSERT INTO `schedule_job_log` VALUES ('291', '1', 'testTask', 'test', 'yjfintech', '0', null, '1054', '2018-05-18 07:30:00');
INSERT INTO `schedule_job_log` VALUES ('292', '1', 'testTask', 'test', 'yjfintech', '0', null, '1056', '2018-05-18 08:00:00');
INSERT INTO `schedule_job_log` VALUES ('293', '1', 'testTask', 'test', 'yjfintech', '0', null, '1059', '2018-05-18 08:30:00');
INSERT INTO `schedule_job_log` VALUES ('294', '1', 'testTask', 'test', 'yjfintech', '0', null, '1048', '2018-05-18 09:00:00');
INSERT INTO `schedule_job_log` VALUES ('295', '1', 'testTask', 'test', 'yjfintech', '0', null, '1093', '2018-05-18 09:30:00');
INSERT INTO `schedule_job_log` VALUES ('296', '1', 'testTask', 'test', 'yjfintech', '0', null, '1061', '2018-05-18 10:00:00');
INSERT INTO `schedule_job_log` VALUES ('297', '1', 'testTask', 'test', 'yjfintech', '0', null, '1064', '2018-05-18 10:30:00');
INSERT INTO `schedule_job_log` VALUES ('298', '1', 'testTask', 'test', 'yjfintech', '0', null, '1071', '2018-05-18 11:00:00');
INSERT INTO `schedule_job_log` VALUES ('299', '1', 'testTask', 'test', 'yjfintech', '0', null, '1052', '2018-05-18 11:30:00');
INSERT INTO `schedule_job_log` VALUES ('300', '1', 'testTask', 'test', 'yjfintech', '0', null, '1052', '2018-05-18 12:00:00');
INSERT INTO `schedule_job_log` VALUES ('301', '1', 'testTask', 'test', 'yjfintech', '0', null, '1070', '2018-05-18 12:30:00');
INSERT INTO `schedule_job_log` VALUES ('302', '1', 'testTask', 'test', 'yjfintech', '0', null, '1072', '2018-05-18 13:00:00');
INSERT INTO `schedule_job_log` VALUES ('303', '1', 'testTask', 'test', 'yjfintech', '0', null, '1069', '2018-05-18 13:30:00');
INSERT INTO `schedule_job_log` VALUES ('304', '1', 'testTask', 'test', 'yjfintech', '0', null, '1050', '2018-05-18 14:00:00');
INSERT INTO `schedule_job_log` VALUES ('305', '1', 'testTask', 'test', 'yjfintech', '0', null, '1043', '2018-05-18 14:30:00');
INSERT INTO `schedule_job_log` VALUES ('306', '1', 'testTask', 'test', 'yjfintech', '0', null, '1033', '2018-05-18 15:00:00');
INSERT INTO `schedule_job_log` VALUES ('307', '1', 'testTask', 'test', 'yjfintech', '0', null, '1053', '2018-05-18 15:30:00');
INSERT INTO `schedule_job_log` VALUES ('308', '1', 'testTask', 'test', 'yjfintech', '0', null, '1038', '2018-05-18 16:30:00');
INSERT INTO `schedule_job_log` VALUES ('309', '1', 'testTask', 'test', 'yjfintech', '0', null, '1011', '2018-05-18 17:00:00');
INSERT INTO `schedule_job_log` VALUES ('310', '1', 'testTask', 'test', 'yjfintech', '0', null, '1073', '2018-05-18 17:30:00');
INSERT INTO `schedule_job_log` VALUES ('311', '1', 'testTask', 'test', 'yjfintech', '0', null, '1058', '2018-05-21 09:30:00');
INSERT INTO `schedule_job_log` VALUES ('312', '1', 'testTask', 'test', 'yjfintech', '0', null, '1031', '2018-05-21 10:00:00');
INSERT INTO `schedule_job_log` VALUES ('313', '1', 'testTask', 'test', 'yjfintech', '0', null, '1009', '2018-05-21 10:30:00');
INSERT INTO `schedule_job_log` VALUES ('314', '1', 'testTask', 'test', 'yjfintech', '0', null, '1057', '2018-05-21 11:30:00');
INSERT INTO `schedule_job_log` VALUES ('315', '1', 'testTask', 'test', 'yjfintech', '0', null, '1011', '2018-05-21 12:00:00');
INSERT INTO `schedule_job_log` VALUES ('316', '1', 'testTask', 'test', 'yjfintech', '0', null, '1020', '2018-05-21 12:30:00');
INSERT INTO `schedule_job_log` VALUES ('317', '1', 'testTask', 'test', 'yjfintech', '0', null, '1007', '2018-05-21 13:00:00');
INSERT INTO `schedule_job_log` VALUES ('318', '1', 'testTask', 'test', 'yjfintech', '0', null, '1041', '2018-05-21 13:30:00');
INSERT INTO `schedule_job_log` VALUES ('319', '1', 'testTask', 'test', 'yjfintech', '0', null, '1034', '2018-05-21 14:00:01');
INSERT INTO `schedule_job_log` VALUES ('320', '1', 'testTask', 'test', 'yjfintech', '0', null, '1021', '2018-05-21 14:30:00');
INSERT INTO `schedule_job_log` VALUES ('321', '1', 'testTask', 'test', 'yjfintech', '0', null, '1029', '2018-05-21 15:00:00');
INSERT INTO `schedule_job_log` VALUES ('322', '1', 'testTask', 'test', 'yjfintech', '0', null, '1035', '2018-05-21 15:30:00');
INSERT INTO `schedule_job_log` VALUES ('323', '1', 'testTask', 'test', 'yjfintech', '0', null, '1059', '2018-05-21 16:30:00');
INSERT INTO `schedule_job_log` VALUES ('324', '1', 'testTask', 'test', 'yjfintech', '0', null, '1042', '2018-05-21 17:00:00');
INSERT INTO `schedule_job_log` VALUES ('325', '1', 'testTask', 'test', 'yjfintech', '0', null, '1067', '2018-05-21 17:30:00');
INSERT INTO `schedule_job_log` VALUES ('326', '1', 'testTask', 'test', 'yjfintech', '0', null, '1021', '2018-05-21 18:00:00');
INSERT INTO `schedule_job_log` VALUES ('327', '1', 'testTask', 'test', 'yjfintech', '0', null, '1068', '2018-05-21 18:30:00');
INSERT INTO `schedule_job_log` VALUES ('328', '1', 'testTask', 'test', 'yjfintech', '0', null, '1026', '2018-05-21 19:00:00');
INSERT INTO `schedule_job_log` VALUES ('329', '1', 'testTask', 'test', 'yjfintech', '0', null, '1054', '2018-05-21 19:30:00');
INSERT INTO `schedule_job_log` VALUES ('330', '1', 'testTask', 'test', 'yjfintech', '0', null, '1016', '2018-05-21 20:00:00');
INSERT INTO `schedule_job_log` VALUES ('331', '1', 'testTask', 'test', 'yjfintech', '0', null, '1071', '2018-05-21 20:30:00');
INSERT INTO `schedule_job_log` VALUES ('332', '1', 'testTask', 'test', 'yjfintech', '0', null, '1055', '2018-05-21 21:00:00');
INSERT INTO `schedule_job_log` VALUES ('333', '1', 'testTask', 'test', 'yjfintech', '0', null, '1066', '2018-05-21 21:30:00');
INSERT INTO `schedule_job_log` VALUES ('334', '1', 'testTask', 'test', 'yjfintech', '0', null, '1024', '2018-05-21 22:00:00');
INSERT INTO `schedule_job_log` VALUES ('335', '1', 'testTask', 'test', 'yjfintech', '0', null, '1065', '2018-05-21 22:30:00');
INSERT INTO `schedule_job_log` VALUES ('336', '1', 'testTask', 'test', 'yjfintech', '0', null, '1052', '2018-05-21 23:00:00');
INSERT INTO `schedule_job_log` VALUES ('337', '1', 'testTask', 'test', 'yjfintech', '0', null, '1070', '2018-05-21 23:30:00');
INSERT INTO `schedule_job_log` VALUES ('338', '1', 'testTask', 'test', 'yjfintech', '0', null, '1045', '2018-05-22 00:00:00');
INSERT INTO `schedule_job_log` VALUES ('339', '1', 'testTask', 'test', 'yjfintech', '0', null, '1067', '2018-05-22 00:30:00');
INSERT INTO `schedule_job_log` VALUES ('340', '1', 'testTask', 'test', 'yjfintech', '0', null, '1076', '2018-05-22 01:00:00');
INSERT INTO `schedule_job_log` VALUES ('341', '1', 'testTask', 'test', 'yjfintech', '0', null, '1047', '2018-05-22 01:30:00');
INSERT INTO `schedule_job_log` VALUES ('342', '1', 'testTask', 'test', 'yjfintech', '0', null, '1058', '2018-05-22 02:00:00');
INSERT INTO `schedule_job_log` VALUES ('343', '1', 'testTask', 'test', 'yjfintech', '0', null, '1041', '2018-05-22 02:30:00');
INSERT INTO `schedule_job_log` VALUES ('344', '1', 'testTask', 'test', 'yjfintech', '0', null, '1049', '2018-05-22 03:00:00');
INSERT INTO `schedule_job_log` VALUES ('345', '1', 'testTask', 'test', 'yjfintech', '0', null, '1049', '2018-05-22 03:30:00');
INSERT INTO `schedule_job_log` VALUES ('346', '1', 'testTask', 'test', 'yjfintech', '0', null, '1059', '2018-05-22 04:00:00');
INSERT INTO `schedule_job_log` VALUES ('347', '1', 'testTask', 'test', 'yjfintech', '0', null, '1047', '2018-05-22 04:30:00');
INSERT INTO `schedule_job_log` VALUES ('348', '1', 'testTask', 'test', 'yjfintech', '0', null, '1069', '2018-05-22 05:00:00');
INSERT INTO `schedule_job_log` VALUES ('349', '1', 'testTask', 'test', 'yjfintech', '0', null, '1049', '2018-05-22 05:30:00');
INSERT INTO `schedule_job_log` VALUES ('350', '1', 'testTask', 'test', 'yjfintech', '0', null, '1083', '2018-05-22 06:00:00');
INSERT INTO `schedule_job_log` VALUES ('351', '1', 'testTask', 'test', 'yjfintech', '0', null, '1049', '2018-05-22 06:30:00');
INSERT INTO `schedule_job_log` VALUES ('352', '1', 'testTask', 'test', 'yjfintech', '0', null, '1060', '2018-05-22 07:00:00');
INSERT INTO `schedule_job_log` VALUES ('353', '1', 'testTask', 'test', 'yjfintech', '0', null, '1048', '2018-05-22 07:30:00');
INSERT INTO `schedule_job_log` VALUES ('354', '1', 'testTask', 'test', 'yjfintech', '0', null, '1059', '2018-05-22 08:00:00');
INSERT INTO `schedule_job_log` VALUES ('355', '1', 'testTask', 'test', 'yjfintech', '0', null, '1029', '2018-05-22 08:30:00');
INSERT INTO `schedule_job_log` VALUES ('356', '1', 'testTask', 'test', 'yjfintech', '0', null, '1016', '2018-05-22 09:00:00');
INSERT INTO `schedule_job_log` VALUES ('357', '1', 'testTask', 'test', 'yjfintech', '0', null, '1051', '2018-05-22 09:30:00');
INSERT INTO `schedule_job_log` VALUES ('358', '1', 'testTask', 'test', 'yjfintech', '0', null, '1048', '2018-05-22 10:00:00');
INSERT INTO `schedule_job_log` VALUES ('359', '1', 'testTask', 'test', 'yjfintech', '0', null, '1051', '2018-05-22 10:30:00');
INSERT INTO `schedule_job_log` VALUES ('360', '1', 'testTask', 'test', 'yjfintech', '0', null, '1068', '2018-05-22 11:00:00');
INSERT INTO `schedule_job_log` VALUES ('361', '1', 'testTask', 'test', 'yjfintech', '0', null, '1016', '2018-05-22 11:30:00');
INSERT INTO `schedule_job_log` VALUES ('362', '1', 'testTask', 'test', 'yjfintech', '0', null, '1017', '2018-05-22 12:00:00');
INSERT INTO `schedule_job_log` VALUES ('363', '1', 'testTask', 'test', 'yjfintech', '0', null, '1077', '2018-05-22 12:30:00');
INSERT INTO `schedule_job_log` VALUES ('364', '1', 'testTask', 'test', 'yjfintech', '0', null, '1056', '2018-05-22 13:00:00');
INSERT INTO `schedule_job_log` VALUES ('365', '1', 'testTask', 'test', 'yjfintech', '0', null, '1046', '2018-05-22 13:30:00');
INSERT INTO `schedule_job_log` VALUES ('366', '1', 'testTask', 'test', 'yjfintech', '0', null, '1019', '2018-05-22 14:00:00');
INSERT INTO `schedule_job_log` VALUES ('367', '1', 'testTask', 'test', 'yjfintech', '0', null, '1050', '2018-05-22 14:30:00');
INSERT INTO `schedule_job_log` VALUES ('368', '1', 'testTask', 'test', 'yjfintech', '0', null, '1051', '2018-05-22 15:00:00');
INSERT INTO `schedule_job_log` VALUES ('369', '1', 'testTask', 'test', 'yjfintech', '0', null, '1054', '2018-05-22 15:30:00');
INSERT INTO `schedule_job_log` VALUES ('370', '1', 'testTask', 'test', 'yjfintech', '0', null, '1055', '2018-05-22 16:00:00');
INSERT INTO `schedule_job_log` VALUES ('371', '1', 'testTask', 'test', 'yjfintech', '0', null, '1037', '2018-05-22 16:30:00');
INSERT INTO `schedule_job_log` VALUES ('372', '1', 'testTask', 'test', 'yjfintech', '0', null, '1045', '2018-05-22 17:00:00');
INSERT INTO `schedule_job_log` VALUES ('373', '1', 'testTask', 'test', 'yjfintech', '0', null, '1061', '2018-05-22 17:30:00');
INSERT INTO `schedule_job_log` VALUES ('374', '1', 'testTask', 'test', 'yjfintech', '0', null, '1069', '2018-05-22 18:00:00');
INSERT INTO `schedule_job_log` VALUES ('375', '1', 'testTask', 'test', 'yjfintech', '0', null, '1065', '2018-05-22 18:30:00');
INSERT INTO `schedule_job_log` VALUES ('376', '1', 'testTask', 'test', 'yjfintech', '0', null, '1040', '2018-05-22 19:00:00');
INSERT INTO `schedule_job_log` VALUES ('377', '1', 'testTask', 'test', 'yjfintech', '0', null, '1031', '2018-05-22 19:30:00');
INSERT INTO `schedule_job_log` VALUES ('378', '1', 'testTask', 'test', 'yjfintech', '0', null, '1042', '2018-05-22 20:00:00');
INSERT INTO `schedule_job_log` VALUES ('379', '1', 'testTask', 'test', 'yjfintech', '0', null, '1064', '2018-05-22 20:30:00');
INSERT INTO `schedule_job_log` VALUES ('380', '1', 'testTask', 'test', 'yjfintech', '0', null, '1069', '2018-05-22 21:00:00');
INSERT INTO `schedule_job_log` VALUES ('381', '1', 'testTask', 'test', 'yjfintech', '0', null, '1052', '2018-05-22 21:30:00');
INSERT INTO `schedule_job_log` VALUES ('382', '1', 'testTask', 'test', 'yjfintech', '0', null, '1126', '2018-05-22 22:00:00');
INSERT INTO `schedule_job_log` VALUES ('383', '1', 'testTask', 'test', 'yjfintech', '0', null, '1054', '2018-05-22 22:30:00');
INSERT INTO `schedule_job_log` VALUES ('384', '1', 'testTask', 'test', 'yjfintech', '0', null, '1035', '2018-05-22 23:00:00');
INSERT INTO `schedule_job_log` VALUES ('385', '1', 'testTask', 'test', 'yjfintech', '0', null, '1048', '2018-05-22 23:30:00');
INSERT INTO `schedule_job_log` VALUES ('386', '1', 'testTask', 'test', 'yjfintech', '0', null, '1078', '2018-05-23 00:00:00');
INSERT INTO `schedule_job_log` VALUES ('387', '1', 'testTask', 'test', 'yjfintech', '0', null, '1061', '2018-05-23 00:30:00');
INSERT INTO `schedule_job_log` VALUES ('388', '1', 'testTask', 'test', 'yjfintech', '0', null, '1026', '2018-05-23 01:00:00');
INSERT INTO `schedule_job_log` VALUES ('389', '1', 'testTask', 'test', 'yjfintech', '0', null, '1056', '2018-05-23 01:30:00');
INSERT INTO `schedule_job_log` VALUES ('390', '1', 'testTask', 'test', 'yjfintech', '0', null, '1098', '2018-05-23 02:00:00');
INSERT INTO `schedule_job_log` VALUES ('391', '1', 'testTask', 'test', 'yjfintech', '0', null, '1028', '2018-05-23 02:30:00');
INSERT INTO `schedule_job_log` VALUES ('392', '1', 'testTask', 'test', 'yjfintech', '0', null, '1049', '2018-05-23 03:00:00');
INSERT INTO `schedule_job_log` VALUES ('393', '1', 'testTask', 'test', 'yjfintech', '0', null, '1039', '2018-05-23 03:30:00');
INSERT INTO `schedule_job_log` VALUES ('394', '1', 'testTask', 'test', 'yjfintech', '0', null, '1087', '2018-05-23 04:00:00');
INSERT INTO `schedule_job_log` VALUES ('395', '1', 'testTask', 'test', 'yjfintech', '0', null, '1047', '2018-05-23 04:30:00');
INSERT INTO `schedule_job_log` VALUES ('396', '1', 'testTask', 'test', 'yjfintech', '0', null, '1040', '2018-05-23 05:00:00');
INSERT INTO `schedule_job_log` VALUES ('397', '1', 'testTask', 'test', 'yjfintech', '0', null, '1053', '2018-05-23 05:30:00');
INSERT INTO `schedule_job_log` VALUES ('398', '1', 'testTask', 'test', 'yjfintech', '0', null, '1028', '2018-05-23 06:00:00');
INSERT INTO `schedule_job_log` VALUES ('399', '1', 'testTask', 'test', 'yjfintech', '0', null, '1052', '2018-05-23 06:30:00');
INSERT INTO `schedule_job_log` VALUES ('400', '1', 'testTask', 'test', 'yjfintech', '0', null, '1038', '2018-05-23 07:00:00');
INSERT INTO `schedule_job_log` VALUES ('401', '1', 'testTask', 'test', 'yjfintech', '0', null, '1046', '2018-05-23 07:30:00');
INSERT INTO `schedule_job_log` VALUES ('402', '1', 'testTask', 'test', 'yjfintech', '0', null, '1047', '2018-05-23 08:00:00');
INSERT INTO `schedule_job_log` VALUES ('403', '1', 'testTask', 'test', 'yjfintech', '0', null, '1043', '2018-05-23 08:30:00');
INSERT INTO `schedule_job_log` VALUES ('404', '1', 'testTask', 'test', 'yjfintech', '0', null, '1100', '2018-05-23 09:00:00');
INSERT INTO `schedule_job_log` VALUES ('405', '1', 'testTask', 'test', 'yjfintech', '0', null, '1047', '2018-05-23 09:30:00');
INSERT INTO `schedule_job_log` VALUES ('406', '1', 'testTask', 'test', 'yjfintech', '0', null, '1025', '2018-05-23 10:00:00');
INSERT INTO `schedule_job_log` VALUES ('407', '1', 'testTask', 'test', 'yjfintech', '0', null, '1067', '2018-05-23 10:30:00');
INSERT INTO `schedule_job_log` VALUES ('408', '1', 'testTask', 'test', 'yjfintech', '0', null, '1036', '2018-05-23 11:00:00');
INSERT INTO `schedule_job_log` VALUES ('409', '1', 'testTask', 'test', 'yjfintech', '0', null, '1065', '2018-05-23 11:30:00');
INSERT INTO `schedule_job_log` VALUES ('410', '1', 'testTask', 'test', 'yjfintech', '0', null, '1059', '2018-05-23 12:00:00');
INSERT INTO `schedule_job_log` VALUES ('411', '1', 'testTask', 'test', 'yjfintech', '0', null, '1043', '2018-05-23 12:30:00');
INSERT INTO `schedule_job_log` VALUES ('412', '1', 'testTask', 'test', 'yjfintech', '0', null, '1042', '2018-05-23 13:00:00');
INSERT INTO `schedule_job_log` VALUES ('413', '1', 'testTask', 'test', 'yjfintech', '0', null, '1055', '2018-05-23 13:30:00');
INSERT INTO `schedule_job_log` VALUES ('414', '1', 'testTask', 'test', 'yjfintech', '0', null, '1058', '2018-05-23 14:00:00');
INSERT INTO `schedule_job_log` VALUES ('415', '1', 'testTask', 'test', 'yjfintech', '0', null, '1057', '2018-05-23 14:30:00');
INSERT INTO `schedule_job_log` VALUES ('416', '1', 'testTask', 'test', 'yjfintech', '0', null, '1073', '2018-05-23 15:00:00');
INSERT INTO `schedule_job_log` VALUES ('417', '1', 'testTask', 'test', 'yjfintech', '0', null, '1053', '2018-05-23 15:30:00');
INSERT INTO `schedule_job_log` VALUES ('418', '1', 'testTask', 'test', 'yjfintech', '0', null, '1043', '2018-05-23 16:00:00');
INSERT INTO `schedule_job_log` VALUES ('419', '1', 'testTask', 'test', 'yjfintech', '0', null, '1042', '2018-05-23 16:30:00');
INSERT INTO `schedule_job_log` VALUES ('420', '1', 'testTask', 'test', 'yjfintech', '0', null, '1049', '2018-05-23 17:00:00');
INSERT INTO `schedule_job_log` VALUES ('421', '1', 'testTask', 'test', 'yjfintech', '0', null, '1061', '2018-05-23 17:30:00');
INSERT INTO `schedule_job_log` VALUES ('422', '1', 'testTask', 'test', 'yjfintech', '0', null, '1048', '2018-05-23 18:00:00');
INSERT INTO `schedule_job_log` VALUES ('423', '1', 'testTask', 'test', 'yjfintech', '0', null, '1057', '2018-05-23 18:30:00');
INSERT INTO `schedule_job_log` VALUES ('424', '1', 'testTask', 'test', 'yjfintech', '0', null, '1016', '2018-05-23 19:00:00');
INSERT INTO `schedule_job_log` VALUES ('425', '1', 'testTask', 'test', 'yjfintech', '0', null, '1107', '2018-05-23 19:30:00');
INSERT INTO `schedule_job_log` VALUES ('426', '1', 'testTask', 'test', 'yjfintech', '0', null, '1057', '2018-05-23 20:00:00');
INSERT INTO `schedule_job_log` VALUES ('427', '1', 'testTask', 'test', 'yjfintech', '0', null, '1057', '2018-05-23 20:30:00');
INSERT INTO `schedule_job_log` VALUES ('428', '1', 'testTask', 'test', 'yjfintech', '0', null, '1040', '2018-05-23 21:00:00');
INSERT INTO `schedule_job_log` VALUES ('429', '1', 'testTask', 'test', 'yjfintech', '0', null, '1047', '2018-05-23 21:30:00');
INSERT INTO `schedule_job_log` VALUES ('430', '1', 'testTask', 'test', 'yjfintech', '0', null, '1043', '2018-05-23 22:00:00');
INSERT INTO `schedule_job_log` VALUES ('431', '1', 'testTask', 'test', 'yjfintech', '0', null, '1061', '2018-05-23 22:30:00');
INSERT INTO `schedule_job_log` VALUES ('432', '1', 'testTask', 'test', 'yjfintech', '0', null, '1050', '2018-05-23 23:00:00');
INSERT INTO `schedule_job_log` VALUES ('433', '1', 'testTask', 'test', 'yjfintech', '0', null, '1067', '2018-05-23 23:30:00');
INSERT INTO `schedule_job_log` VALUES ('434', '1', 'testTask', 'test', 'yjfintech', '0', null, '1046', '2018-05-24 00:00:00');
INSERT INTO `schedule_job_log` VALUES ('435', '1', 'testTask', 'test', 'yjfintech', '0', null, '1048', '2018-05-24 00:30:00');
INSERT INTO `schedule_job_log` VALUES ('436', '1', 'testTask', 'test', 'yjfintech', '0', null, '1065', '2018-05-24 01:00:00');
INSERT INTO `schedule_job_log` VALUES ('437', '1', 'testTask', 'test', 'yjfintech', '0', null, '1048', '2018-05-24 01:30:00');
INSERT INTO `schedule_job_log` VALUES ('438', '1', 'testTask', 'test', 'yjfintech', '0', null, '1068', '2018-05-24 02:00:00');
INSERT INTO `schedule_job_log` VALUES ('439', '1', 'testTask', 'test', 'yjfintech', '0', null, '1051', '2018-05-24 02:30:00');
INSERT INTO `schedule_job_log` VALUES ('440', '1', 'testTask', 'test', 'yjfintech', '0', null, '1067', '2018-05-24 03:00:00');
INSERT INTO `schedule_job_log` VALUES ('441', '1', 'testTask', 'test', 'yjfintech', '0', null, '1053', '2018-05-24 03:30:00');
INSERT INTO `schedule_job_log` VALUES ('442', '1', 'testTask', 'test', 'yjfintech', '0', null, '1067', '2018-05-24 04:00:00');
INSERT INTO `schedule_job_log` VALUES ('443', '1', 'testTask', 'test', 'yjfintech', '0', null, '1050', '2018-05-24 04:30:00');
INSERT INTO `schedule_job_log` VALUES ('444', '1', 'testTask', 'test', 'yjfintech', '0', null, '1041', '2018-05-24 05:00:00');
INSERT INTO `schedule_job_log` VALUES ('445', '1', 'testTask', 'test', 'yjfintech', '0', null, '1048', '2018-05-24 05:30:00');
INSERT INTO `schedule_job_log` VALUES ('446', '1', 'testTask', 'test', 'yjfintech', '0', null, '1067', '2018-05-24 06:00:00');
INSERT INTO `schedule_job_log` VALUES ('447', '1', 'testTask', 'test', 'yjfintech', '0', null, '1054', '2018-05-24 06:30:00');
INSERT INTO `schedule_job_log` VALUES ('448', '1', 'testTask', 'test', 'yjfintech', '0', null, '1069', '2018-05-24 07:00:00');
INSERT INTO `schedule_job_log` VALUES ('449', '1', 'testTask', 'test', 'yjfintech', '0', null, '1057', '2018-05-24 07:30:00');
INSERT INTO `schedule_job_log` VALUES ('450', '1', 'testTask', 'test', 'yjfintech', '0', null, '1052', '2018-05-24 08:00:00');
INSERT INTO `schedule_job_log` VALUES ('451', '1', 'testTask', 'test', 'yjfintech', '0', null, '1050', '2018-05-24 08:30:00');
INSERT INTO `schedule_job_log` VALUES ('452', '1', 'testTask', 'test', 'yjfintech', '0', null, '1025', '2018-05-24 09:00:00');
INSERT INTO `schedule_job_log` VALUES ('453', '1', 'testTask', 'test', 'yjfintech', '0', null, '1046', '2018-05-24 09:30:00');
INSERT INTO `schedule_job_log` VALUES ('454', '1', 'testTask', 'test', 'yjfintech', '0', null, '1019', '2018-05-24 10:00:00');
INSERT INTO `schedule_job_log` VALUES ('455', '1', 'testTask', 'test', 'yjfintech', '0', null, '1065', '2018-05-24 10:30:00');
INSERT INTO `schedule_job_log` VALUES ('456', '1', 'testTask', 'test', 'yjfintech', '0', null, '1044', '2018-05-24 11:00:00');
INSERT INTO `schedule_job_log` VALUES ('457', '1', 'testTask', 'test', 'yjfintech', '0', null, '1004', '2018-05-24 11:30:00');
INSERT INTO `schedule_job_log` VALUES ('458', '1', 'testTask', 'test', 'yjfintech', '0', null, '1059', '2018-05-24 12:00:00');
INSERT INTO `schedule_job_log` VALUES ('459', '1', 'testTask', 'test', 'yjfintech', '0', null, '1066', '2018-05-24 12:30:00');
INSERT INTO `schedule_job_log` VALUES ('460', '1', 'testTask', 'test', 'yjfintech', '0', null, '1051', '2018-05-24 13:00:00');
INSERT INTO `schedule_job_log` VALUES ('461', '1', 'testTask', 'test', 'yjfintech', '0', null, '1048', '2018-05-24 13:30:00');
INSERT INTO `schedule_job_log` VALUES ('462', '1', 'testTask', 'test', 'yjfintech', '0', null, '1099', '2018-05-24 14:00:00');
INSERT INTO `schedule_job_log` VALUES ('463', '1', 'testTask', 'test', 'yjfintech', '0', null, '1022', '2018-05-24 14:30:00');
INSERT INTO `schedule_job_log` VALUES ('464', '1', 'testTask', 'test', 'yjfintech', '0', null, '1041', '2018-05-24 15:00:00');
INSERT INTO `schedule_job_log` VALUES ('465', '1', 'testTask', 'test', 'yjfintech', '0', null, '1034', '2018-05-24 15:30:00');
INSERT INTO `schedule_job_log` VALUES ('466', '1', 'testTask', 'test', 'yjfintech', '0', null, '1050', '2018-05-24 16:00:00');
INSERT INTO `schedule_job_log` VALUES ('467', '1', 'testTask', 'test', 'yjfintech', '0', null, '1023', '2018-05-24 16:30:00');
INSERT INTO `schedule_job_log` VALUES ('468', '1', 'testTask', 'test', 'yjfintech', '0', null, '1013', '2018-05-24 17:00:00');
INSERT INTO `schedule_job_log` VALUES ('469', '1', 'testTask', 'test', 'yjfintech', '0', null, '1023', '2018-05-24 17:30:00');
INSERT INTO `schedule_job_log` VALUES ('470', '1', 'testTask', 'test', 'yjfintech', '0', null, '1013', '2018-05-24 18:00:00');
INSERT INTO `schedule_job_log` VALUES ('471', '1', 'testTask', 'test', 'yjfintech', '0', null, '1047', '2018-05-24 18:30:00');
INSERT INTO `schedule_job_log` VALUES ('472', '1', 'testTask', 'test', 'yjfintech', '0', null, '1016', '2018-05-24 19:00:00');
INSERT INTO `schedule_job_log` VALUES ('473', '1', 'testTask', 'test', 'yjfintech', '0', null, '1029', '2018-05-24 19:30:00');
INSERT INTO `schedule_job_log` VALUES ('474', '1', 'testTask', 'test', 'yjfintech', '0', null, '1048', '2018-05-24 20:00:00');
INSERT INTO `schedule_job_log` VALUES ('475', '1', 'testTask', 'test', 'yjfintech', '0', null, '1054', '2018-05-24 20:30:00');
INSERT INTO `schedule_job_log` VALUES ('476', '1', 'testTask', 'test', 'yjfintech', '0', null, '1064', '2018-05-24 21:00:00');
INSERT INTO `schedule_job_log` VALUES ('477', '1', 'testTask', 'test', 'yjfintech', '0', null, '1083', '2018-05-24 21:30:00');
INSERT INTO `schedule_job_log` VALUES ('478', '1', 'testTask', 'test', 'yjfintech', '0', null, '1054', '2018-05-24 22:00:00');
INSERT INTO `schedule_job_log` VALUES ('479', '1', 'testTask', 'test', 'yjfintech', '0', null, '1064', '2018-05-24 22:30:00');
INSERT INTO `schedule_job_log` VALUES ('480', '1', 'testTask', 'test', 'yjfintech', '0', null, '1050', '2018-05-24 23:00:00');
INSERT INTO `schedule_job_log` VALUES ('481', '1', 'testTask', 'test', 'yjfintech', '0', null, '1066', '2018-05-24 23:30:00');
INSERT INTO `schedule_job_log` VALUES ('482', '1', 'testTask', 'test', 'yjfintech', '0', null, '1055', '2018-05-25 00:00:00');
INSERT INTO `schedule_job_log` VALUES ('483', '1', 'testTask', 'test', 'yjfintech', '0', null, '1037', '2018-05-25 00:30:00');
INSERT INTO `schedule_job_log` VALUES ('484', '1', 'testTask', 'test', 'yjfintech', '0', null, '1048', '2018-05-25 01:00:00');
INSERT INTO `schedule_job_log` VALUES ('485', '1', 'testTask', 'test', 'yjfintech', '0', null, '1053', '2018-05-25 01:30:00');
INSERT INTO `schedule_job_log` VALUES ('486', '1', 'testTask', 'test', 'yjfintech', '0', null, '1045', '2018-05-25 02:00:00');
INSERT INTO `schedule_job_log` VALUES ('487', '1', 'testTask', 'test', 'yjfintech', '0', null, '1049', '2018-05-25 02:30:00');
INSERT INTO `schedule_job_log` VALUES ('488', '1', 'testTask', 'test', 'yjfintech', '0', null, '1045', '2018-05-25 03:00:00');
INSERT INTO `schedule_job_log` VALUES ('489', '1', 'testTask', 'test', 'yjfintech', '0', null, '1031', '2018-05-25 03:30:00');
INSERT INTO `schedule_job_log` VALUES ('490', '1', 'testTask', 'test', 'yjfintech', '0', null, '1070', '2018-05-25 04:00:00');
INSERT INTO `schedule_job_log` VALUES ('491', '1', 'testTask', 'test', 'yjfintech', '0', null, '1031', '2018-05-25 04:30:00');
INSERT INTO `schedule_job_log` VALUES ('492', '1', 'testTask', 'test', 'yjfintech', '0', null, '1068', '2018-05-25 05:00:00');
INSERT INTO `schedule_job_log` VALUES ('493', '1', 'testTask', 'test', 'yjfintech', '0', null, '1074', '2018-05-25 05:30:00');
INSERT INTO `schedule_job_log` VALUES ('494', '1', 'testTask', 'test', 'yjfintech', '0', null, '1065', '2018-05-25 06:00:00');
INSERT INTO `schedule_job_log` VALUES ('495', '1', 'testTask', 'test', 'yjfintech', '0', null, '1030', '2018-05-25 06:30:00');
INSERT INTO `schedule_job_log` VALUES ('496', '1', 'testTask', 'test', 'yjfintech', '0', null, '1039', '2018-05-25 07:00:00');
INSERT INTO `schedule_job_log` VALUES ('497', '1', 'testTask', 'test', 'yjfintech', '0', null, '1047', '2018-05-25 07:30:00');
INSERT INTO `schedule_job_log` VALUES ('498', '1', 'testTask', 'test', 'yjfintech', '0', null, '1045', '2018-05-25 08:00:00');
INSERT INTO `schedule_job_log` VALUES ('499', '1', 'testTask', 'test', 'yjfintech', '0', null, '1039', '2018-05-25 08:30:00');
INSERT INTO `schedule_job_log` VALUES ('500', '1', 'testTask', 'test', 'yjfintech', '0', null, '1052', '2018-05-25 09:00:00');
INSERT INTO `schedule_job_log` VALUES ('501', '1', 'testTask', 'test', 'yjfintech', '0', null, '1054', '2018-05-25 09:30:00');
INSERT INTO `schedule_job_log` VALUES ('502', '1', 'testTask', 'test', 'yjfintech', '0', null, '1068', '2018-05-25 10:00:00');
INSERT INTO `schedule_job_log` VALUES ('503', '1', 'testTask', 'test', 'yjfintech', '0', null, '1046', '2018-05-25 10:30:00');
INSERT INTO `schedule_job_log` VALUES ('504', '1', 'testTask', 'test', 'yjfintech', '0', null, '1069', '2018-05-25 11:00:00');
INSERT INTO `schedule_job_log` VALUES ('505', '1', 'testTask', 'test', 'yjfintech', '0', null, '1079', '2018-05-25 11:30:00');
INSERT INTO `schedule_job_log` VALUES ('506', '1', 'testTask', 'test', 'yjfintech', '0', null, '1086', '2018-05-25 12:00:00');
INSERT INTO `schedule_job_log` VALUES ('507', '1', 'testTask', 'test', 'yjfintech', '0', null, '1064', '2018-05-25 12:30:00');
INSERT INTO `schedule_job_log` VALUES ('508', '1', 'testTask', 'test', 'yjfintech', '0', null, '1078', '2018-05-25 13:00:00');
INSERT INTO `schedule_job_log` VALUES ('509', '1', 'testTask', 'test', 'yjfintech', '0', null, '1050', '2018-05-25 13:30:00');
INSERT INTO `schedule_job_log` VALUES ('510', '1', 'testTask', 'test', 'yjfintech', '0', null, '1009', '2018-05-25 14:00:00');
INSERT INTO `schedule_job_log` VALUES ('511', '1', 'testTask', 'test', 'yjfintech', '0', null, '1285', '2018-05-25 14:30:00');
INSERT INTO `schedule_job_log` VALUES ('512', '1', 'testTask', 'test', 'yjfintech', '0', null, '1057', '2018-05-25 15:00:00');
INSERT INTO `schedule_job_log` VALUES ('513', '1', 'testTask', 'test', 'yjfintech', '0', null, '1052', '2018-05-25 15:30:00');
INSERT INTO `schedule_job_log` VALUES ('514', '1', 'testTask', 'test', 'yjfintech', '0', null, '1034', '2018-05-25 16:00:00');
INSERT INTO `schedule_job_log` VALUES ('515', '1', 'testTask', 'test', 'yjfintech', '0', null, '1033', '2018-05-25 16:30:00');
INSERT INTO `schedule_job_log` VALUES ('516', '1', 'testTask', 'test', 'yjfintech', '0', null, '1052', '2018-05-25 17:00:00');
INSERT INTO `schedule_job_log` VALUES ('517', '1', 'testTask', 'test', 'yjfintech', '0', null, '1043', '2018-05-25 17:30:00');
INSERT INTO `schedule_job_log` VALUES ('518', '1', 'testTask', 'test', 'yjfintech', '0', null, '1013', '2018-05-25 18:00:00');
INSERT INTO `schedule_job_log` VALUES ('519', '1', 'testTask', 'test', 'yjfintech', '0', null, '1031', '2018-05-25 18:30:00');
INSERT INTO `schedule_job_log` VALUES ('520', '1', 'testTask', 'test', 'yjfintech', '0', null, '1077', '2018-05-25 19:00:00');
INSERT INTO `schedule_job_log` VALUES ('521', '1', 'testTask', 'test', 'yjfintech', '0', null, '1082', '2018-05-25 19:30:00');
INSERT INTO `schedule_job_log` VALUES ('522', '1', 'testTask', 'test', 'yjfintech', '0', null, '1077', '2018-05-25 20:00:00');
INSERT INTO `schedule_job_log` VALUES ('523', '1', 'testTask', 'test', 'yjfintech', '0', null, '1079', '2018-05-25 20:30:00');
INSERT INTO `schedule_job_log` VALUES ('524', '1', 'testTask', 'test', 'yjfintech', '0', null, '1064', '2018-05-25 21:00:00');
INSERT INTO `schedule_job_log` VALUES ('525', '1', 'testTask', 'test', 'yjfintech', '0', null, '1061', '2018-05-25 21:30:00');
INSERT INTO `schedule_job_log` VALUES ('526', '1', 'testTask', 'test', 'yjfintech', '0', null, '1067', '2018-05-25 22:00:00');
INSERT INTO `schedule_job_log` VALUES ('527', '1', 'testTask', 'test', 'yjfintech', '0', null, '1063', '2018-05-25 22:30:00');
INSERT INTO `schedule_job_log` VALUES ('528', '1', 'testTask', 'test', 'yjfintech', '0', null, '1050', '2018-05-25 23:00:00');
INSERT INTO `schedule_job_log` VALUES ('529', '1', 'testTask', 'test', 'yjfintech', '0', null, '1079', '2018-05-25 23:30:00');
INSERT INTO `schedule_job_log` VALUES ('530', '1', 'testTask', 'test', 'yjfintech', '0', null, '1052', '2018-05-26 00:00:00');
INSERT INTO `schedule_job_log` VALUES ('531', '1', 'testTask', 'test', 'yjfintech', '0', null, '1057', '2018-05-26 00:30:00');
INSERT INTO `schedule_job_log` VALUES ('532', '1', 'testTask', 'test', 'yjfintech', '0', null, '1068', '2018-05-26 01:00:00');
INSERT INTO `schedule_job_log` VALUES ('533', '1', 'testTask', 'test', 'yjfintech', '0', null, '1073', '2018-05-26 01:30:00');
INSERT INTO `schedule_job_log` VALUES ('534', '1', 'testTask', 'test', 'yjfintech', '0', null, '1059', '2018-05-26 02:00:00');
INSERT INTO `schedule_job_log` VALUES ('535', '1', 'testTask', 'test', 'yjfintech', '0', null, '1081', '2018-05-26 02:30:00');
INSERT INTO `schedule_job_log` VALUES ('536', '1', 'testTask', 'test', 'yjfintech', '0', null, '1065', '2018-05-26 03:00:00');
INSERT INTO `schedule_job_log` VALUES ('537', '1', 'testTask', 'test', 'yjfintech', '0', null, '1049', '2018-05-26 03:30:00');
INSERT INTO `schedule_job_log` VALUES ('538', '1', 'testTask', 'test', 'yjfintech', '0', null, '1054', '2018-05-26 04:00:00');
INSERT INTO `schedule_job_log` VALUES ('539', '1', 'testTask', 'test', 'yjfintech', '0', null, '1056', '2018-05-26 04:30:00');
INSERT INTO `schedule_job_log` VALUES ('540', '1', 'testTask', 'test', 'yjfintech', '0', null, '1070', '2018-05-26 05:00:00');
INSERT INTO `schedule_job_log` VALUES ('541', '1', 'testTask', 'test', 'yjfintech', '0', null, '1071', '2018-05-26 05:30:00');
INSERT INTO `schedule_job_log` VALUES ('542', '1', 'testTask', 'test', 'yjfintech', '0', null, '1068', '2018-05-26 06:00:00');
INSERT INTO `schedule_job_log` VALUES ('543', '1', 'testTask', 'test', 'yjfintech', '0', null, '1052', '2018-05-26 06:30:00');
INSERT INTO `schedule_job_log` VALUES ('544', '1', 'testTask', 'test', 'yjfintech', '0', null, '1053', '2018-05-26 07:00:00');
INSERT INTO `schedule_job_log` VALUES ('545', '1', 'testTask', 'test', 'yjfintech', '0', null, '1071', '2018-05-26 07:30:00');
INSERT INTO `schedule_job_log` VALUES ('546', '1', 'testTask', 'test', 'yjfintech', '0', null, '1074', '2018-05-26 08:00:00');
INSERT INTO `schedule_job_log` VALUES ('547', '1', 'testTask', 'test', 'yjfintech', '0', null, '1073', '2018-05-26 08:30:00');
INSERT INTO `schedule_job_log` VALUES ('548', '1', 'testTask', 'test', 'yjfintech', '0', null, '1051', '2018-05-26 09:00:00');
INSERT INTO `schedule_job_log` VALUES ('549', '1', 'testTask', 'test', 'yjfintech', '0', null, '1061', '2018-05-26 09:30:00');
INSERT INTO `schedule_job_log` VALUES ('550', '1', 'testTask', 'test', 'yjfintech', '0', null, '1062', '2018-05-26 10:00:00');
INSERT INTO `schedule_job_log` VALUES ('551', '1', 'testTask', 'test', 'yjfintech', '0', null, '1063', '2018-05-26 10:30:00');
INSERT INTO `schedule_job_log` VALUES ('552', '1', 'testTask', 'test', 'yjfintech', '0', null, '1042', '2018-05-26 11:00:00');
INSERT INTO `schedule_job_log` VALUES ('553', '1', 'testTask', 'test', 'yjfintech', '0', null, '1067', '2018-05-26 11:30:00');
INSERT INTO `schedule_job_log` VALUES ('554', '1', 'testTask', 'test', 'yjfintech', '0', null, '1022', '2018-05-26 12:00:00');
INSERT INTO `schedule_job_log` VALUES ('555', '1', 'testTask', 'test', 'yjfintech', '0', null, '1051', '2018-05-26 12:30:00');
INSERT INTO `schedule_job_log` VALUES ('556', '1', 'testTask', 'test', 'yjfintech', '0', null, '1054', '2018-05-26 13:00:00');
INSERT INTO `schedule_job_log` VALUES ('557', '1', 'testTask', 'test', 'yjfintech', '0', null, '1056', '2018-05-26 13:30:00');
INSERT INTO `schedule_job_log` VALUES ('558', '1', 'testTask', 'test', 'yjfintech', '0', null, '1057', '2018-05-26 14:00:00');
INSERT INTO `schedule_job_log` VALUES ('559', '1', 'testTask', 'test', 'yjfintech', '0', null, '1066', '2018-05-26 14:30:00');
INSERT INTO `schedule_job_log` VALUES ('560', '1', 'testTask', 'test', 'yjfintech', '0', null, '1048', '2018-05-26 15:00:00');
INSERT INTO `schedule_job_log` VALUES ('561', '1', 'testTask', 'test', 'yjfintech', '0', null, '1052', '2018-05-26 15:30:00');
INSERT INTO `schedule_job_log` VALUES ('562', '1', 'testTask', 'test', 'yjfintech', '0', null, '1067', '2018-05-26 16:00:00');
INSERT INTO `schedule_job_log` VALUES ('563', '1', 'testTask', 'test', 'yjfintech', '0', null, '1056', '2018-05-26 16:30:00');
INSERT INTO `schedule_job_log` VALUES ('564', '1', 'testTask', 'test', 'yjfintech', '0', null, '1076', '2018-05-26 17:00:00');
INSERT INTO `schedule_job_log` VALUES ('565', '1', 'testTask', 'test', 'yjfintech', '0', null, '1054', '2018-05-26 17:30:00');
INSERT INTO `schedule_job_log` VALUES ('566', '1', 'testTask', 'test', 'yjfintech', '0', null, '1055', '2018-05-26 18:00:00');
INSERT INTO `schedule_job_log` VALUES ('567', '1', 'testTask', 'test', 'yjfintech', '0', null, '1046', '2018-05-26 18:30:00');
INSERT INTO `schedule_job_log` VALUES ('568', '1', 'testTask', 'test', 'yjfintech', '0', null, '1012', '2018-05-26 19:00:00');
INSERT INTO `schedule_job_log` VALUES ('569', '1', 'testTask', 'test', 'yjfintech', '0', null, '1050', '2018-05-26 19:30:00');
INSERT INTO `schedule_job_log` VALUES ('570', '1', 'testTask', 'test', 'yjfintech', '0', null, '1078', '2018-05-26 20:00:00');
INSERT INTO `schedule_job_log` VALUES ('571', '1', 'testTask', 'test', 'yjfintech', '0', null, '1017', '2018-05-26 20:30:00');
INSERT INTO `schedule_job_log` VALUES ('572', '1', 'testTask', 'test', 'yjfintech', '0', null, '1032', '2018-05-26 21:00:00');
INSERT INTO `schedule_job_log` VALUES ('573', '1', 'testTask', 'test', 'yjfintech', '0', null, '1018', '2018-05-26 21:30:00');
INSERT INTO `schedule_job_log` VALUES ('574', '1', 'testTask', 'test', 'yjfintech', '0', null, '1017', '2018-05-26 22:00:00');
INSERT INTO `schedule_job_log` VALUES ('575', '1', 'testTask', 'test', 'yjfintech', '0', null, '1018', '2018-05-26 22:30:00');
INSERT INTO `schedule_job_log` VALUES ('576', '1', 'testTask', 'test', 'yjfintech', '0', null, '1017', '2018-05-26 23:00:00');
INSERT INTO `schedule_job_log` VALUES ('577', '1', 'testTask', 'test', 'yjfintech', '0', null, '1054', '2018-05-26 23:30:00');
INSERT INTO `schedule_job_log` VALUES ('578', '1', 'testTask', 'test', 'yjfintech', '0', null, '1067', '2018-05-27 00:00:00');
INSERT INTO `schedule_job_log` VALUES ('579', '1', 'testTask', 'test', 'yjfintech', '0', null, '1041', '2018-05-27 00:30:00');
INSERT INTO `schedule_job_log` VALUES ('580', '1', 'testTask', 'test', 'yjfintech', '0', null, '1068', '2018-05-27 01:00:00');
INSERT INTO `schedule_job_log` VALUES ('581', '1', 'testTask', 'test', 'yjfintech', '0', null, '1017', '2018-05-27 01:30:00');
INSERT INTO `schedule_job_log` VALUES ('582', '1', 'testTask', 'test', 'yjfintech', '0', null, '1016', '2018-05-27 02:00:00');
INSERT INTO `schedule_job_log` VALUES ('583', '1', 'testTask', 'test', 'yjfintech', '0', null, '1030', '2018-05-27 02:30:00');
INSERT INTO `schedule_job_log` VALUES ('584', '1', 'testTask', 'test', 'yjfintech', '0', null, '1012', '2018-05-27 03:00:00');
INSERT INTO `schedule_job_log` VALUES ('585', '1', 'testTask', 'test', 'yjfintech', '0', null, '1016', '2018-05-27 03:30:00');
INSERT INTO `schedule_job_log` VALUES ('586', '1', 'testTask', 'test', 'yjfintech', '0', null, '1069', '2018-05-27 04:00:00');
INSERT INTO `schedule_job_log` VALUES ('587', '1', 'testTask', 'test', 'yjfintech', '0', null, '1064', '2018-05-27 04:30:00');
INSERT INTO `schedule_job_log` VALUES ('588', '1', 'testTask', 'test', 'yjfintech', '0', null, '1050', '2018-05-27 05:00:00');
INSERT INTO `schedule_job_log` VALUES ('589', '1', 'testTask', 'test', 'yjfintech', '0', null, '1015', '2018-05-27 05:30:00');
INSERT INTO `schedule_job_log` VALUES ('590', '1', 'testTask', 'test', 'yjfintech', '0', null, '1064', '2018-05-27 06:00:00');
INSERT INTO `schedule_job_log` VALUES ('591', '1', 'testTask', 'test', 'yjfintech', '0', null, '1019', '2018-05-27 06:30:00');
INSERT INTO `schedule_job_log` VALUES ('592', '1', 'testTask', 'test', 'yjfintech', '0', null, '1046', '2018-05-27 07:00:00');
INSERT INTO `schedule_job_log` VALUES ('593', '1', 'testTask', 'test', 'yjfintech', '0', null, '1017', '2018-05-27 07:30:00');
INSERT INTO `schedule_job_log` VALUES ('594', '1', 'testTask', 'test', 'yjfintech', '0', null, '1019', '2018-05-27 08:00:00');
INSERT INTO `schedule_job_log` VALUES ('595', '1', 'testTask', 'test', 'yjfintech', '0', null, '1014', '2018-05-27 08:30:00');
INSERT INTO `schedule_job_log` VALUES ('596', '1', 'testTask', 'test', 'yjfintech', '0', null, '1077', '2018-05-27 09:00:00');
INSERT INTO `schedule_job_log` VALUES ('597', '1', 'testTask', 'test', 'yjfintech', '0', null, '1065', '2018-05-27 09:30:00');
INSERT INTO `schedule_job_log` VALUES ('598', '1', 'testTask', 'test', 'yjfintech', '0', null, '1017', '2018-05-27 10:00:00');
INSERT INTO `schedule_job_log` VALUES ('599', '1', 'testTask', 'test', 'yjfintech', '0', null, '1064', '2018-05-27 10:30:00');
INSERT INTO `schedule_job_log` VALUES ('600', '1', 'testTask', 'test', 'yjfintech', '0', null, '1051', '2018-05-27 11:00:00');
INSERT INTO `schedule_job_log` VALUES ('601', '1', 'testTask', 'test', 'yjfintech', '0', null, '1041', '2018-05-27 11:30:00');
INSERT INTO `schedule_job_log` VALUES ('602', '1', 'testTask', 'test', 'yjfintech', '0', null, '1011', '2018-05-27 12:00:00');
INSERT INTO `schedule_job_log` VALUES ('603', '1', 'testTask', 'test', 'yjfintech', '0', null, '1010', '2018-05-27 12:30:00');
INSERT INTO `schedule_job_log` VALUES ('604', '1', 'testTask', 'test', 'yjfintech', '0', null, '1008', '2018-05-27 13:00:00');
INSERT INTO `schedule_job_log` VALUES ('605', '1', 'testTask', 'test', 'yjfintech', '0', null, '1056', '2018-05-27 13:30:00');
INSERT INTO `schedule_job_log` VALUES ('606', '1', 'testTask', 'test', 'yjfintech', '0', null, '1039', '2018-05-27 14:00:00');
INSERT INTO `schedule_job_log` VALUES ('607', '1', 'testTask', 'test', 'yjfintech', '0', null, '1065', '2018-05-27 14:30:00');
INSERT INTO `schedule_job_log` VALUES ('608', '1', 'testTask', 'test', 'yjfintech', '0', null, '1051', '2018-05-27 15:00:00');
INSERT INTO `schedule_job_log` VALUES ('609', '1', 'testTask', 'test', 'yjfintech', '0', null, '1018', '2018-05-27 15:30:00');
INSERT INTO `schedule_job_log` VALUES ('610', '1', 'testTask', 'test', 'yjfintech', '0', null, '1060', '2018-05-27 16:00:00');
INSERT INTO `schedule_job_log` VALUES ('611', '1', 'testTask', 'test', 'yjfintech', '0', null, '1072', '2018-05-27 16:30:00');
INSERT INTO `schedule_job_log` VALUES ('612', '1', 'testTask', 'test', 'yjfintech', '0', null, '1037', '2018-05-27 17:00:00');
INSERT INTO `schedule_job_log` VALUES ('613', '1', 'testTask', 'test', 'yjfintech', '0', null, '1050', '2018-05-27 17:30:00');
INSERT INTO `schedule_job_log` VALUES ('614', '1', 'testTask', 'test', 'yjfintech', '0', null, '1056', '2018-05-27 18:00:00');
INSERT INTO `schedule_job_log` VALUES ('615', '1', 'testTask', 'test', 'yjfintech', '0', null, '1070', '2018-05-27 18:30:00');
INSERT INTO `schedule_job_log` VALUES ('616', '1', 'testTask', 'test', 'yjfintech', '0', null, '1079', '2018-05-27 19:00:00');
INSERT INTO `schedule_job_log` VALUES ('617', '1', 'testTask', 'test', 'yjfintech', '0', null, '1064', '2018-05-27 19:30:00');
INSERT INTO `schedule_job_log` VALUES ('618', '1', 'testTask', 'test', 'yjfintech', '0', null, '1064', '2018-05-27 20:00:00');
INSERT INTO `schedule_job_log` VALUES ('619', '1', 'testTask', 'test', 'yjfintech', '0', null, '1060', '2018-05-27 20:30:00');
INSERT INTO `schedule_job_log` VALUES ('620', '1', 'testTask', 'test', 'yjfintech', '0', null, '1060', '2018-05-27 21:00:00');
INSERT INTO `schedule_job_log` VALUES ('621', '1', 'testTask', 'test', 'yjfintech', '0', null, '1067', '2018-05-27 21:30:00');
INSERT INTO `schedule_job_log` VALUES ('622', '1', 'testTask', 'test', 'yjfintech', '0', null, '1055', '2018-05-27 22:00:00');
INSERT INTO `schedule_job_log` VALUES ('623', '1', 'testTask', 'test', 'yjfintech', '0', null, '1056', '2018-05-27 22:30:00');
INSERT INTO `schedule_job_log` VALUES ('624', '1', 'testTask', 'test', 'yjfintech', '0', null, '1064', '2018-05-27 23:00:00');
INSERT INTO `schedule_job_log` VALUES ('625', '1', 'testTask', 'test', 'yjfintech', '0', null, '1066', '2018-05-27 23:30:00');
INSERT INTO `schedule_job_log` VALUES ('626', '1', 'testTask', 'test', 'yjfintech', '0', null, '1083', '2018-05-28 00:00:00');
INSERT INTO `schedule_job_log` VALUES ('627', '1', 'testTask', 'test', 'yjfintech', '0', null, '1041', '2018-05-28 00:30:00');
INSERT INTO `schedule_job_log` VALUES ('628', '1', 'testTask', 'test', 'yjfintech', '0', null, '1064', '2018-05-28 01:00:00');
INSERT INTO `schedule_job_log` VALUES ('629', '1', 'testTask', 'test', 'yjfintech', '0', null, '1062', '2018-05-28 01:30:00');
INSERT INTO `schedule_job_log` VALUES ('630', '1', 'testTask', 'test', 'yjfintech', '0', null, '1055', '2018-05-28 02:00:00');
INSERT INTO `schedule_job_log` VALUES ('631', '1', 'testTask', 'test', 'yjfintech', '0', null, '1060', '2018-05-28 02:30:00');
INSERT INTO `schedule_job_log` VALUES ('632', '1', 'testTask', 'test', 'yjfintech', '0', null, '1048', '2018-05-28 03:00:00');
INSERT INTO `schedule_job_log` VALUES ('633', '1', 'testTask', 'test', 'yjfintech', '0', null, '1069', '2018-05-28 03:30:00');
INSERT INTO `schedule_job_log` VALUES ('634', '1', 'testTask', 'test', 'yjfintech', '0', null, '1044', '2018-05-28 04:00:00');
INSERT INTO `schedule_job_log` VALUES ('635', '1', 'testTask', 'test', 'yjfintech', '0', null, '1062', '2018-05-28 04:30:00');
INSERT INTO `schedule_job_log` VALUES ('636', '1', 'testTask', 'test', 'yjfintech', '0', null, '1045', '2018-05-28 05:00:00');
INSERT INTO `schedule_job_log` VALUES ('637', '1', 'testTask', 'test', 'yjfintech', '0', null, '1066', '2018-05-28 05:30:00');
INSERT INTO `schedule_job_log` VALUES ('638', '1', 'testTask', 'test', 'yjfintech', '0', null, '1044', '2018-05-28 06:00:00');
INSERT INTO `schedule_job_log` VALUES ('639', '1', 'testTask', 'test', 'yjfintech', '0', null, '1063', '2018-05-28 06:30:00');
INSERT INTO `schedule_job_log` VALUES ('640', '1', 'testTask', 'test', 'yjfintech', '0', null, '1060', '2018-05-28 07:00:00');
INSERT INTO `schedule_job_log` VALUES ('641', '1', 'testTask', 'test', 'yjfintech', '0', null, '1055', '2018-05-28 07:30:00');
INSERT INTO `schedule_job_log` VALUES ('642', '1', 'testTask', 'test', 'yjfintech', '0', null, '1037', '2018-05-28 08:00:00');
INSERT INTO `schedule_job_log` VALUES ('643', '1', 'testTask', 'test', 'yjfintech', '0', null, '1080', '2018-05-28 08:30:00');
INSERT INTO `schedule_job_log` VALUES ('644', '1', 'testTask', 'test', 'yjfintech', '0', null, '1045', '2018-05-28 09:00:00');
INSERT INTO `schedule_job_log` VALUES ('645', '1', 'testTask', 'test', 'yjfintech', '0', null, '1034', '2018-05-28 10:00:00');
INSERT INTO `schedule_job_log` VALUES ('646', '1', 'testTask', 'test', 'yjfintech', '0', null, '1074', '2018-05-28 10:30:00');
INSERT INTO `schedule_job_log` VALUES ('647', '1', 'testTask', 'test', 'yjfintech', '0', null, '1074', '2018-05-28 11:00:00');
INSERT INTO `schedule_job_log` VALUES ('648', '1', 'testTask', 'test', 'yjfintech', '0', null, '1117', '2018-05-28 11:30:00');
INSERT INTO `schedule_job_log` VALUES ('649', '1', 'testTask', 'test', 'yjfintech', '0', null, '1026', '2018-05-28 12:00:00');
INSERT INTO `schedule_job_log` VALUES ('650', '1', 'testTask', 'test', 'yjfintech', '0', null, '1012', '2018-05-28 12:30:00');
INSERT INTO `schedule_job_log` VALUES ('651', '1', 'testTask', 'test', 'yjfintech', '0', null, '1058', '2018-05-28 13:00:00');
INSERT INTO `schedule_job_log` VALUES ('652', '1', 'testTask', 'test', 'yjfintech', '0', null, '1038', '2018-05-28 13:30:00');
INSERT INTO `schedule_job_log` VALUES ('653', '1', 'testTask', 'test', 'yjfintech', '0', null, '1039', '2018-05-28 14:00:00');
INSERT INTO `schedule_job_log` VALUES ('654', '1', 'testTask', 'test', 'yjfintech', '0', null, '1027', '2018-05-28 14:00:00');
INSERT INTO `schedule_job_log` VALUES ('655', '1', 'testTask', 'test', 'yjfintech', '0', null, '1044', '2018-05-28 14:30:00');
INSERT INTO `schedule_job_log` VALUES ('656', '1', 'testTask', 'test', 'yjfintech', '0', null, '1019', '2018-05-28 15:00:00');
INSERT INTO `schedule_job_log` VALUES ('657', '1', 'testTask', 'test', 'yjfintech', '0', null, '1055', '2018-05-28 15:30:00');
INSERT INTO `schedule_job_log` VALUES ('658', '1', 'testTask', 'test', 'yjfintech', '0', null, '1023', '2018-05-28 16:00:00');
INSERT INTO `schedule_job_log` VALUES ('659', '1', 'testTask', 'test', 'yjfintech', '0', null, '1073', '2018-05-28 16:30:00');
INSERT INTO `schedule_job_log` VALUES ('660', '1', 'testTask', 'test', 'yjfintech', '0', null, '1024', '2018-05-28 17:00:00');
INSERT INTO `schedule_job_log` VALUES ('661', '1', 'testTask', 'test', 'yjfintech', '0', null, '1063', '2018-05-28 17:30:00');
INSERT INTO `schedule_job_log` VALUES ('662', '1', 'testTask', 'test', 'yjfintech', '0', null, '1047', '2018-05-28 18:00:00');
INSERT INTO `schedule_job_log` VALUES ('663', '1', 'testTask', 'test', 'yjfintech', '0', null, '1050', '2018-05-28 18:30:00');
INSERT INTO `schedule_job_log` VALUES ('664', '1', 'testTask', 'test', 'yjfintech', '0', null, '1052', '2018-05-28 19:00:00');
INSERT INTO `schedule_job_log` VALUES ('665', '1', 'testTask', 'test', 'yjfintech', '0', null, '1060', '2018-05-28 19:30:00');
INSERT INTO `schedule_job_log` VALUES ('666', '1', 'testTask', 'test', 'yjfintech', '0', null, '1069', '2018-05-28 20:00:00');
INSERT INTO `schedule_job_log` VALUES ('667', '1', 'testTask', 'test', 'yjfintech', '0', null, '1078', '2018-05-28 20:30:00');
INSERT INTO `schedule_job_log` VALUES ('668', '1', 'testTask', 'test', 'yjfintech', '0', null, '1046', '2018-05-28 21:00:00');
INSERT INTO `schedule_job_log` VALUES ('669', '1', 'testTask', 'test', 'yjfintech', '0', null, '1039', '2018-05-28 21:30:00');
INSERT INTO `schedule_job_log` VALUES ('670', '1', 'testTask', 'test', 'yjfintech', '0', null, '1042', '2018-05-28 22:00:00');
INSERT INTO `schedule_job_log` VALUES ('671', '1', 'testTask', 'test', 'yjfintech', '0', null, '1043', '2018-05-28 22:30:00');
INSERT INTO `schedule_job_log` VALUES ('672', '1', 'testTask', 'test', 'yjfintech', '0', null, '1041', '2018-05-28 23:00:00');
INSERT INTO `schedule_job_log` VALUES ('673', '1', 'testTask', 'test', 'yjfintech', '0', null, '1058', '2018-05-28 23:30:00');
INSERT INTO `schedule_job_log` VALUES ('674', '1', 'testTask', 'test', 'yjfintech', '0', null, '1067', '2018-05-29 00:00:00');
INSERT INTO `schedule_job_log` VALUES ('675', '1', 'testTask', 'test', 'yjfintech', '0', null, '1048', '2018-05-29 00:30:00');
INSERT INTO `schedule_job_log` VALUES ('676', '1', 'testTask', 'test', 'yjfintech', '0', null, '1048', '2018-05-29 01:00:00');
INSERT INTO `schedule_job_log` VALUES ('677', '1', 'testTask', 'test', 'yjfintech', '0', null, '1049', '2018-05-29 01:30:00');
INSERT INTO `schedule_job_log` VALUES ('678', '1', 'testTask', 'test', 'yjfintech', '0', null, '1061', '2018-05-29 02:00:00');
INSERT INTO `schedule_job_log` VALUES ('679', '1', 'testTask', 'test', 'yjfintech', '0', null, '1069', '2018-05-29 02:30:00');
INSERT INTO `schedule_job_log` VALUES ('680', '1', 'testTask', 'test', 'yjfintech', '0', null, '1064', '2018-05-29 03:00:00');
INSERT INTO `schedule_job_log` VALUES ('681', '1', 'testTask', 'test', 'yjfintech', '0', null, '1043', '2018-05-29 03:30:00');
INSERT INTO `schedule_job_log` VALUES ('682', '1', 'testTask', 'test', 'yjfintech', '0', null, '1059', '2018-05-29 04:00:00');
INSERT INTO `schedule_job_log` VALUES ('683', '1', 'testTask', 'test', 'yjfintech', '0', null, '1066', '2018-05-29 04:30:00');
INSERT INTO `schedule_job_log` VALUES ('684', '1', 'testTask', 'test', 'yjfintech', '0', null, '1064', '2018-05-29 05:00:00');
INSERT INTO `schedule_job_log` VALUES ('685', '1', 'testTask', 'test', 'yjfintech', '0', null, '1049', '2018-05-29 05:30:00');
INSERT INTO `schedule_job_log` VALUES ('686', '1', 'testTask', 'test', 'yjfintech', '0', null, '1072', '2018-05-29 06:00:00');
INSERT INTO `schedule_job_log` VALUES ('687', '1', 'testTask', 'test', 'yjfintech', '0', null, '1046', '2018-05-29 06:30:00');
INSERT INTO `schedule_job_log` VALUES ('688', '1', 'testTask', 'test', 'yjfintech', '0', null, '1055', '2018-05-29 07:00:00');
INSERT INTO `schedule_job_log` VALUES ('689', '1', 'testTask', 'test', 'yjfintech', '0', null, '1064', '2018-05-29 07:30:00');
INSERT INTO `schedule_job_log` VALUES ('690', '1', 'testTask', 'test', 'yjfintech', '0', null, '1065', '2018-05-29 08:00:00');
INSERT INTO `schedule_job_log` VALUES ('691', '1', 'testTask', 'test', 'yjfintech', '0', null, '1036', '2018-05-29 08:30:00');
INSERT INTO `schedule_job_log` VALUES ('692', '1', 'testTask', 'test', 'yjfintech', '0', null, '1042', '2018-05-29 09:00:00');
INSERT INTO `schedule_job_log` VALUES ('693', '1', 'testTask', 'test', 'yjfintech', '0', null, '1074', '2018-05-29 09:30:00');
INSERT INTO `schedule_job_log` VALUES ('694', '1', 'testTask', 'test', 'yjfintech', '0', null, '1005', '2018-05-29 10:00:00');
INSERT INTO `schedule_job_log` VALUES ('695', '1', 'testTask', 'test', 'yjfintech', '0', null, '1090', '2018-05-29 10:30:00');
INSERT INTO `schedule_job_log` VALUES ('696', '1', 'testTask', 'test', 'yjfintech', '0', null, '1061', '2018-05-29 11:00:00');
INSERT INTO `schedule_job_log` VALUES ('697', '1', 'testTask', 'test', 'yjfintech', '0', null, '1016', '2018-05-29 11:30:00');
INSERT INTO `schedule_job_log` VALUES ('698', '1', 'testTask', 'test', 'yjfintech', '0', null, '1058', '2018-05-29 12:00:00');
INSERT INTO `schedule_job_log` VALUES ('699', '1', 'testTask', 'test', 'yjfintech', '0', null, '1064', '2018-05-29 12:30:00');
INSERT INTO `schedule_job_log` VALUES ('700', '1', 'testTask', 'test', 'yjfintech', '0', null, '1051', '2018-05-29 13:00:00');
INSERT INTO `schedule_job_log` VALUES ('701', '1', 'testTask', 'test', 'yjfintech', '0', null, '1090', '2018-05-29 13:30:00');
INSERT INTO `schedule_job_log` VALUES ('702', '1', 'testTask', 'test', 'yjfintech', '0', null, '1012', '2018-05-29 14:00:00');
INSERT INTO `schedule_job_log` VALUES ('703', '1', 'testTask', 'test', 'yjfintech', '0', null, '1046', '2018-05-29 14:30:00');
INSERT INTO `schedule_job_log` VALUES ('704', '1', 'testTask', 'test', 'yjfintech', '0', null, '1026', '2018-05-29 15:00:00');
INSERT INTO `schedule_job_log` VALUES ('705', '1', 'testTask', 'test', 'yjfintech', '0', null, '1042', '2018-05-29 15:30:00');
INSERT INTO `schedule_job_log` VALUES ('706', '1', 'testTask', 'test', 'yjfintech', '0', null, '1026', '2018-05-29 16:00:00');
INSERT INTO `schedule_job_log` VALUES ('707', '1', 'testTask', 'test', 'yjfintech', '0', null, '1015', '2018-05-29 16:30:00');
INSERT INTO `schedule_job_log` VALUES ('708', '1', 'testTask', 'test', 'yjfintech', '0', null, '1066', '2018-05-29 17:30:00');
INSERT INTO `schedule_job_log` VALUES ('709', '1', 'testTask', 'test', 'yjfintech', '0', null, '1096', '2018-05-30 09:00:00');
INSERT INTO `schedule_job_log` VALUES ('710', '1', 'testTask', 'test', 'yjfintech', '0', null, '1068', '2018-05-30 09:30:00');
INSERT INTO `schedule_job_log` VALUES ('711', '1', 'testTask', 'test', 'yjfintech', '0', null, '1038', '2018-05-30 10:00:00');
INSERT INTO `schedule_job_log` VALUES ('712', '1', 'testTask', 'test', 'yjfintech', '0', null, '1066', '2018-05-30 10:30:00');
INSERT INTO `schedule_job_log` VALUES ('713', '1', 'testTask', 'test', 'yjfintech', '0', null, '1050', '2018-05-30 11:00:00');
INSERT INTO `schedule_job_log` VALUES ('714', '1', 'testTask', 'test', 'yjfintech', '0', null, '1033', '2018-05-30 11:30:00');
INSERT INTO `schedule_job_log` VALUES ('715', '1', 'testTask', 'test', 'yjfintech', '0', null, '1011', '2018-05-30 12:00:00');
INSERT INTO `schedule_job_log` VALUES ('716', '1', 'testTask', 'test', 'yjfintech', '0', null, '1013', '2018-05-30 12:30:00');
INSERT INTO `schedule_job_log` VALUES ('717', '1', 'testTask', 'test', 'yjfintech', '0', null, '1049', '2018-05-30 13:00:00');
INSERT INTO `schedule_job_log` VALUES ('718', '1', 'testTask', 'test', 'yjfintech', '0', null, '1081', '2018-05-30 13:30:00');
INSERT INTO `schedule_job_log` VALUES ('719', '1', 'testTask', 'test', 'yjfintech', '0', null, '1088', '2018-05-30 14:00:00');
INSERT INTO `schedule_job_log` VALUES ('720', '1', 'testTask', 'test', 'yjfintech', '0', null, '1020', '2018-05-30 14:30:00');
INSERT INTO `schedule_job_log` VALUES ('721', '1', 'testTask', 'test', 'yjfintech', '0', null, '1016', '2018-05-30 15:00:00');
INSERT INTO `schedule_job_log` VALUES ('722', '1', 'testTask', 'test', 'yjfintech', '0', null, '1042', '2018-05-30 15:30:00');
INSERT INTO `schedule_job_log` VALUES ('723', '1', 'testTask', 'test', 'yjfintech', '0', null, '1010', '2018-05-30 16:00:00');
INSERT INTO `schedule_job_log` VALUES ('724', '1', 'testTask', 'test', 'yjfintech', '0', null, '1084', '2018-05-30 16:30:00');
INSERT INTO `schedule_job_log` VALUES ('725', '1', 'testTask', 'test', 'yjfintech', '0', null, '1024', '2018-05-30 17:00:00');
INSERT INTO `schedule_job_log` VALUES ('726', '1', 'testTask', 'test', 'yjfintech', '0', null, '1005', '2018-05-30 17:30:00');
INSERT INTO `schedule_job_log` VALUES ('727', '1', 'testTask', 'test', 'yjfintech', '0', null, '1017', '2018-05-30 18:00:00');
INSERT INTO `schedule_job_log` VALUES ('728', '1', 'testTask', 'test', 'yjfintech', '0', null, '1046', '2018-05-30 18:30:00');
INSERT INTO `schedule_job_log` VALUES ('729', '1', 'testTask', 'test', 'yjfintech', '0', null, '1076', '2018-05-31 09:00:00');
INSERT INTO `schedule_job_log` VALUES ('730', '1', 'testTask', 'test', 'yjfintech', '0', null, '1045', '2018-05-31 09:30:00');
INSERT INTO `schedule_job_log` VALUES ('731', '1', 'testTask', 'test', 'yjfintech', '0', null, '1016', '2018-05-31 10:00:00');
INSERT INTO `schedule_job_log` VALUES ('732', '1', 'testTask', 'test', 'yjfintech', '0', null, '1017', '2018-05-31 10:30:00');
INSERT INTO `schedule_job_log` VALUES ('733', '1', 'testTask', 'test', 'yjfintech', '0', null, '1019', '2018-05-31 11:00:00');
INSERT INTO `schedule_job_log` VALUES ('734', '1', 'testTask', 'test', 'yjfintech', '0', null, '1095', '2018-05-31 11:30:00');
INSERT INTO `schedule_job_log` VALUES ('735', '1', 'testTask', 'test', 'yjfintech', '0', null, '1018', '2018-05-31 12:00:00');
INSERT INTO `schedule_job_log` VALUES ('736', '1', 'testTask', 'test', 'yjfintech', '0', null, '1018', '2018-05-31 12:30:00');
INSERT INTO `schedule_job_log` VALUES ('737', '1', 'testTask', 'test', 'yjfintech', '0', null, '1019', '2018-05-31 13:00:00');
INSERT INTO `schedule_job_log` VALUES ('738', '1', 'testTask', 'test', 'yjfintech', '0', null, '1034', '2018-05-31 13:30:00');
INSERT INTO `schedule_job_log` VALUES ('739', '1', 'testTask', 'test', 'yjfintech', '0', null, '1041', '2018-05-31 14:00:00');
INSERT INTO `schedule_job_log` VALUES ('740', '1', 'testTask', 'test', 'yjfintech', '0', null, '1062', '2018-05-31 15:00:00');
INSERT INTO `schedule_job_log` VALUES ('741', '1', 'testTask', 'test', 'yjfintech', '0', null, '1022', '2018-05-31 15:30:00');
INSERT INTO `schedule_job_log` VALUES ('742', '1', 'testTask', 'test', 'yjfintech', '0', null, '1081', '2018-05-31 16:00:00');
INSERT INTO `schedule_job_log` VALUES ('743', '1', 'testTask', 'test', 'yjfintech', '0', null, '1007', '2018-05-31 16:30:00');
INSERT INTO `schedule_job_log` VALUES ('744', '1', 'testTask', 'test', 'yjfintech', '0', null, '1053', '2018-05-31 17:00:00');
INSERT INTO `schedule_job_log` VALUES ('745', '1', 'testTask', 'test', 'yjfintech', '0', null, '1039', '2018-05-31 17:30:00');
INSERT INTO `schedule_job_log` VALUES ('746', '1', 'testTask', 'test', 'yjfintech', '0', null, '1044', '2018-06-01 09:00:00');
INSERT INTO `schedule_job_log` VALUES ('747', '1', 'testTask', 'test', 'yjfintech', '0', null, '1050', '2018-06-01 09:30:00');
INSERT INTO `schedule_job_log` VALUES ('748', '1', 'testTask', 'test', 'yjfintech', '0', null, '1076', '2018-06-01 10:00:00');
INSERT INTO `schedule_job_log` VALUES ('749', '1', 'testTask', 'test', 'yjfintech', '0', null, '1020', '2018-06-01 10:30:00');
INSERT INTO `schedule_job_log` VALUES ('750', '1', 'testTask', 'test', 'yjfintech', '0', null, '1065', '2018-06-01 11:00:00');
INSERT INTO `schedule_job_log` VALUES ('751', '1', 'testTask', 'test', 'yjfintech', '0', null, '1021', '2018-06-01 11:30:00');
INSERT INTO `schedule_job_log` VALUES ('752', '1', 'testTask', 'test', 'yjfintech', '0', null, '1028', '2018-06-01 12:00:00');
INSERT INTO `schedule_job_log` VALUES ('753', '1', 'testTask', 'test', 'yjfintech', '0', null, '1013', '2018-06-01 12:30:00');
INSERT INTO `schedule_job_log` VALUES ('754', '1', 'testTask', 'test', 'yjfintech', '0', null, '1091', '2018-06-01 13:00:00');
INSERT INTO `schedule_job_log` VALUES ('755', '1', 'testTask', 'test', 'yjfintech', '0', null, '1089', '2018-06-01 13:30:00');
INSERT INTO `schedule_job_log` VALUES ('756', '1', 'testTask', 'test', 'yjfintech', '0', null, '1014', '2018-06-01 14:00:00');
INSERT INTO `schedule_job_log` VALUES ('757', '1', 'testTask', 'test', 'yjfintech', '0', null, '1112', '2018-06-01 14:30:00');
INSERT INTO `schedule_job_log` VALUES ('758', '1', 'testTask', 'test', 'yjfintech', '0', null, '1018', '2018-06-01 15:00:00');
INSERT INTO `schedule_job_log` VALUES ('759', '1', 'testTask', 'test', 'yjfintech', '0', null, '1016', '2018-06-01 15:30:00');
INSERT INTO `schedule_job_log` VALUES ('760', '1', 'testTask', 'test', 'yjfintech', '0', null, '1060', '2018-06-01 16:00:00');
INSERT INTO `schedule_job_log` VALUES ('761', '1', 'testTask', 'test', 'yjfintech', '0', null, '1044', '2018-06-01 16:30:00');
INSERT INTO `schedule_job_log` VALUES ('762', '1', 'testTask', 'test', 'yjfintech', '0', null, '1061', '2018-06-01 17:00:00');
INSERT INTO `schedule_job_log` VALUES ('763', '1', 'testTask', 'test', 'yjfintech', '0', null, '1027', '2018-06-01 17:30:00');
INSERT INTO `schedule_job_log` VALUES ('764', '1', 'testTask', 'test', 'yjfintech', '0', null, '1043', '2018-06-04 08:30:00');
INSERT INTO `schedule_job_log` VALUES ('765', '1', 'testTask', 'test', 'yjfintech', '0', null, '1020', '2018-06-04 09:00:00');
INSERT INTO `schedule_job_log` VALUES ('766', '1', 'testTask', 'test', 'yjfintech', '0', null, '1037', '2018-06-04 09:30:00');
INSERT INTO `schedule_job_log` VALUES ('767', '1', 'testTask', 'test', 'yjfintech', '0', null, '1042', '2018-06-04 10:00:00');
INSERT INTO `schedule_job_log` VALUES ('768', '1', 'testTask', 'test', 'yjfintech', '0', null, '1074', '2018-06-04 10:30:00');
INSERT INTO `schedule_job_log` VALUES ('769', '1', 'testTask', 'test', 'yjfintech', '0', null, '1064', '2018-06-04 11:00:00');
INSERT INTO `schedule_job_log` VALUES ('770', '1', 'testTask', 'test', 'yjfintech', '0', null, '1007', '2018-06-04 11:30:00');
INSERT INTO `schedule_job_log` VALUES ('771', '1', 'testTask', 'test', 'yjfintech', '0', null, '1068', '2018-06-04 12:00:00');
INSERT INTO `schedule_job_log` VALUES ('772', '1', 'testTask', 'test', 'yjfintech', '0', null, '1015', '2018-06-04 12:30:00');
INSERT INTO `schedule_job_log` VALUES ('773', '1', 'testTask', 'test', 'yjfintech', '0', null, '1072', '2018-06-04 13:00:00');
INSERT INTO `schedule_job_log` VALUES ('774', '1', 'testTask', 'test', 'yjfintech', '0', null, '1022', '2018-06-04 13:30:00');
INSERT INTO `schedule_job_log` VALUES ('775', '1', 'testTask', 'test', 'yjfintech', '0', null, '1077', '2018-06-04 14:00:00');
INSERT INTO `schedule_job_log` VALUES ('776', '1', 'testTask', 'test', 'yjfintech', '0', null, '1026', '2018-06-04 14:30:00');
INSERT INTO `schedule_job_log` VALUES ('777', '1', 'testTask', 'test', 'yjfintech', '0', null, '1062', '2018-06-04 15:00:00');
INSERT INTO `schedule_job_log` VALUES ('778', '1', 'testTask', 'test', 'yjfintech', '0', null, '1057', '2018-06-04 15:30:00');
INSERT INTO `schedule_job_log` VALUES ('779', '1', 'testTask', 'test', 'yjfintech', '0', null, '1048', '2018-06-04 16:00:00');
INSERT INTO `schedule_job_log` VALUES ('780', '1', 'testTask', 'test', 'yjfintech', '0', null, '1014', '2018-06-04 16:30:00');
INSERT INTO `schedule_job_log` VALUES ('781', '1', 'testTask', 'test', 'yjfintech', '0', null, '1055', '2018-06-04 17:00:00');
INSERT INTO `schedule_job_log` VALUES ('782', '1', 'testTask', 'test', 'yjfintech', '0', null, '1054', '2018-06-04 17:30:00');
INSERT INTO `schedule_job_log` VALUES ('783', '1', 'testTask', 'test', 'yjfintech', '0', null, '1067', '2018-06-04 18:00:00');
INSERT INTO `schedule_job_log` VALUES ('784', '1', 'testTask', 'test', 'yjfintech', '0', null, '1053', '2018-06-04 18:30:00');
INSERT INTO `schedule_job_log` VALUES ('785', '1', 'testTask', 'test', 'yjfintech', '0', null, '1048', '2018-06-04 19:00:00');
INSERT INTO `schedule_job_log` VALUES ('786', '1', 'testTask', 'test', 'yjfintech', '0', null, '1046', '2018-06-04 19:30:00');
INSERT INTO `schedule_job_log` VALUES ('787', '1', 'testTask', 'test', 'yjfintech', '0', null, '1061', '2018-06-04 20:00:00');
INSERT INTO `schedule_job_log` VALUES ('788', '1', 'testTask', 'test', 'yjfintech', '0', null, '1047', '2018-06-04 20:30:00');
INSERT INTO `schedule_job_log` VALUES ('789', '1', 'testTask', 'test', 'yjfintech', '0', null, '1060', '2018-06-04 21:00:00');
INSERT INTO `schedule_job_log` VALUES ('790', '1', 'testTask', 'test', 'yjfintech', '0', null, '1046', '2018-06-04 21:30:00');
INSERT INTO `schedule_job_log` VALUES ('791', '1', 'testTask', 'test', 'yjfintech', '0', null, '1066', '2018-06-04 22:00:00');
INSERT INTO `schedule_job_log` VALUES ('792', '1', 'testTask', 'test', 'yjfintech', '0', null, '1051', '2018-06-04 22:30:00');
INSERT INTO `schedule_job_log` VALUES ('793', '1', 'testTask', 'test', 'yjfintech', '0', null, '1071', '2018-06-04 23:00:00');
INSERT INTO `schedule_job_log` VALUES ('794', '1', 'testTask', 'test', 'yjfintech', '0', null, '1050', '2018-06-04 23:30:00');
INSERT INTO `schedule_job_log` VALUES ('795', '1', 'testTask', 'test', 'yjfintech', '0', null, '1057', '2018-06-05 00:00:00');
INSERT INTO `schedule_job_log` VALUES ('796', '1', 'testTask', 'test', 'yjfintech', '0', null, '1061', '2018-06-05 00:30:00');
INSERT INTO `schedule_job_log` VALUES ('797', '1', 'testTask', 'test', 'yjfintech', '0', null, '1054', '2018-06-05 01:00:00');
INSERT INTO `schedule_job_log` VALUES ('798', '1', 'testTask', 'test', 'yjfintech', '0', null, '1068', '2018-06-05 01:30:00');
INSERT INTO `schedule_job_log` VALUES ('799', '1', 'testTask', 'test', 'yjfintech', '0', null, '1047', '2018-06-05 02:00:00');
INSERT INTO `schedule_job_log` VALUES ('800', '1', 'testTask', 'test', 'yjfintech', '0', null, '1059', '2018-06-05 02:30:00');
INSERT INTO `schedule_job_log` VALUES ('801', '1', 'testTask', 'test', 'yjfintech', '0', null, '1054', '2018-06-05 03:00:00');
INSERT INTO `schedule_job_log` VALUES ('802', '1', 'testTask', 'test', 'yjfintech', '0', null, '1059', '2018-06-05 03:30:00');
INSERT INTO `schedule_job_log` VALUES ('803', '1', 'testTask', 'test', 'yjfintech', '0', null, '1055', '2018-06-05 04:00:00');
INSERT INTO `schedule_job_log` VALUES ('804', '1', 'testTask', 'test', 'yjfintech', '0', null, '1047', '2018-06-05 04:30:00');
INSERT INTO `schedule_job_log` VALUES ('805', '1', 'testTask', 'test', 'yjfintech', '0', null, '1055', '2018-06-05 05:00:00');
INSERT INTO `schedule_job_log` VALUES ('806', '1', 'testTask', 'test', 'yjfintech', '0', null, '1045', '2018-06-05 05:30:00');
INSERT INTO `schedule_job_log` VALUES ('807', '1', 'testTask', 'test', 'yjfintech', '0', null, '1065', '2018-06-05 06:00:00');
INSERT INTO `schedule_job_log` VALUES ('808', '1', 'testTask', 'test', 'yjfintech', '0', null, '1061', '2018-06-05 06:30:00');
INSERT INTO `schedule_job_log` VALUES ('809', '1', 'testTask', 'test', 'yjfintech', '0', null, '1058', '2018-06-05 07:00:00');
INSERT INTO `schedule_job_log` VALUES ('810', '1', 'testTask', 'test', 'yjfintech', '0', null, '1061', '2018-06-05 07:30:00');
INSERT INTO `schedule_job_log` VALUES ('811', '1', 'testTask', 'test', 'yjfintech', '0', null, '1048', '2018-06-05 08:00:00');
INSERT INTO `schedule_job_log` VALUES ('812', '1', 'testTask', 'test', 'yjfintech', '0', null, '1063', '2018-06-05 08:30:00');
INSERT INTO `schedule_job_log` VALUES ('813', '1', 'testTask', 'test', 'yjfintech', '0', null, '1037', '2018-06-05 09:00:00');
INSERT INTO `schedule_job_log` VALUES ('814', '1', 'testTask', 'test', 'yjfintech', '0', null, '1042', '2018-06-05 09:30:00');
INSERT INTO `schedule_job_log` VALUES ('815', '1', 'testTask', 'test', 'yjfintech', '0', null, '1035', '2018-06-05 10:00:00');
INSERT INTO `schedule_job_log` VALUES ('816', '1', 'testTask', 'test', 'yjfintech', '0', null, '1041', '2018-06-05 10:30:00');
INSERT INTO `schedule_job_log` VALUES ('817', '1', 'testTask', 'test', 'yjfintech', '0', null, '1065', '2018-06-05 11:00:00');
INSERT INTO `schedule_job_log` VALUES ('818', '1', 'testTask', 'test', 'yjfintech', '0', null, '1028', '2018-06-05 11:30:00');
INSERT INTO `schedule_job_log` VALUES ('819', '1', 'testTask', 'test', 'yjfintech', '0', null, '1036', '2018-06-05 12:00:00');
INSERT INTO `schedule_job_log` VALUES ('820', '1', 'testTask', 'test', 'yjfintech', '0', null, '1055', '2018-06-05 12:30:00');
INSERT INTO `schedule_job_log` VALUES ('821', '1', 'testTask', 'test', 'yjfintech', '0', null, '1039', '2018-06-05 13:00:00');
INSERT INTO `schedule_job_log` VALUES ('822', '1', 'testTask', 'test', 'yjfintech', '0', null, '1042', '2018-06-05 13:30:00');
INSERT INTO `schedule_job_log` VALUES ('823', '1', 'testTask', 'test', 'yjfintech', '0', null, '1018', '2018-06-05 14:00:00');
INSERT INTO `schedule_job_log` VALUES ('824', '1', 'testTask', 'test', 'yjfintech', '0', null, '1080', '2018-06-05 14:30:00');
INSERT INTO `schedule_job_log` VALUES ('825', '1', 'testTask', 'test', 'yjfintech', '0', null, '1067', '2018-06-05 15:00:00');
INSERT INTO `schedule_job_log` VALUES ('826', '1', 'testTask', 'test', 'yjfintech', '0', null, '1135', '2018-06-05 15:30:00');
INSERT INTO `schedule_job_log` VALUES ('827', '1', 'testTask', 'test', 'yjfintech', '0', null, '1034', '2018-06-05 16:00:00');
INSERT INTO `schedule_job_log` VALUES ('828', '1', 'testTask', 'test', 'yjfintech', '0', null, '1071', '2018-06-05 16:30:00');
INSERT INTO `schedule_job_log` VALUES ('829', '1', 'testTask', 'test', 'yjfintech', '0', null, '1054', '2018-06-05 17:00:00');
INSERT INTO `schedule_job_log` VALUES ('830', '1', 'testTask', 'test', 'yjfintech', '0', null, '1015', '2018-06-05 17:30:00');
INSERT INTO `schedule_job_log` VALUES ('831', '1', 'testTask', 'test', 'yjfintech', '0', null, '1063', '2018-06-05 18:00:00');
INSERT INTO `schedule_job_log` VALUES ('832', '1', 'testTask', 'test', 'yjfintech', '0', null, '1048', '2018-06-05 18:30:00');
INSERT INTO `schedule_job_log` VALUES ('833', '1', 'testTask', 'test', 'yjfintech', '0', null, '1054', '2018-06-05 19:00:00');
INSERT INTO `schedule_job_log` VALUES ('834', '1', 'testTask', 'test', 'yjfintech', '0', null, '1052', '2018-06-05 19:30:00');
INSERT INTO `schedule_job_log` VALUES ('835', '1', 'testTask', 'test', 'yjfintech', '0', null, '1050', '2018-06-05 20:00:00');
INSERT INTO `schedule_job_log` VALUES ('836', '1', 'testTask', 'test', 'yjfintech', '0', null, '1077', '2018-06-05 20:30:00');
INSERT INTO `schedule_job_log` VALUES ('837', '1', 'testTask', 'test', 'yjfintech', '0', null, '1048', '2018-06-05 21:00:00');
INSERT INTO `schedule_job_log` VALUES ('838', '1', 'testTask', 'test', 'yjfintech', '0', null, '1057', '2018-06-05 21:30:00');
INSERT INTO `schedule_job_log` VALUES ('839', '1', 'testTask', 'test', 'yjfintech', '0', null, '1043', '2018-06-05 22:00:00');
INSERT INTO `schedule_job_log` VALUES ('840', '1', 'testTask', 'test', 'yjfintech', '0', null, '1060', '2018-06-05 22:30:00');
INSERT INTO `schedule_job_log` VALUES ('841', '1', 'testTask', 'test', 'yjfintech', '0', null, '1046', '2018-06-05 23:00:00');
INSERT INTO `schedule_job_log` VALUES ('842', '1', 'testTask', 'test', 'yjfintech', '0', null, '1058', '2018-06-05 23:30:00');
INSERT INTO `schedule_job_log` VALUES ('843', '1', 'testTask', 'test', 'yjfintech', '0', null, '1061', '2018-06-06 00:00:00');
INSERT INTO `schedule_job_log` VALUES ('844', '1', 'testTask', 'test', 'yjfintech', '0', null, '1063', '2018-06-06 00:30:00');
INSERT INTO `schedule_job_log` VALUES ('845', '1', 'testTask', 'test', 'yjfintech', '0', null, '1050', '2018-06-06 01:00:00');
INSERT INTO `schedule_job_log` VALUES ('846', '1', 'testTask', 'test', 'yjfintech', '0', null, '1055', '2018-06-06 01:30:00');
INSERT INTO `schedule_job_log` VALUES ('847', '1', 'testTask', 'test', 'yjfintech', '0', null, '1048', '2018-06-06 02:00:00');
INSERT INTO `schedule_job_log` VALUES ('848', '1', 'testTask', 'test', 'yjfintech', '0', null, '1063', '2018-06-06 02:30:00');
INSERT INTO `schedule_job_log` VALUES ('849', '1', 'testTask', 'test', 'yjfintech', '0', null, '1067', '2018-06-06 03:00:00');
INSERT INTO `schedule_job_log` VALUES ('850', '1', 'testTask', 'test', 'yjfintech', '0', null, '1061', '2018-06-06 03:30:00');
INSERT INTO `schedule_job_log` VALUES ('851', '1', 'testTask', 'test', 'yjfintech', '0', null, '1060', '2018-06-06 04:00:00');
INSERT INTO `schedule_job_log` VALUES ('852', '1', 'testTask', 'test', 'yjfintech', '0', null, '1061', '2018-06-06 04:30:00');
INSERT INTO `schedule_job_log` VALUES ('853', '1', 'testTask', 'test', 'yjfintech', '0', null, '1066', '2018-06-06 05:00:00');
INSERT INTO `schedule_job_log` VALUES ('854', '1', 'testTask', 'test', 'yjfintech', '0', null, '1054', '2018-06-06 05:30:00');
INSERT INTO `schedule_job_log` VALUES ('855', '1', 'testTask', 'test', 'yjfintech', '0', null, '1049', '2018-06-06 06:00:00');
INSERT INTO `schedule_job_log` VALUES ('856', '1', 'testTask', 'test', 'yjfintech', '0', null, '1061', '2018-06-06 06:30:00');
INSERT INTO `schedule_job_log` VALUES ('857', '1', 'testTask', 'test', 'yjfintech', '0', null, '1061', '2018-06-06 07:00:00');
INSERT INTO `schedule_job_log` VALUES ('858', '1', 'testTask', 'test', 'yjfintech', '0', null, '1050', '2018-06-06 07:30:00');
INSERT INTO `schedule_job_log` VALUES ('859', '1', 'testTask', 'test', 'yjfintech', '0', null, '1058', '2018-06-06 08:00:00');
INSERT INTO `schedule_job_log` VALUES ('860', '1', 'testTask', 'test', 'yjfintech', '0', null, '1060', '2018-06-06 08:30:00');
INSERT INTO `schedule_job_log` VALUES ('861', '1', 'testTask', 'test', 'yjfintech', '0', null, '1065', '2018-06-06 09:00:00');
INSERT INTO `schedule_job_log` VALUES ('862', '1', 'testTask', 'test', 'yjfintech', '0', null, '1034', '2018-06-06 09:30:00');
INSERT INTO `schedule_job_log` VALUES ('863', '1', 'testTask', 'test', 'yjfintech', '0', null, '1083', '2018-06-06 10:00:00');
INSERT INTO `schedule_job_log` VALUES ('864', '1', 'testTask', 'test', 'yjfintech', '0', null, '1071', '2018-06-06 10:30:00');
INSERT INTO `schedule_job_log` VALUES ('865', '1', 'testTask', 'test', 'yjfintech', '0', null, '1017', '2018-06-06 11:00:00');
INSERT INTO `schedule_job_log` VALUES ('866', '1', 'testTask', 'test', 'yjfintech', '0', null, '1054', '2018-06-06 11:30:00');
INSERT INTO `schedule_job_log` VALUES ('867', '1', 'testTask', 'test', 'yjfintech', '0', null, '1038', '2018-06-06 12:00:00');
INSERT INTO `schedule_job_log` VALUES ('868', '1', 'testTask', 'test', 'yjfintech', '0', null, '1015', '2018-06-06 12:30:00');
INSERT INTO `schedule_job_log` VALUES ('869', '1', 'testTask', 'test', 'yjfintech', '0', null, '1015', '2018-06-06 13:00:00');
INSERT INTO `schedule_job_log` VALUES ('870', '1', 'testTask', 'test', 'yjfintech', '0', null, '1008', '2018-06-06 13:30:00');
INSERT INTO `schedule_job_log` VALUES ('871', '1', 'testTask', 'test', 'yjfintech', '0', null, '1104', '2018-06-06 14:00:00');
INSERT INTO `schedule_job_log` VALUES ('872', '1', 'testTask', 'test', 'yjfintech', '0', null, '1017', '2018-06-06 14:30:00');
INSERT INTO `schedule_job_log` VALUES ('873', '1', 'testTask', 'test', 'yjfintech', '0', null, '1052', '2018-06-06 15:00:00');
INSERT INTO `schedule_job_log` VALUES ('874', '1', 'testTask', 'test', 'yjfintech', '0', null, '1007', '2018-06-06 15:30:00');
INSERT INTO `schedule_job_log` VALUES ('875', '1', 'testTask', 'test', 'yjfintech', '0', null, '1034', '2018-06-06 16:00:00');
INSERT INTO `schedule_job_log` VALUES ('876', '1', 'testTask', 'test', 'yjfintech', '0', null, '1061', '2018-06-06 16:30:00');
INSERT INTO `schedule_job_log` VALUES ('877', '1', 'testTask', 'test', 'yjfintech', '0', null, '1039', '2018-06-06 17:00:00');
INSERT INTO `schedule_job_log` VALUES ('878', '1', 'testTask', 'test', 'yjfintech', '0', null, '1027', '2018-06-06 17:30:00');
INSERT INTO `schedule_job_log` VALUES ('879', '1', 'testTask', 'test', 'yjfintech', '0', null, '1076', '2018-06-06 18:00:00');
INSERT INTO `schedule_job_log` VALUES ('880', '1', 'testTask', 'test', 'yjfintech', '0', null, '1066', '2018-06-06 18:30:00');
INSERT INTO `schedule_job_log` VALUES ('881', '1', 'testTask', 'test', 'yjfintech', '0', null, '1169', '2018-06-06 19:00:00');
INSERT INTO `schedule_job_log` VALUES ('882', '1', 'testTask', 'test', 'yjfintech', '0', null, '1060', '2018-06-06 19:30:00');
INSERT INTO `schedule_job_log` VALUES ('883', '1', 'testTask', 'test', 'yjfintech', '0', null, '1050', '2018-06-06 20:00:00');
INSERT INTO `schedule_job_log` VALUES ('884', '1', 'testTask', 'test', 'yjfintech', '0', null, '1062', '2018-06-06 20:30:00');
INSERT INTO `schedule_job_log` VALUES ('885', '1', 'testTask', 'test', 'yjfintech', '0', null, '1048', '2018-06-06 21:00:00');
INSERT INTO `schedule_job_log` VALUES ('886', '1', 'testTask', 'test', 'yjfintech', '0', null, '1052', '2018-06-06 21:30:00');
INSERT INTO `schedule_job_log` VALUES ('887', '1', 'testTask', 'test', 'yjfintech', '0', null, '1049', '2018-06-06 22:00:00');
INSERT INTO `schedule_job_log` VALUES ('888', '1', 'testTask', 'test', 'yjfintech', '0', null, '1047', '2018-06-06 22:30:00');
INSERT INTO `schedule_job_log` VALUES ('889', '1', 'testTask', 'test', 'yjfintech', '0', null, '1049', '2018-06-06 23:00:00');
INSERT INTO `schedule_job_log` VALUES ('890', '1', 'testTask', 'test', 'yjfintech', '0', null, '1066', '2018-06-06 23:30:00');
INSERT INTO `schedule_job_log` VALUES ('891', '1', 'testTask', 'test', 'yjfintech', '0', null, '1075', '2018-06-07 00:00:00');
INSERT INTO `schedule_job_log` VALUES ('892', '1', 'testTask', 'test', 'yjfintech', '0', null, '1055', '2018-06-07 00:30:00');
INSERT INTO `schedule_job_log` VALUES ('893', '1', 'testTask', 'test', 'yjfintech', '0', null, '1073', '2018-06-07 01:00:00');
INSERT INTO `schedule_job_log` VALUES ('894', '1', 'testTask', 'test', 'yjfintech', '0', null, '1054', '2018-06-07 01:30:00');
INSERT INTO `schedule_job_log` VALUES ('895', '1', 'testTask', 'test', 'yjfintech', '0', null, '1065', '2018-06-07 02:00:00');
INSERT INTO `schedule_job_log` VALUES ('896', '1', 'testTask', 'test', 'yjfintech', '0', null, '1055', '2018-06-07 02:30:00');
INSERT INTO `schedule_job_log` VALUES ('897', '1', 'testTask', 'test', 'yjfintech', '0', null, '1063', '2018-06-07 03:00:00');
INSERT INTO `schedule_job_log` VALUES ('898', '1', 'testTask', 'test', 'yjfintech', '0', null, '1060', '2018-06-07 03:30:00');
INSERT INTO `schedule_job_log` VALUES ('899', '1', 'testTask', 'test', 'yjfintech', '0', null, '1066', '2018-06-07 04:00:00');
INSERT INTO `schedule_job_log` VALUES ('900', '1', 'testTask', 'test', 'yjfintech', '0', null, '1070', '2018-06-07 04:30:00');
INSERT INTO `schedule_job_log` VALUES ('901', '1', 'testTask', 'test', 'yjfintech', '0', null, '1061', '2018-06-07 05:00:00');
INSERT INTO `schedule_job_log` VALUES ('902', '1', 'testTask', 'test', 'yjfintech', '0', null, '1059', '2018-06-07 05:30:00');
INSERT INTO `schedule_job_log` VALUES ('903', '1', 'testTask', 'test', 'yjfintech', '0', null, '1062', '2018-06-07 06:00:00');
INSERT INTO `schedule_job_log` VALUES ('904', '1', 'testTask', 'test', 'yjfintech', '0', null, '1061', '2018-06-07 06:30:00');
INSERT INTO `schedule_job_log` VALUES ('905', '1', 'testTask', 'test', 'yjfintech', '0', null, '1069', '2018-06-07 07:00:00');
INSERT INTO `schedule_job_log` VALUES ('906', '1', 'testTask', 'test', 'yjfintech', '0', null, '1073', '2018-06-07 07:30:00');
INSERT INTO `schedule_job_log` VALUES ('907', '1', 'testTask', 'test', 'yjfintech', '0', null, '1046', '2018-06-07 08:00:00');
INSERT INTO `schedule_job_log` VALUES ('908', '1', 'testTask', 'test', 'yjfintech', '0', null, '1050', '2018-06-07 08:30:00');
INSERT INTO `schedule_job_log` VALUES ('909', '1', 'testTask', 'test', 'yjfintech', '0', null, '1073', '2018-06-07 09:00:00');
INSERT INTO `schedule_job_log` VALUES ('910', '1', 'testTask', 'test', 'yjfintech', '0', null, '1062', '2018-06-07 09:30:00');
INSERT INTO `schedule_job_log` VALUES ('911', '1', 'testTask', 'test', 'yjfintech', '0', null, '1047', '2018-06-07 10:00:00');
INSERT INTO `schedule_job_log` VALUES ('912', '1', 'testTask', 'test', 'yjfintech', '0', null, '1063', '2018-06-07 10:30:00');
INSERT INTO `schedule_job_log` VALUES ('913', '1', 'testTask', 'test', 'yjfintech', '0', null, '1077', '2018-06-07 11:00:00');
INSERT INTO `schedule_job_log` VALUES ('914', '1', 'testTask', 'test', 'yjfintech', '0', null, '1043', '2018-06-07 11:30:00');
INSERT INTO `schedule_job_log` VALUES ('915', '1', 'testTask', 'test', 'yjfintech', '0', null, '1054', '2018-06-07 12:00:00');
INSERT INTO `schedule_job_log` VALUES ('916', '1', 'testTask', 'test', 'yjfintech', '0', null, '1047', '2018-06-07 12:30:00');
INSERT INTO `schedule_job_log` VALUES ('917', '1', 'testTask', 'test', 'yjfintech', '0', null, '1010', '2018-06-07 13:00:00');
INSERT INTO `schedule_job_log` VALUES ('918', '1', 'testTask', 'test', 'yjfintech', '0', null, '1021', '2018-06-07 13:30:00');
INSERT INTO `schedule_job_log` VALUES ('919', '1', 'testTask', 'test', 'yjfintech', '0', null, '1047', '2018-06-07 14:00:00');
INSERT INTO `schedule_job_log` VALUES ('920', '1', 'testTask', 'test', 'yjfintech', '0', null, '1017', '2018-06-07 14:30:00');
INSERT INTO `schedule_job_log` VALUES ('921', '1', 'testTask', 'test', 'yjfintech', '0', null, '1021', '2018-06-07 15:00:00');
INSERT INTO `schedule_job_log` VALUES ('922', '1', 'testTask', 'test', 'yjfintech', '0', null, '1018', '2018-06-07 15:30:00');
INSERT INTO `schedule_job_log` VALUES ('923', '1', 'testTask', 'test', 'yjfintech', '0', null, '1005', '2018-06-07 16:00:00');
INSERT INTO `schedule_job_log` VALUES ('924', '1', 'testTask', 'test', 'yjfintech', '0', null, '1076', '2018-06-07 16:30:00');
INSERT INTO `schedule_job_log` VALUES ('925', '1', 'testTask', 'test', 'yjfintech', '0', null, '1025', '2018-06-07 17:00:00');
INSERT INTO `schedule_job_log` VALUES ('926', '1', 'testTask', 'test', 'yjfintech', '0', null, '1071', '2018-06-07 17:30:00');

-- ----------------------------
-- Table structure for sys_area
-- ----------------------------
DROP TABLE IF EXISTS `sys_area`;
CREATE TABLE `sys_area` (
  `id` int(11) NOT NULL,
  `area_name` varchar(40) DEFAULT NULL,
  `pid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_CHINA_REFERENCE_CHINA` (`pid`),
  CONSTRAINT `FK_CHINA_REFERENCE_CHINA` FOREIGN KEY (`pid`) REFERENCES `sys_area` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_area
-- ----------------------------
INSERT INTO `sys_area` VALUES ('110000', '北京市', null);
INSERT INTO `sys_area` VALUES ('110100', '市辖区', '110000');
INSERT INTO `sys_area` VALUES ('110101', '东城区', '110100');
INSERT INTO `sys_area` VALUES ('110102', '西城区', '110100');
INSERT INTO `sys_area` VALUES ('110105', '朝阳区', '110100');
INSERT INTO `sys_area` VALUES ('110106', '丰台区', '110100');
INSERT INTO `sys_area` VALUES ('110107', '石景山区', '110100');
INSERT INTO `sys_area` VALUES ('110108', '海淀区', '110100');
INSERT INTO `sys_area` VALUES ('110109', '门头沟区', '110100');
INSERT INTO `sys_area` VALUES ('110111', '房山区', '110100');
INSERT INTO `sys_area` VALUES ('110112', '通州区', '110100');
INSERT INTO `sys_area` VALUES ('110113', '顺义区', '110100');
INSERT INTO `sys_area` VALUES ('110114', '昌平区', '110100');
INSERT INTO `sys_area` VALUES ('110115', '大兴区', '110100');
INSERT INTO `sys_area` VALUES ('110116', '怀柔区', '110100');
INSERT INTO `sys_area` VALUES ('110117', '平谷区', '110100');
INSERT INTO `sys_area` VALUES ('110118', '密云区', '110100');
INSERT INTO `sys_area` VALUES ('110119', '延庆区', '110100');
INSERT INTO `sys_area` VALUES ('120000', '天津市', null);
INSERT INTO `sys_area` VALUES ('120100', '市辖区', '120000');
INSERT INTO `sys_area` VALUES ('120101', '和平区', '120100');
INSERT INTO `sys_area` VALUES ('120102', '河东区', '120100');
INSERT INTO `sys_area` VALUES ('120103', '河西区', '120100');
INSERT INTO `sys_area` VALUES ('120104', '南开区', '120100');
INSERT INTO `sys_area` VALUES ('120105', '河北区', '120100');
INSERT INTO `sys_area` VALUES ('120106', '红桥区', '120100');
INSERT INTO `sys_area` VALUES ('120110', '东丽区', '120100');
INSERT INTO `sys_area` VALUES ('120111', '西青区', '120100');
INSERT INTO `sys_area` VALUES ('120112', '津南区', '120100');
INSERT INTO `sys_area` VALUES ('120113', '北辰区', '120100');
INSERT INTO `sys_area` VALUES ('120114', '武清区', '120100');
INSERT INTO `sys_area` VALUES ('120115', '宝坻区', '120100');
INSERT INTO `sys_area` VALUES ('120116', '滨海新区', '120100');
INSERT INTO `sys_area` VALUES ('120117', '宁河区', '120100');
INSERT INTO `sys_area` VALUES ('120118', '静海区', '120100');
INSERT INTO `sys_area` VALUES ('120119', '蓟州区', '120100');
INSERT INTO `sys_area` VALUES ('130000', '河北省', null);
INSERT INTO `sys_area` VALUES ('130100', '石家庄市', '130000');
INSERT INTO `sys_area` VALUES ('130101', '市辖区', '130100');
INSERT INTO `sys_area` VALUES ('130102', '长安区', '130100');
INSERT INTO `sys_area` VALUES ('130104', '桥西区', '130100');
INSERT INTO `sys_area` VALUES ('130105', '新华区', '130100');
INSERT INTO `sys_area` VALUES ('130107', '井陉矿区', '130100');
INSERT INTO `sys_area` VALUES ('130108', '裕华区', '130100');
INSERT INTO `sys_area` VALUES ('130109', '藁城区', '130100');
INSERT INTO `sys_area` VALUES ('130110', '鹿泉区', '130100');
INSERT INTO `sys_area` VALUES ('130111', '栾城区', '130100');
INSERT INTO `sys_area` VALUES ('130121', '井陉县', '130100');
INSERT INTO `sys_area` VALUES ('130123', '正定县', '130100');
INSERT INTO `sys_area` VALUES ('130125', '行唐县', '130100');
INSERT INTO `sys_area` VALUES ('130126', '灵寿县', '130100');
INSERT INTO `sys_area` VALUES ('130127', '高邑县', '130100');
INSERT INTO `sys_area` VALUES ('130128', '深泽县', '130100');
INSERT INTO `sys_area` VALUES ('130129', '赞皇县', '130100');
INSERT INTO `sys_area` VALUES ('130130', '无极县', '130100');
INSERT INTO `sys_area` VALUES ('130131', '平山县', '130100');
INSERT INTO `sys_area` VALUES ('130132', '元氏县', '130100');
INSERT INTO `sys_area` VALUES ('130133', '赵县', '130100');
INSERT INTO `sys_area` VALUES ('130183', '晋州市', '130100');
INSERT INTO `sys_area` VALUES ('130184', '新乐市', '130100');
INSERT INTO `sys_area` VALUES ('130200', '唐山市', '130000');
INSERT INTO `sys_area` VALUES ('130201', '市辖区', '130200');
INSERT INTO `sys_area` VALUES ('130202', '路南区', '130200');
INSERT INTO `sys_area` VALUES ('130203', '路北区', '130200');
INSERT INTO `sys_area` VALUES ('130204', '古冶区', '130200');
INSERT INTO `sys_area` VALUES ('130205', '开平区', '130200');
INSERT INTO `sys_area` VALUES ('130207', '丰南区', '130200');
INSERT INTO `sys_area` VALUES ('130208', '丰润区', '130200');
INSERT INTO `sys_area` VALUES ('130209', '曹妃甸区', '130200');
INSERT INTO `sys_area` VALUES ('130223', '滦县', '130200');
INSERT INTO `sys_area` VALUES ('130224', '滦南县', '130200');
INSERT INTO `sys_area` VALUES ('130225', '乐亭县', '130200');
INSERT INTO `sys_area` VALUES ('130227', '迁西县', '130200');
INSERT INTO `sys_area` VALUES ('130229', '玉田县', '130200');
INSERT INTO `sys_area` VALUES ('130281', '遵化市', '130200');
INSERT INTO `sys_area` VALUES ('130283', '迁安市', '130200');
INSERT INTO `sys_area` VALUES ('130300', '秦皇岛市', '130000');
INSERT INTO `sys_area` VALUES ('130301', '市辖区', '130300');
INSERT INTO `sys_area` VALUES ('130302', '海港区', '130300');
INSERT INTO `sys_area` VALUES ('130303', '山海关区', '130300');
INSERT INTO `sys_area` VALUES ('130304', '北戴河区', '130300');
INSERT INTO `sys_area` VALUES ('130306', '抚宁区', '130300');
INSERT INTO `sys_area` VALUES ('130321', '青龙满族自治县', '130300');
INSERT INTO `sys_area` VALUES ('130322', '昌黎县', '130300');
INSERT INTO `sys_area` VALUES ('130324', '卢龙县', '130300');
INSERT INTO `sys_area` VALUES ('130400', '邯郸市', '130000');
INSERT INTO `sys_area` VALUES ('130401', '市辖区', '130400');
INSERT INTO `sys_area` VALUES ('130402', '邯山区', '130400');
INSERT INTO `sys_area` VALUES ('130403', '丛台区', '130400');
INSERT INTO `sys_area` VALUES ('130404', '复兴区', '130400');
INSERT INTO `sys_area` VALUES ('130406', '峰峰矿区', '130400');
INSERT INTO `sys_area` VALUES ('130421', '邯郸县', '130400');
INSERT INTO `sys_area` VALUES ('130423', '临漳县', '130400');
INSERT INTO `sys_area` VALUES ('130424', '成安县', '130400');
INSERT INTO `sys_area` VALUES ('130425', '大名县', '130400');
INSERT INTO `sys_area` VALUES ('130426', '涉县', '130400');
INSERT INTO `sys_area` VALUES ('130427', '磁县', '130400');
INSERT INTO `sys_area` VALUES ('130428', '肥乡县', '130400');
INSERT INTO `sys_area` VALUES ('130429', '永年县', '130400');
INSERT INTO `sys_area` VALUES ('130430', '邱县', '130400');
INSERT INTO `sys_area` VALUES ('130431', '鸡泽县', '130400');
INSERT INTO `sys_area` VALUES ('130432', '广平县', '130400');
INSERT INTO `sys_area` VALUES ('130433', '馆陶县', '130400');
INSERT INTO `sys_area` VALUES ('130434', '魏县', '130400');
INSERT INTO `sys_area` VALUES ('130435', '曲周县', '130400');
INSERT INTO `sys_area` VALUES ('130481', '武安市', '130400');
INSERT INTO `sys_area` VALUES ('130500', '邢台市', '130000');
INSERT INTO `sys_area` VALUES ('130501', '市辖区', '130500');
INSERT INTO `sys_area` VALUES ('130502', '桥东区', '130500');
INSERT INTO `sys_area` VALUES ('130503', '桥西区', '130500');
INSERT INTO `sys_area` VALUES ('130521', '邢台县', '130500');
INSERT INTO `sys_area` VALUES ('130522', '临城县', '130500');
INSERT INTO `sys_area` VALUES ('130523', '内丘县', '130500');
INSERT INTO `sys_area` VALUES ('130524', '柏乡县', '130500');
INSERT INTO `sys_area` VALUES ('130525', '隆尧县', '130500');
INSERT INTO `sys_area` VALUES ('130526', '任县', '130500');
INSERT INTO `sys_area` VALUES ('130527', '南和县', '130500');
INSERT INTO `sys_area` VALUES ('130528', '宁晋县', '130500');
INSERT INTO `sys_area` VALUES ('130529', '巨鹿县', '130500');
INSERT INTO `sys_area` VALUES ('130530', '新河县', '130500');
INSERT INTO `sys_area` VALUES ('130531', '广宗县', '130500');
INSERT INTO `sys_area` VALUES ('130532', '平乡县', '130500');
INSERT INTO `sys_area` VALUES ('130533', '威县', '130500');
INSERT INTO `sys_area` VALUES ('130534', '清河县', '130500');
INSERT INTO `sys_area` VALUES ('130535', '临西县', '130500');
INSERT INTO `sys_area` VALUES ('130581', '南宫市', '130500');
INSERT INTO `sys_area` VALUES ('130582', '沙河市', '130500');
INSERT INTO `sys_area` VALUES ('130600', '保定市', '130000');
INSERT INTO `sys_area` VALUES ('130601', '市辖区', '130600');
INSERT INTO `sys_area` VALUES ('130602', '竞秀区', '130600');
INSERT INTO `sys_area` VALUES ('130606', '莲池区', '130600');
INSERT INTO `sys_area` VALUES ('130607', '满城区', '130600');
INSERT INTO `sys_area` VALUES ('130608', '清苑区', '130600');
INSERT INTO `sys_area` VALUES ('130609', '徐水区', '130600');
INSERT INTO `sys_area` VALUES ('130623', '涞水县', '130600');
INSERT INTO `sys_area` VALUES ('130624', '阜平县', '130600');
INSERT INTO `sys_area` VALUES ('130626', '定兴县', '130600');
INSERT INTO `sys_area` VALUES ('130627', '唐县', '130600');
INSERT INTO `sys_area` VALUES ('130628', '高阳县', '130600');
INSERT INTO `sys_area` VALUES ('130629', '容城县', '130600');
INSERT INTO `sys_area` VALUES ('130630', '涞源县', '130600');
INSERT INTO `sys_area` VALUES ('130631', '望都县', '130600');
INSERT INTO `sys_area` VALUES ('130632', '安新县', '130600');
INSERT INTO `sys_area` VALUES ('130633', '易县', '130600');
INSERT INTO `sys_area` VALUES ('130634', '曲阳县', '130600');
INSERT INTO `sys_area` VALUES ('130635', '蠡县', '130600');
INSERT INTO `sys_area` VALUES ('130636', '顺平县', '130600');
INSERT INTO `sys_area` VALUES ('130637', '博野县', '130600');
INSERT INTO `sys_area` VALUES ('130638', '雄县', '130600');
INSERT INTO `sys_area` VALUES ('130681', '涿州市', '130600');
INSERT INTO `sys_area` VALUES ('130683', '安国市', '130600');
INSERT INTO `sys_area` VALUES ('130684', '高碑店市', '130600');
INSERT INTO `sys_area` VALUES ('130700', '张家口市', '130000');
INSERT INTO `sys_area` VALUES ('130701', '市辖区', '130700');
INSERT INTO `sys_area` VALUES ('130702', '桥东区', '130700');
INSERT INTO `sys_area` VALUES ('130703', '桥西区', '130700');
INSERT INTO `sys_area` VALUES ('130705', '宣化区', '130700');
INSERT INTO `sys_area` VALUES ('130706', '下花园区', '130700');
INSERT INTO `sys_area` VALUES ('130708', '万全区', '130700');
INSERT INTO `sys_area` VALUES ('130709', '崇礼区', '130700');
INSERT INTO `sys_area` VALUES ('130722', '张北县', '130700');
INSERT INTO `sys_area` VALUES ('130723', '康保县', '130700');
INSERT INTO `sys_area` VALUES ('130724', '沽源县', '130700');
INSERT INTO `sys_area` VALUES ('130725', '尚义县', '130700');
INSERT INTO `sys_area` VALUES ('130726', '蔚县', '130700');
INSERT INTO `sys_area` VALUES ('130727', '阳原县', '130700');
INSERT INTO `sys_area` VALUES ('130728', '怀安县', '130700');
INSERT INTO `sys_area` VALUES ('130730', '怀来县', '130700');
INSERT INTO `sys_area` VALUES ('130731', '涿鹿县', '130700');
INSERT INTO `sys_area` VALUES ('130732', '赤城县', '130700');
INSERT INTO `sys_area` VALUES ('130800', '承德市', '130000');
INSERT INTO `sys_area` VALUES ('130801', '市辖区', '130800');
INSERT INTO `sys_area` VALUES ('130802', '双桥区', '130800');
INSERT INTO `sys_area` VALUES ('130803', '双滦区', '130800');
INSERT INTO `sys_area` VALUES ('130804', '鹰手营子矿区', '130800');
INSERT INTO `sys_area` VALUES ('130821', '承德县', '130800');
INSERT INTO `sys_area` VALUES ('130822', '兴隆县', '130800');
INSERT INTO `sys_area` VALUES ('130823', '平泉县', '130800');
INSERT INTO `sys_area` VALUES ('130824', '滦平县', '130800');
INSERT INTO `sys_area` VALUES ('130825', '隆化县', '130800');
INSERT INTO `sys_area` VALUES ('130826', '丰宁满族自治县', '130800');
INSERT INTO `sys_area` VALUES ('130827', '宽城满族自治县', '130800');
INSERT INTO `sys_area` VALUES ('130828', '围场满族蒙古族自治县', '130800');
INSERT INTO `sys_area` VALUES ('130900', '沧州市', '130000');
INSERT INTO `sys_area` VALUES ('130901', '市辖区', '130900');
INSERT INTO `sys_area` VALUES ('130902', '新华区', '130900');
INSERT INTO `sys_area` VALUES ('130903', '运河区', '130900');
INSERT INTO `sys_area` VALUES ('130921', '沧县', '130900');
INSERT INTO `sys_area` VALUES ('130922', '青县', '130900');
INSERT INTO `sys_area` VALUES ('130923', '东光县', '130900');
INSERT INTO `sys_area` VALUES ('130924', '海兴县', '130900');
INSERT INTO `sys_area` VALUES ('130925', '盐山县', '130900');
INSERT INTO `sys_area` VALUES ('130926', '肃宁县', '130900');
INSERT INTO `sys_area` VALUES ('130927', '南皮县', '130900');
INSERT INTO `sys_area` VALUES ('130928', '吴桥县', '130900');
INSERT INTO `sys_area` VALUES ('130929', '献县', '130900');
INSERT INTO `sys_area` VALUES ('130930', '孟村回族自治县', '130900');
INSERT INTO `sys_area` VALUES ('130981', '泊头市', '130900');
INSERT INTO `sys_area` VALUES ('130982', '任丘市', '130900');
INSERT INTO `sys_area` VALUES ('130983', '黄骅市', '130900');
INSERT INTO `sys_area` VALUES ('130984', '河间市', '130900');
INSERT INTO `sys_area` VALUES ('131000', '廊坊市', '130000');
INSERT INTO `sys_area` VALUES ('131001', '市辖区', '131000');
INSERT INTO `sys_area` VALUES ('131002', '安次区', '131000');
INSERT INTO `sys_area` VALUES ('131003', '广阳区', '131000');
INSERT INTO `sys_area` VALUES ('131022', '固安县', '131000');
INSERT INTO `sys_area` VALUES ('131023', '永清县', '131000');
INSERT INTO `sys_area` VALUES ('131024', '香河县', '131000');
INSERT INTO `sys_area` VALUES ('131025', '大城县', '131000');
INSERT INTO `sys_area` VALUES ('131026', '文安县', '131000');
INSERT INTO `sys_area` VALUES ('131028', '大厂回族自治县', '131000');
INSERT INTO `sys_area` VALUES ('131081', '霸州市', '131000');
INSERT INTO `sys_area` VALUES ('131082', '三河市', '131000');
INSERT INTO `sys_area` VALUES ('131100', '衡水市', '130000');
INSERT INTO `sys_area` VALUES ('131101', '市辖区', '131100');
INSERT INTO `sys_area` VALUES ('131102', '桃城区', '131100');
INSERT INTO `sys_area` VALUES ('131103', '冀州区', '131100');
INSERT INTO `sys_area` VALUES ('131121', '枣强县', '131100');
INSERT INTO `sys_area` VALUES ('131122', '武邑县', '131100');
INSERT INTO `sys_area` VALUES ('131123', '武强县', '131100');
INSERT INTO `sys_area` VALUES ('131124', '饶阳县', '131100');
INSERT INTO `sys_area` VALUES ('131125', '安平县', '131100');
INSERT INTO `sys_area` VALUES ('131126', '故城县', '131100');
INSERT INTO `sys_area` VALUES ('131127', '景县', '131100');
INSERT INTO `sys_area` VALUES ('131128', '阜城县', '131100');
INSERT INTO `sys_area` VALUES ('131182', '深州市', '131100');
INSERT INTO `sys_area` VALUES ('139000', '省直辖县级行政区划', '130000');
INSERT INTO `sys_area` VALUES ('139001', '定州市', '139000');
INSERT INTO `sys_area` VALUES ('139002', '辛集市', '139000');
INSERT INTO `sys_area` VALUES ('140000', '山西省', null);
INSERT INTO `sys_area` VALUES ('140100', '太原市', '140000');
INSERT INTO `sys_area` VALUES ('140101', '市辖区', '140100');
INSERT INTO `sys_area` VALUES ('140105', '小店区', '140100');
INSERT INTO `sys_area` VALUES ('140106', '迎泽区', '140100');
INSERT INTO `sys_area` VALUES ('140107', '杏花岭区', '140100');
INSERT INTO `sys_area` VALUES ('140108', '尖草坪区', '140100');
INSERT INTO `sys_area` VALUES ('140109', '万柏林区', '140100');
INSERT INTO `sys_area` VALUES ('140110', '晋源区', '140100');
INSERT INTO `sys_area` VALUES ('140121', '清徐县', '140100');
INSERT INTO `sys_area` VALUES ('140122', '阳曲县', '140100');
INSERT INTO `sys_area` VALUES ('140123', '娄烦县', '140100');
INSERT INTO `sys_area` VALUES ('140181', '古交市', '140100');
INSERT INTO `sys_area` VALUES ('140200', '大同市', '140000');
INSERT INTO `sys_area` VALUES ('140201', '市辖区', '140200');
INSERT INTO `sys_area` VALUES ('140202', '城区', '140200');
INSERT INTO `sys_area` VALUES ('140203', '矿区', '140200');
INSERT INTO `sys_area` VALUES ('140211', '南郊区', '140200');
INSERT INTO `sys_area` VALUES ('140212', '新荣区', '140200');
INSERT INTO `sys_area` VALUES ('140221', '阳高县', '140200');
INSERT INTO `sys_area` VALUES ('140222', '天镇县', '140200');
INSERT INTO `sys_area` VALUES ('140223', '广灵县', '140200');
INSERT INTO `sys_area` VALUES ('140224', '灵丘县', '140200');
INSERT INTO `sys_area` VALUES ('140225', '浑源县', '140200');
INSERT INTO `sys_area` VALUES ('140226', '左云县', '140200');
INSERT INTO `sys_area` VALUES ('140227', '大同县', '140200');
INSERT INTO `sys_area` VALUES ('140300', '阳泉市', '140000');
INSERT INTO `sys_area` VALUES ('140301', '市辖区', '140300');
INSERT INTO `sys_area` VALUES ('140302', '城区', '140300');
INSERT INTO `sys_area` VALUES ('140303', '矿区', '140300');
INSERT INTO `sys_area` VALUES ('140311', '郊区', '140300');
INSERT INTO `sys_area` VALUES ('140321', '平定县', '140300');
INSERT INTO `sys_area` VALUES ('140322', '盂县', '140300');
INSERT INTO `sys_area` VALUES ('140400', '长治市', '140000');
INSERT INTO `sys_area` VALUES ('140401', '市辖区', '140400');
INSERT INTO `sys_area` VALUES ('140402', '城区', '140400');
INSERT INTO `sys_area` VALUES ('140411', '郊区', '140400');
INSERT INTO `sys_area` VALUES ('140421', '长治县', '140400');
INSERT INTO `sys_area` VALUES ('140423', '襄垣县', '140400');
INSERT INTO `sys_area` VALUES ('140424', '屯留县', '140400');
INSERT INTO `sys_area` VALUES ('140425', '平顺县', '140400');
INSERT INTO `sys_area` VALUES ('140426', '黎城县', '140400');
INSERT INTO `sys_area` VALUES ('140427', '壶关县', '140400');
INSERT INTO `sys_area` VALUES ('140428', '长子县', '140400');
INSERT INTO `sys_area` VALUES ('140429', '武乡县', '140400');
INSERT INTO `sys_area` VALUES ('140430', '沁县', '140400');
INSERT INTO `sys_area` VALUES ('140431', '沁源县', '140400');
INSERT INTO `sys_area` VALUES ('140481', '潞城市', '140400');
INSERT INTO `sys_area` VALUES ('140500', '晋城市', '140000');
INSERT INTO `sys_area` VALUES ('140501', '市辖区', '140500');
INSERT INTO `sys_area` VALUES ('140502', '城区', '140500');
INSERT INTO `sys_area` VALUES ('140521', '沁水县', '140500');
INSERT INTO `sys_area` VALUES ('140522', '阳城县', '140500');
INSERT INTO `sys_area` VALUES ('140524', '陵川县', '140500');
INSERT INTO `sys_area` VALUES ('140525', '泽州县', '140500');
INSERT INTO `sys_area` VALUES ('140581', '高平市', '140500');
INSERT INTO `sys_area` VALUES ('140600', '朔州市', '140000');
INSERT INTO `sys_area` VALUES ('140601', '市辖区', '140600');
INSERT INTO `sys_area` VALUES ('140602', '朔城区', '140600');
INSERT INTO `sys_area` VALUES ('140603', '平鲁区', '140600');
INSERT INTO `sys_area` VALUES ('140621', '山阴县', '140600');
INSERT INTO `sys_area` VALUES ('140622', '应县', '140600');
INSERT INTO `sys_area` VALUES ('140623', '右玉县', '140600');
INSERT INTO `sys_area` VALUES ('140624', '怀仁县', '140600');
INSERT INTO `sys_area` VALUES ('140700', '晋中市', '140000');
INSERT INTO `sys_area` VALUES ('140701', '市辖区', '140700');
INSERT INTO `sys_area` VALUES ('140702', '榆次区', '140700');
INSERT INTO `sys_area` VALUES ('140721', '榆社县', '140700');
INSERT INTO `sys_area` VALUES ('140722', '左权县', '140700');
INSERT INTO `sys_area` VALUES ('140723', '和顺县', '140700');
INSERT INTO `sys_area` VALUES ('140724', '昔阳县', '140700');
INSERT INTO `sys_area` VALUES ('140725', '寿阳县', '140700');
INSERT INTO `sys_area` VALUES ('140726', '太谷县', '140700');
INSERT INTO `sys_area` VALUES ('140727', '祁县', '140700');
INSERT INTO `sys_area` VALUES ('140728', '平遥县', '140700');
INSERT INTO `sys_area` VALUES ('140729', '灵石县', '140700');
INSERT INTO `sys_area` VALUES ('140781', '介休市', '140700');
INSERT INTO `sys_area` VALUES ('140800', '运城市', '140000');
INSERT INTO `sys_area` VALUES ('140801', '市辖区', '140800');
INSERT INTO `sys_area` VALUES ('140802', '盐湖区', '140800');
INSERT INTO `sys_area` VALUES ('140821', '临猗县', '140800');
INSERT INTO `sys_area` VALUES ('140822', '万荣县', '140800');
INSERT INTO `sys_area` VALUES ('140823', '闻喜县', '140800');
INSERT INTO `sys_area` VALUES ('140824', '稷山县', '140800');
INSERT INTO `sys_area` VALUES ('140825', '新绛县', '140800');
INSERT INTO `sys_area` VALUES ('140826', '绛县', '140800');
INSERT INTO `sys_area` VALUES ('140827', '垣曲县', '140800');
INSERT INTO `sys_area` VALUES ('140828', '夏县', '140800');
INSERT INTO `sys_area` VALUES ('140829', '平陆县', '140800');
INSERT INTO `sys_area` VALUES ('140830', '芮城县', '140800');
INSERT INTO `sys_area` VALUES ('140881', '永济市', '140800');
INSERT INTO `sys_area` VALUES ('140882', '河津市', '140800');
INSERT INTO `sys_area` VALUES ('140900', '忻州市', '140000');
INSERT INTO `sys_area` VALUES ('140901', '市辖区', '140900');
INSERT INTO `sys_area` VALUES ('140902', '忻府区', '140900');
INSERT INTO `sys_area` VALUES ('140921', '定襄县', '140900');
INSERT INTO `sys_area` VALUES ('140922', '五台县', '140900');
INSERT INTO `sys_area` VALUES ('140923', '代县', '140900');
INSERT INTO `sys_area` VALUES ('140924', '繁峙县', '140900');
INSERT INTO `sys_area` VALUES ('140925', '宁武县', '140900');
INSERT INTO `sys_area` VALUES ('140926', '静乐县', '140900');
INSERT INTO `sys_area` VALUES ('140927', '神池县', '140900');
INSERT INTO `sys_area` VALUES ('140928', '五寨县', '140900');
INSERT INTO `sys_area` VALUES ('140929', '岢岚县', '140900');
INSERT INTO `sys_area` VALUES ('140930', '河曲县', '140900');
INSERT INTO `sys_area` VALUES ('140931', '保德县', '140900');
INSERT INTO `sys_area` VALUES ('140932', '偏关县', '140900');
INSERT INTO `sys_area` VALUES ('140981', '原平市', '140900');
INSERT INTO `sys_area` VALUES ('141000', '临汾市', '140000');
INSERT INTO `sys_area` VALUES ('141001', '市辖区', '141000');
INSERT INTO `sys_area` VALUES ('141002', '尧都区', '141000');
INSERT INTO `sys_area` VALUES ('141021', '曲沃县', '141000');
INSERT INTO `sys_area` VALUES ('141022', '翼城县', '141000');
INSERT INTO `sys_area` VALUES ('141023', '襄汾县', '141000');
INSERT INTO `sys_area` VALUES ('141024', '洪洞县', '141000');
INSERT INTO `sys_area` VALUES ('141025', '古县', '141000');
INSERT INTO `sys_area` VALUES ('141026', '安泽县', '141000');
INSERT INTO `sys_area` VALUES ('141027', '浮山县', '141000');
INSERT INTO `sys_area` VALUES ('141028', '吉县', '141000');
INSERT INTO `sys_area` VALUES ('141029', '乡宁县', '141000');
INSERT INTO `sys_area` VALUES ('141030', '大宁县', '141000');
INSERT INTO `sys_area` VALUES ('141031', '隰县', '141000');
INSERT INTO `sys_area` VALUES ('141032', '永和县', '141000');
INSERT INTO `sys_area` VALUES ('141033', '蒲县', '141000');
INSERT INTO `sys_area` VALUES ('141034', '汾西县', '141000');
INSERT INTO `sys_area` VALUES ('141081', '侯马市', '141000');
INSERT INTO `sys_area` VALUES ('141082', '霍州市', '141000');
INSERT INTO `sys_area` VALUES ('141100', '吕梁市', '140000');
INSERT INTO `sys_area` VALUES ('141101', '市辖区', '141100');
INSERT INTO `sys_area` VALUES ('141102', '离石区', '141100');
INSERT INTO `sys_area` VALUES ('141121', '文水县', '141100');
INSERT INTO `sys_area` VALUES ('141122', '交城县', '141100');
INSERT INTO `sys_area` VALUES ('141123', '兴县', '141100');
INSERT INTO `sys_area` VALUES ('141124', '临县', '141100');
INSERT INTO `sys_area` VALUES ('141125', '柳林县', '141100');
INSERT INTO `sys_area` VALUES ('141126', '石楼县', '141100');
INSERT INTO `sys_area` VALUES ('141127', '岚县', '141100');
INSERT INTO `sys_area` VALUES ('141128', '方山县', '141100');
INSERT INTO `sys_area` VALUES ('141129', '中阳县', '141100');
INSERT INTO `sys_area` VALUES ('141130', '交口县', '141100');
INSERT INTO `sys_area` VALUES ('141181', '孝义市', '141100');
INSERT INTO `sys_area` VALUES ('141182', '汾阳市', '141100');
INSERT INTO `sys_area` VALUES ('150000', '内蒙古自治区', null);
INSERT INTO `sys_area` VALUES ('150100', '呼和浩特市', '150000');
INSERT INTO `sys_area` VALUES ('150101', '市辖区', '150100');
INSERT INTO `sys_area` VALUES ('150102', '新城区', '150100');
INSERT INTO `sys_area` VALUES ('150103', '回民区', '150100');
INSERT INTO `sys_area` VALUES ('150104', '玉泉区', '150100');
INSERT INTO `sys_area` VALUES ('150105', '赛罕区', '150100');
INSERT INTO `sys_area` VALUES ('150121', '土默特左旗', '150100');
INSERT INTO `sys_area` VALUES ('150122', '托克托县', '150100');
INSERT INTO `sys_area` VALUES ('150123', '和林格尔县', '150100');
INSERT INTO `sys_area` VALUES ('150124', '清水河县', '150100');
INSERT INTO `sys_area` VALUES ('150125', '武川县', '150100');
INSERT INTO `sys_area` VALUES ('150200', '包头市', '150000');
INSERT INTO `sys_area` VALUES ('150201', '市辖区', '150200');
INSERT INTO `sys_area` VALUES ('150202', '东河区', '150200');
INSERT INTO `sys_area` VALUES ('150203', '昆都仑区', '150200');
INSERT INTO `sys_area` VALUES ('150204', '青山区', '150200');
INSERT INTO `sys_area` VALUES ('150205', '石拐区', '150200');
INSERT INTO `sys_area` VALUES ('150206', '白云鄂博矿区', '150200');
INSERT INTO `sys_area` VALUES ('150207', '九原区', '150200');
INSERT INTO `sys_area` VALUES ('150221', '土默特右旗', '150200');
INSERT INTO `sys_area` VALUES ('150222', '固阳县', '150200');
INSERT INTO `sys_area` VALUES ('150223', '达尔罕茂明安联合旗', '150200');
INSERT INTO `sys_area` VALUES ('150300', '乌海市', '150000');
INSERT INTO `sys_area` VALUES ('150301', '市辖区', '150300');
INSERT INTO `sys_area` VALUES ('150302', '海勃湾区', '150300');
INSERT INTO `sys_area` VALUES ('150303', '海南区', '150300');
INSERT INTO `sys_area` VALUES ('150304', '乌达区', '150300');
INSERT INTO `sys_area` VALUES ('150400', '赤峰市', '150000');
INSERT INTO `sys_area` VALUES ('150401', '市辖区', '150400');
INSERT INTO `sys_area` VALUES ('150402', '红山区', '150400');
INSERT INTO `sys_area` VALUES ('150403', '元宝山区', '150400');
INSERT INTO `sys_area` VALUES ('150404', '松山区', '150400');
INSERT INTO `sys_area` VALUES ('150421', '阿鲁科尔沁旗', '150400');
INSERT INTO `sys_area` VALUES ('150422', '巴林左旗', '150400');
INSERT INTO `sys_area` VALUES ('150423', '巴林右旗', '150400');
INSERT INTO `sys_area` VALUES ('150424', '林西县', '150400');
INSERT INTO `sys_area` VALUES ('150425', '克什克腾旗', '150400');
INSERT INTO `sys_area` VALUES ('150426', '翁牛特旗', '150400');
INSERT INTO `sys_area` VALUES ('150428', '喀喇沁旗', '150400');
INSERT INTO `sys_area` VALUES ('150429', '宁城县', '150400');
INSERT INTO `sys_area` VALUES ('150430', '敖汉旗', '150400');
INSERT INTO `sys_area` VALUES ('150500', '通辽市', '150000');
INSERT INTO `sys_area` VALUES ('150501', '市辖区', '150500');
INSERT INTO `sys_area` VALUES ('150502', '科尔沁区', '150500');
INSERT INTO `sys_area` VALUES ('150521', '科尔沁左翼中旗', '150500');
INSERT INTO `sys_area` VALUES ('150522', '科尔沁左翼后旗', '150500');
INSERT INTO `sys_area` VALUES ('150523', '开鲁县', '150500');
INSERT INTO `sys_area` VALUES ('150524', '库伦旗', '150500');
INSERT INTO `sys_area` VALUES ('150525', '奈曼旗', '150500');
INSERT INTO `sys_area` VALUES ('150526', '扎鲁特旗', '150500');
INSERT INTO `sys_area` VALUES ('150581', '霍林郭勒市', '150500');
INSERT INTO `sys_area` VALUES ('150600', '鄂尔多斯市', '150000');
INSERT INTO `sys_area` VALUES ('150601', '市辖区', '150600');
INSERT INTO `sys_area` VALUES ('150602', '东胜区', '150600');
INSERT INTO `sys_area` VALUES ('150603', '康巴什区', '150600');
INSERT INTO `sys_area` VALUES ('150621', '达拉特旗', '150600');
INSERT INTO `sys_area` VALUES ('150622', '准格尔旗', '150600');
INSERT INTO `sys_area` VALUES ('150623', '鄂托克前旗', '150600');
INSERT INTO `sys_area` VALUES ('150624', '鄂托克旗', '150600');
INSERT INTO `sys_area` VALUES ('150625', '杭锦旗', '150600');
INSERT INTO `sys_area` VALUES ('150626', '乌审旗', '150600');
INSERT INTO `sys_area` VALUES ('150627', '伊金霍洛旗', '150600');
INSERT INTO `sys_area` VALUES ('150700', '呼伦贝尔市', '150000');
INSERT INTO `sys_area` VALUES ('150701', '市辖区', '150700');
INSERT INTO `sys_area` VALUES ('150702', '海拉尔区', '150700');
INSERT INTO `sys_area` VALUES ('150703', '扎赉诺尔区', '150700');
INSERT INTO `sys_area` VALUES ('150721', '阿荣旗', '150700');
INSERT INTO `sys_area` VALUES ('150722', '莫力达瓦达斡尔族自治旗', '150700');
INSERT INTO `sys_area` VALUES ('150723', '鄂伦春自治旗', '150700');
INSERT INTO `sys_area` VALUES ('150724', '鄂温克族自治旗', '150700');
INSERT INTO `sys_area` VALUES ('150725', '陈巴尔虎旗', '150700');
INSERT INTO `sys_area` VALUES ('150726', '新巴尔虎左旗', '150700');
INSERT INTO `sys_area` VALUES ('150727', '新巴尔虎右旗', '150700');
INSERT INTO `sys_area` VALUES ('150781', '满洲里市', '150700');
INSERT INTO `sys_area` VALUES ('150782', '牙克石市', '150700');
INSERT INTO `sys_area` VALUES ('150783', '扎兰屯市', '150700');
INSERT INTO `sys_area` VALUES ('150784', '额尔古纳市', '150700');
INSERT INTO `sys_area` VALUES ('150785', '根河市', '150700');
INSERT INTO `sys_area` VALUES ('150800', '巴彦淖尔市', '150000');
INSERT INTO `sys_area` VALUES ('150801', '市辖区', '150800');
INSERT INTO `sys_area` VALUES ('150802', '临河区', '150800');
INSERT INTO `sys_area` VALUES ('150821', '五原县', '150800');
INSERT INTO `sys_area` VALUES ('150822', '磴口县', '150800');
INSERT INTO `sys_area` VALUES ('150823', '乌拉特前旗', '150800');
INSERT INTO `sys_area` VALUES ('150824', '乌拉特中旗', '150800');
INSERT INTO `sys_area` VALUES ('150825', '乌拉特后旗', '150800');
INSERT INTO `sys_area` VALUES ('150826', '杭锦后旗', '150800');
INSERT INTO `sys_area` VALUES ('150900', '乌兰察布市', '150000');
INSERT INTO `sys_area` VALUES ('150901', '市辖区', '150900');
INSERT INTO `sys_area` VALUES ('150902', '集宁区', '150900');
INSERT INTO `sys_area` VALUES ('150921', '卓资县', '150900');
INSERT INTO `sys_area` VALUES ('150922', '化德县', '150900');
INSERT INTO `sys_area` VALUES ('150923', '商都县', '150900');
INSERT INTO `sys_area` VALUES ('150924', '兴和县', '150900');
INSERT INTO `sys_area` VALUES ('150925', '凉城县', '150900');
INSERT INTO `sys_area` VALUES ('150926', '察哈尔右翼前旗', '150900');
INSERT INTO `sys_area` VALUES ('150927', '察哈尔右翼中旗', '150900');
INSERT INTO `sys_area` VALUES ('150928', '察哈尔右翼后旗', '150900');
INSERT INTO `sys_area` VALUES ('150929', '四子王旗', '150900');
INSERT INTO `sys_area` VALUES ('150981', '丰镇市', '150900');
INSERT INTO `sys_area` VALUES ('152200', '兴安盟', '150000');
INSERT INTO `sys_area` VALUES ('152201', '乌兰浩特市', '152200');
INSERT INTO `sys_area` VALUES ('152202', '阿尔山市', '152200');
INSERT INTO `sys_area` VALUES ('152221', '科尔沁右翼前旗', '152200');
INSERT INTO `sys_area` VALUES ('152222', '科尔沁右翼中旗', '152200');
INSERT INTO `sys_area` VALUES ('152223', '扎赉特旗', '152200');
INSERT INTO `sys_area` VALUES ('152224', '突泉县', '152200');
INSERT INTO `sys_area` VALUES ('152500', '锡林郭勒盟', '150000');
INSERT INTO `sys_area` VALUES ('152501', '二连浩特市', '152500');
INSERT INTO `sys_area` VALUES ('152502', '锡林浩特市', '152500');
INSERT INTO `sys_area` VALUES ('152522', '阿巴嘎旗', '152500');
INSERT INTO `sys_area` VALUES ('152523', '苏尼特左旗', '152500');
INSERT INTO `sys_area` VALUES ('152524', '苏尼特右旗', '152500');
INSERT INTO `sys_area` VALUES ('152525', '东乌珠穆沁旗', '152500');
INSERT INTO `sys_area` VALUES ('152526', '西乌珠穆沁旗', '152500');
INSERT INTO `sys_area` VALUES ('152527', '太仆寺旗', '152500');
INSERT INTO `sys_area` VALUES ('152528', '镶黄旗', '152500');
INSERT INTO `sys_area` VALUES ('152529', '正镶白旗', '152500');
INSERT INTO `sys_area` VALUES ('152530', '正蓝旗', '152500');
INSERT INTO `sys_area` VALUES ('152531', '多伦县', '152500');
INSERT INTO `sys_area` VALUES ('152900', '阿拉善盟', '150000');
INSERT INTO `sys_area` VALUES ('152921', '阿拉善左旗', '152900');
INSERT INTO `sys_area` VALUES ('152922', '阿拉善右旗', '152900');
INSERT INTO `sys_area` VALUES ('152923', '额济纳旗', '152900');
INSERT INTO `sys_area` VALUES ('210000', '辽宁省', null);
INSERT INTO `sys_area` VALUES ('210100', '沈阳市', '210000');
INSERT INTO `sys_area` VALUES ('210101', '市辖区', '210100');
INSERT INTO `sys_area` VALUES ('210102', '和平区', '210100');
INSERT INTO `sys_area` VALUES ('210103', '沈河区', '210100');
INSERT INTO `sys_area` VALUES ('210104', '大东区', '210100');
INSERT INTO `sys_area` VALUES ('210105', '皇姑区', '210100');
INSERT INTO `sys_area` VALUES ('210106', '铁西区', '210100');
INSERT INTO `sys_area` VALUES ('210111', '苏家屯区', '210100');
INSERT INTO `sys_area` VALUES ('210112', '浑南区', '210100');
INSERT INTO `sys_area` VALUES ('210113', '沈北新区', '210100');
INSERT INTO `sys_area` VALUES ('210114', '于洪区', '210100');
INSERT INTO `sys_area` VALUES ('210115', '辽中区', '210100');
INSERT INTO `sys_area` VALUES ('210123', '康平县', '210100');
INSERT INTO `sys_area` VALUES ('210124', '法库县', '210100');
INSERT INTO `sys_area` VALUES ('210181', '新民市', '210100');
INSERT INTO `sys_area` VALUES ('210200', '大连市', '210000');
INSERT INTO `sys_area` VALUES ('210201', '市辖区', '210200');
INSERT INTO `sys_area` VALUES ('210202', '中山区', '210200');
INSERT INTO `sys_area` VALUES ('210203', '西岗区', '210200');
INSERT INTO `sys_area` VALUES ('210204', '沙河口区', '210200');
INSERT INTO `sys_area` VALUES ('210211', '甘井子区', '210200');
INSERT INTO `sys_area` VALUES ('210212', '旅顺口区', '210200');
INSERT INTO `sys_area` VALUES ('210213', '金州区', '210200');
INSERT INTO `sys_area` VALUES ('210214', '普兰店区', '210200');
INSERT INTO `sys_area` VALUES ('210224', '长海县', '210200');
INSERT INTO `sys_area` VALUES ('210281', '瓦房店市', '210200');
INSERT INTO `sys_area` VALUES ('210283', '庄河市', '210200');
INSERT INTO `sys_area` VALUES ('210300', '鞍山市', '210000');
INSERT INTO `sys_area` VALUES ('210301', '市辖区', '210300');
INSERT INTO `sys_area` VALUES ('210302', '铁东区', '210300');
INSERT INTO `sys_area` VALUES ('210303', '铁西区', '210300');
INSERT INTO `sys_area` VALUES ('210304', '立山区', '210300');
INSERT INTO `sys_area` VALUES ('210311', '千山区', '210300');
INSERT INTO `sys_area` VALUES ('210321', '台安县', '210300');
INSERT INTO `sys_area` VALUES ('210323', '岫岩满族自治县', '210300');
INSERT INTO `sys_area` VALUES ('210381', '海城市', '210300');
INSERT INTO `sys_area` VALUES ('210400', '抚顺市', '210000');
INSERT INTO `sys_area` VALUES ('210401', '市辖区', '210400');
INSERT INTO `sys_area` VALUES ('210402', '新抚区', '210400');
INSERT INTO `sys_area` VALUES ('210403', '东洲区', '210400');
INSERT INTO `sys_area` VALUES ('210404', '望花区', '210400');
INSERT INTO `sys_area` VALUES ('210411', '顺城区', '210400');
INSERT INTO `sys_area` VALUES ('210421', '抚顺县', '210400');
INSERT INTO `sys_area` VALUES ('210422', '新宾满族自治县', '210400');
INSERT INTO `sys_area` VALUES ('210423', '清原满族自治县', '210400');
INSERT INTO `sys_area` VALUES ('210500', '本溪市', '210000');
INSERT INTO `sys_area` VALUES ('210501', '市辖区', '210500');
INSERT INTO `sys_area` VALUES ('210502', '平山区', '210500');
INSERT INTO `sys_area` VALUES ('210503', '溪湖区', '210500');
INSERT INTO `sys_area` VALUES ('210504', '明山区', '210500');
INSERT INTO `sys_area` VALUES ('210505', '南芬区', '210500');
INSERT INTO `sys_area` VALUES ('210521', '本溪满族自治县', '210500');
INSERT INTO `sys_area` VALUES ('210522', '桓仁满族自治县', '210500');
INSERT INTO `sys_area` VALUES ('210600', '丹东市', '210000');
INSERT INTO `sys_area` VALUES ('210601', '市辖区', '210600');
INSERT INTO `sys_area` VALUES ('210602', '元宝区', '210600');
INSERT INTO `sys_area` VALUES ('210603', '振兴区', '210600');
INSERT INTO `sys_area` VALUES ('210604', '振安区', '210600');
INSERT INTO `sys_area` VALUES ('210624', '宽甸满族自治县', '210600');
INSERT INTO `sys_area` VALUES ('210681', '东港市', '210600');
INSERT INTO `sys_area` VALUES ('210682', '凤城市', '210600');
INSERT INTO `sys_area` VALUES ('210700', '锦州市', '210000');
INSERT INTO `sys_area` VALUES ('210701', '市辖区', '210700');
INSERT INTO `sys_area` VALUES ('210702', '古塔区', '210700');
INSERT INTO `sys_area` VALUES ('210703', '凌河区', '210700');
INSERT INTO `sys_area` VALUES ('210711', '太和区', '210700');
INSERT INTO `sys_area` VALUES ('210726', '黑山县', '210700');
INSERT INTO `sys_area` VALUES ('210727', '义县', '210700');
INSERT INTO `sys_area` VALUES ('210781', '凌海市', '210700');
INSERT INTO `sys_area` VALUES ('210782', '北镇市', '210700');
INSERT INTO `sys_area` VALUES ('210800', '营口市', '210000');
INSERT INTO `sys_area` VALUES ('210801', '市辖区', '210800');
INSERT INTO `sys_area` VALUES ('210802', '站前区', '210800');
INSERT INTO `sys_area` VALUES ('210803', '西市区', '210800');
INSERT INTO `sys_area` VALUES ('210804', '鲅鱼圈区', '210800');
INSERT INTO `sys_area` VALUES ('210811', '老边区', '210800');
INSERT INTO `sys_area` VALUES ('210881', '盖州市', '210800');
INSERT INTO `sys_area` VALUES ('210882', '大石桥市', '210800');
INSERT INTO `sys_area` VALUES ('210900', '阜新市', '210000');
INSERT INTO `sys_area` VALUES ('210901', '市辖区', '210900');
INSERT INTO `sys_area` VALUES ('210902', '海州区', '210900');
INSERT INTO `sys_area` VALUES ('210903', '新邱区', '210900');
INSERT INTO `sys_area` VALUES ('210904', '太平区', '210900');
INSERT INTO `sys_area` VALUES ('210905', '清河门区', '210900');
INSERT INTO `sys_area` VALUES ('210911', '细河区', '210900');
INSERT INTO `sys_area` VALUES ('210921', '阜新蒙古族自治县', '210900');
INSERT INTO `sys_area` VALUES ('210922', '彰武县', '210900');
INSERT INTO `sys_area` VALUES ('211000', '辽阳市', '210000');
INSERT INTO `sys_area` VALUES ('211001', '市辖区', '211000');
INSERT INTO `sys_area` VALUES ('211002', '白塔区', '211000');
INSERT INTO `sys_area` VALUES ('211003', '文圣区', '211000');
INSERT INTO `sys_area` VALUES ('211004', '宏伟区', '211000');
INSERT INTO `sys_area` VALUES ('211005', '弓长岭区', '211000');
INSERT INTO `sys_area` VALUES ('211011', '太子河区', '211000');
INSERT INTO `sys_area` VALUES ('211021', '辽阳县', '211000');
INSERT INTO `sys_area` VALUES ('211081', '灯塔市', '211000');
INSERT INTO `sys_area` VALUES ('211100', '盘锦市', '210000');
INSERT INTO `sys_area` VALUES ('211101', '市辖区', '211100');
INSERT INTO `sys_area` VALUES ('211102', '双台子区', '211100');
INSERT INTO `sys_area` VALUES ('211103', '兴隆台区', '211100');
INSERT INTO `sys_area` VALUES ('211104', '大洼区', '211100');
INSERT INTO `sys_area` VALUES ('211122', '盘山县', '211100');
INSERT INTO `sys_area` VALUES ('211200', '铁岭市', '210000');
INSERT INTO `sys_area` VALUES ('211201', '市辖区', '211200');
INSERT INTO `sys_area` VALUES ('211202', '银州区', '211200');
INSERT INTO `sys_area` VALUES ('211204', '清河区', '211200');
INSERT INTO `sys_area` VALUES ('211221', '铁岭县', '211200');
INSERT INTO `sys_area` VALUES ('211223', '西丰县', '211200');
INSERT INTO `sys_area` VALUES ('211224', '昌图县', '211200');
INSERT INTO `sys_area` VALUES ('211281', '调兵山市', '211200');
INSERT INTO `sys_area` VALUES ('211282', '开原市', '211200');
INSERT INTO `sys_area` VALUES ('211300', '朝阳市', '210000');
INSERT INTO `sys_area` VALUES ('211301', '市辖区', '211300');
INSERT INTO `sys_area` VALUES ('211302', '双塔区', '211300');
INSERT INTO `sys_area` VALUES ('211303', '龙城区', '211300');
INSERT INTO `sys_area` VALUES ('211321', '朝阳县', '211300');
INSERT INTO `sys_area` VALUES ('211322', '建平县', '211300');
INSERT INTO `sys_area` VALUES ('211324', '喀喇沁左翼蒙古族自治县', '211300');
INSERT INTO `sys_area` VALUES ('211381', '北票市', '211300');
INSERT INTO `sys_area` VALUES ('211382', '凌源市', '211300');
INSERT INTO `sys_area` VALUES ('211400', '葫芦岛市', '210000');
INSERT INTO `sys_area` VALUES ('211401', '市辖区', '211400');
INSERT INTO `sys_area` VALUES ('211402', '连山区', '211400');
INSERT INTO `sys_area` VALUES ('211403', '龙港区', '211400');
INSERT INTO `sys_area` VALUES ('211404', '南票区', '211400');
INSERT INTO `sys_area` VALUES ('211421', '绥中县', '211400');
INSERT INTO `sys_area` VALUES ('211422', '建昌县', '211400');
INSERT INTO `sys_area` VALUES ('211481', '兴城市', '211400');
INSERT INTO `sys_area` VALUES ('220000', '吉林省', null);
INSERT INTO `sys_area` VALUES ('220100', '长春市', '220000');
INSERT INTO `sys_area` VALUES ('220101', '市辖区', '220100');
INSERT INTO `sys_area` VALUES ('220102', '南关区', '220100');
INSERT INTO `sys_area` VALUES ('220103', '宽城区', '220100');
INSERT INTO `sys_area` VALUES ('220104', '朝阳区', '220100');
INSERT INTO `sys_area` VALUES ('220105', '二道区', '220100');
INSERT INTO `sys_area` VALUES ('220106', '绿园区', '220100');
INSERT INTO `sys_area` VALUES ('220112', '双阳区', '220100');
INSERT INTO `sys_area` VALUES ('220113', '九台区', '220100');
INSERT INTO `sys_area` VALUES ('220122', '农安县', '220100');
INSERT INTO `sys_area` VALUES ('220182', '榆树市', '220100');
INSERT INTO `sys_area` VALUES ('220183', '德惠市', '220100');
INSERT INTO `sys_area` VALUES ('220200', '吉林市', '220000');
INSERT INTO `sys_area` VALUES ('220201', '市辖区', '220200');
INSERT INTO `sys_area` VALUES ('220202', '昌邑区', '220200');
INSERT INTO `sys_area` VALUES ('220203', '龙潭区', '220200');
INSERT INTO `sys_area` VALUES ('220204', '船营区', '220200');
INSERT INTO `sys_area` VALUES ('220211', '丰满区', '220200');
INSERT INTO `sys_area` VALUES ('220221', '永吉县', '220200');
INSERT INTO `sys_area` VALUES ('220281', '蛟河市', '220200');
INSERT INTO `sys_area` VALUES ('220282', '桦甸市', '220200');
INSERT INTO `sys_area` VALUES ('220283', '舒兰市', '220200');
INSERT INTO `sys_area` VALUES ('220284', '磐石市', '220200');
INSERT INTO `sys_area` VALUES ('220300', '四平市', '220000');
INSERT INTO `sys_area` VALUES ('220301', '市辖区', '220300');
INSERT INTO `sys_area` VALUES ('220302', '铁西区', '220300');
INSERT INTO `sys_area` VALUES ('220303', '铁东区', '220300');
INSERT INTO `sys_area` VALUES ('220322', '梨树县', '220300');
INSERT INTO `sys_area` VALUES ('220323', '伊通满族自治县', '220300');
INSERT INTO `sys_area` VALUES ('220381', '公主岭市', '220300');
INSERT INTO `sys_area` VALUES ('220382', '双辽市', '220300');
INSERT INTO `sys_area` VALUES ('220400', '辽源市', '220000');
INSERT INTO `sys_area` VALUES ('220401', '市辖区', '220400');
INSERT INTO `sys_area` VALUES ('220402', '龙山区', '220400');
INSERT INTO `sys_area` VALUES ('220403', '西安区', '220400');
INSERT INTO `sys_area` VALUES ('220421', '东丰县', '220400');
INSERT INTO `sys_area` VALUES ('220422', '东辽县', '220400');
INSERT INTO `sys_area` VALUES ('220500', '通化市', '220000');
INSERT INTO `sys_area` VALUES ('220501', '市辖区', '220500');
INSERT INTO `sys_area` VALUES ('220502', '东昌区', '220500');
INSERT INTO `sys_area` VALUES ('220503', '二道江区', '220500');
INSERT INTO `sys_area` VALUES ('220521', '通化县', '220500');
INSERT INTO `sys_area` VALUES ('220523', '辉南县', '220500');
INSERT INTO `sys_area` VALUES ('220524', '柳河县', '220500');
INSERT INTO `sys_area` VALUES ('220581', '梅河口市', '220500');
INSERT INTO `sys_area` VALUES ('220582', '集安市', '220500');
INSERT INTO `sys_area` VALUES ('220600', '白山市', '220000');
INSERT INTO `sys_area` VALUES ('220601', '市辖区', '220600');
INSERT INTO `sys_area` VALUES ('220602', '浑江区', '220600');
INSERT INTO `sys_area` VALUES ('220605', '江源区', '220600');
INSERT INTO `sys_area` VALUES ('220621', '抚松县', '220600');
INSERT INTO `sys_area` VALUES ('220622', '靖宇县', '220600');
INSERT INTO `sys_area` VALUES ('220623', '长白朝鲜族自治县', '220600');
INSERT INTO `sys_area` VALUES ('220681', '临江市', '220600');
INSERT INTO `sys_area` VALUES ('220700', '松原市', '220000');
INSERT INTO `sys_area` VALUES ('220701', '市辖区', '220700');
INSERT INTO `sys_area` VALUES ('220702', '宁江区', '220700');
INSERT INTO `sys_area` VALUES ('220721', '前郭尔罗斯蒙古族自治县', '220700');
INSERT INTO `sys_area` VALUES ('220722', '长岭县', '220700');
INSERT INTO `sys_area` VALUES ('220723', '乾安县', '220700');
INSERT INTO `sys_area` VALUES ('220781', '扶余市', '220700');
INSERT INTO `sys_area` VALUES ('220800', '白城市', '220000');
INSERT INTO `sys_area` VALUES ('220801', '市辖区', '220800');
INSERT INTO `sys_area` VALUES ('220802', '洮北区', '220800');
INSERT INTO `sys_area` VALUES ('220821', '镇赉县', '220800');
INSERT INTO `sys_area` VALUES ('220822', '通榆县', '220800');
INSERT INTO `sys_area` VALUES ('220881', '洮南市', '220800');
INSERT INTO `sys_area` VALUES ('220882', '大安市', '220800');
INSERT INTO `sys_area` VALUES ('222400', '延边朝鲜族自治州', '220000');
INSERT INTO `sys_area` VALUES ('222401', '延吉市', '222400');
INSERT INTO `sys_area` VALUES ('222402', '图们市', '222400');
INSERT INTO `sys_area` VALUES ('222403', '敦化市', '222400');
INSERT INTO `sys_area` VALUES ('222404', '珲春市', '222400');
INSERT INTO `sys_area` VALUES ('222405', '龙井市', '222400');
INSERT INTO `sys_area` VALUES ('222406', '和龙市', '222400');
INSERT INTO `sys_area` VALUES ('222424', '汪清县', '222400');
INSERT INTO `sys_area` VALUES ('222426', '安图县', '222400');
INSERT INTO `sys_area` VALUES ('230000', '黑龙江省', null);
INSERT INTO `sys_area` VALUES ('230100', '哈尔滨市', '230000');
INSERT INTO `sys_area` VALUES ('230101', '市辖区', '230100');
INSERT INTO `sys_area` VALUES ('230102', '道里区', '230100');
INSERT INTO `sys_area` VALUES ('230103', '南岗区', '230100');
INSERT INTO `sys_area` VALUES ('230104', '道外区', '230100');
INSERT INTO `sys_area` VALUES ('230108', '平房区', '230100');
INSERT INTO `sys_area` VALUES ('230109', '松北区', '230100');
INSERT INTO `sys_area` VALUES ('230110', '香坊区', '230100');
INSERT INTO `sys_area` VALUES ('230111', '呼兰区', '230100');
INSERT INTO `sys_area` VALUES ('230112', '阿城区', '230100');
INSERT INTO `sys_area` VALUES ('230113', '双城区', '230100');
INSERT INTO `sys_area` VALUES ('230123', '依兰县', '230100');
INSERT INTO `sys_area` VALUES ('230124', '方正县', '230100');
INSERT INTO `sys_area` VALUES ('230125', '宾县', '230100');
INSERT INTO `sys_area` VALUES ('230126', '巴彦县', '230100');
INSERT INTO `sys_area` VALUES ('230127', '木兰县', '230100');
INSERT INTO `sys_area` VALUES ('230128', '通河县', '230100');
INSERT INTO `sys_area` VALUES ('230129', '延寿县', '230100');
INSERT INTO `sys_area` VALUES ('230183', '尚志市', '230100');
INSERT INTO `sys_area` VALUES ('230184', '五常市', '230100');
INSERT INTO `sys_area` VALUES ('230200', '齐齐哈尔市', '230000');
INSERT INTO `sys_area` VALUES ('230201', '市辖区', '230200');
INSERT INTO `sys_area` VALUES ('230202', '龙沙区', '230200');
INSERT INTO `sys_area` VALUES ('230203', '建华区', '230200');
INSERT INTO `sys_area` VALUES ('230204', '铁锋区', '230200');
INSERT INTO `sys_area` VALUES ('230205', '昂昂溪区', '230200');
INSERT INTO `sys_area` VALUES ('230206', '富拉尔基区', '230200');
INSERT INTO `sys_area` VALUES ('230207', '碾子山区', '230200');
INSERT INTO `sys_area` VALUES ('230208', '梅里斯达斡尔族区', '230200');
INSERT INTO `sys_area` VALUES ('230221', '龙江县', '230200');
INSERT INTO `sys_area` VALUES ('230223', '依安县', '230200');
INSERT INTO `sys_area` VALUES ('230224', '泰来县', '230200');
INSERT INTO `sys_area` VALUES ('230225', '甘南县', '230200');
INSERT INTO `sys_area` VALUES ('230227', '富裕县', '230200');
INSERT INTO `sys_area` VALUES ('230229', '克山县', '230200');
INSERT INTO `sys_area` VALUES ('230230', '克东县', '230200');
INSERT INTO `sys_area` VALUES ('230231', '拜泉县', '230200');
INSERT INTO `sys_area` VALUES ('230281', '讷河市', '230200');
INSERT INTO `sys_area` VALUES ('230300', '鸡西市', '230000');
INSERT INTO `sys_area` VALUES ('230301', '市辖区', '230300');
INSERT INTO `sys_area` VALUES ('230302', '鸡冠区', '230300');
INSERT INTO `sys_area` VALUES ('230303', '恒山区', '230300');
INSERT INTO `sys_area` VALUES ('230304', '滴道区', '230300');
INSERT INTO `sys_area` VALUES ('230305', '梨树区', '230300');
INSERT INTO `sys_area` VALUES ('230306', '城子河区', '230300');
INSERT INTO `sys_area` VALUES ('230307', '麻山区', '230300');
INSERT INTO `sys_area` VALUES ('230321', '鸡东县', '230300');
INSERT INTO `sys_area` VALUES ('230381', '虎林市', '230300');
INSERT INTO `sys_area` VALUES ('230382', '密山市', '230300');
INSERT INTO `sys_area` VALUES ('230400', '鹤岗市', '230000');
INSERT INTO `sys_area` VALUES ('230401', '市辖区', '230400');
INSERT INTO `sys_area` VALUES ('230402', '向阳区', '230400');
INSERT INTO `sys_area` VALUES ('230403', '工农区', '230400');
INSERT INTO `sys_area` VALUES ('230404', '南山区', '230400');
INSERT INTO `sys_area` VALUES ('230405', '兴安区', '230400');
INSERT INTO `sys_area` VALUES ('230406', '东山区', '230400');
INSERT INTO `sys_area` VALUES ('230407', '兴山区', '230400');
INSERT INTO `sys_area` VALUES ('230421', '萝北县', '230400');
INSERT INTO `sys_area` VALUES ('230422', '绥滨县', '230400');
INSERT INTO `sys_area` VALUES ('230500', '双鸭山市', '230000');
INSERT INTO `sys_area` VALUES ('230501', '市辖区', '230500');
INSERT INTO `sys_area` VALUES ('230502', '尖山区', '230500');
INSERT INTO `sys_area` VALUES ('230503', '岭东区', '230500');
INSERT INTO `sys_area` VALUES ('230505', '四方台区', '230500');
INSERT INTO `sys_area` VALUES ('230506', '宝山区', '230500');
INSERT INTO `sys_area` VALUES ('230521', '集贤县', '230500');
INSERT INTO `sys_area` VALUES ('230522', '友谊县', '230500');
INSERT INTO `sys_area` VALUES ('230523', '宝清县', '230500');
INSERT INTO `sys_area` VALUES ('230524', '饶河县', '230500');
INSERT INTO `sys_area` VALUES ('230600', '大庆市', '230000');
INSERT INTO `sys_area` VALUES ('230601', '市辖区', '230600');
INSERT INTO `sys_area` VALUES ('230602', '萨尔图区', '230600');
INSERT INTO `sys_area` VALUES ('230603', '龙凤区', '230600');
INSERT INTO `sys_area` VALUES ('230604', '让胡路区', '230600');
INSERT INTO `sys_area` VALUES ('230605', '红岗区', '230600');
INSERT INTO `sys_area` VALUES ('230606', '大同区', '230600');
INSERT INTO `sys_area` VALUES ('230621', '肇州县', '230600');
INSERT INTO `sys_area` VALUES ('230622', '肇源县', '230600');
INSERT INTO `sys_area` VALUES ('230623', '林甸县', '230600');
INSERT INTO `sys_area` VALUES ('230624', '杜尔伯特蒙古族自治县', '230600');
INSERT INTO `sys_area` VALUES ('230700', '伊春市', '230000');
INSERT INTO `sys_area` VALUES ('230701', '市辖区', '230700');
INSERT INTO `sys_area` VALUES ('230702', '伊春区', '230700');
INSERT INTO `sys_area` VALUES ('230703', '南岔区', '230700');
INSERT INTO `sys_area` VALUES ('230704', '友好区', '230700');
INSERT INTO `sys_area` VALUES ('230705', '西林区', '230700');
INSERT INTO `sys_area` VALUES ('230706', '翠峦区', '230700');
INSERT INTO `sys_area` VALUES ('230707', '新青区', '230700');
INSERT INTO `sys_area` VALUES ('230708', '美溪区', '230700');
INSERT INTO `sys_area` VALUES ('230709', '金山屯区', '230700');
INSERT INTO `sys_area` VALUES ('230710', '五营区', '230700');
INSERT INTO `sys_area` VALUES ('230711', '乌马河区', '230700');
INSERT INTO `sys_area` VALUES ('230712', '汤旺河区', '230700');
INSERT INTO `sys_area` VALUES ('230713', '带岭区', '230700');
INSERT INTO `sys_area` VALUES ('230714', '乌伊岭区', '230700');
INSERT INTO `sys_area` VALUES ('230715', '红星区', '230700');
INSERT INTO `sys_area` VALUES ('230716', '上甘岭区', '230700');
INSERT INTO `sys_area` VALUES ('230722', '嘉荫县', '230700');
INSERT INTO `sys_area` VALUES ('230781', '铁力市', '230700');
INSERT INTO `sys_area` VALUES ('230800', '佳木斯市', '230000');
INSERT INTO `sys_area` VALUES ('230801', '市辖区', '230800');
INSERT INTO `sys_area` VALUES ('230803', '向阳区', '230800');
INSERT INTO `sys_area` VALUES ('230804', '前进区', '230800');
INSERT INTO `sys_area` VALUES ('230805', '东风区', '230800');
INSERT INTO `sys_area` VALUES ('230811', '郊区', '230800');
INSERT INTO `sys_area` VALUES ('230822', '桦南县', '230800');
INSERT INTO `sys_area` VALUES ('230826', '桦川县', '230800');
INSERT INTO `sys_area` VALUES ('230828', '汤原县', '230800');
INSERT INTO `sys_area` VALUES ('230881', '同江市', '230800');
INSERT INTO `sys_area` VALUES ('230882', '富锦市', '230800');
INSERT INTO `sys_area` VALUES ('230883', '抚远市', '230800');
INSERT INTO `sys_area` VALUES ('230900', '七台河市', '230000');
INSERT INTO `sys_area` VALUES ('230901', '市辖区', '230900');
INSERT INTO `sys_area` VALUES ('230902', '新兴区', '230900');
INSERT INTO `sys_area` VALUES ('230903', '桃山区', '230900');
INSERT INTO `sys_area` VALUES ('230904', '茄子河区', '230900');
INSERT INTO `sys_area` VALUES ('230921', '勃利县', '230900');
INSERT INTO `sys_area` VALUES ('231000', '牡丹江市', '230000');
INSERT INTO `sys_area` VALUES ('231001', '市辖区', '231000');
INSERT INTO `sys_area` VALUES ('231002', '东安区', '231000');
INSERT INTO `sys_area` VALUES ('231003', '阳明区', '231000');
INSERT INTO `sys_area` VALUES ('231004', '爱民区', '231000');
INSERT INTO `sys_area` VALUES ('231005', '西安区', '231000');
INSERT INTO `sys_area` VALUES ('231025', '林口县', '231000');
INSERT INTO `sys_area` VALUES ('231081', '绥芬河市', '231000');
INSERT INTO `sys_area` VALUES ('231083', '海林市', '231000');
INSERT INTO `sys_area` VALUES ('231084', '宁安市', '231000');
INSERT INTO `sys_area` VALUES ('231085', '穆棱市', '231000');
INSERT INTO `sys_area` VALUES ('231086', '东宁市', '231000');
INSERT INTO `sys_area` VALUES ('231100', '黑河市', '230000');
INSERT INTO `sys_area` VALUES ('231101', '市辖区', '231100');
INSERT INTO `sys_area` VALUES ('231102', '爱辉区', '231100');
INSERT INTO `sys_area` VALUES ('231121', '嫩江县', '231100');
INSERT INTO `sys_area` VALUES ('231123', '逊克县', '231100');
INSERT INTO `sys_area` VALUES ('231124', '孙吴县', '231100');
INSERT INTO `sys_area` VALUES ('231181', '北安市', '231100');
INSERT INTO `sys_area` VALUES ('231182', '五大连池市', '231100');
INSERT INTO `sys_area` VALUES ('231200', '绥化市', '230000');
INSERT INTO `sys_area` VALUES ('231201', '市辖区', '231200');
INSERT INTO `sys_area` VALUES ('231202', '北林区', '231200');
INSERT INTO `sys_area` VALUES ('231221', '望奎县', '231200');
INSERT INTO `sys_area` VALUES ('231222', '兰西县', '231200');
INSERT INTO `sys_area` VALUES ('231223', '青冈县', '231200');
INSERT INTO `sys_area` VALUES ('231224', '庆安县', '231200');
INSERT INTO `sys_area` VALUES ('231225', '明水县', '231200');
INSERT INTO `sys_area` VALUES ('231226', '绥棱县', '231200');
INSERT INTO `sys_area` VALUES ('231281', '安达市', '231200');
INSERT INTO `sys_area` VALUES ('231282', '肇东市', '231200');
INSERT INTO `sys_area` VALUES ('231283', '海伦市', '231200');
INSERT INTO `sys_area` VALUES ('232700', '大兴安岭地区', '230000');
INSERT INTO `sys_area` VALUES ('232721', '呼玛县', '232700');
INSERT INTO `sys_area` VALUES ('232722', '塔河县', '232700');
INSERT INTO `sys_area` VALUES ('232723', '漠河县', '232700');
INSERT INTO `sys_area` VALUES ('310000', '上海市', null);
INSERT INTO `sys_area` VALUES ('310100', '市辖区', '310000');
INSERT INTO `sys_area` VALUES ('310101', '黄浦区', '310100');
INSERT INTO `sys_area` VALUES ('310104', '徐汇区', '310100');
INSERT INTO `sys_area` VALUES ('310105', '长宁区', '310100');
INSERT INTO `sys_area` VALUES ('310106', '静安区', '310100');
INSERT INTO `sys_area` VALUES ('310107', '普陀区', '310100');
INSERT INTO `sys_area` VALUES ('310109', '虹口区', '310100');
INSERT INTO `sys_area` VALUES ('310110', '杨浦区', '310100');
INSERT INTO `sys_area` VALUES ('310112', '闵行区', '310100');
INSERT INTO `sys_area` VALUES ('310113', '宝山区', '310100');
INSERT INTO `sys_area` VALUES ('310114', '嘉定区', '310100');
INSERT INTO `sys_area` VALUES ('310115', '浦东新区', '310100');
INSERT INTO `sys_area` VALUES ('310116', '金山区', '310100');
INSERT INTO `sys_area` VALUES ('310117', '松江区', '310100');
INSERT INTO `sys_area` VALUES ('310118', '青浦区', '310100');
INSERT INTO `sys_area` VALUES ('310120', '奉贤区', '310100');
INSERT INTO `sys_area` VALUES ('310151', '崇明区', '310100');
INSERT INTO `sys_area` VALUES ('320000', '江苏省', null);
INSERT INTO `sys_area` VALUES ('320100', '南京市', '320000');
INSERT INTO `sys_area` VALUES ('320101', '市辖区', '320100');
INSERT INTO `sys_area` VALUES ('320102', '玄武区', '320100');
INSERT INTO `sys_area` VALUES ('320104', '秦淮区', '320100');
INSERT INTO `sys_area` VALUES ('320105', '建邺区', '320100');
INSERT INTO `sys_area` VALUES ('320106', '鼓楼区', '320100');
INSERT INTO `sys_area` VALUES ('320111', '浦口区', '320100');
INSERT INTO `sys_area` VALUES ('320113', '栖霞区', '320100');
INSERT INTO `sys_area` VALUES ('320114', '雨花台区', '320100');
INSERT INTO `sys_area` VALUES ('320115', '江宁区', '320100');
INSERT INTO `sys_area` VALUES ('320116', '六合区', '320100');
INSERT INTO `sys_area` VALUES ('320117', '溧水区', '320100');
INSERT INTO `sys_area` VALUES ('320118', '高淳区', '320100');
INSERT INTO `sys_area` VALUES ('320200', '无锡市', '320000');
INSERT INTO `sys_area` VALUES ('320201', '市辖区', '320200');
INSERT INTO `sys_area` VALUES ('320205', '锡山区', '320200');
INSERT INTO `sys_area` VALUES ('320206', '惠山区', '320200');
INSERT INTO `sys_area` VALUES ('320211', '滨湖区', '320200');
INSERT INTO `sys_area` VALUES ('320213', '梁溪区', '320200');
INSERT INTO `sys_area` VALUES ('320214', '新吴区', '320200');
INSERT INTO `sys_area` VALUES ('320281', '江阴市', '320200');
INSERT INTO `sys_area` VALUES ('320282', '宜兴市', '320200');
INSERT INTO `sys_area` VALUES ('320300', '徐州市', '320000');
INSERT INTO `sys_area` VALUES ('320301', '市辖区', '320300');
INSERT INTO `sys_area` VALUES ('320302', '鼓楼区', '320300');
INSERT INTO `sys_area` VALUES ('320303', '云龙区', '320300');
INSERT INTO `sys_area` VALUES ('320305', '贾汪区', '320300');
INSERT INTO `sys_area` VALUES ('320311', '泉山区', '320300');
INSERT INTO `sys_area` VALUES ('320312', '铜山区', '320300');
INSERT INTO `sys_area` VALUES ('320321', '丰县', '320300');
INSERT INTO `sys_area` VALUES ('320322', '沛县', '320300');
INSERT INTO `sys_area` VALUES ('320324', '睢宁县', '320300');
INSERT INTO `sys_area` VALUES ('320381', '新沂市', '320300');
INSERT INTO `sys_area` VALUES ('320382', '邳州市', '320300');
INSERT INTO `sys_area` VALUES ('320400', '常州市', '320000');
INSERT INTO `sys_area` VALUES ('320401', '市辖区', '320400');
INSERT INTO `sys_area` VALUES ('320402', '天宁区', '320400');
INSERT INTO `sys_area` VALUES ('320404', '钟楼区', '320400');
INSERT INTO `sys_area` VALUES ('320411', '新北区', '320400');
INSERT INTO `sys_area` VALUES ('320412', '武进区', '320400');
INSERT INTO `sys_area` VALUES ('320413', '金坛区', '320400');
INSERT INTO `sys_area` VALUES ('320481', '溧阳市', '320400');
INSERT INTO `sys_area` VALUES ('320500', '苏州市', '320000');
INSERT INTO `sys_area` VALUES ('320501', '市辖区', '320500');
INSERT INTO `sys_area` VALUES ('320505', '虎丘区', '320500');
INSERT INTO `sys_area` VALUES ('320506', '吴中区', '320500');
INSERT INTO `sys_area` VALUES ('320507', '相城区', '320500');
INSERT INTO `sys_area` VALUES ('320508', '姑苏区', '320500');
INSERT INTO `sys_area` VALUES ('320509', '吴江区', '320500');
INSERT INTO `sys_area` VALUES ('320581', '常熟市', '320500');
INSERT INTO `sys_area` VALUES ('320582', '张家港市', '320500');
INSERT INTO `sys_area` VALUES ('320583', '昆山市', '320500');
INSERT INTO `sys_area` VALUES ('320585', '太仓市', '320500');
INSERT INTO `sys_area` VALUES ('320600', '南通市', '320000');
INSERT INTO `sys_area` VALUES ('320601', '市辖区', '320600');
INSERT INTO `sys_area` VALUES ('320602', '崇川区', '320600');
INSERT INTO `sys_area` VALUES ('320611', '港闸区', '320600');
INSERT INTO `sys_area` VALUES ('320612', '通州区', '320600');
INSERT INTO `sys_area` VALUES ('320621', '海安县', '320600');
INSERT INTO `sys_area` VALUES ('320623', '如东县', '320600');
INSERT INTO `sys_area` VALUES ('320681', '启东市', '320600');
INSERT INTO `sys_area` VALUES ('320682', '如皋市', '320600');
INSERT INTO `sys_area` VALUES ('320684', '海门市', '320600');
INSERT INTO `sys_area` VALUES ('320700', '连云港市', '320000');
INSERT INTO `sys_area` VALUES ('320701', '市辖区', '320700');
INSERT INTO `sys_area` VALUES ('320703', '连云区', '320700');
INSERT INTO `sys_area` VALUES ('320706', '海州区', '320700');
INSERT INTO `sys_area` VALUES ('320707', '赣榆区', '320700');
INSERT INTO `sys_area` VALUES ('320722', '东海县', '320700');
INSERT INTO `sys_area` VALUES ('320723', '灌云县', '320700');
INSERT INTO `sys_area` VALUES ('320724', '灌南县', '320700');
INSERT INTO `sys_area` VALUES ('320800', '淮安市', '320000');
INSERT INTO `sys_area` VALUES ('320801', '市辖区', '320800');
INSERT INTO `sys_area` VALUES ('320803', '淮安区', '320800');
INSERT INTO `sys_area` VALUES ('320804', '淮阴区', '320800');
INSERT INTO `sys_area` VALUES ('320812', '清江浦区', '320800');
INSERT INTO `sys_area` VALUES ('320813', '洪泽区', '320800');
INSERT INTO `sys_area` VALUES ('320826', '涟水县', '320800');
INSERT INTO `sys_area` VALUES ('320830', '盱眙县', '320800');
INSERT INTO `sys_area` VALUES ('320831', '金湖县', '320800');
INSERT INTO `sys_area` VALUES ('320900', '盐城市', '320000');
INSERT INTO `sys_area` VALUES ('320901', '市辖区', '320900');
INSERT INTO `sys_area` VALUES ('320902', '亭湖区', '320900');
INSERT INTO `sys_area` VALUES ('320903', '盐都区', '320900');
INSERT INTO `sys_area` VALUES ('320904', '大丰区', '320900');
INSERT INTO `sys_area` VALUES ('320921', '响水县', '320900');
INSERT INTO `sys_area` VALUES ('320922', '滨海县', '320900');
INSERT INTO `sys_area` VALUES ('320923', '阜宁县', '320900');
INSERT INTO `sys_area` VALUES ('320924', '射阳县', '320900');
INSERT INTO `sys_area` VALUES ('320925', '建湖县', '320900');
INSERT INTO `sys_area` VALUES ('320981', '东台市', '320900');
INSERT INTO `sys_area` VALUES ('321000', '扬州市', '320000');
INSERT INTO `sys_area` VALUES ('321001', '市辖区', '321000');
INSERT INTO `sys_area` VALUES ('321002', '广陵区', '321000');
INSERT INTO `sys_area` VALUES ('321003', '邗江区', '321000');
INSERT INTO `sys_area` VALUES ('321012', '江都区', '321000');
INSERT INTO `sys_area` VALUES ('321023', '宝应县', '321000');
INSERT INTO `sys_area` VALUES ('321081', '仪征市', '321000');
INSERT INTO `sys_area` VALUES ('321084', '高邮市', '321000');
INSERT INTO `sys_area` VALUES ('321100', '镇江市', '320000');
INSERT INTO `sys_area` VALUES ('321101', '市辖区', '321100');
INSERT INTO `sys_area` VALUES ('321102', '京口区', '321100');
INSERT INTO `sys_area` VALUES ('321111', '润州区', '321100');
INSERT INTO `sys_area` VALUES ('321112', '丹徒区', '321100');
INSERT INTO `sys_area` VALUES ('321181', '丹阳市', '321100');
INSERT INTO `sys_area` VALUES ('321182', '扬中市', '321100');
INSERT INTO `sys_area` VALUES ('321183', '句容市', '321100');
INSERT INTO `sys_area` VALUES ('321200', '泰州市', '320000');
INSERT INTO `sys_area` VALUES ('321201', '市辖区', '321200');
INSERT INTO `sys_area` VALUES ('321202', '海陵区', '321200');
INSERT INTO `sys_area` VALUES ('321203', '高港区', '321200');
INSERT INTO `sys_area` VALUES ('321204', '姜堰区', '321200');
INSERT INTO `sys_area` VALUES ('321281', '兴化市', '321200');
INSERT INTO `sys_area` VALUES ('321282', '靖江市', '321200');
INSERT INTO `sys_area` VALUES ('321283', '泰兴市', '321200');
INSERT INTO `sys_area` VALUES ('321300', '宿迁市', '320000');
INSERT INTO `sys_area` VALUES ('321301', '市辖区', '321300');
INSERT INTO `sys_area` VALUES ('321302', '宿城区', '321300');
INSERT INTO `sys_area` VALUES ('321311', '宿豫区', '321300');
INSERT INTO `sys_area` VALUES ('321322', '沭阳县', '321300');
INSERT INTO `sys_area` VALUES ('321323', '泗阳县', '321300');
INSERT INTO `sys_area` VALUES ('321324', '泗洪县', '321300');
INSERT INTO `sys_area` VALUES ('330000', '浙江省', null);
INSERT INTO `sys_area` VALUES ('330100', '杭州市', '330000');
INSERT INTO `sys_area` VALUES ('330101', '市辖区', '330100');
INSERT INTO `sys_area` VALUES ('330102', '上城区', '330100');
INSERT INTO `sys_area` VALUES ('330103', '下城区', '330100');
INSERT INTO `sys_area` VALUES ('330104', '江干区', '330100');
INSERT INTO `sys_area` VALUES ('330105', '拱墅区', '330100');
INSERT INTO `sys_area` VALUES ('330106', '西湖区', '330100');
INSERT INTO `sys_area` VALUES ('330108', '滨江区', '330100');
INSERT INTO `sys_area` VALUES ('330109', '萧山区', '330100');
INSERT INTO `sys_area` VALUES ('330110', '余杭区', '330100');
INSERT INTO `sys_area` VALUES ('330111', '富阳区', '330100');
INSERT INTO `sys_area` VALUES ('330122', '桐庐县', '330100');
INSERT INTO `sys_area` VALUES ('330127', '淳安县', '330100');
INSERT INTO `sys_area` VALUES ('330182', '建德市', '330100');
INSERT INTO `sys_area` VALUES ('330185', '临安市', '330100');
INSERT INTO `sys_area` VALUES ('330200', '宁波市', '330000');
INSERT INTO `sys_area` VALUES ('330201', '市辖区', '330200');
INSERT INTO `sys_area` VALUES ('330203', '海曙区', '330200');
INSERT INTO `sys_area` VALUES ('330204', '江东区', '330200');
INSERT INTO `sys_area` VALUES ('330205', '江北区', '330200');
INSERT INTO `sys_area` VALUES ('330206', '北仑区', '330200');
INSERT INTO `sys_area` VALUES ('330211', '镇海区', '330200');
INSERT INTO `sys_area` VALUES ('330212', '鄞州区', '330200');
INSERT INTO `sys_area` VALUES ('330225', '象山县', '330200');
INSERT INTO `sys_area` VALUES ('330226', '宁海县', '330200');
INSERT INTO `sys_area` VALUES ('330281', '余姚市', '330200');
INSERT INTO `sys_area` VALUES ('330282', '慈溪市', '330200');
INSERT INTO `sys_area` VALUES ('330283', '奉化市', '330200');
INSERT INTO `sys_area` VALUES ('330300', '温州市', '330000');
INSERT INTO `sys_area` VALUES ('330301', '市辖区', '330300');
INSERT INTO `sys_area` VALUES ('330302', '鹿城区', '330300');
INSERT INTO `sys_area` VALUES ('330303', '龙湾区', '330300');
INSERT INTO `sys_area` VALUES ('330304', '瓯海区', '330300');
INSERT INTO `sys_area` VALUES ('330305', '洞头区', '330300');
INSERT INTO `sys_area` VALUES ('330324', '永嘉县', '330300');
INSERT INTO `sys_area` VALUES ('330326', '平阳县', '330300');
INSERT INTO `sys_area` VALUES ('330327', '苍南县', '330300');
INSERT INTO `sys_area` VALUES ('330328', '文成县', '330300');
INSERT INTO `sys_area` VALUES ('330329', '泰顺县', '330300');
INSERT INTO `sys_area` VALUES ('330381', '瑞安市', '330300');
INSERT INTO `sys_area` VALUES ('330382', '乐清市', '330300');
INSERT INTO `sys_area` VALUES ('330400', '嘉兴市', '330000');
INSERT INTO `sys_area` VALUES ('330401', '市辖区', '330400');
INSERT INTO `sys_area` VALUES ('330402', '南湖区', '330400');
INSERT INTO `sys_area` VALUES ('330411', '秀洲区', '330400');
INSERT INTO `sys_area` VALUES ('330421', '嘉善县', '330400');
INSERT INTO `sys_area` VALUES ('330424', '海盐县', '330400');
INSERT INTO `sys_area` VALUES ('330481', '海宁市', '330400');
INSERT INTO `sys_area` VALUES ('330482', '平湖市', '330400');
INSERT INTO `sys_area` VALUES ('330483', '桐乡市', '330400');
INSERT INTO `sys_area` VALUES ('330500', '湖州市', '330000');
INSERT INTO `sys_area` VALUES ('330501', '市辖区', '330500');
INSERT INTO `sys_area` VALUES ('330502', '吴兴区', '330500');
INSERT INTO `sys_area` VALUES ('330503', '南浔区', '330500');
INSERT INTO `sys_area` VALUES ('330521', '德清县', '330500');
INSERT INTO `sys_area` VALUES ('330522', '长兴县', '330500');
INSERT INTO `sys_area` VALUES ('330523', '安吉县', '330500');
INSERT INTO `sys_area` VALUES ('330600', '绍兴市', '330000');
INSERT INTO `sys_area` VALUES ('330601', '市辖区', '330600');
INSERT INTO `sys_area` VALUES ('330602', '越城区', '330600');
INSERT INTO `sys_area` VALUES ('330603', '柯桥区', '330600');
INSERT INTO `sys_area` VALUES ('330604', '上虞区', '330600');
INSERT INTO `sys_area` VALUES ('330624', '新昌县', '330600');
INSERT INTO `sys_area` VALUES ('330681', '诸暨市', '330600');
INSERT INTO `sys_area` VALUES ('330683', '嵊州市', '330600');
INSERT INTO `sys_area` VALUES ('330700', '金华市', '330000');
INSERT INTO `sys_area` VALUES ('330701', '市辖区', '330700');
INSERT INTO `sys_area` VALUES ('330702', '婺城区', '330700');
INSERT INTO `sys_area` VALUES ('330703', '金东区', '330700');
INSERT INTO `sys_area` VALUES ('330723', '武义县', '330700');
INSERT INTO `sys_area` VALUES ('330726', '浦江县', '330700');
INSERT INTO `sys_area` VALUES ('330727', '磐安县', '330700');
INSERT INTO `sys_area` VALUES ('330781', '兰溪市', '330700');
INSERT INTO `sys_area` VALUES ('330782', '义乌市', '330700');
INSERT INTO `sys_area` VALUES ('330783', '东阳市', '330700');
INSERT INTO `sys_area` VALUES ('330784', '永康市', '330700');
INSERT INTO `sys_area` VALUES ('330800', '衢州市', '330000');
INSERT INTO `sys_area` VALUES ('330801', '市辖区', '330800');
INSERT INTO `sys_area` VALUES ('330802', '柯城区', '330800');
INSERT INTO `sys_area` VALUES ('330803', '衢江区', '330800');
INSERT INTO `sys_area` VALUES ('330822', '常山县', '330800');
INSERT INTO `sys_area` VALUES ('330824', '开化县', '330800');
INSERT INTO `sys_area` VALUES ('330825', '龙游县', '330800');
INSERT INTO `sys_area` VALUES ('330881', '江山市', '330800');
INSERT INTO `sys_area` VALUES ('330900', '舟山市', '330000');
INSERT INTO `sys_area` VALUES ('330901', '市辖区', '330900');
INSERT INTO `sys_area` VALUES ('330902', '定海区', '330900');
INSERT INTO `sys_area` VALUES ('330903', '普陀区', '330900');
INSERT INTO `sys_area` VALUES ('330921', '岱山县', '330900');
INSERT INTO `sys_area` VALUES ('330922', '嵊泗县', '330900');
INSERT INTO `sys_area` VALUES ('331000', '台州市', '330000');
INSERT INTO `sys_area` VALUES ('331001', '市辖区', '331000');
INSERT INTO `sys_area` VALUES ('331002', '椒江区', '331000');
INSERT INTO `sys_area` VALUES ('331003', '黄岩区', '331000');
INSERT INTO `sys_area` VALUES ('331004', '路桥区', '331000');
INSERT INTO `sys_area` VALUES ('331021', '玉环县', '331000');
INSERT INTO `sys_area` VALUES ('331022', '三门县', '331000');
INSERT INTO `sys_area` VALUES ('331023', '天台县', '331000');
INSERT INTO `sys_area` VALUES ('331024', '仙居县', '331000');
INSERT INTO `sys_area` VALUES ('331081', '温岭市', '331000');
INSERT INTO `sys_area` VALUES ('331082', '临海市', '331000');
INSERT INTO `sys_area` VALUES ('331100', '丽水市', '330000');
INSERT INTO `sys_area` VALUES ('331101', '市辖区', '331100');
INSERT INTO `sys_area` VALUES ('331102', '莲都区', '331100');
INSERT INTO `sys_area` VALUES ('331121', '青田县', '331100');
INSERT INTO `sys_area` VALUES ('331122', '缙云县', '331100');
INSERT INTO `sys_area` VALUES ('331123', '遂昌县', '331100');
INSERT INTO `sys_area` VALUES ('331124', '松阳县', '331100');
INSERT INTO `sys_area` VALUES ('331125', '云和县', '331100');
INSERT INTO `sys_area` VALUES ('331126', '庆元县', '331100');
INSERT INTO `sys_area` VALUES ('331127', '景宁畲族自治县', '331100');
INSERT INTO `sys_area` VALUES ('331181', '龙泉市', '331100');
INSERT INTO `sys_area` VALUES ('340000', '安徽省', null);
INSERT INTO `sys_area` VALUES ('340100', '合肥市', '340000');
INSERT INTO `sys_area` VALUES ('340101', '市辖区', '340100');
INSERT INTO `sys_area` VALUES ('340102', '瑶海区', '340100');
INSERT INTO `sys_area` VALUES ('340103', '庐阳区', '340100');
INSERT INTO `sys_area` VALUES ('340104', '蜀山区', '340100');
INSERT INTO `sys_area` VALUES ('340111', '包河区', '340100');
INSERT INTO `sys_area` VALUES ('340121', '长丰县', '340100');
INSERT INTO `sys_area` VALUES ('340122', '肥东县', '340100');
INSERT INTO `sys_area` VALUES ('340123', '肥西县', '340100');
INSERT INTO `sys_area` VALUES ('340124', '庐江县', '340100');
INSERT INTO `sys_area` VALUES ('340181', '巢湖市', '340100');
INSERT INTO `sys_area` VALUES ('340200', '芜湖市', '340000');
INSERT INTO `sys_area` VALUES ('340201', '市辖区', '340200');
INSERT INTO `sys_area` VALUES ('340202', '镜湖区', '340200');
INSERT INTO `sys_area` VALUES ('340203', '弋江区', '340200');
INSERT INTO `sys_area` VALUES ('340207', '鸠江区', '340200');
INSERT INTO `sys_area` VALUES ('340208', '三山区', '340200');
INSERT INTO `sys_area` VALUES ('340221', '芜湖县', '340200');
INSERT INTO `sys_area` VALUES ('340222', '繁昌县', '340200');
INSERT INTO `sys_area` VALUES ('340223', '南陵县', '340200');
INSERT INTO `sys_area` VALUES ('340225', '无为县', '340200');
INSERT INTO `sys_area` VALUES ('340300', '蚌埠市', '340000');
INSERT INTO `sys_area` VALUES ('340301', '市辖区', '340300');
INSERT INTO `sys_area` VALUES ('340302', '龙子湖区', '340300');
INSERT INTO `sys_area` VALUES ('340303', '蚌山区', '340300');
INSERT INTO `sys_area` VALUES ('340304', '禹会区', '340300');
INSERT INTO `sys_area` VALUES ('340311', '淮上区', '340300');
INSERT INTO `sys_area` VALUES ('340321', '怀远县', '340300');
INSERT INTO `sys_area` VALUES ('340322', '五河县', '340300');
INSERT INTO `sys_area` VALUES ('340323', '固镇县', '340300');
INSERT INTO `sys_area` VALUES ('340400', '淮南市', '340000');
INSERT INTO `sys_area` VALUES ('340401', '市辖区', '340400');
INSERT INTO `sys_area` VALUES ('340402', '大通区', '340400');
INSERT INTO `sys_area` VALUES ('340403', '田家庵区', '340400');
INSERT INTO `sys_area` VALUES ('340404', '谢家集区', '340400');
INSERT INTO `sys_area` VALUES ('340405', '八公山区', '340400');
INSERT INTO `sys_area` VALUES ('340406', '潘集区', '340400');
INSERT INTO `sys_area` VALUES ('340421', '凤台县', '340400');
INSERT INTO `sys_area` VALUES ('340422', '寿县', '340400');
INSERT INTO `sys_area` VALUES ('340500', '马鞍山市', '340000');
INSERT INTO `sys_area` VALUES ('340501', '市辖区', '340500');
INSERT INTO `sys_area` VALUES ('340503', '花山区', '340500');
INSERT INTO `sys_area` VALUES ('340504', '雨山区', '340500');
INSERT INTO `sys_area` VALUES ('340506', '博望区', '340500');
INSERT INTO `sys_area` VALUES ('340521', '当涂县', '340500');
INSERT INTO `sys_area` VALUES ('340522', '含山县', '340500');
INSERT INTO `sys_area` VALUES ('340523', '和县', '340500');
INSERT INTO `sys_area` VALUES ('340600', '淮北市', '340000');
INSERT INTO `sys_area` VALUES ('340601', '市辖区', '340600');
INSERT INTO `sys_area` VALUES ('340602', '杜集区', '340600');
INSERT INTO `sys_area` VALUES ('340603', '相山区', '340600');
INSERT INTO `sys_area` VALUES ('340604', '烈山区', '340600');
INSERT INTO `sys_area` VALUES ('340621', '濉溪县', '340600');
INSERT INTO `sys_area` VALUES ('340700', '铜陵市', '340000');
INSERT INTO `sys_area` VALUES ('340701', '市辖区', '340700');
INSERT INTO `sys_area` VALUES ('340705', '铜官区', '340700');
INSERT INTO `sys_area` VALUES ('340706', '义安区', '340700');
INSERT INTO `sys_area` VALUES ('340711', '郊区', '340700');
INSERT INTO `sys_area` VALUES ('340722', '枞阳县', '340700');
INSERT INTO `sys_area` VALUES ('340800', '安庆市', '340000');
INSERT INTO `sys_area` VALUES ('340801', '市辖区', '340800');
INSERT INTO `sys_area` VALUES ('340802', '迎江区', '340800');
INSERT INTO `sys_area` VALUES ('340803', '大观区', '340800');
INSERT INTO `sys_area` VALUES ('340811', '宜秀区', '340800');
INSERT INTO `sys_area` VALUES ('340822', '怀宁县', '340800');
INSERT INTO `sys_area` VALUES ('340824', '潜山县', '340800');
INSERT INTO `sys_area` VALUES ('340825', '太湖县', '340800');
INSERT INTO `sys_area` VALUES ('340826', '宿松县', '340800');
INSERT INTO `sys_area` VALUES ('340827', '望江县', '340800');
INSERT INTO `sys_area` VALUES ('340828', '岳西县', '340800');
INSERT INTO `sys_area` VALUES ('340881', '桐城市', '340800');
INSERT INTO `sys_area` VALUES ('341000', '黄山市', '340000');
INSERT INTO `sys_area` VALUES ('341001', '市辖区', '341000');
INSERT INTO `sys_area` VALUES ('341002', '屯溪区', '341000');
INSERT INTO `sys_area` VALUES ('341003', '黄山区', '341000');
INSERT INTO `sys_area` VALUES ('341004', '徽州区', '341000');
INSERT INTO `sys_area` VALUES ('341021', '歙县', '341000');
INSERT INTO `sys_area` VALUES ('341022', '休宁县', '341000');
INSERT INTO `sys_area` VALUES ('341023', '黟县', '341000');
INSERT INTO `sys_area` VALUES ('341024', '祁门县', '341000');
INSERT INTO `sys_area` VALUES ('341100', '滁州市', '340000');
INSERT INTO `sys_area` VALUES ('341101', '市辖区', '341100');
INSERT INTO `sys_area` VALUES ('341102', '琅琊区', '341100');
INSERT INTO `sys_area` VALUES ('341103', '南谯区', '341100');
INSERT INTO `sys_area` VALUES ('341122', '来安县', '341100');
INSERT INTO `sys_area` VALUES ('341124', '全椒县', '341100');
INSERT INTO `sys_area` VALUES ('341125', '定远县', '341100');
INSERT INTO `sys_area` VALUES ('341126', '凤阳县', '341100');
INSERT INTO `sys_area` VALUES ('341181', '天长市', '341100');
INSERT INTO `sys_area` VALUES ('341182', '明光市', '341100');
INSERT INTO `sys_area` VALUES ('341200', '阜阳市', '340000');
INSERT INTO `sys_area` VALUES ('341201', '市辖区', '341200');
INSERT INTO `sys_area` VALUES ('341202', '颍州区', '341200');
INSERT INTO `sys_area` VALUES ('341203', '颍东区', '341200');
INSERT INTO `sys_area` VALUES ('341204', '颍泉区', '341200');
INSERT INTO `sys_area` VALUES ('341221', '临泉县', '341200');
INSERT INTO `sys_area` VALUES ('341222', '太和县', '341200');
INSERT INTO `sys_area` VALUES ('341225', '阜南县', '341200');
INSERT INTO `sys_area` VALUES ('341226', '颍上县', '341200');
INSERT INTO `sys_area` VALUES ('341282', '界首市', '341200');
INSERT INTO `sys_area` VALUES ('341300', '宿州市', '340000');
INSERT INTO `sys_area` VALUES ('341301', '市辖区', '341300');
INSERT INTO `sys_area` VALUES ('341302', '埇桥区', '341300');
INSERT INTO `sys_area` VALUES ('341321', '砀山县', '341300');
INSERT INTO `sys_area` VALUES ('341322', '萧县', '341300');
INSERT INTO `sys_area` VALUES ('341323', '灵璧县', '341300');
INSERT INTO `sys_area` VALUES ('341324', '泗县', '341300');
INSERT INTO `sys_area` VALUES ('341500', '六安市', '340000');
INSERT INTO `sys_area` VALUES ('341501', '市辖区', '341500');
INSERT INTO `sys_area` VALUES ('341502', '金安区', '341500');
INSERT INTO `sys_area` VALUES ('341503', '裕安区', '341500');
INSERT INTO `sys_area` VALUES ('341504', '叶集区', '341500');
INSERT INTO `sys_area` VALUES ('341522', '霍邱县', '341500');
INSERT INTO `sys_area` VALUES ('341523', '舒城县', '341500');
INSERT INTO `sys_area` VALUES ('341524', '金寨县', '341500');
INSERT INTO `sys_area` VALUES ('341525', '霍山县', '341500');
INSERT INTO `sys_area` VALUES ('341600', '亳州市', '340000');
INSERT INTO `sys_area` VALUES ('341601', '市辖区', '341600');
INSERT INTO `sys_area` VALUES ('341602', '谯城区', '341600');
INSERT INTO `sys_area` VALUES ('341621', '涡阳县', '341600');
INSERT INTO `sys_area` VALUES ('341622', '蒙城县', '341600');
INSERT INTO `sys_area` VALUES ('341623', '利辛县', '341600');
INSERT INTO `sys_area` VALUES ('341700', '池州市', '340000');
INSERT INTO `sys_area` VALUES ('341701', '市辖区', '341700');
INSERT INTO `sys_area` VALUES ('341702', '贵池区', '341700');
INSERT INTO `sys_area` VALUES ('341721', '东至县', '341700');
INSERT INTO `sys_area` VALUES ('341722', '石台县', '341700');
INSERT INTO `sys_area` VALUES ('341723', '青阳县', '341700');
INSERT INTO `sys_area` VALUES ('341800', '宣城市', '340000');
INSERT INTO `sys_area` VALUES ('341801', '市辖区', '341800');
INSERT INTO `sys_area` VALUES ('341802', '宣州区', '341800');
INSERT INTO `sys_area` VALUES ('341821', '郎溪县', '341800');
INSERT INTO `sys_area` VALUES ('341822', '广德县', '341800');
INSERT INTO `sys_area` VALUES ('341823', '泾县', '341800');
INSERT INTO `sys_area` VALUES ('341824', '绩溪县', '341800');
INSERT INTO `sys_area` VALUES ('341825', '旌德县', '341800');
INSERT INTO `sys_area` VALUES ('341881', '宁国市', '341800');
INSERT INTO `sys_area` VALUES ('350000', '福建省', null);
INSERT INTO `sys_area` VALUES ('350100', '福州市', '350000');
INSERT INTO `sys_area` VALUES ('350101', '市辖区', '350100');
INSERT INTO `sys_area` VALUES ('350102', '鼓楼区', '350100');
INSERT INTO `sys_area` VALUES ('350103', '台江区', '350100');
INSERT INTO `sys_area` VALUES ('350104', '仓山区', '350100');
INSERT INTO `sys_area` VALUES ('350105', '马尾区', '350100');
INSERT INTO `sys_area` VALUES ('350111', '晋安区', '350100');
INSERT INTO `sys_area` VALUES ('350121', '闽侯县', '350100');
INSERT INTO `sys_area` VALUES ('350122', '连江县', '350100');
INSERT INTO `sys_area` VALUES ('350123', '罗源县', '350100');
INSERT INTO `sys_area` VALUES ('350124', '闽清县', '350100');
INSERT INTO `sys_area` VALUES ('350125', '永泰县', '350100');
INSERT INTO `sys_area` VALUES ('350128', '平潭县', '350100');
INSERT INTO `sys_area` VALUES ('350181', '福清市', '350100');
INSERT INTO `sys_area` VALUES ('350182', '长乐市', '350100');
INSERT INTO `sys_area` VALUES ('350200', '厦门市', '350000');
INSERT INTO `sys_area` VALUES ('350201', '市辖区', '350200');
INSERT INTO `sys_area` VALUES ('350203', '思明区', '350200');
INSERT INTO `sys_area` VALUES ('350205', '海沧区', '350200');
INSERT INTO `sys_area` VALUES ('350206', '湖里区', '350200');
INSERT INTO `sys_area` VALUES ('350211', '集美区', '350200');
INSERT INTO `sys_area` VALUES ('350212', '同安区', '350200');
INSERT INTO `sys_area` VALUES ('350213', '翔安区', '350200');
INSERT INTO `sys_area` VALUES ('350300', '莆田市', '350000');
INSERT INTO `sys_area` VALUES ('350301', '市辖区', '350300');
INSERT INTO `sys_area` VALUES ('350302', '城厢区', '350300');
INSERT INTO `sys_area` VALUES ('350303', '涵江区', '350300');
INSERT INTO `sys_area` VALUES ('350304', '荔城区', '350300');
INSERT INTO `sys_area` VALUES ('350305', '秀屿区', '350300');
INSERT INTO `sys_area` VALUES ('350322', '仙游县', '350300');
INSERT INTO `sys_area` VALUES ('350400', '三明市', '350000');
INSERT INTO `sys_area` VALUES ('350401', '市辖区', '350400');
INSERT INTO `sys_area` VALUES ('350402', '梅列区', '350400');
INSERT INTO `sys_area` VALUES ('350403', '三元区', '350400');
INSERT INTO `sys_area` VALUES ('350421', '明溪县', '350400');
INSERT INTO `sys_area` VALUES ('350423', '清流县', '350400');
INSERT INTO `sys_area` VALUES ('350424', '宁化县', '350400');
INSERT INTO `sys_area` VALUES ('350425', '大田县', '350400');
INSERT INTO `sys_area` VALUES ('350426', '尤溪县', '350400');
INSERT INTO `sys_area` VALUES ('350427', '沙县', '350400');
INSERT INTO `sys_area` VALUES ('350428', '将乐县', '350400');
INSERT INTO `sys_area` VALUES ('350429', '泰宁县', '350400');
INSERT INTO `sys_area` VALUES ('350430', '建宁县', '350400');
INSERT INTO `sys_area` VALUES ('350481', '永安市', '350400');
INSERT INTO `sys_area` VALUES ('350500', '泉州市', '350000');
INSERT INTO `sys_area` VALUES ('350501', '市辖区', '350500');
INSERT INTO `sys_area` VALUES ('350502', '鲤城区', '350500');
INSERT INTO `sys_area` VALUES ('350503', '丰泽区', '350500');
INSERT INTO `sys_area` VALUES ('350504', '洛江区', '350500');
INSERT INTO `sys_area` VALUES ('350505', '泉港区', '350500');
INSERT INTO `sys_area` VALUES ('350521', '惠安县', '350500');
INSERT INTO `sys_area` VALUES ('350524', '安溪县', '350500');
INSERT INTO `sys_area` VALUES ('350525', '永春县', '350500');
INSERT INTO `sys_area` VALUES ('350526', '德化县', '350500');
INSERT INTO `sys_area` VALUES ('350527', '金门县', '350500');
INSERT INTO `sys_area` VALUES ('350581', '石狮市', '350500');
INSERT INTO `sys_area` VALUES ('350582', '晋江市', '350500');
INSERT INTO `sys_area` VALUES ('350583', '南安市', '350500');
INSERT INTO `sys_area` VALUES ('350600', '漳州市', '350000');
INSERT INTO `sys_area` VALUES ('350601', '市辖区', '350600');
INSERT INTO `sys_area` VALUES ('350602', '芗城区', '350600');
INSERT INTO `sys_area` VALUES ('350603', '龙文区', '350600');
INSERT INTO `sys_area` VALUES ('350622', '云霄县', '350600');
INSERT INTO `sys_area` VALUES ('350623', '漳浦县', '350600');
INSERT INTO `sys_area` VALUES ('350624', '诏安县', '350600');
INSERT INTO `sys_area` VALUES ('350625', '长泰县', '350600');
INSERT INTO `sys_area` VALUES ('350626', '东山县', '350600');
INSERT INTO `sys_area` VALUES ('350627', '南靖县', '350600');
INSERT INTO `sys_area` VALUES ('350628', '平和县', '350600');
INSERT INTO `sys_area` VALUES ('350629', '华安县', '350600');
INSERT INTO `sys_area` VALUES ('350681', '龙海市', '350600');
INSERT INTO `sys_area` VALUES ('350700', '南平市', '350000');
INSERT INTO `sys_area` VALUES ('350701', '市辖区', '350700');
INSERT INTO `sys_area` VALUES ('350702', '延平区', '350700');
INSERT INTO `sys_area` VALUES ('350703', '建阳区', '350700');
INSERT INTO `sys_area` VALUES ('350721', '顺昌县', '350700');
INSERT INTO `sys_area` VALUES ('350722', '浦城县', '350700');
INSERT INTO `sys_area` VALUES ('350723', '光泽县', '350700');
INSERT INTO `sys_area` VALUES ('350724', '松溪县', '350700');
INSERT INTO `sys_area` VALUES ('350725', '政和县', '350700');
INSERT INTO `sys_area` VALUES ('350781', '邵武市', '350700');
INSERT INTO `sys_area` VALUES ('350782', '武夷山市', '350700');
INSERT INTO `sys_area` VALUES ('350783', '建瓯市', '350700');
INSERT INTO `sys_area` VALUES ('350800', '龙岩市', '350000');
INSERT INTO `sys_area` VALUES ('350801', '市辖区', '350800');
INSERT INTO `sys_area` VALUES ('350802', '新罗区', '350800');
INSERT INTO `sys_area` VALUES ('350803', '永定区', '350800');
INSERT INTO `sys_area` VALUES ('350821', '长汀县', '350800');
INSERT INTO `sys_area` VALUES ('350823', '上杭县', '350800');
INSERT INTO `sys_area` VALUES ('350824', '武平县', '350800');
INSERT INTO `sys_area` VALUES ('350825', '连城县', '350800');
INSERT INTO `sys_area` VALUES ('350881', '漳平市', '350800');
INSERT INTO `sys_area` VALUES ('350900', '宁德市', '350000');
INSERT INTO `sys_area` VALUES ('350901', '市辖区', '350900');
INSERT INTO `sys_area` VALUES ('350902', '蕉城区', '350900');
INSERT INTO `sys_area` VALUES ('350921', '霞浦县', '350900');
INSERT INTO `sys_area` VALUES ('350922', '古田县', '350900');
INSERT INTO `sys_area` VALUES ('350923', '屏南县', '350900');
INSERT INTO `sys_area` VALUES ('350924', '寿宁县', '350900');
INSERT INTO `sys_area` VALUES ('350925', '周宁县', '350900');
INSERT INTO `sys_area` VALUES ('350926', '柘荣县', '350900');
INSERT INTO `sys_area` VALUES ('350981', '福安市', '350900');
INSERT INTO `sys_area` VALUES ('350982', '福鼎市', '350900');
INSERT INTO `sys_area` VALUES ('360000', '江西省', null);
INSERT INTO `sys_area` VALUES ('360100', '南昌市', '360000');
INSERT INTO `sys_area` VALUES ('360101', '市辖区', '360100');
INSERT INTO `sys_area` VALUES ('360102', '东湖区', '360100');
INSERT INTO `sys_area` VALUES ('360103', '西湖区', '360100');
INSERT INTO `sys_area` VALUES ('360104', '青云谱区', '360100');
INSERT INTO `sys_area` VALUES ('360105', '湾里区', '360100');
INSERT INTO `sys_area` VALUES ('360111', '青山湖区', '360100');
INSERT INTO `sys_area` VALUES ('360112', '新建区', '360100');
INSERT INTO `sys_area` VALUES ('360121', '南昌县', '360100');
INSERT INTO `sys_area` VALUES ('360123', '安义县', '360100');
INSERT INTO `sys_area` VALUES ('360124', '进贤县', '360100');
INSERT INTO `sys_area` VALUES ('360200', '景德镇市', '360000');
INSERT INTO `sys_area` VALUES ('360201', '市辖区', '360200');
INSERT INTO `sys_area` VALUES ('360202', '昌江区', '360200');
INSERT INTO `sys_area` VALUES ('360203', '珠山区', '360200');
INSERT INTO `sys_area` VALUES ('360222', '浮梁县', '360200');
INSERT INTO `sys_area` VALUES ('360281', '乐平市', '360200');
INSERT INTO `sys_area` VALUES ('360300', '萍乡市', '360000');
INSERT INTO `sys_area` VALUES ('360301', '市辖区', '360300');
INSERT INTO `sys_area` VALUES ('360302', '安源区', '360300');
INSERT INTO `sys_area` VALUES ('360313', '湘东区', '360300');
INSERT INTO `sys_area` VALUES ('360321', '莲花县', '360300');
INSERT INTO `sys_area` VALUES ('360322', '上栗县', '360300');
INSERT INTO `sys_area` VALUES ('360323', '芦溪县', '360300');
INSERT INTO `sys_area` VALUES ('360400', '九江市', '360000');
INSERT INTO `sys_area` VALUES ('360401', '市辖区', '360400');
INSERT INTO `sys_area` VALUES ('360402', '濂溪区', '360400');
INSERT INTO `sys_area` VALUES ('360403', '浔阳区', '360400');
INSERT INTO `sys_area` VALUES ('360421', '九江县', '360400');
INSERT INTO `sys_area` VALUES ('360423', '武宁县', '360400');
INSERT INTO `sys_area` VALUES ('360424', '修水县', '360400');
INSERT INTO `sys_area` VALUES ('360425', '永修县', '360400');
INSERT INTO `sys_area` VALUES ('360426', '德安县', '360400');
INSERT INTO `sys_area` VALUES ('360428', '都昌县', '360400');
INSERT INTO `sys_area` VALUES ('360429', '湖口县', '360400');
INSERT INTO `sys_area` VALUES ('360430', '彭泽县', '360400');
INSERT INTO `sys_area` VALUES ('360481', '瑞昌市', '360400');
INSERT INTO `sys_area` VALUES ('360482', '共青城市', '360400');
INSERT INTO `sys_area` VALUES ('360483', '庐山市', '360400');
INSERT INTO `sys_area` VALUES ('360500', '新余市', '360000');
INSERT INTO `sys_area` VALUES ('360501', '市辖区', '360500');
INSERT INTO `sys_area` VALUES ('360502', '渝水区', '360500');
INSERT INTO `sys_area` VALUES ('360521', '分宜县', '360500');
INSERT INTO `sys_area` VALUES ('360600', '鹰潭市', '360000');
INSERT INTO `sys_area` VALUES ('360601', '市辖区', '360600');
INSERT INTO `sys_area` VALUES ('360602', '月湖区', '360600');
INSERT INTO `sys_area` VALUES ('360622', '余江县', '360600');
INSERT INTO `sys_area` VALUES ('360681', '贵溪市', '360600');
INSERT INTO `sys_area` VALUES ('360700', '赣州市', '360000');
INSERT INTO `sys_area` VALUES ('360701', '市辖区', '360700');
INSERT INTO `sys_area` VALUES ('360702', '章贡区', '360700');
INSERT INTO `sys_area` VALUES ('360703', '南康区', '360700');
INSERT INTO `sys_area` VALUES ('360721', '赣县', '360700');
INSERT INTO `sys_area` VALUES ('360722', '信丰县', '360700');
INSERT INTO `sys_area` VALUES ('360723', '大余县', '360700');
INSERT INTO `sys_area` VALUES ('360724', '上犹县', '360700');
INSERT INTO `sys_area` VALUES ('360725', '崇义县', '360700');
INSERT INTO `sys_area` VALUES ('360726', '安远县', '360700');
INSERT INTO `sys_area` VALUES ('360727', '龙南县', '360700');
INSERT INTO `sys_area` VALUES ('360728', '定南县', '360700');
INSERT INTO `sys_area` VALUES ('360729', '全南县', '360700');
INSERT INTO `sys_area` VALUES ('360730', '宁都县', '360700');
INSERT INTO `sys_area` VALUES ('360731', '于都县', '360700');
INSERT INTO `sys_area` VALUES ('360732', '兴国县', '360700');
INSERT INTO `sys_area` VALUES ('360733', '会昌县', '360700');
INSERT INTO `sys_area` VALUES ('360734', '寻乌县', '360700');
INSERT INTO `sys_area` VALUES ('360735', '石城县', '360700');
INSERT INTO `sys_area` VALUES ('360781', '瑞金市', '360700');
INSERT INTO `sys_area` VALUES ('360800', '吉安市', '360000');
INSERT INTO `sys_area` VALUES ('360801', '市辖区', '360800');
INSERT INTO `sys_area` VALUES ('360802', '吉州区', '360800');
INSERT INTO `sys_area` VALUES ('360803', '青原区', '360800');
INSERT INTO `sys_area` VALUES ('360821', '吉安县', '360800');
INSERT INTO `sys_area` VALUES ('360822', '吉水县', '360800');
INSERT INTO `sys_area` VALUES ('360823', '峡江县', '360800');
INSERT INTO `sys_area` VALUES ('360824', '新干县', '360800');
INSERT INTO `sys_area` VALUES ('360825', '永丰县', '360800');
INSERT INTO `sys_area` VALUES ('360826', '泰和县', '360800');
INSERT INTO `sys_area` VALUES ('360827', '遂川县', '360800');
INSERT INTO `sys_area` VALUES ('360828', '万安县', '360800');
INSERT INTO `sys_area` VALUES ('360829', '安福县', '360800');
INSERT INTO `sys_area` VALUES ('360830', '永新县', '360800');
INSERT INTO `sys_area` VALUES ('360881', '井冈山市', '360800');
INSERT INTO `sys_area` VALUES ('360900', '宜春市', '360000');
INSERT INTO `sys_area` VALUES ('360901', '市辖区', '360900');
INSERT INTO `sys_area` VALUES ('360902', '袁州区', '360900');
INSERT INTO `sys_area` VALUES ('360921', '奉新县', '360900');
INSERT INTO `sys_area` VALUES ('360922', '万载县', '360900');
INSERT INTO `sys_area` VALUES ('360923', '上高县', '360900');
INSERT INTO `sys_area` VALUES ('360924', '宜丰县', '360900');
INSERT INTO `sys_area` VALUES ('360925', '靖安县', '360900');
INSERT INTO `sys_area` VALUES ('360926', '铜鼓县', '360900');
INSERT INTO `sys_area` VALUES ('360981', '丰城市', '360900');
INSERT INTO `sys_area` VALUES ('360982', '樟树市', '360900');
INSERT INTO `sys_area` VALUES ('360983', '高安市', '360900');
INSERT INTO `sys_area` VALUES ('361000', '抚州市', '360000');
INSERT INTO `sys_area` VALUES ('361001', '市辖区', '361000');
INSERT INTO `sys_area` VALUES ('361002', '临川区', '361000');
INSERT INTO `sys_area` VALUES ('361021', '南城县', '361000');
INSERT INTO `sys_area` VALUES ('361022', '黎川县', '361000');
INSERT INTO `sys_area` VALUES ('361023', '南丰县', '361000');
INSERT INTO `sys_area` VALUES ('361024', '崇仁县', '361000');
INSERT INTO `sys_area` VALUES ('361025', '乐安县', '361000');
INSERT INTO `sys_area` VALUES ('361026', '宜黄县', '361000');
INSERT INTO `sys_area` VALUES ('361027', '金溪县', '361000');
INSERT INTO `sys_area` VALUES ('361028', '资溪县', '361000');
INSERT INTO `sys_area` VALUES ('361029', '东乡县', '361000');
INSERT INTO `sys_area` VALUES ('361030', '广昌县', '361000');
INSERT INTO `sys_area` VALUES ('361100', '上饶市', '360000');
INSERT INTO `sys_area` VALUES ('361101', '市辖区', '361100');
INSERT INTO `sys_area` VALUES ('361102', '信州区', '361100');
INSERT INTO `sys_area` VALUES ('361103', '广丰区', '361100');
INSERT INTO `sys_area` VALUES ('361121', '上饶县', '361100');
INSERT INTO `sys_area` VALUES ('361123', '玉山县', '361100');
INSERT INTO `sys_area` VALUES ('361124', '铅山县', '361100');
INSERT INTO `sys_area` VALUES ('361125', '横峰县', '361100');
INSERT INTO `sys_area` VALUES ('361126', '弋阳县', '361100');
INSERT INTO `sys_area` VALUES ('361127', '余干县', '361100');
INSERT INTO `sys_area` VALUES ('361128', '鄱阳县', '361100');
INSERT INTO `sys_area` VALUES ('361129', '万年县', '361100');
INSERT INTO `sys_area` VALUES ('361130', '婺源县', '361100');
INSERT INTO `sys_area` VALUES ('361181', '德兴市', '361100');
INSERT INTO `sys_area` VALUES ('370000', '山东省', null);
INSERT INTO `sys_area` VALUES ('370100', '济南市', '370000');
INSERT INTO `sys_area` VALUES ('370101', '市辖区', '370100');
INSERT INTO `sys_area` VALUES ('370102', '历下区', '370100');
INSERT INTO `sys_area` VALUES ('370103', '市中区', '370100');
INSERT INTO `sys_area` VALUES ('370104', '槐荫区', '370100');
INSERT INTO `sys_area` VALUES ('370105', '天桥区', '370100');
INSERT INTO `sys_area` VALUES ('370112', '历城区', '370100');
INSERT INTO `sys_area` VALUES ('370113', '长清区', '370100');
INSERT INTO `sys_area` VALUES ('370124', '平阴县', '370100');
INSERT INTO `sys_area` VALUES ('370125', '济阳县', '370100');
INSERT INTO `sys_area` VALUES ('370126', '商河县', '370100');
INSERT INTO `sys_area` VALUES ('370181', '章丘市', '370100');
INSERT INTO `sys_area` VALUES ('370200', '青岛市', '370000');
INSERT INTO `sys_area` VALUES ('370201', '市辖区', '370200');
INSERT INTO `sys_area` VALUES ('370202', '市南区', '370200');
INSERT INTO `sys_area` VALUES ('370203', '市北区', '370200');
INSERT INTO `sys_area` VALUES ('370211', '黄岛区', '370200');
INSERT INTO `sys_area` VALUES ('370212', '崂山区', '370200');
INSERT INTO `sys_area` VALUES ('370213', '李沧区', '370200');
INSERT INTO `sys_area` VALUES ('370214', '城阳区', '370200');
INSERT INTO `sys_area` VALUES ('370281', '胶州市', '370200');
INSERT INTO `sys_area` VALUES ('370282', '即墨市', '370200');
INSERT INTO `sys_area` VALUES ('370283', '平度市', '370200');
INSERT INTO `sys_area` VALUES ('370285', '莱西市', '370200');
INSERT INTO `sys_area` VALUES ('370300', '淄博市', '370000');
INSERT INTO `sys_area` VALUES ('370301', '市辖区', '370300');
INSERT INTO `sys_area` VALUES ('370302', '淄川区', '370300');
INSERT INTO `sys_area` VALUES ('370303', '张店区', '370300');
INSERT INTO `sys_area` VALUES ('370304', '博山区', '370300');
INSERT INTO `sys_area` VALUES ('370305', '临淄区', '370300');
INSERT INTO `sys_area` VALUES ('370306', '周村区', '370300');
INSERT INTO `sys_area` VALUES ('370321', '桓台县', '370300');
INSERT INTO `sys_area` VALUES ('370322', '高青县', '370300');
INSERT INTO `sys_area` VALUES ('370323', '沂源县', '370300');
INSERT INTO `sys_area` VALUES ('370400', '枣庄市', '370000');
INSERT INTO `sys_area` VALUES ('370401', '市辖区', '370400');
INSERT INTO `sys_area` VALUES ('370402', '市中区', '370400');
INSERT INTO `sys_area` VALUES ('370403', '薛城区', '370400');
INSERT INTO `sys_area` VALUES ('370404', '峄城区', '370400');
INSERT INTO `sys_area` VALUES ('370405', '台儿庄区', '370400');
INSERT INTO `sys_area` VALUES ('370406', '山亭区', '370400');
INSERT INTO `sys_area` VALUES ('370481', '滕州市', '370400');
INSERT INTO `sys_area` VALUES ('370500', '东营市', '370000');
INSERT INTO `sys_area` VALUES ('370501', '市辖区', '370500');
INSERT INTO `sys_area` VALUES ('370502', '东营区', '370500');
INSERT INTO `sys_area` VALUES ('370503', '河口区', '370500');
INSERT INTO `sys_area` VALUES ('370505', '垦利区', '370500');
INSERT INTO `sys_area` VALUES ('370522', '利津县', '370500');
INSERT INTO `sys_area` VALUES ('370523', '广饶县', '370500');
INSERT INTO `sys_area` VALUES ('370600', '烟台市', '370000');
INSERT INTO `sys_area` VALUES ('370601', '市辖区', '370600');
INSERT INTO `sys_area` VALUES ('370602', '芝罘区', '370600');
INSERT INTO `sys_area` VALUES ('370611', '福山区', '370600');
INSERT INTO `sys_area` VALUES ('370612', '牟平区', '370600');
INSERT INTO `sys_area` VALUES ('370613', '莱山区', '370600');
INSERT INTO `sys_area` VALUES ('370634', '长岛县', '370600');
INSERT INTO `sys_area` VALUES ('370681', '龙口市', '370600');
INSERT INTO `sys_area` VALUES ('370682', '莱阳市', '370600');
INSERT INTO `sys_area` VALUES ('370683', '莱州市', '370600');
INSERT INTO `sys_area` VALUES ('370684', '蓬莱市', '370600');
INSERT INTO `sys_area` VALUES ('370685', '招远市', '370600');
INSERT INTO `sys_area` VALUES ('370686', '栖霞市', '370600');
INSERT INTO `sys_area` VALUES ('370687', '海阳市', '370600');
INSERT INTO `sys_area` VALUES ('370700', '潍坊市', '370000');
INSERT INTO `sys_area` VALUES ('370701', '市辖区', '370700');
INSERT INTO `sys_area` VALUES ('370702', '潍城区', '370700');
INSERT INTO `sys_area` VALUES ('370703', '寒亭区', '370700');
INSERT INTO `sys_area` VALUES ('370704', '坊子区', '370700');
INSERT INTO `sys_area` VALUES ('370705', '奎文区', '370700');
INSERT INTO `sys_area` VALUES ('370724', '临朐县', '370700');
INSERT INTO `sys_area` VALUES ('370725', '昌乐县', '370700');
INSERT INTO `sys_area` VALUES ('370781', '青州市', '370700');
INSERT INTO `sys_area` VALUES ('370782', '诸城市', '370700');
INSERT INTO `sys_area` VALUES ('370783', '寿光市', '370700');
INSERT INTO `sys_area` VALUES ('370784', '安丘市', '370700');
INSERT INTO `sys_area` VALUES ('370785', '高密市', '370700');
INSERT INTO `sys_area` VALUES ('370786', '昌邑市', '370700');
INSERT INTO `sys_area` VALUES ('370800', '济宁市', '370000');
INSERT INTO `sys_area` VALUES ('370801', '市辖区', '370800');
INSERT INTO `sys_area` VALUES ('370811', '任城区', '370800');
INSERT INTO `sys_area` VALUES ('370812', '兖州区', '370800');
INSERT INTO `sys_area` VALUES ('370826', '微山县', '370800');
INSERT INTO `sys_area` VALUES ('370827', '鱼台县', '370800');
INSERT INTO `sys_area` VALUES ('370828', '金乡县', '370800');
INSERT INTO `sys_area` VALUES ('370829', '嘉祥县', '370800');
INSERT INTO `sys_area` VALUES ('370830', '汶上县', '370800');
INSERT INTO `sys_area` VALUES ('370831', '泗水县', '370800');
INSERT INTO `sys_area` VALUES ('370832', '梁山县', '370800');
INSERT INTO `sys_area` VALUES ('370881', '曲阜市', '370800');
INSERT INTO `sys_area` VALUES ('370883', '邹城市', '370800');
INSERT INTO `sys_area` VALUES ('370900', '泰安市', '370000');
INSERT INTO `sys_area` VALUES ('370901', '市辖区', '370900');
INSERT INTO `sys_area` VALUES ('370902', '泰山区', '370900');
INSERT INTO `sys_area` VALUES ('370911', '岱岳区', '370900');
INSERT INTO `sys_area` VALUES ('370921', '宁阳县', '370900');
INSERT INTO `sys_area` VALUES ('370923', '东平县', '370900');
INSERT INTO `sys_area` VALUES ('370982', '新泰市', '370900');
INSERT INTO `sys_area` VALUES ('370983', '肥城市', '370900');
INSERT INTO `sys_area` VALUES ('371000', '威海市', '370000');
INSERT INTO `sys_area` VALUES ('371001', '市辖区', '371000');
INSERT INTO `sys_area` VALUES ('371002', '环翠区', '371000');
INSERT INTO `sys_area` VALUES ('371003', '文登区', '371000');
INSERT INTO `sys_area` VALUES ('371082', '荣成市', '371000');
INSERT INTO `sys_area` VALUES ('371083', '乳山市', '371000');
INSERT INTO `sys_area` VALUES ('371100', '日照市', '370000');
INSERT INTO `sys_area` VALUES ('371101', '市辖区', '371100');
INSERT INTO `sys_area` VALUES ('371102', '东港区', '371100');
INSERT INTO `sys_area` VALUES ('371103', '岚山区', '371100');
INSERT INTO `sys_area` VALUES ('371121', '五莲县', '371100');
INSERT INTO `sys_area` VALUES ('371122', '莒县', '371100');
INSERT INTO `sys_area` VALUES ('371200', '莱芜市', '370000');
INSERT INTO `sys_area` VALUES ('371201', '市辖区', '371200');
INSERT INTO `sys_area` VALUES ('371202', '莱城区', '371200');
INSERT INTO `sys_area` VALUES ('371203', '钢城区', '371200');
INSERT INTO `sys_area` VALUES ('371300', '临沂市', '370000');
INSERT INTO `sys_area` VALUES ('371301', '市辖区', '371300');
INSERT INTO `sys_area` VALUES ('371302', '兰山区', '371300');
INSERT INTO `sys_area` VALUES ('371311', '罗庄区', '371300');
INSERT INTO `sys_area` VALUES ('371312', '河东区', '371300');
INSERT INTO `sys_area` VALUES ('371321', '沂南县', '371300');
INSERT INTO `sys_area` VALUES ('371322', '郯城县', '371300');
INSERT INTO `sys_area` VALUES ('371323', '沂水县', '371300');
INSERT INTO `sys_area` VALUES ('371324', '兰陵县', '371300');
INSERT INTO `sys_area` VALUES ('371325', '费县', '371300');
INSERT INTO `sys_area` VALUES ('371326', '平邑县', '371300');
INSERT INTO `sys_area` VALUES ('371327', '莒南县', '371300');
INSERT INTO `sys_area` VALUES ('371328', '蒙阴县', '371300');
INSERT INTO `sys_area` VALUES ('371329', '临沭县', '371300');
INSERT INTO `sys_area` VALUES ('371400', '德州市', '370000');
INSERT INTO `sys_area` VALUES ('371401', '市辖区', '371400');
INSERT INTO `sys_area` VALUES ('371402', '德城区', '371400');
INSERT INTO `sys_area` VALUES ('371403', '陵城区', '371400');
INSERT INTO `sys_area` VALUES ('371422', '宁津县', '371400');
INSERT INTO `sys_area` VALUES ('371423', '庆云县', '371400');
INSERT INTO `sys_area` VALUES ('371424', '临邑县', '371400');
INSERT INTO `sys_area` VALUES ('371425', '齐河县', '371400');
INSERT INTO `sys_area` VALUES ('371426', '平原县', '371400');
INSERT INTO `sys_area` VALUES ('371427', '夏津县', '371400');
INSERT INTO `sys_area` VALUES ('371428', '武城县', '371400');
INSERT INTO `sys_area` VALUES ('371481', '乐陵市', '371400');
INSERT INTO `sys_area` VALUES ('371482', '禹城市', '371400');
INSERT INTO `sys_area` VALUES ('371500', '聊城市', '370000');
INSERT INTO `sys_area` VALUES ('371501', '市辖区', '371500');
INSERT INTO `sys_area` VALUES ('371502', '东昌府区', '371500');
INSERT INTO `sys_area` VALUES ('371521', '阳谷县', '371500');
INSERT INTO `sys_area` VALUES ('371522', '莘县', '371500');
INSERT INTO `sys_area` VALUES ('371523', '茌平县', '371500');
INSERT INTO `sys_area` VALUES ('371524', '东阿县', '371500');
INSERT INTO `sys_area` VALUES ('371525', '冠县', '371500');
INSERT INTO `sys_area` VALUES ('371526', '高唐县', '371500');
INSERT INTO `sys_area` VALUES ('371581', '临清市', '371500');
INSERT INTO `sys_area` VALUES ('371600', '滨州市', '370000');
INSERT INTO `sys_area` VALUES ('371601', '市辖区', '371600');
INSERT INTO `sys_area` VALUES ('371602', '滨城区', '371600');
INSERT INTO `sys_area` VALUES ('371603', '沾化区', '371600');
INSERT INTO `sys_area` VALUES ('371621', '惠民县', '371600');
INSERT INTO `sys_area` VALUES ('371622', '阳信县', '371600');
INSERT INTO `sys_area` VALUES ('371623', '无棣县', '371600');
INSERT INTO `sys_area` VALUES ('371625', '博兴县', '371600');
INSERT INTO `sys_area` VALUES ('371626', '邹平县', '371600');
INSERT INTO `sys_area` VALUES ('371700', '菏泽市', '370000');
INSERT INTO `sys_area` VALUES ('371701', '市辖区', '371700');
INSERT INTO `sys_area` VALUES ('371702', '牡丹区', '371700');
INSERT INTO `sys_area` VALUES ('371703', '定陶区', '371700');
INSERT INTO `sys_area` VALUES ('371721', '曹县', '371700');
INSERT INTO `sys_area` VALUES ('371722', '单县', '371700');
INSERT INTO `sys_area` VALUES ('371723', '成武县', '371700');
INSERT INTO `sys_area` VALUES ('371724', '巨野县', '371700');
INSERT INTO `sys_area` VALUES ('371725', '郓城县', '371700');
INSERT INTO `sys_area` VALUES ('371726', '鄄城县', '371700');
INSERT INTO `sys_area` VALUES ('371728', '东明县', '371700');
INSERT INTO `sys_area` VALUES ('410000', '河南省', null);
INSERT INTO `sys_area` VALUES ('410100', '郑州市', '410000');
INSERT INTO `sys_area` VALUES ('410101', '市辖区', '410100');
INSERT INTO `sys_area` VALUES ('410102', '中原区', '410100');
INSERT INTO `sys_area` VALUES ('410103', '二七区', '410100');
INSERT INTO `sys_area` VALUES ('410104', '管城回族区', '410100');
INSERT INTO `sys_area` VALUES ('410105', '金水区', '410100');
INSERT INTO `sys_area` VALUES ('410106', '上街区', '410100');
INSERT INTO `sys_area` VALUES ('410108', '惠济区', '410100');
INSERT INTO `sys_area` VALUES ('410122', '中牟县', '410100');
INSERT INTO `sys_area` VALUES ('410181', '巩义市', '410100');
INSERT INTO `sys_area` VALUES ('410182', '荥阳市', '410100');
INSERT INTO `sys_area` VALUES ('410183', '新密市', '410100');
INSERT INTO `sys_area` VALUES ('410184', '新郑市', '410100');
INSERT INTO `sys_area` VALUES ('410185', '登封市', '410100');
INSERT INTO `sys_area` VALUES ('410200', '开封市', '410000');
INSERT INTO `sys_area` VALUES ('410201', '市辖区', '410200');
INSERT INTO `sys_area` VALUES ('410202', '龙亭区', '410200');
INSERT INTO `sys_area` VALUES ('410203', '顺河回族区', '410200');
INSERT INTO `sys_area` VALUES ('410204', '鼓楼区', '410200');
INSERT INTO `sys_area` VALUES ('410205', '禹王台区', '410200');
INSERT INTO `sys_area` VALUES ('410211', '金明区', '410200');
INSERT INTO `sys_area` VALUES ('410212', '祥符区', '410200');
INSERT INTO `sys_area` VALUES ('410221', '杞县', '410200');
INSERT INTO `sys_area` VALUES ('410222', '通许县', '410200');
INSERT INTO `sys_area` VALUES ('410223', '尉氏县', '410200');
INSERT INTO `sys_area` VALUES ('410225', '兰考县', '410200');
INSERT INTO `sys_area` VALUES ('410300', '洛阳市', '410000');
INSERT INTO `sys_area` VALUES ('410301', '市辖区', '410300');
INSERT INTO `sys_area` VALUES ('410302', '老城区', '410300');
INSERT INTO `sys_area` VALUES ('410303', '西工区', '410300');
INSERT INTO `sys_area` VALUES ('410304', '瀍河回族区', '410300');
INSERT INTO `sys_area` VALUES ('410305', '涧西区', '410300');
INSERT INTO `sys_area` VALUES ('410306', '吉利区', '410300');
INSERT INTO `sys_area` VALUES ('410311', '洛龙区', '410300');
INSERT INTO `sys_area` VALUES ('410322', '孟津县', '410300');
INSERT INTO `sys_area` VALUES ('410323', '新安县', '410300');
INSERT INTO `sys_area` VALUES ('410324', '栾川县', '410300');
INSERT INTO `sys_area` VALUES ('410325', '嵩县', '410300');
INSERT INTO `sys_area` VALUES ('410326', '汝阳县', '410300');
INSERT INTO `sys_area` VALUES ('410327', '宜阳县', '410300');
INSERT INTO `sys_area` VALUES ('410328', '洛宁县', '410300');
INSERT INTO `sys_area` VALUES ('410329', '伊川县', '410300');
INSERT INTO `sys_area` VALUES ('410381', '偃师市', '410300');
INSERT INTO `sys_area` VALUES ('410400', '平顶山市', '410000');
INSERT INTO `sys_area` VALUES ('410401', '市辖区', '410400');
INSERT INTO `sys_area` VALUES ('410402', '新华区', '410400');
INSERT INTO `sys_area` VALUES ('410403', '卫东区', '410400');
INSERT INTO `sys_area` VALUES ('410404', '石龙区', '410400');
INSERT INTO `sys_area` VALUES ('410411', '湛河区', '410400');
INSERT INTO `sys_area` VALUES ('410421', '宝丰县', '410400');
INSERT INTO `sys_area` VALUES ('410422', '叶县', '410400');
INSERT INTO `sys_area` VALUES ('410423', '鲁山县', '410400');
INSERT INTO `sys_area` VALUES ('410425', '郏县', '410400');
INSERT INTO `sys_area` VALUES ('410481', '舞钢市', '410400');
INSERT INTO `sys_area` VALUES ('410482', '汝州市', '410400');
INSERT INTO `sys_area` VALUES ('410500', '安阳市', '410000');
INSERT INTO `sys_area` VALUES ('410501', '市辖区', '410500');
INSERT INTO `sys_area` VALUES ('410502', '文峰区', '410500');
INSERT INTO `sys_area` VALUES ('410503', '北关区', '410500');
INSERT INTO `sys_area` VALUES ('410505', '殷都区', '410500');
INSERT INTO `sys_area` VALUES ('410506', '龙安区', '410500');
INSERT INTO `sys_area` VALUES ('410522', '安阳县', '410500');
INSERT INTO `sys_area` VALUES ('410523', '汤阴县', '410500');
INSERT INTO `sys_area` VALUES ('410526', '滑县', '410500');
INSERT INTO `sys_area` VALUES ('410527', '内黄县', '410500');
INSERT INTO `sys_area` VALUES ('410581', '林州市', '410500');
INSERT INTO `sys_area` VALUES ('410600', '鹤壁市', '410000');
INSERT INTO `sys_area` VALUES ('410601', '市辖区', '410600');
INSERT INTO `sys_area` VALUES ('410602', '鹤山区', '410600');
INSERT INTO `sys_area` VALUES ('410603', '山城区', '410600');
INSERT INTO `sys_area` VALUES ('410611', '淇滨区', '410600');
INSERT INTO `sys_area` VALUES ('410621', '浚县', '410600');
INSERT INTO `sys_area` VALUES ('410622', '淇县', '410600');
INSERT INTO `sys_area` VALUES ('410700', '新乡市', '410000');
INSERT INTO `sys_area` VALUES ('410701', '市辖区', '410700');
INSERT INTO `sys_area` VALUES ('410702', '红旗区', '410700');
INSERT INTO `sys_area` VALUES ('410703', '卫滨区', '410700');
INSERT INTO `sys_area` VALUES ('410704', '凤泉区', '410700');
INSERT INTO `sys_area` VALUES ('410711', '牧野区', '410700');
INSERT INTO `sys_area` VALUES ('410721', '新乡县', '410700');
INSERT INTO `sys_area` VALUES ('410724', '获嘉县', '410700');
INSERT INTO `sys_area` VALUES ('410725', '原阳县', '410700');
INSERT INTO `sys_area` VALUES ('410726', '延津县', '410700');
INSERT INTO `sys_area` VALUES ('410727', '封丘县', '410700');
INSERT INTO `sys_area` VALUES ('410728', '长垣县', '410700');
INSERT INTO `sys_area` VALUES ('410781', '卫辉市', '410700');
INSERT INTO `sys_area` VALUES ('410782', '辉县市', '410700');
INSERT INTO `sys_area` VALUES ('410800', '焦作市', '410000');
INSERT INTO `sys_area` VALUES ('410801', '市辖区', '410800');
INSERT INTO `sys_area` VALUES ('410802', '解放区', '410800');
INSERT INTO `sys_area` VALUES ('410803', '中站区', '410800');
INSERT INTO `sys_area` VALUES ('410804', '马村区', '410800');
INSERT INTO `sys_area` VALUES ('410811', '山阳区', '410800');
INSERT INTO `sys_area` VALUES ('410821', '修武县', '410800');
INSERT INTO `sys_area` VALUES ('410822', '博爱县', '410800');
INSERT INTO `sys_area` VALUES ('410823', '武陟县', '410800');
INSERT INTO `sys_area` VALUES ('410825', '温县', '410800');
INSERT INTO `sys_area` VALUES ('410882', '沁阳市', '410800');
INSERT INTO `sys_area` VALUES ('410883', '孟州市', '410800');
INSERT INTO `sys_area` VALUES ('410900', '濮阳市', '410000');
INSERT INTO `sys_area` VALUES ('410901', '市辖区', '410900');
INSERT INTO `sys_area` VALUES ('410902', '华龙区', '410900');
INSERT INTO `sys_area` VALUES ('410922', '清丰县', '410900');
INSERT INTO `sys_area` VALUES ('410923', '南乐县', '410900');
INSERT INTO `sys_area` VALUES ('410926', '范县', '410900');
INSERT INTO `sys_area` VALUES ('410927', '台前县', '410900');
INSERT INTO `sys_area` VALUES ('410928', '濮阳县', '410900');
INSERT INTO `sys_area` VALUES ('411000', '许昌市', '410000');
INSERT INTO `sys_area` VALUES ('411001', '市辖区', '411000');
INSERT INTO `sys_area` VALUES ('411002', '魏都区', '411000');
INSERT INTO `sys_area` VALUES ('411023', '许昌县', '411000');
INSERT INTO `sys_area` VALUES ('411024', '鄢陵县', '411000');
INSERT INTO `sys_area` VALUES ('411025', '襄城县', '411000');
INSERT INTO `sys_area` VALUES ('411081', '禹州市', '411000');
INSERT INTO `sys_area` VALUES ('411082', '长葛市', '411000');
INSERT INTO `sys_area` VALUES ('411100', '漯河市', '410000');
INSERT INTO `sys_area` VALUES ('411101', '市辖区', '411100');
INSERT INTO `sys_area` VALUES ('411102', '源汇区', '411100');
INSERT INTO `sys_area` VALUES ('411103', '郾城区', '411100');
INSERT INTO `sys_area` VALUES ('411104', '召陵区', '411100');
INSERT INTO `sys_area` VALUES ('411121', '舞阳县', '411100');
INSERT INTO `sys_area` VALUES ('411122', '临颍县', '411100');
INSERT INTO `sys_area` VALUES ('411200', '三门峡市', '410000');
INSERT INTO `sys_area` VALUES ('411201', '市辖区', '411200');
INSERT INTO `sys_area` VALUES ('411202', '湖滨区', '411200');
INSERT INTO `sys_area` VALUES ('411203', '陕州区', '411200');
INSERT INTO `sys_area` VALUES ('411221', '渑池县', '411200');
INSERT INTO `sys_area` VALUES ('411224', '卢氏县', '411200');
INSERT INTO `sys_area` VALUES ('411281', '义马市', '411200');
INSERT INTO `sys_area` VALUES ('411282', '灵宝市', '411200');
INSERT INTO `sys_area` VALUES ('411300', '南阳市', '410000');
INSERT INTO `sys_area` VALUES ('411301', '市辖区', '411300');
INSERT INTO `sys_area` VALUES ('411302', '宛城区', '411300');
INSERT INTO `sys_area` VALUES ('411303', '卧龙区', '411300');
INSERT INTO `sys_area` VALUES ('411321', '南召县', '411300');
INSERT INTO `sys_area` VALUES ('411322', '方城县', '411300');
INSERT INTO `sys_area` VALUES ('411323', '西峡县', '411300');
INSERT INTO `sys_area` VALUES ('411324', '镇平县', '411300');
INSERT INTO `sys_area` VALUES ('411325', '内乡县', '411300');
INSERT INTO `sys_area` VALUES ('411326', '淅川县', '411300');
INSERT INTO `sys_area` VALUES ('411327', '社旗县', '411300');
INSERT INTO `sys_area` VALUES ('411328', '唐河县', '411300');
INSERT INTO `sys_area` VALUES ('411329', '新野县', '411300');
INSERT INTO `sys_area` VALUES ('411330', '桐柏县', '411300');
INSERT INTO `sys_area` VALUES ('411381', '邓州市', '411300');
INSERT INTO `sys_area` VALUES ('411400', '商丘市', '410000');
INSERT INTO `sys_area` VALUES ('411401', '市辖区', '411400');
INSERT INTO `sys_area` VALUES ('411402', '梁园区', '411400');
INSERT INTO `sys_area` VALUES ('411403', '睢阳区', '411400');
INSERT INTO `sys_area` VALUES ('411421', '民权县', '411400');
INSERT INTO `sys_area` VALUES ('411422', '睢县', '411400');
INSERT INTO `sys_area` VALUES ('411423', '宁陵县', '411400');
INSERT INTO `sys_area` VALUES ('411424', '柘城县', '411400');
INSERT INTO `sys_area` VALUES ('411425', '虞城县', '411400');
INSERT INTO `sys_area` VALUES ('411426', '夏邑县', '411400');
INSERT INTO `sys_area` VALUES ('411481', '永城市', '411400');
INSERT INTO `sys_area` VALUES ('411500', '信阳市', '410000');
INSERT INTO `sys_area` VALUES ('411501', '市辖区', '411500');
INSERT INTO `sys_area` VALUES ('411502', '浉河区', '411500');
INSERT INTO `sys_area` VALUES ('411503', '平桥区', '411500');
INSERT INTO `sys_area` VALUES ('411521', '罗山县', '411500');
INSERT INTO `sys_area` VALUES ('411522', '光山县', '411500');
INSERT INTO `sys_area` VALUES ('411523', '新县', '411500');
INSERT INTO `sys_area` VALUES ('411524', '商城县', '411500');
INSERT INTO `sys_area` VALUES ('411525', '固始县', '411500');
INSERT INTO `sys_area` VALUES ('411526', '潢川县', '411500');
INSERT INTO `sys_area` VALUES ('411527', '淮滨县', '411500');
INSERT INTO `sys_area` VALUES ('411528', '息县', '411500');
INSERT INTO `sys_area` VALUES ('411600', '周口市', '410000');
INSERT INTO `sys_area` VALUES ('411601', '市辖区', '411600');
INSERT INTO `sys_area` VALUES ('411602', '川汇区', '411600');
INSERT INTO `sys_area` VALUES ('411621', '扶沟县', '411600');
INSERT INTO `sys_area` VALUES ('411622', '西华县', '411600');
INSERT INTO `sys_area` VALUES ('411623', '商水县', '411600');
INSERT INTO `sys_area` VALUES ('411624', '沈丘县', '411600');
INSERT INTO `sys_area` VALUES ('411625', '郸城县', '411600');
INSERT INTO `sys_area` VALUES ('411626', '淮阳县', '411600');
INSERT INTO `sys_area` VALUES ('411627', '太康县', '411600');
INSERT INTO `sys_area` VALUES ('411628', '鹿邑县', '411600');
INSERT INTO `sys_area` VALUES ('411681', '项城市', '411600');
INSERT INTO `sys_area` VALUES ('411700', '驻马店市', '410000');
INSERT INTO `sys_area` VALUES ('411701', '市辖区', '411700');
INSERT INTO `sys_area` VALUES ('411702', '驿城区', '411700');
INSERT INTO `sys_area` VALUES ('411721', '西平县', '411700');
INSERT INTO `sys_area` VALUES ('411722', '上蔡县', '411700');
INSERT INTO `sys_area` VALUES ('411723', '平舆县', '411700');
INSERT INTO `sys_area` VALUES ('411724', '正阳县', '411700');
INSERT INTO `sys_area` VALUES ('411725', '确山县', '411700');
INSERT INTO `sys_area` VALUES ('411726', '泌阳县', '411700');
INSERT INTO `sys_area` VALUES ('411727', '汝南县', '411700');
INSERT INTO `sys_area` VALUES ('411728', '遂平县', '411700');
INSERT INTO `sys_area` VALUES ('411729', '新蔡县', '411700');
INSERT INTO `sys_area` VALUES ('419000', '省直辖县级行政区划', '410000');
INSERT INTO `sys_area` VALUES ('419001', '济源市', '419000');
INSERT INTO `sys_area` VALUES ('420000', '湖北省', null);
INSERT INTO `sys_area` VALUES ('420100', '武汉市', '420000');
INSERT INTO `sys_area` VALUES ('420101', '市辖区', '420100');
INSERT INTO `sys_area` VALUES ('420102', '江岸区', '420100');
INSERT INTO `sys_area` VALUES ('420103', '江汉区', '420100');
INSERT INTO `sys_area` VALUES ('420104', '硚口区', '420100');
INSERT INTO `sys_area` VALUES ('420105', '汉阳区', '420100');
INSERT INTO `sys_area` VALUES ('420106', '武昌区', '420100');
INSERT INTO `sys_area` VALUES ('420107', '青山区', '420100');
INSERT INTO `sys_area` VALUES ('420111', '洪山区', '420100');
INSERT INTO `sys_area` VALUES ('420112', '东西湖区', '420100');
INSERT INTO `sys_area` VALUES ('420113', '汉南区', '420100');
INSERT INTO `sys_area` VALUES ('420114', '蔡甸区', '420100');
INSERT INTO `sys_area` VALUES ('420115', '江夏区', '420100');
INSERT INTO `sys_area` VALUES ('420116', '黄陂区', '420100');
INSERT INTO `sys_area` VALUES ('420117', '新洲区', '420100');
INSERT INTO `sys_area` VALUES ('420200', '黄石市', '420000');
INSERT INTO `sys_area` VALUES ('420201', '市辖区', '420200');
INSERT INTO `sys_area` VALUES ('420202', '黄石港区', '420200');
INSERT INTO `sys_area` VALUES ('420203', '西塞山区', '420200');
INSERT INTO `sys_area` VALUES ('420204', '下陆区', '420200');
INSERT INTO `sys_area` VALUES ('420205', '铁山区', '420200');
INSERT INTO `sys_area` VALUES ('420222', '阳新县', '420200');
INSERT INTO `sys_area` VALUES ('420281', '大冶市', '420200');
INSERT INTO `sys_area` VALUES ('420300', '十堰市', '420000');
INSERT INTO `sys_area` VALUES ('420301', '市辖区', '420300');
INSERT INTO `sys_area` VALUES ('420302', '茅箭区', '420300');
INSERT INTO `sys_area` VALUES ('420303', '张湾区', '420300');
INSERT INTO `sys_area` VALUES ('420304', '郧阳区', '420300');
INSERT INTO `sys_area` VALUES ('420322', '郧西县', '420300');
INSERT INTO `sys_area` VALUES ('420323', '竹山县', '420300');
INSERT INTO `sys_area` VALUES ('420324', '竹溪县', '420300');
INSERT INTO `sys_area` VALUES ('420325', '房县', '420300');
INSERT INTO `sys_area` VALUES ('420381', '丹江口市', '420300');
INSERT INTO `sys_area` VALUES ('420500', '宜昌市', '420000');
INSERT INTO `sys_area` VALUES ('420501', '市辖区', '420500');
INSERT INTO `sys_area` VALUES ('420502', '西陵区', '420500');
INSERT INTO `sys_area` VALUES ('420503', '伍家岗区', '420500');
INSERT INTO `sys_area` VALUES ('420504', '点军区', '420500');
INSERT INTO `sys_area` VALUES ('420505', '猇亭区', '420500');
INSERT INTO `sys_area` VALUES ('420506', '夷陵区', '420500');
INSERT INTO `sys_area` VALUES ('420525', '远安县', '420500');
INSERT INTO `sys_area` VALUES ('420526', '兴山县', '420500');
INSERT INTO `sys_area` VALUES ('420527', '秭归县', '420500');
INSERT INTO `sys_area` VALUES ('420528', '长阳土家族自治县', '420500');
INSERT INTO `sys_area` VALUES ('420529', '五峰土家族自治县', '420500');
INSERT INTO `sys_area` VALUES ('420581', '宜都市', '420500');
INSERT INTO `sys_area` VALUES ('420582', '当阳市', '420500');
INSERT INTO `sys_area` VALUES ('420583', '枝江市', '420500');
INSERT INTO `sys_area` VALUES ('420600', '襄阳市', '420000');
INSERT INTO `sys_area` VALUES ('420601', '市辖区', '420600');
INSERT INTO `sys_area` VALUES ('420602', '襄城区', '420600');
INSERT INTO `sys_area` VALUES ('420606', '樊城区', '420600');
INSERT INTO `sys_area` VALUES ('420607', '襄州区', '420600');
INSERT INTO `sys_area` VALUES ('420624', '南漳县', '420600');
INSERT INTO `sys_area` VALUES ('420625', '谷城县', '420600');
INSERT INTO `sys_area` VALUES ('420626', '保康县', '420600');
INSERT INTO `sys_area` VALUES ('420682', '老河口市', '420600');
INSERT INTO `sys_area` VALUES ('420683', '枣阳市', '420600');
INSERT INTO `sys_area` VALUES ('420684', '宜城市', '420600');
INSERT INTO `sys_area` VALUES ('420700', '鄂州市', '420000');
INSERT INTO `sys_area` VALUES ('420701', '市辖区', '420700');
INSERT INTO `sys_area` VALUES ('420702', '梁子湖区', '420700');
INSERT INTO `sys_area` VALUES ('420703', '华容区', '420700');
INSERT INTO `sys_area` VALUES ('420704', '鄂城区', '420700');
INSERT INTO `sys_area` VALUES ('420800', '荆门市', '420000');
INSERT INTO `sys_area` VALUES ('420801', '市辖区', '420800');
INSERT INTO `sys_area` VALUES ('420802', '东宝区', '420800');
INSERT INTO `sys_area` VALUES ('420804', '掇刀区', '420800');
INSERT INTO `sys_area` VALUES ('420821', '京山县', '420800');
INSERT INTO `sys_area` VALUES ('420822', '沙洋县', '420800');
INSERT INTO `sys_area` VALUES ('420881', '钟祥市', '420800');
INSERT INTO `sys_area` VALUES ('420900', '孝感市', '420000');
INSERT INTO `sys_area` VALUES ('420901', '市辖区', '420900');
INSERT INTO `sys_area` VALUES ('420902', '孝南区', '420900');
INSERT INTO `sys_area` VALUES ('420921', '孝昌县', '420900');
INSERT INTO `sys_area` VALUES ('420922', '大悟县', '420900');
INSERT INTO `sys_area` VALUES ('420923', '云梦县', '420900');
INSERT INTO `sys_area` VALUES ('420981', '应城市', '420900');
INSERT INTO `sys_area` VALUES ('420982', '安陆市', '420900');
INSERT INTO `sys_area` VALUES ('420984', '汉川市', '420900');
INSERT INTO `sys_area` VALUES ('421000', '荆州市', '420000');
INSERT INTO `sys_area` VALUES ('421001', '市辖区', '421000');
INSERT INTO `sys_area` VALUES ('421002', '沙市区', '421000');
INSERT INTO `sys_area` VALUES ('421003', '荆州区', '421000');
INSERT INTO `sys_area` VALUES ('421022', '公安县', '421000');
INSERT INTO `sys_area` VALUES ('421023', '监利县', '421000');
INSERT INTO `sys_area` VALUES ('421024', '江陵县', '421000');
INSERT INTO `sys_area` VALUES ('421081', '石首市', '421000');
INSERT INTO `sys_area` VALUES ('421083', '洪湖市', '421000');
INSERT INTO `sys_area` VALUES ('421087', '松滋市', '421000');
INSERT INTO `sys_area` VALUES ('421100', '黄冈市', '420000');
INSERT INTO `sys_area` VALUES ('421101', '市辖区', '421100');
INSERT INTO `sys_area` VALUES ('421102', '黄州区', '421100');
INSERT INTO `sys_area` VALUES ('421121', '团风县', '421100');
INSERT INTO `sys_area` VALUES ('421122', '红安县', '421100');
INSERT INTO `sys_area` VALUES ('421123', '罗田县', '421100');
INSERT INTO `sys_area` VALUES ('421124', '英山县', '421100');
INSERT INTO `sys_area` VALUES ('421125', '浠水县', '421100');
INSERT INTO `sys_area` VALUES ('421126', '蕲春县', '421100');
INSERT INTO `sys_area` VALUES ('421127', '黄梅县', '421100');
INSERT INTO `sys_area` VALUES ('421181', '麻城市', '421100');
INSERT INTO `sys_area` VALUES ('421182', '武穴市', '421100');
INSERT INTO `sys_area` VALUES ('421200', '咸宁市', '420000');
INSERT INTO `sys_area` VALUES ('421201', '市辖区', '421200');
INSERT INTO `sys_area` VALUES ('421202', '咸安区', '421200');
INSERT INTO `sys_area` VALUES ('421221', '嘉鱼县', '421200');
INSERT INTO `sys_area` VALUES ('421222', '通城县', '421200');
INSERT INTO `sys_area` VALUES ('421223', '崇阳县', '421200');
INSERT INTO `sys_area` VALUES ('421224', '通山县', '421200');
INSERT INTO `sys_area` VALUES ('421281', '赤壁市', '421200');
INSERT INTO `sys_area` VALUES ('421300', '随州市', '420000');
INSERT INTO `sys_area` VALUES ('421301', '市辖区', '421300');
INSERT INTO `sys_area` VALUES ('421303', '曾都区', '421300');
INSERT INTO `sys_area` VALUES ('421321', '随县', '421300');
INSERT INTO `sys_area` VALUES ('421381', '广水市', '421300');
INSERT INTO `sys_area` VALUES ('422800', '恩施土家族苗族自治州', '420000');
INSERT INTO `sys_area` VALUES ('422801', '恩施市', '422800');
INSERT INTO `sys_area` VALUES ('422802', '利川市', '422800');
INSERT INTO `sys_area` VALUES ('422822', '建始县', '422800');
INSERT INTO `sys_area` VALUES ('422823', '巴东县', '422800');
INSERT INTO `sys_area` VALUES ('422825', '宣恩县', '422800');
INSERT INTO `sys_area` VALUES ('422826', '咸丰县', '422800');
INSERT INTO `sys_area` VALUES ('422827', '来凤县', '422800');
INSERT INTO `sys_area` VALUES ('422828', '鹤峰县', '422800');
INSERT INTO `sys_area` VALUES ('429000', '省直辖县级行政区划', '420000');
INSERT INTO `sys_area` VALUES ('429004', '仙桃市', '429000');
INSERT INTO `sys_area` VALUES ('429005', '潜江市', '429000');
INSERT INTO `sys_area` VALUES ('429006', '天门市', '429000');
INSERT INTO `sys_area` VALUES ('429021', '神农架林区', '429000');
INSERT INTO `sys_area` VALUES ('430000', '湖南省', null);
INSERT INTO `sys_area` VALUES ('430100', '长沙市', '430000');
INSERT INTO `sys_area` VALUES ('430101', '市辖区', '430100');
INSERT INTO `sys_area` VALUES ('430102', '芙蓉区', '430100');
INSERT INTO `sys_area` VALUES ('430103', '天心区', '430100');
INSERT INTO `sys_area` VALUES ('430104', '岳麓区', '430100');
INSERT INTO `sys_area` VALUES ('430105', '开福区', '430100');
INSERT INTO `sys_area` VALUES ('430111', '雨花区', '430100');
INSERT INTO `sys_area` VALUES ('430112', '望城区', '430100');
INSERT INTO `sys_area` VALUES ('430121', '长沙县', '430100');
INSERT INTO `sys_area` VALUES ('430124', '宁乡县', '430100');
INSERT INTO `sys_area` VALUES ('430181', '浏阳市', '430100');
INSERT INTO `sys_area` VALUES ('430200', '株洲市', '430000');
INSERT INTO `sys_area` VALUES ('430201', '市辖区', '430200');
INSERT INTO `sys_area` VALUES ('430202', '荷塘区', '430200');
INSERT INTO `sys_area` VALUES ('430203', '芦淞区', '430200');
INSERT INTO `sys_area` VALUES ('430204', '石峰区', '430200');
INSERT INTO `sys_area` VALUES ('430211', '天元区', '430200');
INSERT INTO `sys_area` VALUES ('430221', '株洲县', '430200');
INSERT INTO `sys_area` VALUES ('430223', '攸县', '430200');
INSERT INTO `sys_area` VALUES ('430224', '茶陵县', '430200');
INSERT INTO `sys_area` VALUES ('430225', '炎陵县', '430200');
INSERT INTO `sys_area` VALUES ('430281', '醴陵市', '430200');
INSERT INTO `sys_area` VALUES ('430300', '湘潭市', '430000');
INSERT INTO `sys_area` VALUES ('430301', '市辖区', '430300');
INSERT INTO `sys_area` VALUES ('430302', '雨湖区', '430300');
INSERT INTO `sys_area` VALUES ('430304', '岳塘区', '430300');
INSERT INTO `sys_area` VALUES ('430321', '湘潭县', '430300');
INSERT INTO `sys_area` VALUES ('430381', '湘乡市', '430300');
INSERT INTO `sys_area` VALUES ('430382', '韶山市', '430300');
INSERT INTO `sys_area` VALUES ('430400', '衡阳市', '430000');
INSERT INTO `sys_area` VALUES ('430401', '市辖区', '430400');
INSERT INTO `sys_area` VALUES ('430405', '珠晖区', '430400');
INSERT INTO `sys_area` VALUES ('430406', '雁峰区', '430400');
INSERT INTO `sys_area` VALUES ('430407', '石鼓区', '430400');
INSERT INTO `sys_area` VALUES ('430408', '蒸湘区', '430400');
INSERT INTO `sys_area` VALUES ('430412', '南岳区', '430400');
INSERT INTO `sys_area` VALUES ('430421', '衡阳县', '430400');
INSERT INTO `sys_area` VALUES ('430422', '衡南县', '430400');
INSERT INTO `sys_area` VALUES ('430423', '衡山县', '430400');
INSERT INTO `sys_area` VALUES ('430424', '衡东县', '430400');
INSERT INTO `sys_area` VALUES ('430426', '祁东县', '430400');
INSERT INTO `sys_area` VALUES ('430481', '耒阳市', '430400');
INSERT INTO `sys_area` VALUES ('430482', '常宁市', '430400');
INSERT INTO `sys_area` VALUES ('430500', '邵阳市', '430000');
INSERT INTO `sys_area` VALUES ('430501', '市辖区', '430500');
INSERT INTO `sys_area` VALUES ('430502', '双清区', '430500');
INSERT INTO `sys_area` VALUES ('430503', '大祥区', '430500');
INSERT INTO `sys_area` VALUES ('430511', '北塔区', '430500');
INSERT INTO `sys_area` VALUES ('430521', '邵东县', '430500');
INSERT INTO `sys_area` VALUES ('430522', '新邵县', '430500');
INSERT INTO `sys_area` VALUES ('430523', '邵阳县', '430500');
INSERT INTO `sys_area` VALUES ('430524', '隆回县', '430500');
INSERT INTO `sys_area` VALUES ('430525', '洞口县', '430500');
INSERT INTO `sys_area` VALUES ('430527', '绥宁县', '430500');
INSERT INTO `sys_area` VALUES ('430528', '新宁县', '430500');
INSERT INTO `sys_area` VALUES ('430529', '城步苗族自治县', '430500');
INSERT INTO `sys_area` VALUES ('430581', '武冈市', '430500');
INSERT INTO `sys_area` VALUES ('430600', '岳阳市', '430000');
INSERT INTO `sys_area` VALUES ('430601', '市辖区', '430600');
INSERT INTO `sys_area` VALUES ('430602', '岳阳楼区', '430600');
INSERT INTO `sys_area` VALUES ('430603', '云溪区', '430600');
INSERT INTO `sys_area` VALUES ('430611', '君山区', '430600');
INSERT INTO `sys_area` VALUES ('430621', '岳阳县', '430600');
INSERT INTO `sys_area` VALUES ('430623', '华容县', '430600');
INSERT INTO `sys_area` VALUES ('430624', '湘阴县', '430600');
INSERT INTO `sys_area` VALUES ('430626', '平江县', '430600');
INSERT INTO `sys_area` VALUES ('430681', '汨罗市', '430600');
INSERT INTO `sys_area` VALUES ('430682', '临湘市', '430600');
INSERT INTO `sys_area` VALUES ('430700', '常德市', '430000');
INSERT INTO `sys_area` VALUES ('430701', '市辖区', '430700');
INSERT INTO `sys_area` VALUES ('430702', '武陵区', '430700');
INSERT INTO `sys_area` VALUES ('430703', '鼎城区', '430700');
INSERT INTO `sys_area` VALUES ('430721', '安乡县', '430700');
INSERT INTO `sys_area` VALUES ('430722', '汉寿县', '430700');
INSERT INTO `sys_area` VALUES ('430723', '澧县', '430700');
INSERT INTO `sys_area` VALUES ('430724', '临澧县', '430700');
INSERT INTO `sys_area` VALUES ('430725', '桃源县', '430700');
INSERT INTO `sys_area` VALUES ('430726', '石门县', '430700');
INSERT INTO `sys_area` VALUES ('430781', '津市市', '430700');
INSERT INTO `sys_area` VALUES ('430800', '张家界市', '430000');
INSERT INTO `sys_area` VALUES ('430801', '市辖区', '430800');
INSERT INTO `sys_area` VALUES ('430802', '永定区', '430800');
INSERT INTO `sys_area` VALUES ('430811', '武陵源区', '430800');
INSERT INTO `sys_area` VALUES ('430821', '慈利县', '430800');
INSERT INTO `sys_area` VALUES ('430822', '桑植县', '430800');
INSERT INTO `sys_area` VALUES ('430900', '益阳市', '430000');
INSERT INTO `sys_area` VALUES ('430901', '市辖区', '430900');
INSERT INTO `sys_area` VALUES ('430902', '资阳区', '430900');
INSERT INTO `sys_area` VALUES ('430903', '赫山区', '430900');
INSERT INTO `sys_area` VALUES ('430921', '南县', '430900');
INSERT INTO `sys_area` VALUES ('430922', '桃江县', '430900');
INSERT INTO `sys_area` VALUES ('430923', '安化县', '430900');
INSERT INTO `sys_area` VALUES ('430981', '沅江市', '430900');
INSERT INTO `sys_area` VALUES ('431000', '郴州市', '430000');
INSERT INTO `sys_area` VALUES ('431001', '市辖区', '431000');
INSERT INTO `sys_area` VALUES ('431002', '北湖区', '431000');
INSERT INTO `sys_area` VALUES ('431003', '苏仙区', '431000');
INSERT INTO `sys_area` VALUES ('431021', '桂阳县', '431000');
INSERT INTO `sys_area` VALUES ('431022', '宜章县', '431000');
INSERT INTO `sys_area` VALUES ('431023', '永兴县', '431000');
INSERT INTO `sys_area` VALUES ('431024', '嘉禾县', '431000');
INSERT INTO `sys_area` VALUES ('431025', '临武县', '431000');
INSERT INTO `sys_area` VALUES ('431026', '汝城县', '431000');
INSERT INTO `sys_area` VALUES ('431027', '桂东县', '431000');
INSERT INTO `sys_area` VALUES ('431028', '安仁县', '431000');
INSERT INTO `sys_area` VALUES ('431081', '资兴市', '431000');
INSERT INTO `sys_area` VALUES ('431100', '永州市', '430000');
INSERT INTO `sys_area` VALUES ('431101', '市辖区', '431100');
INSERT INTO `sys_area` VALUES ('431102', '零陵区', '431100');
INSERT INTO `sys_area` VALUES ('431103', '冷水滩区', '431100');
INSERT INTO `sys_area` VALUES ('431121', '祁阳县', '431100');
INSERT INTO `sys_area` VALUES ('431122', '东安县', '431100');
INSERT INTO `sys_area` VALUES ('431123', '双牌县', '431100');
INSERT INTO `sys_area` VALUES ('431124', '道县', '431100');
INSERT INTO `sys_area` VALUES ('431125', '江永县', '431100');
INSERT INTO `sys_area` VALUES ('431126', '宁远县', '431100');
INSERT INTO `sys_area` VALUES ('431127', '蓝山县', '431100');
INSERT INTO `sys_area` VALUES ('431128', '新田县', '431100');
INSERT INTO `sys_area` VALUES ('431129', '江华瑶族自治县', '431100');
INSERT INTO `sys_area` VALUES ('431200', '怀化市', '430000');
INSERT INTO `sys_area` VALUES ('431201', '市辖区', '431200');
INSERT INTO `sys_area` VALUES ('431202', '鹤城区', '431200');
INSERT INTO `sys_area` VALUES ('431221', '中方县', '431200');
INSERT INTO `sys_area` VALUES ('431222', '沅陵县', '431200');
INSERT INTO `sys_area` VALUES ('431223', '辰溪县', '431200');
INSERT INTO `sys_area` VALUES ('431224', '溆浦县', '431200');
INSERT INTO `sys_area` VALUES ('431225', '会同县', '431200');
INSERT INTO `sys_area` VALUES ('431226', '麻阳苗族自治县', '431200');
INSERT INTO `sys_area` VALUES ('431227', '新晃侗族自治县', '431200');
INSERT INTO `sys_area` VALUES ('431228', '芷江侗族自治县', '431200');
INSERT INTO `sys_area` VALUES ('431229', '靖州苗族侗族自治县', '431200');
INSERT INTO `sys_area` VALUES ('431230', '通道侗族自治县', '431200');
INSERT INTO `sys_area` VALUES ('431281', '洪江市', '431200');
INSERT INTO `sys_area` VALUES ('431300', '娄底市', '430000');
INSERT INTO `sys_area` VALUES ('431301', '市辖区', '431300');
INSERT INTO `sys_area` VALUES ('431302', '娄星区', '431300');
INSERT INTO `sys_area` VALUES ('431321', '双峰县', '431300');
INSERT INTO `sys_area` VALUES ('431322', '新化县', '431300');
INSERT INTO `sys_area` VALUES ('431381', '冷水江市', '431300');
INSERT INTO `sys_area` VALUES ('431382', '涟源市', '431300');
INSERT INTO `sys_area` VALUES ('433100', '湘西土家族苗族自治州', '430000');
INSERT INTO `sys_area` VALUES ('433101', '吉首市', '433100');
INSERT INTO `sys_area` VALUES ('433122', '泸溪县', '433100');
INSERT INTO `sys_area` VALUES ('433123', '凤凰县', '433100');
INSERT INTO `sys_area` VALUES ('433124', '花垣县', '433100');
INSERT INTO `sys_area` VALUES ('433125', '保靖县', '433100');
INSERT INTO `sys_area` VALUES ('433126', '古丈县', '433100');
INSERT INTO `sys_area` VALUES ('433127', '永顺县', '433100');
INSERT INTO `sys_area` VALUES ('433130', '龙山县', '433100');
INSERT INTO `sys_area` VALUES ('440000', '广东省', null);
INSERT INTO `sys_area` VALUES ('440100', '广州市', '440000');
INSERT INTO `sys_area` VALUES ('440101', '市辖区', '440100');
INSERT INTO `sys_area` VALUES ('440103', '荔湾区', '440100');
INSERT INTO `sys_area` VALUES ('440104', '越秀区', '440100');
INSERT INTO `sys_area` VALUES ('440105', '海珠区', '440100');
INSERT INTO `sys_area` VALUES ('440106', '天河区', '440100');
INSERT INTO `sys_area` VALUES ('440111', '白云区', '440100');
INSERT INTO `sys_area` VALUES ('440112', '黄埔区', '440100');
INSERT INTO `sys_area` VALUES ('440113', '番禺区', '440100');
INSERT INTO `sys_area` VALUES ('440114', '花都区', '440100');
INSERT INTO `sys_area` VALUES ('440115', '南沙区', '440100');
INSERT INTO `sys_area` VALUES ('440117', '从化区', '440100');
INSERT INTO `sys_area` VALUES ('440118', '增城区', '440100');
INSERT INTO `sys_area` VALUES ('440200', '韶关市', '440000');
INSERT INTO `sys_area` VALUES ('440201', '市辖区', '440200');
INSERT INTO `sys_area` VALUES ('440203', '武江区', '440200');
INSERT INTO `sys_area` VALUES ('440204', '浈江区', '440200');
INSERT INTO `sys_area` VALUES ('440205', '曲江区', '440200');
INSERT INTO `sys_area` VALUES ('440222', '始兴县', '440200');
INSERT INTO `sys_area` VALUES ('440224', '仁化县', '440200');
INSERT INTO `sys_area` VALUES ('440229', '翁源县', '440200');
INSERT INTO `sys_area` VALUES ('440232', '乳源瑶族自治县', '440200');
INSERT INTO `sys_area` VALUES ('440233', '新丰县', '440200');
INSERT INTO `sys_area` VALUES ('440281', '乐昌市', '440200');
INSERT INTO `sys_area` VALUES ('440282', '南雄市', '440200');
INSERT INTO `sys_area` VALUES ('440300', '深圳市', '440000');
INSERT INTO `sys_area` VALUES ('440301', '市辖区', '440300');
INSERT INTO `sys_area` VALUES ('440303', '罗湖区', '440300');
INSERT INTO `sys_area` VALUES ('440304', '福田区', '440300');
INSERT INTO `sys_area` VALUES ('440305', '南山区', '440300');
INSERT INTO `sys_area` VALUES ('440306', '宝安区', '440300');
INSERT INTO `sys_area` VALUES ('440307', '龙岗区', '440300');
INSERT INTO `sys_area` VALUES ('440308', '盐田区', '440300');
INSERT INTO `sys_area` VALUES ('440400', '珠海市', '440000');
INSERT INTO `sys_area` VALUES ('440401', '市辖区', '440400');
INSERT INTO `sys_area` VALUES ('440402', '香洲区', '440400');
INSERT INTO `sys_area` VALUES ('440403', '斗门区', '440400');
INSERT INTO `sys_area` VALUES ('440404', '金湾区', '440400');
INSERT INTO `sys_area` VALUES ('440500', '汕头市', '440000');
INSERT INTO `sys_area` VALUES ('440501', '市辖区', '440500');
INSERT INTO `sys_area` VALUES ('440507', '龙湖区', '440500');
INSERT INTO `sys_area` VALUES ('440511', '金平区', '440500');
INSERT INTO `sys_area` VALUES ('440512', '濠江区', '440500');
INSERT INTO `sys_area` VALUES ('440513', '潮阳区', '440500');
INSERT INTO `sys_area` VALUES ('440514', '潮南区', '440500');
INSERT INTO `sys_area` VALUES ('440515', '澄海区', '440500');
INSERT INTO `sys_area` VALUES ('440523', '南澳县', '440500');
INSERT INTO `sys_area` VALUES ('440600', '佛山市', '440000');
INSERT INTO `sys_area` VALUES ('440601', '市辖区', '440600');
INSERT INTO `sys_area` VALUES ('440604', '禅城区', '440600');
INSERT INTO `sys_area` VALUES ('440605', '南海区', '440600');
INSERT INTO `sys_area` VALUES ('440606', '顺德区', '440600');
INSERT INTO `sys_area` VALUES ('440607', '三水区', '440600');
INSERT INTO `sys_area` VALUES ('440608', '高明区', '440600');
INSERT INTO `sys_area` VALUES ('440700', '江门市', '440000');
INSERT INTO `sys_area` VALUES ('440701', '市辖区', '440700');
INSERT INTO `sys_area` VALUES ('440703', '蓬江区', '440700');
INSERT INTO `sys_area` VALUES ('440704', '江海区', '440700');
INSERT INTO `sys_area` VALUES ('440705', '新会区', '440700');
INSERT INTO `sys_area` VALUES ('440781', '台山市', '440700');
INSERT INTO `sys_area` VALUES ('440783', '开平市', '440700');
INSERT INTO `sys_area` VALUES ('440784', '鹤山市', '440700');
INSERT INTO `sys_area` VALUES ('440785', '恩平市', '440700');
INSERT INTO `sys_area` VALUES ('440800', '湛江市', '440000');
INSERT INTO `sys_area` VALUES ('440801', '市辖区', '440800');
INSERT INTO `sys_area` VALUES ('440802', '赤坎区', '440800');
INSERT INTO `sys_area` VALUES ('440803', '霞山区', '440800');
INSERT INTO `sys_area` VALUES ('440804', '坡头区', '440800');
INSERT INTO `sys_area` VALUES ('440811', '麻章区', '440800');
INSERT INTO `sys_area` VALUES ('440823', '遂溪县', '440800');
INSERT INTO `sys_area` VALUES ('440825', '徐闻县', '440800');
INSERT INTO `sys_area` VALUES ('440881', '廉江市', '440800');
INSERT INTO `sys_area` VALUES ('440882', '雷州市', '440800');
INSERT INTO `sys_area` VALUES ('440883', '吴川市', '440800');
INSERT INTO `sys_area` VALUES ('440900', '茂名市', '440000');
INSERT INTO `sys_area` VALUES ('440901', '市辖区', '440900');
INSERT INTO `sys_area` VALUES ('440902', '茂南区', '440900');
INSERT INTO `sys_area` VALUES ('440904', '电白区', '440900');
INSERT INTO `sys_area` VALUES ('440981', '高州市', '440900');
INSERT INTO `sys_area` VALUES ('440982', '化州市', '440900');
INSERT INTO `sys_area` VALUES ('440983', '信宜市', '440900');
INSERT INTO `sys_area` VALUES ('441200', '肇庆市', '440000');
INSERT INTO `sys_area` VALUES ('441201', '市辖区', '441200');
INSERT INTO `sys_area` VALUES ('441202', '端州区', '441200');
INSERT INTO `sys_area` VALUES ('441203', '鼎湖区', '441200');
INSERT INTO `sys_area` VALUES ('441204', '高要区', '441200');
INSERT INTO `sys_area` VALUES ('441223', '广宁县', '441200');
INSERT INTO `sys_area` VALUES ('441224', '怀集县', '441200');
INSERT INTO `sys_area` VALUES ('441225', '封开县', '441200');
INSERT INTO `sys_area` VALUES ('441226', '德庆县', '441200');
INSERT INTO `sys_area` VALUES ('441284', '四会市', '441200');
INSERT INTO `sys_area` VALUES ('441300', '惠州市', '440000');
INSERT INTO `sys_area` VALUES ('441301', '市辖区', '441300');
INSERT INTO `sys_area` VALUES ('441302', '惠城区', '441300');
INSERT INTO `sys_area` VALUES ('441303', '惠阳区', '441300');
INSERT INTO `sys_area` VALUES ('441322', '博罗县', '441300');
INSERT INTO `sys_area` VALUES ('441323', '惠东县', '441300');
INSERT INTO `sys_area` VALUES ('441324', '龙门县', '441300');
INSERT INTO `sys_area` VALUES ('441400', '梅州市', '440000');
INSERT INTO `sys_area` VALUES ('441401', '市辖区', '441400');
INSERT INTO `sys_area` VALUES ('441402', '梅江区', '441400');
INSERT INTO `sys_area` VALUES ('441403', '梅县区', '441400');
INSERT INTO `sys_area` VALUES ('441422', '大埔县', '441400');
INSERT INTO `sys_area` VALUES ('441423', '丰顺县', '441400');
INSERT INTO `sys_area` VALUES ('441424', '五华县', '441400');
INSERT INTO `sys_area` VALUES ('441426', '平远县', '441400');
INSERT INTO `sys_area` VALUES ('441427', '蕉岭县', '441400');
INSERT INTO `sys_area` VALUES ('441481', '兴宁市', '441400');
INSERT INTO `sys_area` VALUES ('441500', '汕尾市', '440000');
INSERT INTO `sys_area` VALUES ('441501', '市辖区', '441500');
INSERT INTO `sys_area` VALUES ('441502', '城区', '441500');
INSERT INTO `sys_area` VALUES ('441521', '海丰县', '441500');
INSERT INTO `sys_area` VALUES ('441523', '陆河县', '441500');
INSERT INTO `sys_area` VALUES ('441581', '陆丰市', '441500');
INSERT INTO `sys_area` VALUES ('441600', '河源市', '440000');
INSERT INTO `sys_area` VALUES ('441601', '市辖区', '441600');
INSERT INTO `sys_area` VALUES ('441602', '源城区', '441600');
INSERT INTO `sys_area` VALUES ('441621', '紫金县', '441600');
INSERT INTO `sys_area` VALUES ('441622', '龙川县', '441600');
INSERT INTO `sys_area` VALUES ('441623', '连平县', '441600');
INSERT INTO `sys_area` VALUES ('441624', '和平县', '441600');
INSERT INTO `sys_area` VALUES ('441625', '东源县', '441600');
INSERT INTO `sys_area` VALUES ('441700', '阳江市', '440000');
INSERT INTO `sys_area` VALUES ('441701', '市辖区', '441700');
INSERT INTO `sys_area` VALUES ('441702', '江城区', '441700');
INSERT INTO `sys_area` VALUES ('441704', '阳东区', '441700');
INSERT INTO `sys_area` VALUES ('441721', '阳西县', '441700');
INSERT INTO `sys_area` VALUES ('441781', '阳春市', '441700');
INSERT INTO `sys_area` VALUES ('441800', '清远市', '440000');
INSERT INTO `sys_area` VALUES ('441801', '市辖区', '441800');
INSERT INTO `sys_area` VALUES ('441802', '清城区', '441800');
INSERT INTO `sys_area` VALUES ('441803', '清新区', '441800');
INSERT INTO `sys_area` VALUES ('441821', '佛冈县', '441800');
INSERT INTO `sys_area` VALUES ('441823', '阳山县', '441800');
INSERT INTO `sys_area` VALUES ('441825', '连山壮族瑶族自治县', '441800');
INSERT INTO `sys_area` VALUES ('441826', '连南瑶族自治县', '441800');
INSERT INTO `sys_area` VALUES ('441881', '英德市', '441800');
INSERT INTO `sys_area` VALUES ('441882', '连州市', '441800');
INSERT INTO `sys_area` VALUES ('441900', '东莞市', '440000');
INSERT INTO `sys_area` VALUES ('442000', '中山市', '440000');
INSERT INTO `sys_area` VALUES ('445100', '潮州市', '440000');
INSERT INTO `sys_area` VALUES ('445101', '市辖区', '445100');
INSERT INTO `sys_area` VALUES ('445102', '湘桥区', '445100');
INSERT INTO `sys_area` VALUES ('445103', '潮安区', '445100');
INSERT INTO `sys_area` VALUES ('445122', '饶平县', '445100');
INSERT INTO `sys_area` VALUES ('445200', '揭阳市', '440000');
INSERT INTO `sys_area` VALUES ('445201', '市辖区', '445200');
INSERT INTO `sys_area` VALUES ('445202', '榕城区', '445200');
INSERT INTO `sys_area` VALUES ('445203', '揭东区', '445200');
INSERT INTO `sys_area` VALUES ('445222', '揭西县', '445200');
INSERT INTO `sys_area` VALUES ('445224', '惠来县', '445200');
INSERT INTO `sys_area` VALUES ('445281', '普宁市', '445200');
INSERT INTO `sys_area` VALUES ('445300', '云浮市', '440000');
INSERT INTO `sys_area` VALUES ('445301', '市辖区', '445300');
INSERT INTO `sys_area` VALUES ('445302', '云城区', '445300');
INSERT INTO `sys_area` VALUES ('445303', '云安区', '445300');
INSERT INTO `sys_area` VALUES ('445321', '新兴县', '445300');
INSERT INTO `sys_area` VALUES ('445322', '郁南县', '445300');
INSERT INTO `sys_area` VALUES ('445381', '罗定市', '445300');
INSERT INTO `sys_area` VALUES ('450000', '广西壮族自治区', null);
INSERT INTO `sys_area` VALUES ('450100', '南宁市', '450000');
INSERT INTO `sys_area` VALUES ('450101', '市辖区', '450100');
INSERT INTO `sys_area` VALUES ('450102', '兴宁区', '450100');
INSERT INTO `sys_area` VALUES ('450103', '青秀区', '450100');
INSERT INTO `sys_area` VALUES ('450105', '江南区', '450100');
INSERT INTO `sys_area` VALUES ('450107', '西乡塘区', '450100');
INSERT INTO `sys_area` VALUES ('450108', '良庆区', '450100');
INSERT INTO `sys_area` VALUES ('450109', '邕宁区', '450100');
INSERT INTO `sys_area` VALUES ('450110', '武鸣区', '450100');
INSERT INTO `sys_area` VALUES ('450123', '隆安县', '450100');
INSERT INTO `sys_area` VALUES ('450124', '马山县', '450100');
INSERT INTO `sys_area` VALUES ('450125', '上林县', '450100');
INSERT INTO `sys_area` VALUES ('450126', '宾阳县', '450100');
INSERT INTO `sys_area` VALUES ('450127', '横县', '450100');
INSERT INTO `sys_area` VALUES ('450200', '柳州市', '450000');
INSERT INTO `sys_area` VALUES ('450201', '市辖区', '450200');
INSERT INTO `sys_area` VALUES ('450202', '城中区', '450200');
INSERT INTO `sys_area` VALUES ('450203', '鱼峰区', '450200');
INSERT INTO `sys_area` VALUES ('450204', '柳南区', '450200');
INSERT INTO `sys_area` VALUES ('450205', '柳北区', '450200');
INSERT INTO `sys_area` VALUES ('450206', '柳江区', '450200');
INSERT INTO `sys_area` VALUES ('450222', '柳城县', '450200');
INSERT INTO `sys_area` VALUES ('450223', '鹿寨县', '450200');
INSERT INTO `sys_area` VALUES ('450224', '融安县', '450200');
INSERT INTO `sys_area` VALUES ('450225', '融水苗族自治县', '450200');
INSERT INTO `sys_area` VALUES ('450226', '三江侗族自治县', '450200');
INSERT INTO `sys_area` VALUES ('450300', '桂林市', '450000');
INSERT INTO `sys_area` VALUES ('450301', '市辖区', '450300');
INSERT INTO `sys_area` VALUES ('450302', '秀峰区', '450300');
INSERT INTO `sys_area` VALUES ('450303', '叠彩区', '450300');
INSERT INTO `sys_area` VALUES ('450304', '象山区', '450300');
INSERT INTO `sys_area` VALUES ('450305', '七星区', '450300');
INSERT INTO `sys_area` VALUES ('450311', '雁山区', '450300');
INSERT INTO `sys_area` VALUES ('450312', '临桂区', '450300');
INSERT INTO `sys_area` VALUES ('450321', '阳朔县', '450300');
INSERT INTO `sys_area` VALUES ('450323', '灵川县', '450300');
INSERT INTO `sys_area` VALUES ('450324', '全州县', '450300');
INSERT INTO `sys_area` VALUES ('450325', '兴安县', '450300');
INSERT INTO `sys_area` VALUES ('450326', '永福县', '450300');
INSERT INTO `sys_area` VALUES ('450327', '灌阳县', '450300');
INSERT INTO `sys_area` VALUES ('450328', '龙胜各族自治县', '450300');
INSERT INTO `sys_area` VALUES ('450329', '资源县', '450300');
INSERT INTO `sys_area` VALUES ('450330', '平乐县', '450300');
INSERT INTO `sys_area` VALUES ('450331', '荔浦县', '450300');
INSERT INTO `sys_area` VALUES ('450332', '恭城瑶族自治县', '450300');
INSERT INTO `sys_area` VALUES ('450400', '梧州市', '450000');
INSERT INTO `sys_area` VALUES ('450401', '市辖区', '450400');
INSERT INTO `sys_area` VALUES ('450403', '万秀区', '450400');
INSERT INTO `sys_area` VALUES ('450405', '长洲区', '450400');
INSERT INTO `sys_area` VALUES ('450406', '龙圩区', '450400');
INSERT INTO `sys_area` VALUES ('450421', '苍梧县', '450400');
INSERT INTO `sys_area` VALUES ('450422', '藤县', '450400');
INSERT INTO `sys_area` VALUES ('450423', '蒙山县', '450400');
INSERT INTO `sys_area` VALUES ('450481', '岑溪市', '450400');
INSERT INTO `sys_area` VALUES ('450500', '北海市', '450000');
INSERT INTO `sys_area` VALUES ('450501', '市辖区', '450500');
INSERT INTO `sys_area` VALUES ('450502', '海城区', '450500');
INSERT INTO `sys_area` VALUES ('450503', '银海区', '450500');
INSERT INTO `sys_area` VALUES ('450512', '铁山港区', '450500');
INSERT INTO `sys_area` VALUES ('450521', '合浦县', '450500');
INSERT INTO `sys_area` VALUES ('450600', '防城港市', '450000');
INSERT INTO `sys_area` VALUES ('450601', '市辖区', '450600');
INSERT INTO `sys_area` VALUES ('450602', '港口区', '450600');
INSERT INTO `sys_area` VALUES ('450603', '防城区', '450600');
INSERT INTO `sys_area` VALUES ('450621', '上思县', '450600');
INSERT INTO `sys_area` VALUES ('450681', '东兴市', '450600');
INSERT INTO `sys_area` VALUES ('450700', '钦州市', '450000');
INSERT INTO `sys_area` VALUES ('450701', '市辖区', '450700');
INSERT INTO `sys_area` VALUES ('450702', '钦南区', '450700');
INSERT INTO `sys_area` VALUES ('450703', '钦北区', '450700');
INSERT INTO `sys_area` VALUES ('450721', '灵山县', '450700');
INSERT INTO `sys_area` VALUES ('450722', '浦北县', '450700');
INSERT INTO `sys_area` VALUES ('450800', '贵港市', '450000');
INSERT INTO `sys_area` VALUES ('450801', '市辖区', '450800');
INSERT INTO `sys_area` VALUES ('450802', '港北区', '450800');
INSERT INTO `sys_area` VALUES ('450803', '港南区', '450800');
INSERT INTO `sys_area` VALUES ('450804', '覃塘区', '450800');
INSERT INTO `sys_area` VALUES ('450821', '平南县', '450800');
INSERT INTO `sys_area` VALUES ('450881', '桂平市', '450800');
INSERT INTO `sys_area` VALUES ('450900', '玉林市', '450000');
INSERT INTO `sys_area` VALUES ('450901', '市辖区', '450900');
INSERT INTO `sys_area` VALUES ('450902', '玉州区', '450900');
INSERT INTO `sys_area` VALUES ('450903', '福绵区', '450900');
INSERT INTO `sys_area` VALUES ('450921', '容县', '450900');
INSERT INTO `sys_area` VALUES ('450922', '陆川县', '450900');
INSERT INTO `sys_area` VALUES ('450923', '博白县', '450900');
INSERT INTO `sys_area` VALUES ('450924', '兴业县', '450900');
INSERT INTO `sys_area` VALUES ('450981', '北流市', '450900');
INSERT INTO `sys_area` VALUES ('451000', '百色市', '450000');
INSERT INTO `sys_area` VALUES ('451001', '市辖区', '451000');
INSERT INTO `sys_area` VALUES ('451002', '右江区', '451000');
INSERT INTO `sys_area` VALUES ('451021', '田阳县', '451000');
INSERT INTO `sys_area` VALUES ('451022', '田东县', '451000');
INSERT INTO `sys_area` VALUES ('451023', '平果县', '451000');
INSERT INTO `sys_area` VALUES ('451024', '德保县', '451000');
INSERT INTO `sys_area` VALUES ('451026', '那坡县', '451000');
INSERT INTO `sys_area` VALUES ('451027', '凌云县', '451000');
INSERT INTO `sys_area` VALUES ('451028', '乐业县', '451000');
INSERT INTO `sys_area` VALUES ('451029', '田林县', '451000');
INSERT INTO `sys_area` VALUES ('451030', '西林县', '451000');
INSERT INTO `sys_area` VALUES ('451031', '隆林各族自治县', '451000');
INSERT INTO `sys_area` VALUES ('451081', '靖西市', '451000');
INSERT INTO `sys_area` VALUES ('451100', '贺州市', '450000');
INSERT INTO `sys_area` VALUES ('451101', '市辖区', '451100');
INSERT INTO `sys_area` VALUES ('451102', '八步区', '451100');
INSERT INTO `sys_area` VALUES ('451103', '平桂区', '451100');
INSERT INTO `sys_area` VALUES ('451121', '昭平县', '451100');
INSERT INTO `sys_area` VALUES ('451122', '钟山县', '451100');
INSERT INTO `sys_area` VALUES ('451123', '富川瑶族自治县', '451100');
INSERT INTO `sys_area` VALUES ('451200', '河池市', '450000');
INSERT INTO `sys_area` VALUES ('451201', '市辖区', '451200');
INSERT INTO `sys_area` VALUES ('451202', '金城江区', '451200');
INSERT INTO `sys_area` VALUES ('451221', '南丹县', '451200');
INSERT INTO `sys_area` VALUES ('451222', '天峨县', '451200');
INSERT INTO `sys_area` VALUES ('451223', '凤山县', '451200');
INSERT INTO `sys_area` VALUES ('451224', '东兰县', '451200');
INSERT INTO `sys_area` VALUES ('451225', '罗城仫佬族自治县', '451200');
INSERT INTO `sys_area` VALUES ('451226', '环江毛南族自治县', '451200');
INSERT INTO `sys_area` VALUES ('451227', '巴马瑶族自治县', '451200');
INSERT INTO `sys_area` VALUES ('451228', '都安瑶族自治县', '451200');
INSERT INTO `sys_area` VALUES ('451229', '大化瑶族自治县', '451200');
INSERT INTO `sys_area` VALUES ('451281', '宜州市', '451200');
INSERT INTO `sys_area` VALUES ('451300', '来宾市', '450000');
INSERT INTO `sys_area` VALUES ('451301', '市辖区', '451300');
INSERT INTO `sys_area` VALUES ('451302', '兴宾区', '451300');
INSERT INTO `sys_area` VALUES ('451321', '忻城县', '451300');
INSERT INTO `sys_area` VALUES ('451322', '象州县', '451300');
INSERT INTO `sys_area` VALUES ('451323', '武宣县', '451300');
INSERT INTO `sys_area` VALUES ('451324', '金秀瑶族自治县', '451300');
INSERT INTO `sys_area` VALUES ('451381', '合山市', '451300');
INSERT INTO `sys_area` VALUES ('451400', '崇左市', '450000');
INSERT INTO `sys_area` VALUES ('451401', '市辖区', '451400');
INSERT INTO `sys_area` VALUES ('451402', '江州区', '451400');
INSERT INTO `sys_area` VALUES ('451421', '扶绥县', '451400');
INSERT INTO `sys_area` VALUES ('451422', '宁明县', '451400');
INSERT INTO `sys_area` VALUES ('451423', '龙州县', '451400');
INSERT INTO `sys_area` VALUES ('451424', '大新县', '451400');
INSERT INTO `sys_area` VALUES ('451425', '天等县', '451400');
INSERT INTO `sys_area` VALUES ('451481', '凭祥市', '451400');
INSERT INTO `sys_area` VALUES ('460000', '海南省', null);
INSERT INTO `sys_area` VALUES ('460100', '海口市', '460000');
INSERT INTO `sys_area` VALUES ('460101', '市辖区', '460100');
INSERT INTO `sys_area` VALUES ('460105', '秀英区', '460100');
INSERT INTO `sys_area` VALUES ('460106', '龙华区', '460100');
INSERT INTO `sys_area` VALUES ('460107', '琼山区', '460100');
INSERT INTO `sys_area` VALUES ('460108', '美兰区', '460100');
INSERT INTO `sys_area` VALUES ('460200', '三亚市', '460000');
INSERT INTO `sys_area` VALUES ('460201', '市辖区', '460200');
INSERT INTO `sys_area` VALUES ('460202', '海棠区', '460200');
INSERT INTO `sys_area` VALUES ('460203', '吉阳区', '460200');
INSERT INTO `sys_area` VALUES ('460204', '天涯区', '460200');
INSERT INTO `sys_area` VALUES ('460205', '崖州区', '460200');
INSERT INTO `sys_area` VALUES ('460300', '三沙市', '460000');
INSERT INTO `sys_area` VALUES ('460400', '儋州市', '460000');
INSERT INTO `sys_area` VALUES ('469000', '省直辖县级行政区划', '460000');
INSERT INTO `sys_area` VALUES ('469001', '五指山市', '469000');
INSERT INTO `sys_area` VALUES ('469002', '琼海市', '469000');
INSERT INTO `sys_area` VALUES ('469005', '文昌市', '469000');
INSERT INTO `sys_area` VALUES ('469006', '万宁市', '469000');
INSERT INTO `sys_area` VALUES ('469007', '东方市', '469000');
INSERT INTO `sys_area` VALUES ('469021', '定安县', '469000');
INSERT INTO `sys_area` VALUES ('469022', '屯昌县', '469000');
INSERT INTO `sys_area` VALUES ('469023', '澄迈县', '469000');
INSERT INTO `sys_area` VALUES ('469024', '临高县', '469000');
INSERT INTO `sys_area` VALUES ('469025', '白沙黎族自治县', '469000');
INSERT INTO `sys_area` VALUES ('469026', '昌江黎族自治县', '469000');
INSERT INTO `sys_area` VALUES ('469027', '乐东黎族自治县', '469000');
INSERT INTO `sys_area` VALUES ('469028', '陵水黎族自治县', '469000');
INSERT INTO `sys_area` VALUES ('469029', '保亭黎族苗族自治县', '469000');
INSERT INTO `sys_area` VALUES ('469030', '琼中黎族苗族自治县', '469000');
INSERT INTO `sys_area` VALUES ('500000', '重庆市', null);
INSERT INTO `sys_area` VALUES ('500100', '市辖区', '500000');
INSERT INTO `sys_area` VALUES ('500101', '万州区', '500100');
INSERT INTO `sys_area` VALUES ('500102', '涪陵区', '500100');
INSERT INTO `sys_area` VALUES ('500103', '渝中区', '500100');
INSERT INTO `sys_area` VALUES ('500104', '大渡口区', '500100');
INSERT INTO `sys_area` VALUES ('500105', '江北区', '500100');
INSERT INTO `sys_area` VALUES ('500106', '沙坪坝区', '500100');
INSERT INTO `sys_area` VALUES ('500107', '九龙坡区', '500100');
INSERT INTO `sys_area` VALUES ('500108', '南岸区', '500100');
INSERT INTO `sys_area` VALUES ('500109', '北碚区', '500100');
INSERT INTO `sys_area` VALUES ('500110', '綦江区', '500100');
INSERT INTO `sys_area` VALUES ('500111', '大足区', '500100');
INSERT INTO `sys_area` VALUES ('500112', '渝北区', '500100');
INSERT INTO `sys_area` VALUES ('500113', '巴南区', '500100');
INSERT INTO `sys_area` VALUES ('500114', '黔江区', '500100');
INSERT INTO `sys_area` VALUES ('500115', '长寿区', '500100');
INSERT INTO `sys_area` VALUES ('500116', '江津区', '500100');
INSERT INTO `sys_area` VALUES ('500117', '合川区', '500100');
INSERT INTO `sys_area` VALUES ('500118', '永川区', '500100');
INSERT INTO `sys_area` VALUES ('500119', '南川区', '500100');
INSERT INTO `sys_area` VALUES ('500120', '璧山区', '500100');
INSERT INTO `sys_area` VALUES ('500151', '铜梁区', '500100');
INSERT INTO `sys_area` VALUES ('500152', '潼南区', '500100');
INSERT INTO `sys_area` VALUES ('500153', '荣昌区', '500100');
INSERT INTO `sys_area` VALUES ('500154', '开州区', '500100');
INSERT INTO `sys_area` VALUES ('500200', '县', '500000');
INSERT INTO `sys_area` VALUES ('500228', '梁平县', '500200');
INSERT INTO `sys_area` VALUES ('500229', '城口县', '500200');
INSERT INTO `sys_area` VALUES ('500230', '丰都县', '500200');
INSERT INTO `sys_area` VALUES ('500231', '垫江县', '500200');
INSERT INTO `sys_area` VALUES ('500232', '武隆县', '500200');
INSERT INTO `sys_area` VALUES ('500233', '忠县', '500200');
INSERT INTO `sys_area` VALUES ('500235', '云阳县', '500200');
INSERT INTO `sys_area` VALUES ('500236', '奉节县', '500200');
INSERT INTO `sys_area` VALUES ('500237', '巫山县', '500200');
INSERT INTO `sys_area` VALUES ('500238', '巫溪县', '500200');
INSERT INTO `sys_area` VALUES ('500240', '石柱土家族自治县', '500200');
INSERT INTO `sys_area` VALUES ('500241', '秀山土家族苗族自治县', '500200');
INSERT INTO `sys_area` VALUES ('500242', '酉阳土家族苗族自治县', '500200');
INSERT INTO `sys_area` VALUES ('500243', '彭水苗族土家族自治县', '500200');
INSERT INTO `sys_area` VALUES ('510000', '四川省', null);
INSERT INTO `sys_area` VALUES ('510100', '成都市', '510000');
INSERT INTO `sys_area` VALUES ('510101', '市辖区', '510100');
INSERT INTO `sys_area` VALUES ('510104', '锦江区', '510100');
INSERT INTO `sys_area` VALUES ('510105', '青羊区', '510100');
INSERT INTO `sys_area` VALUES ('510106', '金牛区', '510100');
INSERT INTO `sys_area` VALUES ('510107', '武侯区', '510100');
INSERT INTO `sys_area` VALUES ('510108', '成华区', '510100');
INSERT INTO `sys_area` VALUES ('510112', '龙泉驿区', '510100');
INSERT INTO `sys_area` VALUES ('510113', '青白江区', '510100');
INSERT INTO `sys_area` VALUES ('510114', '新都区', '510100');
INSERT INTO `sys_area` VALUES ('510115', '温江区', '510100');
INSERT INTO `sys_area` VALUES ('510116', '双流区', '510100');
INSERT INTO `sys_area` VALUES ('510121', '金堂县', '510100');
INSERT INTO `sys_area` VALUES ('510124', '郫县', '510100');
INSERT INTO `sys_area` VALUES ('510129', '大邑县', '510100');
INSERT INTO `sys_area` VALUES ('510131', '蒲江县', '510100');
INSERT INTO `sys_area` VALUES ('510132', '新津县', '510100');
INSERT INTO `sys_area` VALUES ('510181', '都江堰市', '510100');
INSERT INTO `sys_area` VALUES ('510182', '彭州市', '510100');
INSERT INTO `sys_area` VALUES ('510183', '邛崃市', '510100');
INSERT INTO `sys_area` VALUES ('510184', '崇州市', '510100');
INSERT INTO `sys_area` VALUES ('510185', '简阳市', '510100');
INSERT INTO `sys_area` VALUES ('510300', '自贡市', '510000');
INSERT INTO `sys_area` VALUES ('510301', '市辖区', '510300');
INSERT INTO `sys_area` VALUES ('510302', '自流井区', '510300');
INSERT INTO `sys_area` VALUES ('510303', '贡井区', '510300');
INSERT INTO `sys_area` VALUES ('510304', '大安区', '510300');
INSERT INTO `sys_area` VALUES ('510311', '沿滩区', '510300');
INSERT INTO `sys_area` VALUES ('510321', '荣县', '510300');
INSERT INTO `sys_area` VALUES ('510322', '富顺县', '510300');
INSERT INTO `sys_area` VALUES ('510400', '攀枝花市', '510000');
INSERT INTO `sys_area` VALUES ('510401', '市辖区', '510400');
INSERT INTO `sys_area` VALUES ('510402', '东区', '510400');
INSERT INTO `sys_area` VALUES ('510403', '西区', '510400');
INSERT INTO `sys_area` VALUES ('510411', '仁和区', '510400');
INSERT INTO `sys_area` VALUES ('510421', '米易县', '510400');
INSERT INTO `sys_area` VALUES ('510422', '盐边县', '510400');
INSERT INTO `sys_area` VALUES ('510500', '泸州市', '510000');
INSERT INTO `sys_area` VALUES ('510501', '市辖区', '510500');
INSERT INTO `sys_area` VALUES ('510502', '江阳区', '510500');
INSERT INTO `sys_area` VALUES ('510503', '纳溪区', '510500');
INSERT INTO `sys_area` VALUES ('510504', '龙马潭区', '510500');
INSERT INTO `sys_area` VALUES ('510521', '泸县', '510500');
INSERT INTO `sys_area` VALUES ('510522', '合江县', '510500');
INSERT INTO `sys_area` VALUES ('510524', '叙永县', '510500');
INSERT INTO `sys_area` VALUES ('510525', '古蔺县', '510500');
INSERT INTO `sys_area` VALUES ('510600', '德阳市', '510000');
INSERT INTO `sys_area` VALUES ('510601', '市辖区', '510600');
INSERT INTO `sys_area` VALUES ('510603', '旌阳区', '510600');
INSERT INTO `sys_area` VALUES ('510623', '中江县', '510600');
INSERT INTO `sys_area` VALUES ('510626', '罗江县', '510600');
INSERT INTO `sys_area` VALUES ('510681', '广汉市', '510600');
INSERT INTO `sys_area` VALUES ('510682', '什邡市', '510600');
INSERT INTO `sys_area` VALUES ('510683', '绵竹市', '510600');
INSERT INTO `sys_area` VALUES ('510700', '绵阳市', '510000');
INSERT INTO `sys_area` VALUES ('510701', '市辖区', '510700');
INSERT INTO `sys_area` VALUES ('510703', '涪城区', '510700');
INSERT INTO `sys_area` VALUES ('510704', '游仙区', '510700');
INSERT INTO `sys_area` VALUES ('510705', '安州区', '510700');
INSERT INTO `sys_area` VALUES ('510722', '三台县', '510700');
INSERT INTO `sys_area` VALUES ('510723', '盐亭县', '510700');
INSERT INTO `sys_area` VALUES ('510725', '梓潼县', '510700');
INSERT INTO `sys_area` VALUES ('510726', '北川羌族自治县', '510700');
INSERT INTO `sys_area` VALUES ('510727', '平武县', '510700');
INSERT INTO `sys_area` VALUES ('510781', '江油市', '510700');
INSERT INTO `sys_area` VALUES ('510800', '广元市', '510000');
INSERT INTO `sys_area` VALUES ('510801', '市辖区', '510800');
INSERT INTO `sys_area` VALUES ('510802', '利州区', '510800');
INSERT INTO `sys_area` VALUES ('510811', '昭化区', '510800');
INSERT INTO `sys_area` VALUES ('510812', '朝天区', '510800');
INSERT INTO `sys_area` VALUES ('510821', '旺苍县', '510800');
INSERT INTO `sys_area` VALUES ('510822', '青川县', '510800');
INSERT INTO `sys_area` VALUES ('510823', '剑阁县', '510800');
INSERT INTO `sys_area` VALUES ('510824', '苍溪县', '510800');
INSERT INTO `sys_area` VALUES ('510900', '遂宁市', '510000');
INSERT INTO `sys_area` VALUES ('510901', '市辖区', '510900');
INSERT INTO `sys_area` VALUES ('510903', '船山区', '510900');
INSERT INTO `sys_area` VALUES ('510904', '安居区', '510900');
INSERT INTO `sys_area` VALUES ('510921', '蓬溪县', '510900');
INSERT INTO `sys_area` VALUES ('510922', '射洪县', '510900');
INSERT INTO `sys_area` VALUES ('510923', '大英县', '510900');
INSERT INTO `sys_area` VALUES ('511000', '内江市', '510000');
INSERT INTO `sys_area` VALUES ('511001', '市辖区', '511000');
INSERT INTO `sys_area` VALUES ('511002', '市中区', '511000');
INSERT INTO `sys_area` VALUES ('511011', '东兴区', '511000');
INSERT INTO `sys_area` VALUES ('511024', '威远县', '511000');
INSERT INTO `sys_area` VALUES ('511025', '资中县', '511000');
INSERT INTO `sys_area` VALUES ('511028', '隆昌县', '511000');
INSERT INTO `sys_area` VALUES ('511100', '乐山市', '510000');
INSERT INTO `sys_area` VALUES ('511101', '市辖区', '511100');
INSERT INTO `sys_area` VALUES ('511102', '市中区', '511100');
INSERT INTO `sys_area` VALUES ('511111', '沙湾区', '511100');
INSERT INTO `sys_area` VALUES ('511112', '五通桥区', '511100');
INSERT INTO `sys_area` VALUES ('511113', '金口河区', '511100');
INSERT INTO `sys_area` VALUES ('511123', '犍为县', '511100');
INSERT INTO `sys_area` VALUES ('511124', '井研县', '511100');
INSERT INTO `sys_area` VALUES ('511126', '夹江县', '511100');
INSERT INTO `sys_area` VALUES ('511129', '沐川县', '511100');
INSERT INTO `sys_area` VALUES ('511132', '峨边彝族自治县', '511100');
INSERT INTO `sys_area` VALUES ('511133', '马边彝族自治县', '511100');
INSERT INTO `sys_area` VALUES ('511181', '峨眉山市', '511100');
INSERT INTO `sys_area` VALUES ('511300', '南充市', '510000');
INSERT INTO `sys_area` VALUES ('511301', '市辖区', '511300');
INSERT INTO `sys_area` VALUES ('511302', '顺庆区', '511300');
INSERT INTO `sys_area` VALUES ('511303', '高坪区', '511300');
INSERT INTO `sys_area` VALUES ('511304', '嘉陵区', '511300');
INSERT INTO `sys_area` VALUES ('511321', '南部县', '511300');
INSERT INTO `sys_area` VALUES ('511322', '营山县', '511300');
INSERT INTO `sys_area` VALUES ('511323', '蓬安县', '511300');
INSERT INTO `sys_area` VALUES ('511324', '仪陇县', '511300');
INSERT INTO `sys_area` VALUES ('511325', '西充县', '511300');
INSERT INTO `sys_area` VALUES ('511381', '阆中市', '511300');
INSERT INTO `sys_area` VALUES ('511400', '眉山市', '510000');
INSERT INTO `sys_area` VALUES ('511401', '市辖区', '511400');
INSERT INTO `sys_area` VALUES ('511402', '东坡区', '511400');
INSERT INTO `sys_area` VALUES ('511403', '彭山区', '511400');
INSERT INTO `sys_area` VALUES ('511421', '仁寿县', '511400');
INSERT INTO `sys_area` VALUES ('511423', '洪雅县', '511400');
INSERT INTO `sys_area` VALUES ('511424', '丹棱县', '511400');
INSERT INTO `sys_area` VALUES ('511425', '青神县', '511400');
INSERT INTO `sys_area` VALUES ('511500', '宜宾市', '510000');
INSERT INTO `sys_area` VALUES ('511501', '市辖区', '511500');
INSERT INTO `sys_area` VALUES ('511502', '翠屏区', '511500');
INSERT INTO `sys_area` VALUES ('511503', '南溪区', '511500');
INSERT INTO `sys_area` VALUES ('511521', '宜宾县', '511500');
INSERT INTO `sys_area` VALUES ('511523', '江安县', '511500');
INSERT INTO `sys_area` VALUES ('511524', '长宁县', '511500');
INSERT INTO `sys_area` VALUES ('511525', '高县', '511500');
INSERT INTO `sys_area` VALUES ('511526', '珙县', '511500');
INSERT INTO `sys_area` VALUES ('511527', '筠连县', '511500');
INSERT INTO `sys_area` VALUES ('511528', '兴文县', '511500');
INSERT INTO `sys_area` VALUES ('511529', '屏山县', '511500');
INSERT INTO `sys_area` VALUES ('511600', '广安市', '510000');
INSERT INTO `sys_area` VALUES ('511601', '市辖区', '511600');
INSERT INTO `sys_area` VALUES ('511602', '广安区', '511600');
INSERT INTO `sys_area` VALUES ('511603', '前锋区', '511600');
INSERT INTO `sys_area` VALUES ('511621', '岳池县', '511600');
INSERT INTO `sys_area` VALUES ('511622', '武胜县', '511600');
INSERT INTO `sys_area` VALUES ('511623', '邻水县', '511600');
INSERT INTO `sys_area` VALUES ('511681', '华蓥市', '511600');
INSERT INTO `sys_area` VALUES ('511700', '达州市', '510000');
INSERT INTO `sys_area` VALUES ('511701', '市辖区', '511700');
INSERT INTO `sys_area` VALUES ('511702', '通川区', '511700');
INSERT INTO `sys_area` VALUES ('511703', '达川区', '511700');
INSERT INTO `sys_area` VALUES ('511722', '宣汉县', '511700');
INSERT INTO `sys_area` VALUES ('511723', '开江县', '511700');
INSERT INTO `sys_area` VALUES ('511724', '大竹县', '511700');
INSERT INTO `sys_area` VALUES ('511725', '渠县', '511700');
INSERT INTO `sys_area` VALUES ('511781', '万源市', '511700');
INSERT INTO `sys_area` VALUES ('511800', '雅安市', '510000');
INSERT INTO `sys_area` VALUES ('511801', '市辖区', '511800');
INSERT INTO `sys_area` VALUES ('511802', '雨城区', '511800');
INSERT INTO `sys_area` VALUES ('511803', '名山区', '511800');
INSERT INTO `sys_area` VALUES ('511822', '荥经县', '511800');
INSERT INTO `sys_area` VALUES ('511823', '汉源县', '511800');
INSERT INTO `sys_area` VALUES ('511824', '石棉县', '511800');
INSERT INTO `sys_area` VALUES ('511825', '天全县', '511800');
INSERT INTO `sys_area` VALUES ('511826', '芦山县', '511800');
INSERT INTO `sys_area` VALUES ('511827', '宝兴县', '511800');
INSERT INTO `sys_area` VALUES ('511900', '巴中市', '510000');
INSERT INTO `sys_area` VALUES ('511901', '市辖区', '511900');
INSERT INTO `sys_area` VALUES ('511902', '巴州区', '511900');
INSERT INTO `sys_area` VALUES ('511903', '恩阳区', '511900');
INSERT INTO `sys_area` VALUES ('511921', '通江县', '511900');
INSERT INTO `sys_area` VALUES ('511922', '南江县', '511900');
INSERT INTO `sys_area` VALUES ('511923', '平昌县', '511900');
INSERT INTO `sys_area` VALUES ('512000', '资阳市', '510000');
INSERT INTO `sys_area` VALUES ('512001', '市辖区', '512000');
INSERT INTO `sys_area` VALUES ('512002', '雁江区', '512000');
INSERT INTO `sys_area` VALUES ('512021', '安岳县', '512000');
INSERT INTO `sys_area` VALUES ('512022', '乐至县', '512000');
INSERT INTO `sys_area` VALUES ('513200', '阿坝藏族羌族自治州', '510000');
INSERT INTO `sys_area` VALUES ('513201', '马尔康市', '513200');
INSERT INTO `sys_area` VALUES ('513221', '汶川县', '513200');
INSERT INTO `sys_area` VALUES ('513222', '理县', '513200');
INSERT INTO `sys_area` VALUES ('513223', '茂县', '513200');
INSERT INTO `sys_area` VALUES ('513224', '松潘县', '513200');
INSERT INTO `sys_area` VALUES ('513225', '九寨沟县', '513200');
INSERT INTO `sys_area` VALUES ('513226', '金川县', '513200');
INSERT INTO `sys_area` VALUES ('513227', '小金县', '513200');
INSERT INTO `sys_area` VALUES ('513228', '黑水县', '513200');
INSERT INTO `sys_area` VALUES ('513230', '壤塘县', '513200');
INSERT INTO `sys_area` VALUES ('513231', '阿坝县', '513200');
INSERT INTO `sys_area` VALUES ('513232', '若尔盖县', '513200');
INSERT INTO `sys_area` VALUES ('513233', '红原县', '513200');
INSERT INTO `sys_area` VALUES ('513300', '甘孜藏族自治州', '510000');
INSERT INTO `sys_area` VALUES ('513301', '康定市', '513300');
INSERT INTO `sys_area` VALUES ('513322', '泸定县', '513300');
INSERT INTO `sys_area` VALUES ('513323', '丹巴县', '513300');
INSERT INTO `sys_area` VALUES ('513324', '九龙县', '513300');
INSERT INTO `sys_area` VALUES ('513325', '雅江县', '513300');
INSERT INTO `sys_area` VALUES ('513326', '道孚县', '513300');
INSERT INTO `sys_area` VALUES ('513327', '炉霍县', '513300');
INSERT INTO `sys_area` VALUES ('513328', '甘孜县', '513300');
INSERT INTO `sys_area` VALUES ('513329', '新龙县', '513300');
INSERT INTO `sys_area` VALUES ('513330', '德格县', '513300');
INSERT INTO `sys_area` VALUES ('513331', '白玉县', '513300');
INSERT INTO `sys_area` VALUES ('513332', '石渠县', '513300');
INSERT INTO `sys_area` VALUES ('513333', '色达县', '513300');
INSERT INTO `sys_area` VALUES ('513334', '理塘县', '513300');
INSERT INTO `sys_area` VALUES ('513335', '巴塘县', '513300');
INSERT INTO `sys_area` VALUES ('513336', '乡城县', '513300');
INSERT INTO `sys_area` VALUES ('513337', '稻城县', '513300');
INSERT INTO `sys_area` VALUES ('513338', '得荣县', '513300');
INSERT INTO `sys_area` VALUES ('513400', '凉山彝族自治州', '510000');
INSERT INTO `sys_area` VALUES ('513401', '西昌市', '513400');
INSERT INTO `sys_area` VALUES ('513422', '木里藏族自治县', '513400');
INSERT INTO `sys_area` VALUES ('513423', '盐源县', '513400');
INSERT INTO `sys_area` VALUES ('513424', '德昌县', '513400');
INSERT INTO `sys_area` VALUES ('513425', '会理县', '513400');
INSERT INTO `sys_area` VALUES ('513426', '会东县', '513400');
INSERT INTO `sys_area` VALUES ('513427', '宁南县', '513400');
INSERT INTO `sys_area` VALUES ('513428', '普格县', '513400');
INSERT INTO `sys_area` VALUES ('513429', '布拖县', '513400');
INSERT INTO `sys_area` VALUES ('513430', '金阳县', '513400');
INSERT INTO `sys_area` VALUES ('513431', '昭觉县', '513400');
INSERT INTO `sys_area` VALUES ('513432', '喜德县', '513400');
INSERT INTO `sys_area` VALUES ('513433', '冕宁县', '513400');
INSERT INTO `sys_area` VALUES ('513434', '越西县', '513400');
INSERT INTO `sys_area` VALUES ('513435', '甘洛县', '513400');
INSERT INTO `sys_area` VALUES ('513436', '美姑县', '513400');
INSERT INTO `sys_area` VALUES ('513437', '雷波县', '513400');
INSERT INTO `sys_area` VALUES ('520000', '贵州省', null);
INSERT INTO `sys_area` VALUES ('520100', '贵阳市', '520000');
INSERT INTO `sys_area` VALUES ('520101', '市辖区', '520100');
INSERT INTO `sys_area` VALUES ('520102', '南明区', '520100');
INSERT INTO `sys_area` VALUES ('520103', '云岩区', '520100');
INSERT INTO `sys_area` VALUES ('520111', '花溪区', '520100');
INSERT INTO `sys_area` VALUES ('520112', '乌当区', '520100');
INSERT INTO `sys_area` VALUES ('520113', '白云区', '520100');
INSERT INTO `sys_area` VALUES ('520115', '观山湖区', '520100');
INSERT INTO `sys_area` VALUES ('520121', '开阳县', '520100');
INSERT INTO `sys_area` VALUES ('520122', '息烽县', '520100');
INSERT INTO `sys_area` VALUES ('520123', '修文县', '520100');
INSERT INTO `sys_area` VALUES ('520181', '清镇市', '520100');
INSERT INTO `sys_area` VALUES ('520200', '六盘水市', '520000');
INSERT INTO `sys_area` VALUES ('520201', '钟山区', '520200');
INSERT INTO `sys_area` VALUES ('520203', '六枝特区', '520200');
INSERT INTO `sys_area` VALUES ('520221', '水城县', '520200');
INSERT INTO `sys_area` VALUES ('520222', '盘县', '520200');
INSERT INTO `sys_area` VALUES ('520300', '遵义市', '520000');
INSERT INTO `sys_area` VALUES ('520301', '市辖区', '520300');
INSERT INTO `sys_area` VALUES ('520302', '红花岗区', '520300');
INSERT INTO `sys_area` VALUES ('520303', '汇川区', '520300');
INSERT INTO `sys_area` VALUES ('520304', '播州区', '520300');
INSERT INTO `sys_area` VALUES ('520322', '桐梓县', '520300');
INSERT INTO `sys_area` VALUES ('520323', '绥阳县', '520300');
INSERT INTO `sys_area` VALUES ('520324', '正安县', '520300');
INSERT INTO `sys_area` VALUES ('520325', '道真仡佬族苗族自治县', '520300');
INSERT INTO `sys_area` VALUES ('520326', '务川仡佬族苗族自治县', '520300');
INSERT INTO `sys_area` VALUES ('520327', '凤冈县', '520300');
INSERT INTO `sys_area` VALUES ('520328', '湄潭县', '520300');
INSERT INTO `sys_area` VALUES ('520329', '余庆县', '520300');
INSERT INTO `sys_area` VALUES ('520330', '习水县', '520300');
INSERT INTO `sys_area` VALUES ('520381', '赤水市', '520300');
INSERT INTO `sys_area` VALUES ('520382', '仁怀市', '520300');
INSERT INTO `sys_area` VALUES ('520400', '安顺市', '520000');
INSERT INTO `sys_area` VALUES ('520401', '市辖区', '520400');
INSERT INTO `sys_area` VALUES ('520402', '西秀区', '520400');
INSERT INTO `sys_area` VALUES ('520403', '平坝区', '520400');
INSERT INTO `sys_area` VALUES ('520422', '普定县', '520400');
INSERT INTO `sys_area` VALUES ('520423', '镇宁布依族苗族自治县', '520400');
INSERT INTO `sys_area` VALUES ('520424', '关岭布依族苗族自治县', '520400');
INSERT INTO `sys_area` VALUES ('520425', '紫云苗族布依族自治县', '520400');
INSERT INTO `sys_area` VALUES ('520500', '毕节市', '520000');
INSERT INTO `sys_area` VALUES ('520501', '市辖区', '520500');
INSERT INTO `sys_area` VALUES ('520502', '七星关区', '520500');
INSERT INTO `sys_area` VALUES ('520521', '大方县', '520500');
INSERT INTO `sys_area` VALUES ('520522', '黔西县', '520500');
INSERT INTO `sys_area` VALUES ('520523', '金沙县', '520500');
INSERT INTO `sys_area` VALUES ('520524', '织金县', '520500');
INSERT INTO `sys_area` VALUES ('520525', '纳雍县', '520500');
INSERT INTO `sys_area` VALUES ('520526', '威宁彝族回族苗族自治县', '520500');
INSERT INTO `sys_area` VALUES ('520527', '赫章县', '520500');
INSERT INTO `sys_area` VALUES ('520600', '铜仁市', '520000');
INSERT INTO `sys_area` VALUES ('520601', '市辖区', '520600');
INSERT INTO `sys_area` VALUES ('520602', '碧江区', '520600');
INSERT INTO `sys_area` VALUES ('520603', '万山区', '520600');
INSERT INTO `sys_area` VALUES ('520621', '江口县', '520600');
INSERT INTO `sys_area` VALUES ('520622', '玉屏侗族自治县', '520600');
INSERT INTO `sys_area` VALUES ('520623', '石阡县', '520600');
INSERT INTO `sys_area` VALUES ('520624', '思南县', '520600');
INSERT INTO `sys_area` VALUES ('520625', '印江土家族苗族自治县', '520600');
INSERT INTO `sys_area` VALUES ('520626', '德江县', '520600');
INSERT INTO `sys_area` VALUES ('520627', '沿河土家族自治县', '520600');
INSERT INTO `sys_area` VALUES ('520628', '松桃苗族自治县', '520600');
INSERT INTO `sys_area` VALUES ('522300', '黔西南布依族苗族自治州', '520000');
INSERT INTO `sys_area` VALUES ('522301', '兴义市', '522300');
INSERT INTO `sys_area` VALUES ('522322', '兴仁县', '522300');
INSERT INTO `sys_area` VALUES ('522323', '普安县', '522300');
INSERT INTO `sys_area` VALUES ('522324', '晴隆县', '522300');
INSERT INTO `sys_area` VALUES ('522325', '贞丰县', '522300');
INSERT INTO `sys_area` VALUES ('522326', '望谟县', '522300');
INSERT INTO `sys_area` VALUES ('522327', '册亨县', '522300');
INSERT INTO `sys_area` VALUES ('522328', '安龙县', '522300');
INSERT INTO `sys_area` VALUES ('522600', '黔东南苗族侗族自治州', '520000');
INSERT INTO `sys_area` VALUES ('522601', '凯里市', '522600');
INSERT INTO `sys_area` VALUES ('522622', '黄平县', '522600');
INSERT INTO `sys_area` VALUES ('522623', '施秉县', '522600');
INSERT INTO `sys_area` VALUES ('522624', '三穗县', '522600');
INSERT INTO `sys_area` VALUES ('522625', '镇远县', '522600');
INSERT INTO `sys_area` VALUES ('522626', '岑巩县', '522600');
INSERT INTO `sys_area` VALUES ('522627', '天柱县', '522600');
INSERT INTO `sys_area` VALUES ('522628', '锦屏县', '522600');
INSERT INTO `sys_area` VALUES ('522629', '剑河县', '522600');
INSERT INTO `sys_area` VALUES ('522630', '台江县', '522600');
INSERT INTO `sys_area` VALUES ('522631', '黎平县', '522600');
INSERT INTO `sys_area` VALUES ('522632', '榕江县', '522600');
INSERT INTO `sys_area` VALUES ('522633', '从江县', '522600');
INSERT INTO `sys_area` VALUES ('522634', '雷山县', '522600');
INSERT INTO `sys_area` VALUES ('522635', '麻江县', '522600');
INSERT INTO `sys_area` VALUES ('522636', '丹寨县', '522600');
INSERT INTO `sys_area` VALUES ('522700', '黔南布依族苗族自治州', '520000');
INSERT INTO `sys_area` VALUES ('522701', '都匀市', '522700');
INSERT INTO `sys_area` VALUES ('522702', '福泉市', '522700');
INSERT INTO `sys_area` VALUES ('522722', '荔波县', '522700');
INSERT INTO `sys_area` VALUES ('522723', '贵定县', '522700');
INSERT INTO `sys_area` VALUES ('522725', '瓮安县', '522700');
INSERT INTO `sys_area` VALUES ('522726', '独山县', '522700');
INSERT INTO `sys_area` VALUES ('522727', '平塘县', '522700');
INSERT INTO `sys_area` VALUES ('522728', '罗甸县', '522700');
INSERT INTO `sys_area` VALUES ('522729', '长顺县', '522700');
INSERT INTO `sys_area` VALUES ('522730', '龙里县', '522700');
INSERT INTO `sys_area` VALUES ('522731', '惠水县', '522700');
INSERT INTO `sys_area` VALUES ('522732', '三都水族自治县', '522700');
INSERT INTO `sys_area` VALUES ('530000', '云南省', null);
INSERT INTO `sys_area` VALUES ('530100', '昆明市', '530000');
INSERT INTO `sys_area` VALUES ('530101', '市辖区', '530100');
INSERT INTO `sys_area` VALUES ('530102', '五华区', '530100');
INSERT INTO `sys_area` VALUES ('530103', '盘龙区', '530100');
INSERT INTO `sys_area` VALUES ('530111', '官渡区', '530100');
INSERT INTO `sys_area` VALUES ('530112', '西山区', '530100');
INSERT INTO `sys_area` VALUES ('530113', '东川区', '530100');
INSERT INTO `sys_area` VALUES ('530114', '呈贡区', '530100');
INSERT INTO `sys_area` VALUES ('530122', '晋宁县', '530100');
INSERT INTO `sys_area` VALUES ('530124', '富民县', '530100');
INSERT INTO `sys_area` VALUES ('530125', '宜良县', '530100');
INSERT INTO `sys_area` VALUES ('530126', '石林彝族自治县', '530100');
INSERT INTO `sys_area` VALUES ('530127', '嵩明县', '530100');
INSERT INTO `sys_area` VALUES ('530128', '禄劝彝族苗族自治县', '530100');
INSERT INTO `sys_area` VALUES ('530129', '寻甸回族彝族自治县', '530100');
INSERT INTO `sys_area` VALUES ('530181', '安宁市', '530100');
INSERT INTO `sys_area` VALUES ('530300', '曲靖市', '530000');
INSERT INTO `sys_area` VALUES ('530301', '市辖区', '530300');
INSERT INTO `sys_area` VALUES ('530302', '麒麟区', '530300');
INSERT INTO `sys_area` VALUES ('530303', '沾益区', '530300');
INSERT INTO `sys_area` VALUES ('530321', '马龙县', '530300');
INSERT INTO `sys_area` VALUES ('530322', '陆良县', '530300');
INSERT INTO `sys_area` VALUES ('530323', '师宗县', '530300');
INSERT INTO `sys_area` VALUES ('530324', '罗平县', '530300');
INSERT INTO `sys_area` VALUES ('530325', '富源县', '530300');
INSERT INTO `sys_area` VALUES ('530326', '会泽县', '530300');
INSERT INTO `sys_area` VALUES ('530381', '宣威市', '530300');
INSERT INTO `sys_area` VALUES ('530400', '玉溪市', '530000');
INSERT INTO `sys_area` VALUES ('530401', '市辖区', '530400');
INSERT INTO `sys_area` VALUES ('530402', '红塔区', '530400');
INSERT INTO `sys_area` VALUES ('530403', '江川区', '530400');
INSERT INTO `sys_area` VALUES ('530422', '澄江县', '530400');
INSERT INTO `sys_area` VALUES ('530423', '通海县', '530400');
INSERT INTO `sys_area` VALUES ('530424', '华宁县', '530400');
INSERT INTO `sys_area` VALUES ('530425', '易门县', '530400');
INSERT INTO `sys_area` VALUES ('530426', '峨山彝族自治县', '530400');
INSERT INTO `sys_area` VALUES ('530427', '新平彝族傣族自治县', '530400');
INSERT INTO `sys_area` VALUES ('530428', '元江哈尼族彝族傣族自治县', '530400');
INSERT INTO `sys_area` VALUES ('530500', '保山市', '530000');
INSERT INTO `sys_area` VALUES ('530501', '市辖区', '530500');
INSERT INTO `sys_area` VALUES ('530502', '隆阳区', '530500');
INSERT INTO `sys_area` VALUES ('530521', '施甸县', '530500');
INSERT INTO `sys_area` VALUES ('530523', '龙陵县', '530500');
INSERT INTO `sys_area` VALUES ('530524', '昌宁县', '530500');
INSERT INTO `sys_area` VALUES ('530581', '腾冲市', '530500');
INSERT INTO `sys_area` VALUES ('530600', '昭通市', '530000');
INSERT INTO `sys_area` VALUES ('530601', '市辖区', '530600');
INSERT INTO `sys_area` VALUES ('530602', '昭阳区', '530600');
INSERT INTO `sys_area` VALUES ('530621', '鲁甸县', '530600');
INSERT INTO `sys_area` VALUES ('530622', '巧家县', '530600');
INSERT INTO `sys_area` VALUES ('530623', '盐津县', '530600');
INSERT INTO `sys_area` VALUES ('530624', '大关县', '530600');
INSERT INTO `sys_area` VALUES ('530625', '永善县', '530600');
INSERT INTO `sys_area` VALUES ('530626', '绥江县', '530600');
INSERT INTO `sys_area` VALUES ('530627', '镇雄县', '530600');
INSERT INTO `sys_area` VALUES ('530628', '彝良县', '530600');
INSERT INTO `sys_area` VALUES ('530629', '威信县', '530600');
INSERT INTO `sys_area` VALUES ('530630', '水富县', '530600');
INSERT INTO `sys_area` VALUES ('530700', '丽江市', '530000');
INSERT INTO `sys_area` VALUES ('530701', '市辖区', '530700');
INSERT INTO `sys_area` VALUES ('530702', '古城区', '530700');
INSERT INTO `sys_area` VALUES ('530721', '玉龙纳西族自治县', '530700');
INSERT INTO `sys_area` VALUES ('530722', '永胜县', '530700');
INSERT INTO `sys_area` VALUES ('530723', '华坪县', '530700');
INSERT INTO `sys_area` VALUES ('530724', '宁蒗彝族自治县', '530700');
INSERT INTO `sys_area` VALUES ('530800', '普洱市', '530000');
INSERT INTO `sys_area` VALUES ('530801', '市辖区', '530800');
INSERT INTO `sys_area` VALUES ('530802', '思茅区', '530800');
INSERT INTO `sys_area` VALUES ('530821', '宁洱哈尼族彝族自治县', '530800');
INSERT INTO `sys_area` VALUES ('530822', '墨江哈尼族自治县', '530800');
INSERT INTO `sys_area` VALUES ('530823', '景东彝族自治县', '530800');
INSERT INTO `sys_area` VALUES ('530824', '景谷傣族彝族自治县', '530800');
INSERT INTO `sys_area` VALUES ('530825', '镇沅彝族哈尼族拉祜族自治县', '530800');
INSERT INTO `sys_area` VALUES ('530826', '江城哈尼族彝族自治县', '530800');
INSERT INTO `sys_area` VALUES ('530827', '孟连傣族拉祜族佤族自治县', '530800');
INSERT INTO `sys_area` VALUES ('530828', '澜沧拉祜族自治县', '530800');
INSERT INTO `sys_area` VALUES ('530829', '西盟佤族自治县', '530800');
INSERT INTO `sys_area` VALUES ('530900', '临沧市', '530000');
INSERT INTO `sys_area` VALUES ('530901', '市辖区', '530900');
INSERT INTO `sys_area` VALUES ('530902', '临翔区', '530900');
INSERT INTO `sys_area` VALUES ('530921', '凤庆县', '530900');
INSERT INTO `sys_area` VALUES ('530922', '云县', '530900');
INSERT INTO `sys_area` VALUES ('530923', '永德县', '530900');
INSERT INTO `sys_area` VALUES ('530924', '镇康县', '530900');
INSERT INTO `sys_area` VALUES ('530925', '双江拉祜族佤族布朗族傣族自治县', '530900');
INSERT INTO `sys_area` VALUES ('530926', '耿马傣族佤族自治县', '530900');
INSERT INTO `sys_area` VALUES ('530927', '沧源佤族自治县', '530900');
INSERT INTO `sys_area` VALUES ('532300', '楚雄彝族自治州', '530000');
INSERT INTO `sys_area` VALUES ('532301', '楚雄市', '532300');
INSERT INTO `sys_area` VALUES ('532322', '双柏县', '532300');
INSERT INTO `sys_area` VALUES ('532323', '牟定县', '532300');
INSERT INTO `sys_area` VALUES ('532324', '南华县', '532300');
INSERT INTO `sys_area` VALUES ('532325', '姚安县', '532300');
INSERT INTO `sys_area` VALUES ('532326', '大姚县', '532300');
INSERT INTO `sys_area` VALUES ('532327', '永仁县', '532300');
INSERT INTO `sys_area` VALUES ('532328', '元谋县', '532300');
INSERT INTO `sys_area` VALUES ('532329', '武定县', '532300');
INSERT INTO `sys_area` VALUES ('532331', '禄丰县', '532300');
INSERT INTO `sys_area` VALUES ('532500', '红河哈尼族彝族自治州', '530000');
INSERT INTO `sys_area` VALUES ('532501', '个旧市', '532500');
INSERT INTO `sys_area` VALUES ('532502', '开远市', '532500');
INSERT INTO `sys_area` VALUES ('532503', '蒙自市', '532500');
INSERT INTO `sys_area` VALUES ('532504', '弥勒市', '532500');
INSERT INTO `sys_area` VALUES ('532523', '屏边苗族自治县', '532500');
INSERT INTO `sys_area` VALUES ('532524', '建水县', '532500');
INSERT INTO `sys_area` VALUES ('532525', '石屏县', '532500');
INSERT INTO `sys_area` VALUES ('532527', '泸西县', '532500');
INSERT INTO `sys_area` VALUES ('532528', '元阳县', '532500');
INSERT INTO `sys_area` VALUES ('532529', '红河县', '532500');
INSERT INTO `sys_area` VALUES ('532530', '金平苗族瑶族傣族自治县', '532500');
INSERT INTO `sys_area` VALUES ('532531', '绿春县', '532500');
INSERT INTO `sys_area` VALUES ('532532', '河口瑶族自治县', '532500');
INSERT INTO `sys_area` VALUES ('532600', '文山壮族苗族自治州', '530000');
INSERT INTO `sys_area` VALUES ('532601', '文山市', '532600');
INSERT INTO `sys_area` VALUES ('532622', '砚山县', '532600');
INSERT INTO `sys_area` VALUES ('532623', '西畴县', '532600');
INSERT INTO `sys_area` VALUES ('532624', '麻栗坡县', '532600');
INSERT INTO `sys_area` VALUES ('532625', '马关县', '532600');
INSERT INTO `sys_area` VALUES ('532626', '丘北县', '532600');
INSERT INTO `sys_area` VALUES ('532627', '广南县', '532600');
INSERT INTO `sys_area` VALUES ('532628', '富宁县', '532600');
INSERT INTO `sys_area` VALUES ('532800', '西双版纳傣族自治州', '530000');
INSERT INTO `sys_area` VALUES ('532801', '景洪市', '532800');
INSERT INTO `sys_area` VALUES ('532822', '勐海县', '532800');
INSERT INTO `sys_area` VALUES ('532823', '勐腊县', '532800');
INSERT INTO `sys_area` VALUES ('532900', '大理白族自治州', '530000');
INSERT INTO `sys_area` VALUES ('532901', '大理市', '532900');
INSERT INTO `sys_area` VALUES ('532922', '漾濞彝族自治县', '532900');
INSERT INTO `sys_area` VALUES ('532923', '祥云县', '532900');
INSERT INTO `sys_area` VALUES ('532924', '宾川县', '532900');
INSERT INTO `sys_area` VALUES ('532925', '弥渡县', '532900');
INSERT INTO `sys_area` VALUES ('532926', '南涧彝族自治县', '532900');
INSERT INTO `sys_area` VALUES ('532927', '巍山彝族回族自治县', '532900');
INSERT INTO `sys_area` VALUES ('532928', '永平县', '532900');
INSERT INTO `sys_area` VALUES ('532929', '云龙县', '532900');
INSERT INTO `sys_area` VALUES ('532930', '洱源县', '532900');
INSERT INTO `sys_area` VALUES ('532931', '剑川县', '532900');
INSERT INTO `sys_area` VALUES ('532932', '鹤庆县', '532900');
INSERT INTO `sys_area` VALUES ('533100', '德宏傣族景颇族自治州', '530000');
INSERT INTO `sys_area` VALUES ('533102', '瑞丽市', '533100');
INSERT INTO `sys_area` VALUES ('533103', '芒市', '533100');
INSERT INTO `sys_area` VALUES ('533122', '梁河县', '533100');
INSERT INTO `sys_area` VALUES ('533123', '盈江县', '533100');
INSERT INTO `sys_area` VALUES ('533124', '陇川县', '533100');
INSERT INTO `sys_area` VALUES ('533300', '怒江傈僳族自治州', '530000');
INSERT INTO `sys_area` VALUES ('533301', '泸水市', '533300');
INSERT INTO `sys_area` VALUES ('533323', '福贡县', '533300');
INSERT INTO `sys_area` VALUES ('533324', '贡山独龙族怒族自治县', '533300');
INSERT INTO `sys_area` VALUES ('533325', '兰坪白族普米族自治县', '533300');
INSERT INTO `sys_area` VALUES ('533400', '迪庆藏族自治州', '530000');
INSERT INTO `sys_area` VALUES ('533401', '香格里拉市', '533400');
INSERT INTO `sys_area` VALUES ('533422', '德钦县', '533400');
INSERT INTO `sys_area` VALUES ('533423', '维西傈僳族自治县', '533400');
INSERT INTO `sys_area` VALUES ('540000', '西藏自治区', null);
INSERT INTO `sys_area` VALUES ('540100', '拉萨市', '540000');
INSERT INTO `sys_area` VALUES ('540101', '市辖区', '540100');
INSERT INTO `sys_area` VALUES ('540102', '城关区', '540100');
INSERT INTO `sys_area` VALUES ('540103', '堆龙德庆区', '540100');
INSERT INTO `sys_area` VALUES ('540121', '林周县', '540100');
INSERT INTO `sys_area` VALUES ('540122', '当雄县', '540100');
INSERT INTO `sys_area` VALUES ('540123', '尼木县', '540100');
INSERT INTO `sys_area` VALUES ('540124', '曲水县', '540100');
INSERT INTO `sys_area` VALUES ('540126', '达孜县', '540100');
INSERT INTO `sys_area` VALUES ('540127', '墨竹工卡县', '540100');
INSERT INTO `sys_area` VALUES ('540200', '日喀则市', '540000');
INSERT INTO `sys_area` VALUES ('540202', '桑珠孜区', '540200');
INSERT INTO `sys_area` VALUES ('540221', '南木林县', '540200');
INSERT INTO `sys_area` VALUES ('540222', '江孜县', '540200');
INSERT INTO `sys_area` VALUES ('540223', '定日县', '540200');
INSERT INTO `sys_area` VALUES ('540224', '萨迦县', '540200');
INSERT INTO `sys_area` VALUES ('540225', '拉孜县', '540200');
INSERT INTO `sys_area` VALUES ('540226', '昂仁县', '540200');
INSERT INTO `sys_area` VALUES ('540227', '谢通门县', '540200');
INSERT INTO `sys_area` VALUES ('540228', '白朗县', '540200');
INSERT INTO `sys_area` VALUES ('540229', '仁布县', '540200');
INSERT INTO `sys_area` VALUES ('540230', '康马县', '540200');
INSERT INTO `sys_area` VALUES ('540231', '定结县', '540200');
INSERT INTO `sys_area` VALUES ('540232', '仲巴县', '540200');
INSERT INTO `sys_area` VALUES ('540233', '亚东县', '540200');
INSERT INTO `sys_area` VALUES ('540234', '吉隆县', '540200');
INSERT INTO `sys_area` VALUES ('540235', '聂拉木县', '540200');
INSERT INTO `sys_area` VALUES ('540236', '萨嘎县', '540200');
INSERT INTO `sys_area` VALUES ('540237', '岗巴县', '540200');
INSERT INTO `sys_area` VALUES ('540300', '昌都市', '540000');
INSERT INTO `sys_area` VALUES ('540302', '卡若区', '540300');
INSERT INTO `sys_area` VALUES ('540321', '江达县', '540300');
INSERT INTO `sys_area` VALUES ('540322', '贡觉县', '540300');
INSERT INTO `sys_area` VALUES ('540323', '类乌齐县', '540300');
INSERT INTO `sys_area` VALUES ('540324', '丁青县', '540300');
INSERT INTO `sys_area` VALUES ('540325', '察雅县', '540300');
INSERT INTO `sys_area` VALUES ('540326', '八宿县', '540300');
INSERT INTO `sys_area` VALUES ('540327', '左贡县', '540300');
INSERT INTO `sys_area` VALUES ('540328', '芒康县', '540300');
INSERT INTO `sys_area` VALUES ('540329', '洛隆县', '540300');
INSERT INTO `sys_area` VALUES ('540330', '边坝县', '540300');
INSERT INTO `sys_area` VALUES ('540400', '林芝市', '540000');
INSERT INTO `sys_area` VALUES ('540402', '巴宜区', '540400');
INSERT INTO `sys_area` VALUES ('540421', '工布江达县', '540400');
INSERT INTO `sys_area` VALUES ('540422', '米林县', '540400');
INSERT INTO `sys_area` VALUES ('540423', '墨脱县', '540400');
INSERT INTO `sys_area` VALUES ('540424', '波密县', '540400');
INSERT INTO `sys_area` VALUES ('540425', '察隅县', '540400');
INSERT INTO `sys_area` VALUES ('540426', '朗县', '540400');
INSERT INTO `sys_area` VALUES ('540500', '山南市', '540000');
INSERT INTO `sys_area` VALUES ('540501', '市辖区', '540500');
INSERT INTO `sys_area` VALUES ('540502', '乃东区', '540500');
INSERT INTO `sys_area` VALUES ('540521', '扎囊县', '540500');
INSERT INTO `sys_area` VALUES ('540522', '贡嘎县', '540500');
INSERT INTO `sys_area` VALUES ('540523', '桑日县', '540500');
INSERT INTO `sys_area` VALUES ('540524', '琼结县', '540500');
INSERT INTO `sys_area` VALUES ('540525', '曲松县', '540500');
INSERT INTO `sys_area` VALUES ('540526', '措美县', '540500');
INSERT INTO `sys_area` VALUES ('540527', '洛扎县', '540500');
INSERT INTO `sys_area` VALUES ('540528', '加查县', '540500');
INSERT INTO `sys_area` VALUES ('540529', '隆子县', '540500');
INSERT INTO `sys_area` VALUES ('540530', '错那县', '540500');
INSERT INTO `sys_area` VALUES ('540531', '浪卡子县', '540500');
INSERT INTO `sys_area` VALUES ('542400', '那曲地区', '540000');
INSERT INTO `sys_area` VALUES ('542421', '那曲县', '542400');
INSERT INTO `sys_area` VALUES ('542422', '嘉黎县', '542400');
INSERT INTO `sys_area` VALUES ('542423', '比如县', '542400');
INSERT INTO `sys_area` VALUES ('542424', '聂荣县', '542400');
INSERT INTO `sys_area` VALUES ('542425', '安多县', '542400');
INSERT INTO `sys_area` VALUES ('542426', '申扎县', '542400');
INSERT INTO `sys_area` VALUES ('542427', '索县', '542400');
INSERT INTO `sys_area` VALUES ('542428', '班戈县', '542400');
INSERT INTO `sys_area` VALUES ('542429', '巴青县', '542400');
INSERT INTO `sys_area` VALUES ('542430', '尼玛县', '542400');
INSERT INTO `sys_area` VALUES ('542431', '双湖县', '542400');
INSERT INTO `sys_area` VALUES ('542500', '阿里地区', '540000');
INSERT INTO `sys_area` VALUES ('542521', '普兰县', '542500');
INSERT INTO `sys_area` VALUES ('542522', '札达县', '542500');
INSERT INTO `sys_area` VALUES ('542523', '噶尔县', '542500');
INSERT INTO `sys_area` VALUES ('542524', '日土县', '542500');
INSERT INTO `sys_area` VALUES ('542525', '革吉县', '542500');
INSERT INTO `sys_area` VALUES ('542526', '改则县', '542500');
INSERT INTO `sys_area` VALUES ('542527', '措勤县', '542500');
INSERT INTO `sys_area` VALUES ('610000', '陕西省', null);
INSERT INTO `sys_area` VALUES ('610100', '西安市', '610000');
INSERT INTO `sys_area` VALUES ('610101', '市辖区', '610100');
INSERT INTO `sys_area` VALUES ('610102', '新城区', '610100');
INSERT INTO `sys_area` VALUES ('610103', '碑林区', '610100');
INSERT INTO `sys_area` VALUES ('610104', '莲湖区', '610100');
INSERT INTO `sys_area` VALUES ('610111', '灞桥区', '610100');
INSERT INTO `sys_area` VALUES ('610112', '未央区', '610100');
INSERT INTO `sys_area` VALUES ('610113', '雁塔区', '610100');
INSERT INTO `sys_area` VALUES ('610114', '阎良区', '610100');
INSERT INTO `sys_area` VALUES ('610115', '临潼区', '610100');
INSERT INTO `sys_area` VALUES ('610116', '长安区', '610100');
INSERT INTO `sys_area` VALUES ('610117', '高陵区', '610100');
INSERT INTO `sys_area` VALUES ('610122', '蓝田县', '610100');
INSERT INTO `sys_area` VALUES ('610124', '周至县', '610100');
INSERT INTO `sys_area` VALUES ('610125', '户县', '610100');
INSERT INTO `sys_area` VALUES ('610200', '铜川市', '610000');
INSERT INTO `sys_area` VALUES ('610201', '市辖区', '610200');
INSERT INTO `sys_area` VALUES ('610202', '王益区', '610200');
INSERT INTO `sys_area` VALUES ('610203', '印台区', '610200');
INSERT INTO `sys_area` VALUES ('610204', '耀州区', '610200');
INSERT INTO `sys_area` VALUES ('610222', '宜君县', '610200');
INSERT INTO `sys_area` VALUES ('610300', '宝鸡市', '610000');
INSERT INTO `sys_area` VALUES ('610301', '市辖区', '610300');
INSERT INTO `sys_area` VALUES ('610302', '渭滨区', '610300');
INSERT INTO `sys_area` VALUES ('610303', '金台区', '610300');
INSERT INTO `sys_area` VALUES ('610304', '陈仓区', '610300');
INSERT INTO `sys_area` VALUES ('610322', '凤翔县', '610300');
INSERT INTO `sys_area` VALUES ('610323', '岐山县', '610300');
INSERT INTO `sys_area` VALUES ('610324', '扶风县', '610300');
INSERT INTO `sys_area` VALUES ('610326', '眉县', '610300');
INSERT INTO `sys_area` VALUES ('610327', '陇县', '610300');
INSERT INTO `sys_area` VALUES ('610328', '千阳县', '610300');
INSERT INTO `sys_area` VALUES ('610329', '麟游县', '610300');
INSERT INTO `sys_area` VALUES ('610330', '凤县', '610300');
INSERT INTO `sys_area` VALUES ('610331', '太白县', '610300');
INSERT INTO `sys_area` VALUES ('610400', '咸阳市', '610000');
INSERT INTO `sys_area` VALUES ('610401', '市辖区', '610400');
INSERT INTO `sys_area` VALUES ('610402', '秦都区', '610400');
INSERT INTO `sys_area` VALUES ('610403', '杨陵区', '610400');
INSERT INTO `sys_area` VALUES ('610404', '渭城区', '610400');
INSERT INTO `sys_area` VALUES ('610422', '三原县', '610400');
INSERT INTO `sys_area` VALUES ('610423', '泾阳县', '610400');
INSERT INTO `sys_area` VALUES ('610424', '乾县', '610400');
INSERT INTO `sys_area` VALUES ('610425', '礼泉县', '610400');
INSERT INTO `sys_area` VALUES ('610426', '永寿县', '610400');
INSERT INTO `sys_area` VALUES ('610427', '彬县', '610400');
INSERT INTO `sys_area` VALUES ('610428', '长武县', '610400');
INSERT INTO `sys_area` VALUES ('610429', '旬邑县', '610400');
INSERT INTO `sys_area` VALUES ('610430', '淳化县', '610400');
INSERT INTO `sys_area` VALUES ('610431', '武功县', '610400');
INSERT INTO `sys_area` VALUES ('610481', '兴平市', '610400');
INSERT INTO `sys_area` VALUES ('610500', '渭南市', '610000');
INSERT INTO `sys_area` VALUES ('610501', '市辖区', '610500');
INSERT INTO `sys_area` VALUES ('610502', '临渭区', '610500');
INSERT INTO `sys_area` VALUES ('610503', '华州区', '610500');
INSERT INTO `sys_area` VALUES ('610522', '潼关县', '610500');
INSERT INTO `sys_area` VALUES ('610523', '大荔县', '610500');
INSERT INTO `sys_area` VALUES ('610524', '合阳县', '610500');
INSERT INTO `sys_area` VALUES ('610525', '澄城县', '610500');
INSERT INTO `sys_area` VALUES ('610526', '蒲城县', '610500');
INSERT INTO `sys_area` VALUES ('610527', '白水县', '610500');
INSERT INTO `sys_area` VALUES ('610528', '富平县', '610500');
INSERT INTO `sys_area` VALUES ('610581', '韩城市', '610500');
INSERT INTO `sys_area` VALUES ('610582', '华阴市', '610500');
INSERT INTO `sys_area` VALUES ('610600', '延安市', '610000');
INSERT INTO `sys_area` VALUES ('610601', '市辖区', '610600');
INSERT INTO `sys_area` VALUES ('610602', '宝塔区', '610600');
INSERT INTO `sys_area` VALUES ('610603', '安塞区', '610600');
INSERT INTO `sys_area` VALUES ('610621', '延长县', '610600');
INSERT INTO `sys_area` VALUES ('610622', '延川县', '610600');
INSERT INTO `sys_area` VALUES ('610623', '子长县', '610600');
INSERT INTO `sys_area` VALUES ('610625', '志丹县', '610600');
INSERT INTO `sys_area` VALUES ('610626', '吴起县', '610600');
INSERT INTO `sys_area` VALUES ('610627', '甘泉县', '610600');
INSERT INTO `sys_area` VALUES ('610628', '富县', '610600');
INSERT INTO `sys_area` VALUES ('610629', '洛川县', '610600');
INSERT INTO `sys_area` VALUES ('610630', '宜川县', '610600');
INSERT INTO `sys_area` VALUES ('610631', '黄龙县', '610600');
INSERT INTO `sys_area` VALUES ('610632', '黄陵县', '610600');
INSERT INTO `sys_area` VALUES ('610700', '汉中市', '610000');
INSERT INTO `sys_area` VALUES ('610701', '市辖区', '610700');
INSERT INTO `sys_area` VALUES ('610702', '汉台区', '610700');
INSERT INTO `sys_area` VALUES ('610721', '南郑县', '610700');
INSERT INTO `sys_area` VALUES ('610722', '城固县', '610700');
INSERT INTO `sys_area` VALUES ('610723', '洋县', '610700');
INSERT INTO `sys_area` VALUES ('610724', '西乡县', '610700');
INSERT INTO `sys_area` VALUES ('610725', '勉县', '610700');
INSERT INTO `sys_area` VALUES ('610726', '宁强县', '610700');
INSERT INTO `sys_area` VALUES ('610727', '略阳县', '610700');
INSERT INTO `sys_area` VALUES ('610728', '镇巴县', '610700');
INSERT INTO `sys_area` VALUES ('610729', '留坝县', '610700');
INSERT INTO `sys_area` VALUES ('610730', '佛坪县', '610700');
INSERT INTO `sys_area` VALUES ('610800', '榆林市', '610000');
INSERT INTO `sys_area` VALUES ('610801', '市辖区', '610800');
INSERT INTO `sys_area` VALUES ('610802', '榆阳区', '610800');
INSERT INTO `sys_area` VALUES ('610803', '横山区', '610800');
INSERT INTO `sys_area` VALUES ('610821', '神木县', '610800');
INSERT INTO `sys_area` VALUES ('610822', '府谷县', '610800');
INSERT INTO `sys_area` VALUES ('610824', '靖边县', '610800');
INSERT INTO `sys_area` VALUES ('610825', '定边县', '610800');
INSERT INTO `sys_area` VALUES ('610826', '绥德县', '610800');
INSERT INTO `sys_area` VALUES ('610827', '米脂县', '610800');
INSERT INTO `sys_area` VALUES ('610828', '佳县', '610800');
INSERT INTO `sys_area` VALUES ('610829', '吴堡县', '610800');
INSERT INTO `sys_area` VALUES ('610830', '清涧县', '610800');
INSERT INTO `sys_area` VALUES ('610831', '子洲县', '610800');
INSERT INTO `sys_area` VALUES ('610900', '安康市', '610000');
INSERT INTO `sys_area` VALUES ('610901', '市辖区', '610900');
INSERT INTO `sys_area` VALUES ('610902', '汉滨区', '610900');
INSERT INTO `sys_area` VALUES ('610921', '汉阴县', '610900');
INSERT INTO `sys_area` VALUES ('610922', '石泉县', '610900');
INSERT INTO `sys_area` VALUES ('610923', '宁陕县', '610900');
INSERT INTO `sys_area` VALUES ('610924', '紫阳县', '610900');
INSERT INTO `sys_area` VALUES ('610925', '岚皋县', '610900');
INSERT INTO `sys_area` VALUES ('610926', '平利县', '610900');
INSERT INTO `sys_area` VALUES ('610927', '镇坪县', '610900');
INSERT INTO `sys_area` VALUES ('610928', '旬阳县', '610900');
INSERT INTO `sys_area` VALUES ('610929', '白河县', '610900');
INSERT INTO `sys_area` VALUES ('611000', '商洛市', '610000');
INSERT INTO `sys_area` VALUES ('611001', '市辖区', '611000');
INSERT INTO `sys_area` VALUES ('611002', '商州区', '611000');
INSERT INTO `sys_area` VALUES ('611021', '洛南县', '611000');
INSERT INTO `sys_area` VALUES ('611022', '丹凤县', '611000');
INSERT INTO `sys_area` VALUES ('611023', '商南县', '611000');
INSERT INTO `sys_area` VALUES ('611024', '山阳县', '611000');
INSERT INTO `sys_area` VALUES ('611025', '镇安县', '611000');
INSERT INTO `sys_area` VALUES ('611026', '柞水县', '611000');
INSERT INTO `sys_area` VALUES ('620000', '甘肃省', null);
INSERT INTO `sys_area` VALUES ('620100', '兰州市', '620000');
INSERT INTO `sys_area` VALUES ('620101', '市辖区', '620100');
INSERT INTO `sys_area` VALUES ('620102', '城关区', '620100');
INSERT INTO `sys_area` VALUES ('620103', '七里河区', '620100');
INSERT INTO `sys_area` VALUES ('620104', '西固区', '620100');
INSERT INTO `sys_area` VALUES ('620105', '安宁区', '620100');
INSERT INTO `sys_area` VALUES ('620111', '红古区', '620100');
INSERT INTO `sys_area` VALUES ('620121', '永登县', '620100');
INSERT INTO `sys_area` VALUES ('620122', '皋兰县', '620100');
INSERT INTO `sys_area` VALUES ('620123', '榆中县', '620100');
INSERT INTO `sys_area` VALUES ('620200', '嘉峪关市', '620000');
INSERT INTO `sys_area` VALUES ('620201', '市辖区', '620200');
INSERT INTO `sys_area` VALUES ('620300', '金昌市', '620000');
INSERT INTO `sys_area` VALUES ('620301', '市辖区', '620300');
INSERT INTO `sys_area` VALUES ('620302', '金川区', '620300');
INSERT INTO `sys_area` VALUES ('620321', '永昌县', '620300');
INSERT INTO `sys_area` VALUES ('620400', '白银市', '620000');
INSERT INTO `sys_area` VALUES ('620401', '市辖区', '620400');
INSERT INTO `sys_area` VALUES ('620402', '白银区', '620400');
INSERT INTO `sys_area` VALUES ('620403', '平川区', '620400');
INSERT INTO `sys_area` VALUES ('620421', '靖远县', '620400');
INSERT INTO `sys_area` VALUES ('620422', '会宁县', '620400');
INSERT INTO `sys_area` VALUES ('620423', '景泰县', '620400');
INSERT INTO `sys_area` VALUES ('620500', '天水市', '620000');
INSERT INTO `sys_area` VALUES ('620501', '市辖区', '620500');
INSERT INTO `sys_area` VALUES ('620502', '秦州区', '620500');
INSERT INTO `sys_area` VALUES ('620503', '麦积区', '620500');
INSERT INTO `sys_area` VALUES ('620521', '清水县', '620500');
INSERT INTO `sys_area` VALUES ('620522', '秦安县', '620500');
INSERT INTO `sys_area` VALUES ('620523', '甘谷县', '620500');
INSERT INTO `sys_area` VALUES ('620524', '武山县', '620500');
INSERT INTO `sys_area` VALUES ('620525', '张家川回族自治县', '620500');
INSERT INTO `sys_area` VALUES ('620600', '武威市', '620000');
INSERT INTO `sys_area` VALUES ('620601', '市辖区', '620600');
INSERT INTO `sys_area` VALUES ('620602', '凉州区', '620600');
INSERT INTO `sys_area` VALUES ('620621', '民勤县', '620600');
INSERT INTO `sys_area` VALUES ('620622', '古浪县', '620600');
INSERT INTO `sys_area` VALUES ('620623', '天祝藏族自治县', '620600');
INSERT INTO `sys_area` VALUES ('620700', '张掖市', '620000');
INSERT INTO `sys_area` VALUES ('620701', '市辖区', '620700');
INSERT INTO `sys_area` VALUES ('620702', '甘州区', '620700');
INSERT INTO `sys_area` VALUES ('620721', '肃南裕固族自治县', '620700');
INSERT INTO `sys_area` VALUES ('620722', '民乐县', '620700');
INSERT INTO `sys_area` VALUES ('620723', '临泽县', '620700');
INSERT INTO `sys_area` VALUES ('620724', '高台县', '620700');
INSERT INTO `sys_area` VALUES ('620725', '山丹县', '620700');
INSERT INTO `sys_area` VALUES ('620800', '平凉市', '620000');
INSERT INTO `sys_area` VALUES ('620801', '市辖区', '620800');
INSERT INTO `sys_area` VALUES ('620802', '崆峒区', '620800');
INSERT INTO `sys_area` VALUES ('620821', '泾川县', '620800');
INSERT INTO `sys_area` VALUES ('620822', '灵台县', '620800');
INSERT INTO `sys_area` VALUES ('620823', '崇信县', '620800');
INSERT INTO `sys_area` VALUES ('620824', '华亭县', '620800');
INSERT INTO `sys_area` VALUES ('620825', '庄浪县', '620800');
INSERT INTO `sys_area` VALUES ('620826', '静宁县', '620800');
INSERT INTO `sys_area` VALUES ('620900', '酒泉市', '620000');
INSERT INTO `sys_area` VALUES ('620901', '市辖区', '620900');
INSERT INTO `sys_area` VALUES ('620902', '肃州区', '620900');
INSERT INTO `sys_area` VALUES ('620921', '金塔县', '620900');
INSERT INTO `sys_area` VALUES ('620922', '瓜州县', '620900');
INSERT INTO `sys_area` VALUES ('620923', '肃北蒙古族自治县', '620900');
INSERT INTO `sys_area` VALUES ('620924', '阿克塞哈萨克族自治县', '620900');
INSERT INTO `sys_area` VALUES ('620981', '玉门市', '620900');
INSERT INTO `sys_area` VALUES ('620982', '敦煌市', '620900');
INSERT INTO `sys_area` VALUES ('621000', '庆阳市', '620000');
INSERT INTO `sys_area` VALUES ('621001', '市辖区', '621000');
INSERT INTO `sys_area` VALUES ('621002', '西峰区', '621000');
INSERT INTO `sys_area` VALUES ('621021', '庆城县', '621000');
INSERT INTO `sys_area` VALUES ('621022', '环县', '621000');
INSERT INTO `sys_area` VALUES ('621023', '华池县', '621000');
INSERT INTO `sys_area` VALUES ('621024', '合水县', '621000');
INSERT INTO `sys_area` VALUES ('621025', '正宁县', '621000');
INSERT INTO `sys_area` VALUES ('621026', '宁县', '621000');
INSERT INTO `sys_area` VALUES ('621027', '镇原县', '621000');
INSERT INTO `sys_area` VALUES ('621100', '定西市', '620000');
INSERT INTO `sys_area` VALUES ('621101', '市辖区', '621100');
INSERT INTO `sys_area` VALUES ('621102', '安定区', '621100');
INSERT INTO `sys_area` VALUES ('621121', '通渭县', '621100');
INSERT INTO `sys_area` VALUES ('621122', '陇西县', '621100');
INSERT INTO `sys_area` VALUES ('621123', '渭源县', '621100');
INSERT INTO `sys_area` VALUES ('621124', '临洮县', '621100');
INSERT INTO `sys_area` VALUES ('621125', '漳县', '621100');
INSERT INTO `sys_area` VALUES ('621126', '岷县', '621100');
INSERT INTO `sys_area` VALUES ('621200', '陇南市', '620000');
INSERT INTO `sys_area` VALUES ('621201', '市辖区', '621200');
INSERT INTO `sys_area` VALUES ('621202', '武都区', '621200');
INSERT INTO `sys_area` VALUES ('621221', '成县', '621200');
INSERT INTO `sys_area` VALUES ('621222', '文县', '621200');
INSERT INTO `sys_area` VALUES ('621223', '宕昌县', '621200');
INSERT INTO `sys_area` VALUES ('621224', '康县', '621200');
INSERT INTO `sys_area` VALUES ('621225', '西和县', '621200');
INSERT INTO `sys_area` VALUES ('621226', '礼县', '621200');
INSERT INTO `sys_area` VALUES ('621227', '徽县', '621200');
INSERT INTO `sys_area` VALUES ('621228', '两当县', '621200');
INSERT INTO `sys_area` VALUES ('622900', '临夏回族自治州', '620000');
INSERT INTO `sys_area` VALUES ('622901', '临夏市', '622900');
INSERT INTO `sys_area` VALUES ('622921', '临夏县', '622900');
INSERT INTO `sys_area` VALUES ('622922', '康乐县', '622900');
INSERT INTO `sys_area` VALUES ('622923', '永靖县', '622900');
INSERT INTO `sys_area` VALUES ('622924', '广河县', '622900');
INSERT INTO `sys_area` VALUES ('622925', '和政县', '622900');
INSERT INTO `sys_area` VALUES ('622926', '东乡族自治县', '622900');
INSERT INTO `sys_area` VALUES ('622927', '积石山保安族东乡族撒拉族自治县', '622900');
INSERT INTO `sys_area` VALUES ('623000', '甘南藏族自治州', '620000');
INSERT INTO `sys_area` VALUES ('623001', '合作市', '623000');
INSERT INTO `sys_area` VALUES ('623021', '临潭县', '623000');
INSERT INTO `sys_area` VALUES ('623022', '卓尼县', '623000');
INSERT INTO `sys_area` VALUES ('623023', '舟曲县', '623000');
INSERT INTO `sys_area` VALUES ('623024', '迭部县', '623000');
INSERT INTO `sys_area` VALUES ('623025', '玛曲县', '623000');
INSERT INTO `sys_area` VALUES ('623026', '碌曲县', '623000');
INSERT INTO `sys_area` VALUES ('623027', '夏河县', '623000');
INSERT INTO `sys_area` VALUES ('630000', '青海省', null);
INSERT INTO `sys_area` VALUES ('630100', '西宁市', '630000');
INSERT INTO `sys_area` VALUES ('630101', '市辖区', '630100');
INSERT INTO `sys_area` VALUES ('630102', '城东区', '630100');
INSERT INTO `sys_area` VALUES ('630103', '城中区', '630100');
INSERT INTO `sys_area` VALUES ('630104', '城西区', '630100');
INSERT INTO `sys_area` VALUES ('630105', '城北区', '630100');
INSERT INTO `sys_area` VALUES ('630121', '大通回族土族自治县', '630100');
INSERT INTO `sys_area` VALUES ('630122', '湟中县', '630100');
INSERT INTO `sys_area` VALUES ('630123', '湟源县', '630100');
INSERT INTO `sys_area` VALUES ('630200', '海东市', '630000');
INSERT INTO `sys_area` VALUES ('630202', '乐都区', '630200');
INSERT INTO `sys_area` VALUES ('630203', '平安区', '630200');
INSERT INTO `sys_area` VALUES ('630222', '民和回族土族自治县', '630200');
INSERT INTO `sys_area` VALUES ('630223', '互助土族自治县', '630200');
INSERT INTO `sys_area` VALUES ('630224', '化隆回族自治县', '630200');
INSERT INTO `sys_area` VALUES ('630225', '循化撒拉族自治县', '630200');
INSERT INTO `sys_area` VALUES ('632200', '海北藏族自治州', '630000');
INSERT INTO `sys_area` VALUES ('632221', '门源回族自治县', '632200');
INSERT INTO `sys_area` VALUES ('632222', '祁连县', '632200');
INSERT INTO `sys_area` VALUES ('632223', '海晏县', '632200');
INSERT INTO `sys_area` VALUES ('632224', '刚察县', '632200');
INSERT INTO `sys_area` VALUES ('632300', '黄南藏族自治州', '630000');
INSERT INTO `sys_area` VALUES ('632321', '同仁县', '632300');
INSERT INTO `sys_area` VALUES ('632322', '尖扎县', '632300');
INSERT INTO `sys_area` VALUES ('632323', '泽库县', '632300');
INSERT INTO `sys_area` VALUES ('632324', '河南蒙古族自治县', '632300');
INSERT INTO `sys_area` VALUES ('632500', '海南藏族自治州', '630000');
INSERT INTO `sys_area` VALUES ('632521', '共和县', '632500');
INSERT INTO `sys_area` VALUES ('632522', '同德县', '632500');
INSERT INTO `sys_area` VALUES ('632523', '贵德县', '632500');
INSERT INTO `sys_area` VALUES ('632524', '兴海县', '632500');
INSERT INTO `sys_area` VALUES ('632525', '贵南县', '632500');
INSERT INTO `sys_area` VALUES ('632600', '果洛藏族自治州', '630000');
INSERT INTO `sys_area` VALUES ('632621', '玛沁县', '632600');
INSERT INTO `sys_area` VALUES ('632622', '班玛县', '632600');
INSERT INTO `sys_area` VALUES ('632623', '甘德县', '632600');
INSERT INTO `sys_area` VALUES ('632624', '达日县', '632600');
INSERT INTO `sys_area` VALUES ('632625', '久治县', '632600');
INSERT INTO `sys_area` VALUES ('632626', '玛多县', '632600');
INSERT INTO `sys_area` VALUES ('632700', '玉树藏族自治州', '630000');
INSERT INTO `sys_area` VALUES ('632701', '玉树市', '632700');
INSERT INTO `sys_area` VALUES ('632722', '杂多县', '632700');
INSERT INTO `sys_area` VALUES ('632723', '称多县', '632700');
INSERT INTO `sys_area` VALUES ('632724', '治多县', '632700');
INSERT INTO `sys_area` VALUES ('632725', '囊谦县', '632700');
INSERT INTO `sys_area` VALUES ('632726', '曲麻莱县', '632700');
INSERT INTO `sys_area` VALUES ('632800', '海西蒙古族藏族自治州', '630000');
INSERT INTO `sys_area` VALUES ('632801', '格尔木市', '632800');
INSERT INTO `sys_area` VALUES ('632802', '德令哈市', '632800');
INSERT INTO `sys_area` VALUES ('632821', '乌兰县', '632800');
INSERT INTO `sys_area` VALUES ('632822', '都兰县', '632800');
INSERT INTO `sys_area` VALUES ('632823', '天峻县', '632800');
INSERT INTO `sys_area` VALUES ('640000', '宁夏回族自治区', null);
INSERT INTO `sys_area` VALUES ('640100', '银川市', '640000');
INSERT INTO `sys_area` VALUES ('640101', '市辖区', '640100');
INSERT INTO `sys_area` VALUES ('640104', '兴庆区', '640100');
INSERT INTO `sys_area` VALUES ('640105', '西夏区', '640100');
INSERT INTO `sys_area` VALUES ('640106', '金凤区', '640100');
INSERT INTO `sys_area` VALUES ('640121', '永宁县', '640100');
INSERT INTO `sys_area` VALUES ('640122', '贺兰县', '640100');
INSERT INTO `sys_area` VALUES ('640181', '灵武市', '640100');
INSERT INTO `sys_area` VALUES ('640200', '石嘴山市', '640000');
INSERT INTO `sys_area` VALUES ('640201', '市辖区', '640200');
INSERT INTO `sys_area` VALUES ('640202', '大武口区', '640200');
INSERT INTO `sys_area` VALUES ('640205', '惠农区', '640200');
INSERT INTO `sys_area` VALUES ('640221', '平罗县', '640200');
INSERT INTO `sys_area` VALUES ('640300', '吴忠市', '640000');
INSERT INTO `sys_area` VALUES ('640301', '市辖区', '640300');
INSERT INTO `sys_area` VALUES ('640302', '利通区', '640300');
INSERT INTO `sys_area` VALUES ('640303', '红寺堡区', '640300');
INSERT INTO `sys_area` VALUES ('640323', '盐池县', '640300');
INSERT INTO `sys_area` VALUES ('640324', '同心县', '640300');
INSERT INTO `sys_area` VALUES ('640381', '青铜峡市', '640300');
INSERT INTO `sys_area` VALUES ('640400', '固原市', '640000');
INSERT INTO `sys_area` VALUES ('640401', '市辖区', '640400');
INSERT INTO `sys_area` VALUES ('640402', '原州区', '640400');
INSERT INTO `sys_area` VALUES ('640422', '西吉县', '640400');
INSERT INTO `sys_area` VALUES ('640423', '隆德县', '640400');
INSERT INTO `sys_area` VALUES ('640424', '泾源县', '640400');
INSERT INTO `sys_area` VALUES ('640425', '彭阳县', '640400');
INSERT INTO `sys_area` VALUES ('640500', '中卫市', '640000');
INSERT INTO `sys_area` VALUES ('640501', '市辖区', '640500');
INSERT INTO `sys_area` VALUES ('640502', '沙坡头区', '640500');
INSERT INTO `sys_area` VALUES ('640521', '中宁县', '640500');
INSERT INTO `sys_area` VALUES ('640522', '海原县', '640500');
INSERT INTO `sys_area` VALUES ('650000', '新疆维吾尔自治区', null);
INSERT INTO `sys_area` VALUES ('650100', '乌鲁木齐市', '650000');
INSERT INTO `sys_area` VALUES ('650101', '市辖区', '650100');
INSERT INTO `sys_area` VALUES ('650102', '天山区', '650100');
INSERT INTO `sys_area` VALUES ('650103', '沙依巴克区', '650100');
INSERT INTO `sys_area` VALUES ('650104', '新市区', '650100');
INSERT INTO `sys_area` VALUES ('650105', '水磨沟区', '650100');
INSERT INTO `sys_area` VALUES ('650106', '头屯河区', '650100');
INSERT INTO `sys_area` VALUES ('650107', '达坂城区', '650100');
INSERT INTO `sys_area` VALUES ('650109', '米东区', '650100');
INSERT INTO `sys_area` VALUES ('650121', '乌鲁木齐县', '650100');
INSERT INTO `sys_area` VALUES ('650200', '克拉玛依市', '650000');
INSERT INTO `sys_area` VALUES ('650201', '市辖区', '650200');
INSERT INTO `sys_area` VALUES ('650202', '独山子区', '650200');
INSERT INTO `sys_area` VALUES ('650203', '克拉玛依区', '650200');
INSERT INTO `sys_area` VALUES ('650204', '白碱滩区', '650200');
INSERT INTO `sys_area` VALUES ('650205', '乌尔禾区', '650200');
INSERT INTO `sys_area` VALUES ('650400', '吐鲁番市', '650000');
INSERT INTO `sys_area` VALUES ('650402', '高昌区', '650400');
INSERT INTO `sys_area` VALUES ('650421', '鄯善县', '650400');
INSERT INTO `sys_area` VALUES ('650422', '托克逊县', '650400');
INSERT INTO `sys_area` VALUES ('650500', '哈密市', '650000');
INSERT INTO `sys_area` VALUES ('650502', '伊州区', '650500');
INSERT INTO `sys_area` VALUES ('650521', '巴里坤哈萨克自治县', '650500');
INSERT INTO `sys_area` VALUES ('650522', '伊吾县', '650500');
INSERT INTO `sys_area` VALUES ('652300', '昌吉回族自治州', '650000');
INSERT INTO `sys_area` VALUES ('652301', '昌吉市', '652300');
INSERT INTO `sys_area` VALUES ('652302', '阜康市', '652300');
INSERT INTO `sys_area` VALUES ('652323', '呼图壁县', '652300');
INSERT INTO `sys_area` VALUES ('652324', '玛纳斯县', '652300');
INSERT INTO `sys_area` VALUES ('652325', '奇台县', '652300');
INSERT INTO `sys_area` VALUES ('652327', '吉木萨尔县', '652300');
INSERT INTO `sys_area` VALUES ('652328', '木垒哈萨克自治县', '652300');
INSERT INTO `sys_area` VALUES ('652700', '博尔塔拉蒙古自治州', '650000');
INSERT INTO `sys_area` VALUES ('652701', '博乐市', '652700');
INSERT INTO `sys_area` VALUES ('652702', '阿拉山口市', '652700');
INSERT INTO `sys_area` VALUES ('652722', '精河县', '652700');
INSERT INTO `sys_area` VALUES ('652723', '温泉县', '652700');
INSERT INTO `sys_area` VALUES ('652800', '巴音郭楞蒙古自治州', '650000');
INSERT INTO `sys_area` VALUES ('652801', '库尔勒市', '652800');
INSERT INTO `sys_area` VALUES ('652822', '轮台县', '652800');
INSERT INTO `sys_area` VALUES ('652823', '尉犁县', '652800');
INSERT INTO `sys_area` VALUES ('652824', '若羌县', '652800');
INSERT INTO `sys_area` VALUES ('652825', '且末县', '652800');
INSERT INTO `sys_area` VALUES ('652826', '焉耆回族自治县', '652800');
INSERT INTO `sys_area` VALUES ('652827', '和静县', '652800');
INSERT INTO `sys_area` VALUES ('652828', '和硕县', '652800');
INSERT INTO `sys_area` VALUES ('652829', '博湖县', '652800');
INSERT INTO `sys_area` VALUES ('652900', '阿克苏地区', '650000');
INSERT INTO `sys_area` VALUES ('652901', '阿克苏市', '652900');
INSERT INTO `sys_area` VALUES ('652922', '温宿县', '652900');
INSERT INTO `sys_area` VALUES ('652923', '库车县', '652900');
INSERT INTO `sys_area` VALUES ('652924', '沙雅县', '652900');
INSERT INTO `sys_area` VALUES ('652925', '新和县', '652900');
INSERT INTO `sys_area` VALUES ('652926', '拜城县', '652900');
INSERT INTO `sys_area` VALUES ('652927', '乌什县', '652900');
INSERT INTO `sys_area` VALUES ('652928', '阿瓦提县', '652900');
INSERT INTO `sys_area` VALUES ('652929', '柯坪县', '652900');
INSERT INTO `sys_area` VALUES ('653000', '克孜勒苏柯尔克孜自治州', '650000');
INSERT INTO `sys_area` VALUES ('653001', '阿图什市', '653000');
INSERT INTO `sys_area` VALUES ('653022', '阿克陶县', '653000');
INSERT INTO `sys_area` VALUES ('653023', '阿合奇县', '653000');
INSERT INTO `sys_area` VALUES ('653024', '乌恰县', '653000');
INSERT INTO `sys_area` VALUES ('653100', '喀什地区', '650000');
INSERT INTO `sys_area` VALUES ('653101', '喀什市', '653100');
INSERT INTO `sys_area` VALUES ('653121', '疏附县', '653100');
INSERT INTO `sys_area` VALUES ('653122', '疏勒县', '653100');
INSERT INTO `sys_area` VALUES ('653123', '英吉沙县', '653100');
INSERT INTO `sys_area` VALUES ('653124', '泽普县', '653100');
INSERT INTO `sys_area` VALUES ('653125', '莎车县', '653100');
INSERT INTO `sys_area` VALUES ('653126', '叶城县', '653100');
INSERT INTO `sys_area` VALUES ('653127', '麦盖提县', '653100');
INSERT INTO `sys_area` VALUES ('653128', '岳普湖县', '653100');
INSERT INTO `sys_area` VALUES ('653129', '伽师县', '653100');
INSERT INTO `sys_area` VALUES ('653130', '巴楚县', '653100');
INSERT INTO `sys_area` VALUES ('653131', '塔什库尔干塔吉克自治县', '653100');
INSERT INTO `sys_area` VALUES ('653200', '和田地区', '650000');
INSERT INTO `sys_area` VALUES ('653201', '和田市', '653200');
INSERT INTO `sys_area` VALUES ('653221', '和田县', '653200');
INSERT INTO `sys_area` VALUES ('653222', '墨玉县', '653200');
INSERT INTO `sys_area` VALUES ('653223', '皮山县', '653200');
INSERT INTO `sys_area` VALUES ('653224', '洛浦县', '653200');
INSERT INTO `sys_area` VALUES ('653225', '策勒县', '653200');
INSERT INTO `sys_area` VALUES ('653226', '于田县', '653200');
INSERT INTO `sys_area` VALUES ('653227', '民丰县', '653200');
INSERT INTO `sys_area` VALUES ('654000', '伊犁哈萨克自治州', '650000');
INSERT INTO `sys_area` VALUES ('654002', '伊宁市', '654000');
INSERT INTO `sys_area` VALUES ('654003', '奎屯市', '654000');
INSERT INTO `sys_area` VALUES ('654004', '霍尔果斯市', '654000');
INSERT INTO `sys_area` VALUES ('654021', '伊宁县', '654000');
INSERT INTO `sys_area` VALUES ('654022', '察布查尔锡伯自治县', '654000');
INSERT INTO `sys_area` VALUES ('654023', '霍城县', '654000');
INSERT INTO `sys_area` VALUES ('654024', '巩留县', '654000');
INSERT INTO `sys_area` VALUES ('654025', '新源县', '654000');
INSERT INTO `sys_area` VALUES ('654026', '昭苏县', '654000');
INSERT INTO `sys_area` VALUES ('654027', '特克斯县', '654000');
INSERT INTO `sys_area` VALUES ('654028', '尼勒克县', '654000');
INSERT INTO `sys_area` VALUES ('654200', '塔城地区', '650000');
INSERT INTO `sys_area` VALUES ('654201', '塔城市', '654200');
INSERT INTO `sys_area` VALUES ('654202', '乌苏市', '654200');
INSERT INTO `sys_area` VALUES ('654221', '额敏县', '654200');
INSERT INTO `sys_area` VALUES ('654223', '沙湾县', '654200');
INSERT INTO `sys_area` VALUES ('654224', '托里县', '654200');
INSERT INTO `sys_area` VALUES ('654225', '裕民县', '654200');
INSERT INTO `sys_area` VALUES ('654226', '和布克赛尔蒙古自治县', '654200');
INSERT INTO `sys_area` VALUES ('654300', '阿勒泰地区', '650000');
INSERT INTO `sys_area` VALUES ('654301', '阿勒泰市', '654300');
INSERT INTO `sys_area` VALUES ('654321', '布尔津县', '654300');
INSERT INTO `sys_area` VALUES ('654322', '富蕴县', '654300');
INSERT INTO `sys_area` VALUES ('654323', '福海县', '654300');
INSERT INTO `sys_area` VALUES ('654324', '哈巴河县', '654300');
INSERT INTO `sys_area` VALUES ('654325', '青河县', '654300');
INSERT INTO `sys_area` VALUES ('654326', '吉木乃县', '654300');
INSERT INTO `sys_area` VALUES ('659000', '自治区直辖县级行政区划', '650000');
INSERT INTO `sys_area` VALUES ('659001', '石河子市', '659000');
INSERT INTO `sys_area` VALUES ('659002', '阿拉尔市', '659000');
INSERT INTO `sys_area` VALUES ('659003', '图木舒克市', '659000');
INSERT INTO `sys_area` VALUES ('659004', '五家渠市', '659000');
INSERT INTO `sys_area` VALUES ('659006', '铁门关市', '659000');
INSERT INTO `sys_area` VALUES ('710000', '台湾省', null);
INSERT INTO `sys_area` VALUES ('810000', '香港特别行政区', null);
INSERT INTO `sys_area` VALUES ('820000', '澳门特别行政区', null);

-- ----------------------------
-- Table structure for sys_captcha
-- ----------------------------
DROP TABLE IF EXISTS `sys_captcha`;
CREATE TABLE `sys_captcha` (
  `uuid` char(36) NOT NULL COMMENT 'uuid',
  `code` varchar(6) NOT NULL COMMENT 'éªŒè¯ç ',
  `expire_time` datetime DEFAULT NULL COMMENT 'è¿‡æœŸæ—¶é—´',
  PRIMARY KEY (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='ç³»ç»ŸéªŒè¯ç ';

-- ----------------------------
-- Records of sys_captcha
-- ----------------------------
INSERT INTO `sys_captcha` VALUES ('002ef6f2-12db-4cb4-8d60-65da657c3f42', 'xm4wc', '2018-05-09 14:34:08');
INSERT INTO `sys_captcha` VALUES ('005abc21-09a4-4926-8d55-ad92dd470ca8', '824wx', '2018-05-28 14:43:16');
INSERT INTO `sys_captcha` VALUES ('023279ba-4977-4c60-8f0d-80e6ee20fae0', 'ggabx', '2018-05-15 16:43:46');
INSERT INTO `sys_captcha` VALUES ('0239675b-8485-49fe-8bcc-b276f74705b3', '25n84', '2018-05-14 09:48:28');
INSERT INTO `sys_captcha` VALUES ('02dfddd2-87b5-45ea-816b-b3f73b1478d8', '56bym', '2018-05-21 16:28:02');
INSERT INTO `sys_captcha` VALUES ('044048ab-e63b-478d-8cb8-7d58d5ecdb53', 'fg638', '2018-05-14 13:56:11');
INSERT INTO `sys_captcha` VALUES ('04fb0f66-1023-4591-8b60-c935b9f31494', '643an', '2018-05-14 16:56:57');
INSERT INTO `sys_captcha` VALUES ('0563d55a-42f4-45f5-847a-e481f93a9ad9', 'edg88', '2018-05-22 15:49:26');
INSERT INTO `sys_captcha` VALUES ('06d68bb1-6c13-4617-8d99-2eba7155a2df', 'wwcyp', '2018-05-23 17:46:50');
INSERT INTO `sys_captcha` VALUES ('0735a794-d708-4a3a-89f5-b2d068b8eea6', 'w4em3', '2018-05-15 16:39:33');
INSERT INTO `sys_captcha` VALUES ('0754081a-f3a1-4c16-8dd6-a0c4691a4512', 'g6xnb', '2018-05-11 17:11:41');
INSERT INTO `sys_captcha` VALUES ('08077494-76f0-4f5f-80b0-f6c5f490a736', 'ynnga', '2018-05-22 16:04:56');
INSERT INTO `sys_captcha` VALUES ('0898b67c-ae63-4a98-8ce0-38f337ac1e29', '2f78m', '2018-06-01 09:29:29');
INSERT INTO `sys_captcha` VALUES ('08c3c2bf-31fb-411b-851e-6738ac74893f', '4ec3m', '2018-05-22 10:15:55');
INSERT INTO `sys_captcha` VALUES ('09a5399c-df85-4e0e-8eb3-9e112ee853cd', '8pega', '2018-05-29 15:29:16');
INSERT INTO `sys_captcha` VALUES ('0a0e7317-fd6c-411b-8783-d703b679265b', 'xx6pb', '2018-05-29 09:11:58');
INSERT INTO `sys_captcha` VALUES ('0a738a17-2d00-4fe6-85f6-e88ece020e91', '4cen6', '2018-05-25 15:11:31');
INSERT INTO `sys_captcha` VALUES ('0b08cc57-d494-497e-8694-be86df0a716c', '5mb24', '2018-05-21 10:25:42');
INSERT INTO `sys_captcha` VALUES ('0b40ed07-1138-4df9-859d-d94ed06cb878', 'pax2g', '2018-05-21 10:26:34');
INSERT INTO `sys_captcha` VALUES ('0b4c0a67-ee6f-4c1f-8d05-89981b7b6cf7', 'xbc8a', '2018-05-25 14:42:58');
INSERT INTO `sys_captcha` VALUES ('0cc702d7-170d-42d1-87e9-1e3a1f8c311d', '5gwff', '2018-05-14 16:08:16');
INSERT INTO `sys_captcha` VALUES ('0d96f72c-e7c8-40a9-8593-861df1da724a', '727fx', '2018-05-09 10:22:55');
INSERT INTO `sys_captcha` VALUES ('0dff1f10-c1e2-459e-8a1f-e640e715c263', 'x37g5', '2018-05-21 10:26:00');
INSERT INTO `sys_captcha` VALUES ('0e033ae1-4ed3-4f6f-8527-fb269420ac5e', 'f3wnm', '2018-05-22 16:05:10');
INSERT INTO `sys_captcha` VALUES ('0e0b3a7b-c937-46bf-8865-da6b1d4f167d', '3pcg3', '2018-05-25 09:06:03');
INSERT INTO `sys_captcha` VALUES ('0f066668-0a62-4be0-831d-92bde544c92e', 'wnxf8', '2018-05-09 10:04:33');
INSERT INTO `sys_captcha` VALUES ('0f44ffbe-5a6a-4a71-80e4-376563f438c1', 'mbxnx', '2018-05-07 16:14:03');
INSERT INTO `sys_captcha` VALUES ('0fd50e9c-efc1-4a86-87f4-bc289b522e1b', 'nxcg6', '2018-05-23 15:40:11');
INSERT INTO `sys_captcha` VALUES ('11f1b003-6688-4239-8ac0-41affccd2cdd', 'am2c8', '2018-05-27 12:31:55');
INSERT INTO `sys_captcha` VALUES ('122046ce-d291-477f-8b63-0dd54f3b3372', 'b26g5', '2018-05-22 14:09:08');
INSERT INTO `sys_captcha` VALUES ('127b68ee-c4fd-4643-8fca-bb22bb751ebc', '8agd2', '2018-05-31 12:30:01');
INSERT INTO `sys_captcha` VALUES ('12800b7f-f81e-482c-888e-356d53a3157d', 'a2ma3', '2018-05-15 09:44:34');
INSERT INTO `sys_captcha` VALUES ('14461588-72ba-443c-8061-7dde9fe118a2', 'y25eg', '2018-05-15 09:07:49');
INSERT INTO `sys_captcha` VALUES ('1454e274-bd56-460c-8332-eaefcce391c1', 'cmp52', '2018-05-23 18:09:17');
INSERT INTO `sys_captcha` VALUES ('158fba4c-5c07-4f62-86f9-232f7e13a209', 'fdd7n', '2018-05-08 17:11:28');
INSERT INTO `sys_captcha` VALUES ('15b62c74-04d6-4a1f-837f-78ca334584a3', '88nc5', '2018-05-15 16:42:21');
INSERT INTO `sys_captcha` VALUES ('1614066c-58df-43b7-8bd1-8a9be94f57ee', '76pay', '2018-05-08 09:53:40');
INSERT INTO `sys_captcha` VALUES ('1653f063-73cd-4436-8fc5-d4dbeeb6994d', 'mx427', '2018-05-31 14:43:49');
INSERT INTO `sys_captcha` VALUES ('1666d2b8-333f-4743-8ba1-63a40a05439c', '6pa47', '2018-05-08 17:04:10');
INSERT INTO `sys_captcha` VALUES ('174d6969-a7af-4841-88d7-5a460da60399', 'and74', '2018-05-14 13:36:42');
INSERT INTO `sys_captcha` VALUES ('17677242-d201-4c61-85da-654cee596503', 'n8y57', '2018-05-03 17:55:23');
INSERT INTO `sys_captcha` VALUES ('1909fd66-fd82-404d-84d0-6aeeb187f8b4', 'ydf6c', '2018-05-25 09:19:14');
INSERT INTO `sys_captcha` VALUES ('190f20a1-6961-46a3-8ed9-7b3c8761a366', 'e2g8n', '2018-05-28 09:03:49');
INSERT INTO `sys_captcha` VALUES ('1a781af9-62f0-4c3c-8ae4-d0117d8ddf79', 'f6adx', '2018-05-26 14:40:28');
INSERT INTO `sys_captcha` VALUES ('1aa31a75-a8bd-494e-8d57-6b81d224e083', '2356b', '2018-05-04 15:43:07');
INSERT INTO `sys_captcha` VALUES ('1aaee1fe-80f5-4809-8815-0645113f34fa', 'gd4gc', '2018-05-15 11:22:29');
INSERT INTO `sys_captcha` VALUES ('1b0aef3c-ed29-4c6a-8429-08106c35b078', 'nnf8c', '2018-05-15 09:36:03');
INSERT INTO `sys_captcha` VALUES ('1b4b6cd3-2810-4e86-80d6-177b38777f43', 'gwanf', '2018-05-16 13:25:07');
INSERT INTO `sys_captcha` VALUES ('1c5e83f3-5244-49c1-80e3-03d54d1f3249', 'ag273', '2018-05-31 14:46:04');
INSERT INTO `sys_captcha` VALUES ('1c902d36-2c86-4e50-81ca-ef80093b006e', 'mdf7n', '2018-05-14 17:07:48');
INSERT INTO `sys_captcha` VALUES ('1cfe9d12-6eda-4ab5-8932-d3c775b79a22', 'wwfew', '2018-05-23 09:34:26');
INSERT INTO `sys_captcha` VALUES ('1d50d941-fd92-4da1-85c1-fcafccf59a13', '35nxb', '2018-05-24 14:55:03');
INSERT INTO `sys_captcha` VALUES ('1edc6b4c-318c-4a1f-89a1-2525a7596306', '6aeab', '2018-05-25 11:18:45');
INSERT INTO `sys_captcha` VALUES ('2269cf2b-2040-4eaa-8ccc-2d554c787773', 'am848', '2018-05-22 19:15:52');
INSERT INTO `sys_captcha` VALUES ('234d7908-19be-439c-857d-a88c2caf99c4', 'gdx5n', '2018-05-17 17:30:14');
INSERT INTO `sys_captcha` VALUES ('23d44daf-5192-42d3-89d3-f9d937fa2abf', 'x4c7y', '2018-05-28 09:04:51');
INSERT INTO `sys_captcha` VALUES ('248cc226-6c9e-49ec-8022-dcc1367b322c', 'pwwc7', '2018-05-21 10:25:42');
INSERT INTO `sys_captcha` VALUES ('257c34a0-740b-49ea-8628-6107606de51a', 'm8wef', '2018-05-15 11:22:44');
INSERT INTO `sys_captcha` VALUES ('2659c808-f242-449a-8111-4ac69dfb8ae0', 'yc68b', '2018-05-15 17:21:20');
INSERT INTO `sys_captcha` VALUES ('272c20fe-c47f-4d36-8eb7-ee5ceb487f5d', '6m833', '2018-05-22 10:20:07');
INSERT INTO `sys_captcha` VALUES ('280b5f5a-71ed-4987-8328-2ac649b7715b', 'emf4b', '2018-05-14 16:54:53');
INSERT INTO `sys_captcha` VALUES ('2839096f-9492-46c5-87eb-fd42e8bf791b', '54dpd', '2018-05-31 16:25:36');
INSERT INTO `sys_captcha` VALUES ('28a42d2f-829f-4464-8c66-9dff8228ef37', 'c7weg', '2018-05-15 16:44:14');
INSERT INTO `sys_captcha` VALUES ('28aa168c-1117-422b-83a3-26cc9c25f8c5', '5g44b', '2018-05-31 11:10:30');
INSERT INTO `sys_captcha` VALUES ('28b6b2b8-5686-48d1-8b3b-5abf2ed2e715', 'ynn5c', '2018-05-15 09:42:29');
INSERT INTO `sys_captcha` VALUES ('29e6f080-d965-4f8a-8f6e-2516b007f001', 'n3f2c', '2018-05-09 15:03:05');
INSERT INTO `sys_captcha` VALUES ('2a18d38b-54fc-48c8-8f2c-738737c092a2', 'f6ayp', '2018-05-08 09:54:20');
INSERT INTO `sys_captcha` VALUES ('2a2a60c6-d32a-44f1-8f08-acd6efa3dc4e', 'nb767', '2018-06-04 09:36:18');
INSERT INTO `sys_captcha` VALUES ('2aa3c620-38ec-4bc4-88cc-3779b039ae5d', '35npw', '2018-05-15 08:59:01');
INSERT INTO `sys_captcha` VALUES ('2b075c63-8ee3-410e-8d9b-9848f0dac136', 'yn4c5', '2018-06-01 09:27:28');
INSERT INTO `sys_captcha` VALUES ('2bcf39fc-299e-4e6c-8853-cc02342733a3', 'gaw86', '2018-05-29 15:30:59');
INSERT INTO `sys_captcha` VALUES ('2c4340f7-ef14-4f14-83d1-118895f0695b', 'c6cgn', '2018-05-24 19:47:34');
INSERT INTO `sys_captcha` VALUES ('2d084bf6-b7ce-4730-8583-219f64d71b6a', 'nfn2c', '2018-05-08 17:00:01');
INSERT INTO `sys_captcha` VALUES ('2d9a8d50-477f-49cc-8d50-e066b850297c', 'y8gd8', '2018-05-15 16:01:04');
INSERT INTO `sys_captcha` VALUES ('2e0d2d2c-69b4-4804-8fb7-1711ed3f7ce9', 'by5nd', '2018-05-15 09:38:01');
INSERT INTO `sys_captcha` VALUES ('2e4b0aed-9da0-46bd-8ef1-4343188f9dd1', 'e4nbb', '2018-05-28 14:18:55');
INSERT INTO `sys_captcha` VALUES ('2ef3b2ec-9bb5-4ee8-81e7-640a8f6e0a25', 'bewfp', '2018-05-25 10:32:43');
INSERT INTO `sys_captcha` VALUES ('323151ca-e0c1-4d50-8f0d-e41688e1d1ea', 'pybbm', '2018-05-16 10:12:38');
INSERT INTO `sys_captcha` VALUES ('32693c20-9680-4e49-8cb4-9f95946087db', 'gxw7y', '2018-05-23 16:17:51');
INSERT INTO `sys_captcha` VALUES ('3317489f-6149-497e-83d0-e82613610e0e', 'bdbx6', '2018-05-15 09:42:02');
INSERT INTO `sys_captcha` VALUES ('33570289-a08a-4d09-8174-ecff7a5ba853', 'aa534', '2018-05-21 10:27:52');
INSERT INTO `sys_captcha` VALUES ('335f9e29-1756-4287-8b0e-71484ce7bb45', 'pm6ay', '2018-05-23 14:53:19');
INSERT INTO `sys_captcha` VALUES ('33737f63-ce23-421a-8cad-f7b6ae8a6dc6', 'ancwm', '2018-06-04 09:21:22');
INSERT INTO `sys_captcha` VALUES ('33f2e563-335a-4de4-832a-dd01c667e8e4', 'g5wcd', '2018-05-14 14:50:43');
INSERT INTO `sys_captcha` VALUES ('34ea5b38-e059-43c4-8626-333a6f94673c', 'dm5xn', '2018-05-25 10:34:44');
INSERT INTO `sys_captcha` VALUES ('35615ccf-a90b-44c8-8790-cda8ce43d870', 'd84bf', '2018-05-28 13:55:19');
INSERT INTO `sys_captcha` VALUES ('35f57709-7f6c-4677-81e8-cb22a91de4eb', 'wea8n', '2018-05-28 14:43:57');
INSERT INTO `sys_captcha` VALUES ('36ccec9d-2d84-431c-899a-91c6541e4879', '78258', '2018-05-15 11:22:44');
INSERT INTO `sys_captcha` VALUES ('37481162-a79c-4ca5-89d9-44b68ea18330', 'n333b', '2018-05-15 09:16:16');
INSERT INTO `sys_captcha` VALUES ('37f8c25b-7c8d-41fc-8708-67a479a2d7a9', 'nab4a', '2018-05-17 09:38:48');
INSERT INTO `sys_captcha` VALUES ('3aa58fc3-6086-459d-8f1a-1b5535ab5fb8', 'f8cyf', '2018-05-26 14:56:50');
INSERT INTO `sys_captcha` VALUES ('3ad5dc15-3099-457a-8d07-a23d321fbad5', 'bnmxf', '2018-05-14 14:51:05');
INSERT INTO `sys_captcha` VALUES ('3bf349bc-3166-4193-84fa-9db80bb80cd4', 'cnex4', '2018-05-21 10:27:52');
INSERT INTO `sys_captcha` VALUES ('3f24af0d-5953-4f61-8b79-350b71b52b5a', 'ncpfw', '2018-05-17 09:37:04');
INSERT INTO `sys_captcha` VALUES ('3fe200e4-c342-4e01-8b3f-4b65aa2562eb', '45fm8', '2018-05-28 09:05:55');
INSERT INTO `sys_captcha` VALUES ('405938d4-eb0e-478d-8fd5-f3cf9650c6ea', 'b755n', '2018-05-04 15:44:25');
INSERT INTO `sys_captcha` VALUES ('40b89832-e103-4a76-82f0-5c069f4afa72', 'canpd', '2018-05-22 17:15:09');
INSERT INTO `sys_captcha` VALUES ('4270ae32-244b-412e-8aa1-010c6972ff91', 'gbyd5', '2018-05-28 13:55:19');
INSERT INTO `sys_captcha` VALUES ('42a39ef8-d69f-4a9d-8496-59044a4a46bf', 'y3ea4', '2018-05-25 10:31:56');
INSERT INTO `sys_captcha` VALUES ('42d46bbc-ff35-4ec5-86c2-d62277170fdd', 'bpn3a', '2018-05-14 13:57:08');
INSERT INTO `sys_captcha` VALUES ('431c5936-e8b9-44b2-8753-f69a989fab5e', 'm557n', '2018-05-15 09:42:50');
INSERT INTO `sys_captcha` VALUES ('4394a11e-b6de-4588-8037-80a5e38f5381', 'x64b2', '2018-05-21 10:26:34');
INSERT INTO `sys_captcha` VALUES ('43a28eab-80b1-47ed-8a50-0b82ddeed87f', 'g23xf', '2018-05-04 15:44:34');
INSERT INTO `sys_captcha` VALUES ('43e0cdf6-3d17-475e-8334-22387fcef220', 'dfba8', '2018-05-08 17:14:25');
INSERT INTO `sys_captcha` VALUES ('445d2d9f-fc2a-46a5-84ab-d2647e6b5251', '2y6bn', '2018-05-27 12:31:57');
INSERT INTO `sys_captcha` VALUES ('44edba19-2f8c-4437-8e62-adc4a1e634d2', '74pfg', '2018-05-28 09:02:19');
INSERT INTO `sys_captcha` VALUES ('454e4f97-05c2-4463-883e-aac1fd63d96f', '4m2ap', '2018-05-22 09:03:41');
INSERT INTO `sys_captcha` VALUES ('46781c40-640a-4a75-88a3-7d583d9bfd3e', 'c5bnp', '2018-06-04 14:20:23');
INSERT INTO `sys_captcha` VALUES ('46d3ae48-4e59-4b2e-8946-69c0a0fabf0d', 'pma5w', '2018-05-15 16:42:49');
INSERT INTO `sys_captcha` VALUES ('4978549d-2f82-4715-8233-d73aa09ad3db', 'pn32w', '2018-05-23 19:55:47');
INSERT INTO `sys_captcha` VALUES ('4a56e607-0526-49ad-8230-1ade990123d5', '2gx7d', '2018-05-23 14:20:01');
INSERT INTO `sys_captcha` VALUES ('4a897638-22f9-498e-85e2-b66f81b589b4', 'w8486', '2018-05-21 16:28:22');
INSERT INTO `sys_captcha` VALUES ('4b35e87f-7ebd-4c1f-8158-0d858af28b38', 'c8yeg', '2018-05-28 09:12:08');
INSERT INTO `sys_captcha` VALUES ('4bb737fd-808c-44eb-8ee5-e5f0aca2acd6', 'ncpfn', '2018-05-25 18:05:16');
INSERT INTO `sys_captcha` VALUES ('4d212779-d955-48c3-8a50-e82a455551bb', 'ygxy6', '2018-05-14 15:54:56');
INSERT INTO `sys_captcha` VALUES ('4dbbc9b5-98ba-44ea-8b99-371e63be3366', '6c4pb', '2018-05-14 15:52:26');
INSERT INTO `sys_captcha` VALUES ('4e018239-e8a0-4722-8363-4d088338f9fb', 'ff53b', '2018-05-16 10:12:38');
INSERT INTO `sys_captcha` VALUES ('4e26589f-12fd-4069-82a6-35dc0bf33073', 'm36d5', '2018-05-26 18:09:41');
INSERT INTO `sys_captcha` VALUES ('4fed7b39-3756-4ad2-8581-9dabf3e26eec', '4wnce', '2018-05-15 16:55:14');
INSERT INTO `sys_captcha` VALUES ('5107f72f-5891-43ac-859f-c71fef4e1b38', 'dmn8a', '2018-06-04 09:10:46');
INSERT INTO `sys_captcha` VALUES ('51fc8a9f-51b3-42c5-8b6b-d838eee2fb07', 'y6yn7', '2018-05-21 10:28:22');
INSERT INTO `sys_captcha` VALUES ('52139b10-68b1-476a-8542-9492e76e01ef', 'dxd55', '2018-05-31 12:30:47');
INSERT INTO `sys_captcha` VALUES ('52489dd0-cef7-49ee-839e-dfc974ca118a', 'yn3pg', '2018-05-25 13:14:31');
INSERT INTO `sys_captcha` VALUES ('52947811-6c15-46ff-86a9-2221b66b7e7f', 'n8nyc', '2018-05-24 13:51:34');
INSERT INTO `sys_captcha` VALUES ('52ca51e9-7e67-48b0-8bb4-f911e86d8506', 'ynapf', '2018-05-28 13:55:19');
INSERT INTO `sys_captcha` VALUES ('53de73c9-b0dc-4955-839d-594e9f184fcd', 'mg25x', '2018-05-14 15:51:38');
INSERT INTO `sys_captcha` VALUES ('55c7c1cf-24fa-492c-8fb4-d6b6ec5fa8ed', 'wmn33', '2018-05-17 17:02:51');
INSERT INTO `sys_captcha` VALUES ('55d09b77-5b8a-4501-8221-4bd3fb604033', '3x7g4', '2018-06-01 16:50:28');
INSERT INTO `sys_captcha` VALUES ('564c2470-f2e6-4a2d-8175-b1e696b840a3', 'pxp84', '2018-05-14 17:12:54');
INSERT INTO `sys_captcha` VALUES ('56b377bc-d099-4bf5-883f-0eea1d1d25d0', 'bg7py', '2018-06-05 13:41:30');
INSERT INTO `sys_captcha` VALUES ('58f46442-d439-4982-8652-586aad992f61', '33bne', '2018-05-18 15:59:36');
INSERT INTO `sys_captcha` VALUES ('5945bdd6-d6d7-45d6-8573-db50a00398dd', 'mcc8n', '2018-05-31 14:53:25');
INSERT INTO `sys_captcha` VALUES ('59a9285d-067e-4a88-8fba-0ee547e161fe', 'fwcyd', '2018-05-22 09:20:19');
INSERT INTO `sys_captcha` VALUES ('5a0b39a8-fcce-4beb-8253-4279f73fa32c', '57nfn', '2018-05-22 10:12:48');
INSERT INTO `sys_captcha` VALUES ('5b0c3739-78e5-4324-8a29-a8ba34bea544', '4b8g3', '2018-05-31 15:49:03');
INSERT INTO `sys_captcha` VALUES ('5c7305e0-8113-490b-85eb-545c6c20bfb8', '2834a', '2018-05-28 13:55:19');
INSERT INTO `sys_captcha` VALUES ('5cd02ae0-19b4-4532-8176-f5289ff6e57b', '7ccaf', '2018-05-21 16:47:46');
INSERT INTO `sys_captcha` VALUES ('5e5d2607-91fb-4c50-8f74-366b49391276', 'da4cd', '2018-06-04 14:18:38');
INSERT INTO `sys_captcha` VALUES ('5fb43c7b-096e-4d8f-83df-0cd8ed56fd40', 'egwwm', '2018-05-14 10:04:24');
INSERT INTO `sys_captcha` VALUES ('60335128-0fa3-4f4a-8672-2577e666a223', 'dc6w3', '2018-05-21 16:56:32');
INSERT INTO `sys_captcha` VALUES ('605c5918-ed1d-4caf-86a9-7ff9fee50399', 'p2nbe', '2018-05-08 14:31:13');
INSERT INTO `sys_captcha` VALUES ('60650c63-c8c8-4434-8d9a-4b877cf4f05b', 'ccba3', '2018-05-21 19:28:21');
INSERT INTO `sys_captcha` VALUES ('60d2b5ef-4237-4bd1-8c01-60dc708608de', 'xn6y7', '2018-05-21 19:37:50');
INSERT INTO `sys_captcha` VALUES ('61f55fdd-4794-4387-8b03-e6104497b9cc', 'yn283', '2018-05-11 11:15:15');
INSERT INTO `sys_captcha` VALUES ('61f72b8f-c2ef-48eb-86f5-bdf4062df0d7', 'w358w', '2018-05-25 10:35:10');
INSERT INTO `sys_captcha` VALUES ('62e7178d-a50d-47f8-860a-4e724d970906', 'n23nd', '2018-05-22 13:39:33');
INSERT INTO `sys_captcha` VALUES ('6345f04b-7099-400a-89e1-b7de182203e2', '52pdy', '2018-05-09 10:26:37');
INSERT INTO `sys_captcha` VALUES ('637583d8-188b-4796-8c18-70bcf25ba2f3', 'df2n4', '2018-05-15 09:35:50');
INSERT INTO `sys_captcha` VALUES ('63dddd70-41f6-4540-8ccd-d20908c3ba26', '86ddb', '2018-05-14 16:49:43');
INSERT INTO `sys_captcha` VALUES ('64e45fcf-93bb-44eb-8e19-af2356bec10d', 'ex33e', '2018-05-22 10:14:02');
INSERT INTO `sys_captcha` VALUES ('650274be-b98b-4146-8944-e8d6d5e5773c', 'aayyf', '2018-05-28 09:06:13');
INSERT INTO `sys_captcha` VALUES ('657fad0c-cd7f-489f-87d7-e8f36b09f607', 'n6fga', '2018-05-21 16:08:17');
INSERT INTO `sys_captcha` VALUES ('67a067c4-62f9-4030-888d-275523d05433', 'fpxy3', '2018-05-21 09:07:19');
INSERT INTO `sys_captcha` VALUES ('67cefa2b-a43d-4735-89f5-8489f67676d6', 'ngnda', '2018-05-16 14:46:34');
INSERT INTO `sys_captcha` VALUES ('67ee688d-3de2-4175-8a00-ace26d12a484', 'g78n7', '2018-05-22 10:15:13');
INSERT INTO `sys_captcha` VALUES ('69b3d677-af67-4f01-8ed6-4391be72ca98', 'wa7yy', '2018-05-23 14:57:40');
INSERT INTO `sys_captcha` VALUES ('6bc4c451-649e-4938-85d7-d9935561955a', 'y53n6', '2018-05-14 17:40:38');
INSERT INTO `sys_captcha` VALUES ('6c90f09f-beb7-48f2-8833-085578919365', 'c835a', '2018-05-28 16:21:44');
INSERT INTO `sys_captcha` VALUES ('6cc48163-715b-432d-8df7-833c1ba883a7', '4c6ww', '2018-05-14 09:55:51');
INSERT INTO `sys_captcha` VALUES ('6cf2b266-b1c9-47f0-8ebc-4564a29d439f', 'ap6yf', '2018-05-14 14:42:19');
INSERT INTO `sys_captcha` VALUES ('6d2eb842-0179-4760-8a81-f4bfcac8e31f', '6464n', '2018-05-15 09:42:18');
INSERT INTO `sys_captcha` VALUES ('6d7fe0a6-d854-4474-8c47-ae87199da22b', 'dwmn5', '2018-05-14 08:58:32');
INSERT INTO `sys_captcha` VALUES ('6da4ee84-81b7-4bfc-8fc1-6425b65fb65b', '4dyxd', '2018-05-21 16:47:30');
INSERT INTO `sys_captcha` VALUES ('6ea5640c-2c71-4b02-84d4-190f068d74da', 'byf55', '2018-05-16 13:30:58');
INSERT INTO `sys_captcha` VALUES ('700fd510-47a8-4a7e-8620-3f1c4d92853a', 'c6mbm', '2018-05-29 15:30:20');
INSERT INTO `sys_captcha` VALUES ('7029016b-605b-4a56-8567-806548189a4c', 'an6n5', '2018-05-14 15:22:56');
INSERT INTO `sys_captcha` VALUES ('706f8a21-fe80-4857-87b0-48a5ca469a99', 'npnw2', '2018-05-04 15:30:53');
INSERT INTO `sys_captcha` VALUES ('734bf237-40d7-452f-8458-8047acee9a94', 'y2b8a', '2018-05-15 11:22:33');
INSERT INTO `sys_captcha` VALUES ('73e382ab-fea4-4180-808a-8974d6ae9dc8', 'a7nax', '2018-05-14 17:44:27');
INSERT INTO `sys_captcha` VALUES ('74bcdcfa-8d79-49ef-8dab-44b06e9a4e7a', 'wge2b', '2018-05-31 11:14:11');
INSERT INTO `sys_captcha` VALUES ('74d7fe29-ffef-40a3-84c4-847d6906b500', '7ymny', '2018-05-31 14:59:43');
INSERT INTO `sys_captcha` VALUES ('75c62027-97bb-4b93-88db-98f175d9b459', 'ce687', '2018-05-25 08:55:15');
INSERT INTO `sys_captcha` VALUES ('76f73725-a3f1-4e51-808d-262b95b51c44', 'pp7w3', '2018-05-15 16:43:03');
INSERT INTO `sys_captcha` VALUES ('775dca46-49bb-4123-8013-1725f92cfbcf', '7ygy4', '2018-05-25 15:05:44');
INSERT INTO `sys_captcha` VALUES ('77871989-b636-41a5-8000-ffb7c9ca6955', 'yyebb', '2018-05-22 17:52:17');
INSERT INTO `sys_captcha` VALUES ('77aece61-13c8-469e-867e-417282205e82', 'bb22n', '2018-05-21 10:28:01');
INSERT INTO `sys_captcha` VALUES ('7a7b8027-553f-402d-8144-246cbe988923', 'g3cgb', '2018-05-31 14:53:34');
INSERT INTO `sys_captcha` VALUES ('7b8e2949-6e80-463d-87e7-7d97d55168d6', 'c6way', '2018-05-16 15:06:03');
INSERT INTO `sys_captcha` VALUES ('7bbe8667-6564-4a98-802c-05470f6af10c', 'a866n', '2018-05-07 09:08:42');
INSERT INTO `sys_captcha` VALUES ('7bc4a501-9c2c-4522-80b4-2b47f7b8cab5', '8e4be', '2018-06-06 09:53:09');
INSERT INTO `sys_captcha` VALUES ('7bdff3d7-22db-4ab7-8e30-97f365de6ad5', '8gbm4', '2018-05-11 11:14:52');
INSERT INTO `sys_captcha` VALUES ('7be0f80b-a6e5-4bc8-83e2-b355fb3e7157', 'fbanb', '2018-06-01 14:40:13');
INSERT INTO `sys_captcha` VALUES ('7c7626c4-71e7-4d4c-8389-d5c1ee6ed26b', '62mnd', '2018-05-28 14:05:53');
INSERT INTO `sys_captcha` VALUES ('7d40ba24-7263-4b9f-8779-43db0c02ef7a', 'nd785', '2018-05-28 14:43:54');
INSERT INTO `sys_captcha` VALUES ('7de4282c-7fd8-469a-82b2-c1b18354e03e', 'dyg6e', '2018-05-15 16:44:08');
INSERT INTO `sys_captcha` VALUES ('7e1b86e6-70c8-4d43-8753-2b51bacb313c', '78wnf', '2018-05-16 14:54:57');
INSERT INTO `sys_captcha` VALUES ('7f98f13b-0f63-45dd-8b7a-a149a6f18e3d', 'n734n', '2018-05-09 08:52:57');
INSERT INTO `sys_captcha` VALUES ('82800f6c-c7fa-4015-885b-23e460a2585f', '82nfd', '2018-05-28 13:39:58');
INSERT INTO `sys_captcha` VALUES ('82f6ed92-9326-4490-827a-25151da7dea0', 'b3nnp', '2018-05-21 09:57:01');
INSERT INTO `sys_captcha` VALUES ('835b4d7a-069f-4bcc-840c-074844839067', '8a74n', '2018-05-21 17:11:06');
INSERT INTO `sys_captcha` VALUES ('8388654f-7e0d-4b3f-8ab5-4e3e15709105', 'gx3b6', '2018-05-09 10:10:43');
INSERT INTO `sys_captcha` VALUES ('84efd211-810c-4f86-8251-771107b8ae9c', 'p645b', '2018-06-05 15:40:05');
INSERT INTO `sys_captcha` VALUES ('85ec81b4-5458-44fd-8e16-fd94d0c4f48d', '7w57w', '2018-06-01 14:36:12');
INSERT INTO `sys_captcha` VALUES ('861b8ad3-1204-4551-880b-1bd11ad42bc6', 'ndc6w', '2018-06-04 09:22:14');
INSERT INTO `sys_captcha` VALUES ('86b7f92a-c74d-4905-87e6-f122116b9928', '8epb7', '2018-05-29 14:31:49');
INSERT INTO `sys_captcha` VALUES ('87325237-1e8b-4e2b-8a0c-bb3a29106809', '53wf2', '2018-05-29 14:14:44');
INSERT INTO `sys_captcha` VALUES ('875c9fa9-e04f-40b3-8d45-f3f7e07412b9', 'ne6dp', '2018-05-15 11:22:29');
INSERT INTO `sys_captcha` VALUES ('877d4ba6-5b21-43e2-8294-0efcdd7e11dc', '5nb25', '2018-06-06 09:05:05');
INSERT INTO `sys_captcha` VALUES ('878aa0d4-a8af-4279-8b90-7d656df2c5a2', '258xp', '2018-05-14 14:06:18');
INSERT INTO `sys_captcha` VALUES ('87e51efe-8184-4f1a-8413-7f8733c4c1c1', '454w3', '2018-05-31 14:50:03');
INSERT INTO `sys_captcha` VALUES ('88eda9ac-e90a-4de8-8fa0-d4029991708b', '2673x', '2018-05-22 13:32:46');
INSERT INTO `sys_captcha` VALUES ('891cf52a-fd2a-4093-801c-982ed66275f8', '78n7e', '2018-05-09 09:54:04');
INSERT INTO `sys_captcha` VALUES ('892408df-d193-4bca-89a2-31b36a40a066', 'cc3mb', '2018-05-22 10:01:28');
INSERT INTO `sys_captcha` VALUES ('8b9e4062-6c8d-43fe-8194-725bb4bc94be', 'e8xy2', '2018-05-29 15:27:58');
INSERT INTO `sys_captcha` VALUES ('8bd828c9-4cca-474c-8851-547ff11d87c5', 'bbw45', '2018-05-31 14:12:01');
INSERT INTO `sys_captcha` VALUES ('8c58dcbc-2b2d-4b6a-86f2-a07f1b4c9586', '4ggxp', '2018-05-15 16:43:51');
INSERT INTO `sys_captcha` VALUES ('8cb847b8-96c3-4556-8787-e4a4494ec5c1', 'ngf8f', '2018-05-16 10:12:38');
INSERT INTO `sys_captcha` VALUES ('8cc62d0b-7392-480d-8d00-f9308ee7f248', 'b2p43', '2018-06-06 09:06:01');
INSERT INTO `sys_captcha` VALUES ('8d6b52b8-a50b-46a3-8fcf-59d6bbea6f1f', '5746f', '2018-05-16 13:30:41');
INSERT INTO `sys_captcha` VALUES ('8d8fb5de-a2bc-4ffb-8ac3-b3a6a5865c8d', '52dgg', '2018-05-30 18:32:06');
INSERT INTO `sys_captcha` VALUES ('8dd2876f-8cc6-43e5-8a32-5c2714dde0f8', 'cc2fp', '2018-05-15 09:35:56');
INSERT INTO `sys_captcha` VALUES ('8e4f1b4f-4f6b-4f36-826c-9ae056a41156', 'df7cp', '2018-05-24 15:39:12');
INSERT INTO `sys_captcha` VALUES ('8f1ee218-d811-489a-8a0b-c7a9916d13cd', '385cm', '2018-05-16 10:31:26');
INSERT INTO `sys_captcha` VALUES ('8f2bc220-175f-4394-8b0c-f8d098ab1bb0', '4m83a', '2018-05-25 17:07:52');
INSERT INTO `sys_captcha` VALUES ('909ca90b-96f2-4937-848b-0becae38240f', '6nwn8', '2018-05-28 14:44:45');
INSERT INTO `sys_captcha` VALUES ('915858d0-77d5-4e33-8a08-f587c6a5231c', '3xg53', '2018-05-15 16:44:01');
INSERT INTO `sys_captcha` VALUES ('936ab446-b591-4aa6-80b6-f85991220c0e', 'dwapd', '2018-05-24 15:35:32');
INSERT INTO `sys_captcha` VALUES ('93c3f83d-0c91-4d21-8118-4e4986c46d1c', '7b26y', '2018-05-15 16:55:05');
INSERT INTO `sys_captcha` VALUES ('9513569e-9c70-4ad1-8b19-aa0a36545c25', '2e5c2', '2018-05-21 16:48:11');
INSERT INTO `sys_captcha` VALUES ('96273535-5319-43fe-8e80-4d80b4893153', '5w374', '2018-05-15 16:43:19');
INSERT INTO `sys_captcha` VALUES ('97a8a950-fba9-4249-8220-1b1ebe694bfc', '2g443', '2018-05-24 17:13:05');
INSERT INTO `sys_captcha` VALUES ('982277b6-1f4c-41d3-84ad-dd9af301c64f', 'gymwm', '2018-05-24 15:21:51');
INSERT INTO `sys_captcha` VALUES ('9987376f-50d5-4a01-8317-9015ac8fb99c', 'p6a7d', '2018-05-21 16:27:48');
INSERT INTO `sys_captcha` VALUES ('9a4d49d2-906c-46ea-8246-06ce9e95ac13', '8ag2g', '2018-06-01 09:18:13');
INSERT INTO `sys_captcha` VALUES ('9b67a4b1-f10e-42e1-88b1-4759cd71a74f', 'e62bc', '2018-05-14 17:42:15');
INSERT INTO `sys_captcha` VALUES ('9c34f8e0-0bb8-42e8-87d2-4938cdfe6861', 'f3ga3', '2018-05-24 15:41:17');
INSERT INTO `sys_captcha` VALUES ('9d44d7e8-62a0-434f-8fbb-8a1e90426dd9', 'nbf2m', '2018-05-25 16:47:56');
INSERT INTO `sys_captcha` VALUES ('9d81ca87-1d69-4b85-8fc5-d53cfe051ba3', 'e7cwb', '2018-05-27 11:24:45');
INSERT INTO `sys_captcha` VALUES ('9d87846c-0911-4e3d-86ba-003d370ecbf3', 'e54dn', '2018-05-16 10:12:38');
INSERT INTO `sys_captcha` VALUES ('9dfa539c-fb6c-48fd-840d-8d358c32a2e0', 'apwnp', '2018-05-21 10:26:22');
INSERT INTO `sys_captcha` VALUES ('9ee4bcf3-c9e5-4d02-8706-d976023e4320', 'en545', '2018-05-04 15:08:58');
INSERT INTO `sys_captcha` VALUES ('9f930b3c-4794-47e7-8679-9ff1e4eb6e16', 'me5mm', '2018-05-31 17:09:56');
INSERT INTO `sys_captcha` VALUES ('a05d4888-4bdb-44eb-8754-d04fe4c446d0', 'pf5pe', '2018-05-28 13:55:19');
INSERT INTO `sys_captcha` VALUES ('a0d309a9-30b6-4927-8d61-4186dae00d9e', '4cpf2', '2018-05-29 15:29:12');
INSERT INTO `sys_captcha` VALUES ('a26fbd5f-772b-4b85-8462-9dbb1f84ae5d', 'bf68g', '2018-05-21 10:26:22');
INSERT INTO `sys_captcha` VALUES ('a2de3e10-ef7a-47b9-846f-526a79442d27', '2pxmp', '2018-05-22 13:33:25');
INSERT INTO `sys_captcha` VALUES ('a3a9caec-0ecc-4ba6-8498-36505decbc8c', 'ymymm', '2018-05-14 15:55:22');
INSERT INTO `sys_captcha` VALUES ('a42581ae-2674-409a-81e3-acafa8c18c4a', 'd3mga', '2018-05-15 16:42:55');
INSERT INTO `sys_captcha` VALUES ('a473b818-7536-4a90-84ed-6c6fca44d8cd', 'nwn44', '2018-05-31 16:28:24');
INSERT INTO `sys_captcha` VALUES ('a6b3456f-f57d-4fc0-8131-70a643544f6f', 'c746y', '2018-05-15 16:42:52');
INSERT INTO `sys_captcha` VALUES ('a9b1f61f-708f-4f9f-8fdd-6c0d3607a59c', '4ngf6', '2018-05-15 16:55:03');
INSERT INTO `sys_captcha` VALUES ('aa036548-a398-4dc1-84e4-b17b7e313fdf', '7p8b7', '2018-05-09 11:18:36');
INSERT INTO `sys_captcha` VALUES ('aa65be59-2805-4538-8b82-86f2420fb7d7', 'pm57c', '2018-05-21 14:43:13');
INSERT INTO `sys_captcha` VALUES ('ab162ff4-3953-44d0-8ccd-f8e97518a2d1', '3fc3n', '2018-05-28 13:55:19');
INSERT INTO `sys_captcha` VALUES ('ab29bf36-a2b5-4e42-8877-326f6c7064ef', '8nndm', '2018-05-28 14:45:55');
INSERT INTO `sys_captcha` VALUES ('ab6fd74e-edcb-4837-8dd4-d609c15f4089', '6mmnc', '2018-05-14 16:44:29');
INSERT INTO `sys_captcha` VALUES ('ac337f5a-931b-43ae-8eab-43875032c3e0', 'dbmd4', '2018-05-09 17:40:49');
INSERT INTO `sys_captcha` VALUES ('aecd96e5-ca11-4884-82c1-c47f9aa2d88b', '68ba2', '2018-05-15 16:43:16');
INSERT INTO `sys_captcha` VALUES ('af903dbf-4d27-4219-8449-f27459cbb570', '37nw2', '2018-05-22 19:15:16');
INSERT INTO `sys_captcha` VALUES ('b293e2d9-2fcd-43c8-88d3-47a839b5b973', 'xpb78', '2018-05-22 14:15:12');
INSERT INTO `sys_captcha` VALUES ('b2d322c3-2cde-4150-8269-f3c553c48a6d', 'dmny8', '2018-06-07 16:02:31');
INSERT INTO `sys_captcha` VALUES ('b3a43697-18ca-4125-8728-8c549f78b7c2', 'ymmb8', '2018-05-28 14:44:45');
INSERT INTO `sys_captcha` VALUES ('b4a4e933-fbc9-4eff-82e3-8e9639c16e7d', '6mffp', '2018-05-22 16:10:59');
INSERT INTO `sys_captcha` VALUES ('b684e36c-ad7e-4749-8998-acdf12064bf2', 'ycfe2', '2018-05-23 08:23:19');
INSERT INTO `sys_captcha` VALUES ('b6cdc1b7-6e25-426d-8adb-4278da8c1aec', '4g33g', '2018-05-26 18:07:23');
INSERT INTO `sys_captcha` VALUES ('b7000250-98f5-4f17-88b3-751bd38507ec', 'n73w2', '2018-05-09 10:39:06');
INSERT INTO `sys_captcha` VALUES ('b821071b-9388-4377-8927-833aea2587db', '5ag4g', '2018-05-26 14:39:12');
INSERT INTO `sys_captcha` VALUES ('b894d098-080f-4917-80d0-63c1d4d38200', 'd55e3', '2018-05-14 13:56:20');
INSERT INTO `sys_captcha` VALUES ('b8a8d3d2-fbf5-4bb5-8d5f-726533ec8ea1', 'xean4', '2018-05-16 10:12:37');
INSERT INTO `sys_captcha` VALUES ('ba445d1d-3834-4586-88f3-6163e6bcacf3', 'xy3e2', '2018-05-09 15:25:56');
INSERT INTO `sys_captcha` VALUES ('ba8e4d4b-a509-4e7f-85ef-7c59f42e2284', 'd4cmc', '2018-05-23 16:07:06');
INSERT INTO `sys_captcha` VALUES ('bc2e73e0-69c9-43ba-838a-9df2d392aa7d', 'cg3dd', '2018-05-28 09:05:49');
INSERT INTO `sys_captcha` VALUES ('bc8e8414-01c0-45ca-85e2-65218eb7f93d', '2bbx8', '2018-05-31 12:29:36');
INSERT INTO `sys_captcha` VALUES ('be43f7b9-f7d6-430c-8cc9-78b365bd521f', '3nmxp', '2018-06-04 09:40:09');
INSERT INTO `sys_captcha` VALUES ('bf9adf7c-0700-4c01-817c-ec0342778396', '28xan', '2018-05-28 13:34:27');
INSERT INTO `sys_captcha` VALUES ('bfc953ae-c0f9-459d-8e61-25e5c7f5bc02', 'aac8n', '2018-05-11 11:14:47');
INSERT INTO `sys_captcha` VALUES ('bfcfcbdc-1bc6-4663-832b-f05a967a84d9', 'g4myb', '2018-05-11 10:18:18');
INSERT INTO `sys_captcha` VALUES ('bffc9228-79ac-4a0c-8b4d-d73c638722de', 'fdn64', '2018-05-23 14:57:38');
INSERT INTO `sys_captcha` VALUES ('c01b6b8d-61d1-4a96-8c90-9491f5034f1a', 'yy37n', '2018-05-22 13:34:08');
INSERT INTO `sys_captcha` VALUES ('c14bf65f-d85d-4e3e-8edf-1b5d12c62a03', 'm6pbc', '2018-05-27 17:24:22');
INSERT INTO `sys_captcha` VALUES ('c159193b-6865-47d2-83e8-c5d36742313d', '6mnd5', '2018-05-31 11:14:02');
INSERT INTO `sys_captcha` VALUES ('c193cea6-89e5-4b1c-8c41-13e610a0a4f3', '6fmxc', '2018-05-15 09:56:51');
INSERT INTO `sys_captcha` VALUES ('c35d629d-2b34-49b2-8fa6-88382d160589', '38dg8', '2018-05-09 10:22:29');
INSERT INTO `sys_captcha` VALUES ('c38ce2b6-10a6-4a49-82f9-2498739fad01', '33nye', '2018-05-22 10:10:31');
INSERT INTO `sys_captcha` VALUES ('c3c580fb-8ff5-466b-8070-29034e49b7ae', '667de', '2018-05-21 16:07:19');
INSERT INTO `sys_captcha` VALUES ('c46cfbc3-cd2b-490f-85d5-86aa75bcc70d', 'bnw3f', '2018-05-31 15:09:42');
INSERT INTO `sys_captcha` VALUES ('c49ca8d7-cba7-4934-81f0-80c1d3907de9', 'e4p8b', '2018-05-28 14:32:51');
INSERT INTO `sys_captcha` VALUES ('c4a879e4-eed6-457d-8843-0b595a7c152e', 'adcm5', '2018-05-18 16:09:32');
INSERT INTO `sys_captcha` VALUES ('c72e357a-7ec5-4745-8b89-2c8f00b32858', 'axe83', '2018-05-07 14:03:06');
INSERT INTO `sys_captcha` VALUES ('c7b05e69-6558-4a6f-8d13-7eddc22eb40b', 'g7eng', '2018-05-17 09:31:05');
INSERT INTO `sys_captcha` VALUES ('c8d72a6e-3d78-4df3-806c-c5ef75002358', '6gxbd', '2018-06-06 11:07:51');
INSERT INTO `sys_captcha` VALUES ('c8e0c9d9-cd70-4834-820d-93495bb8817b', '8by3c', '2018-05-25 09:19:03');
INSERT INTO `sys_captcha` VALUES ('c9360c3a-8e5c-41ff-8161-9a6745f9c748', '22c8n', '2018-05-27 11:24:51');
INSERT INTO `sys_captcha` VALUES ('c9d33449-4fb2-4cad-89be-c1b8843eb5a5', 'nyebb', '2018-05-17 16:18:01');
INSERT INTO `sys_captcha` VALUES ('ca99ad39-b9de-4b01-8c69-2e9c4a059214', 'ng23c', '2018-05-11 17:17:46');
INSERT INTO `sys_captcha` VALUES ('cba8cf54-adc1-45a2-817d-c6ea6b22ab27', 'edxyb', '2018-05-15 09:26:51');
INSERT INTO `sys_captcha` VALUES ('cc19ccee-c18c-410a-8520-cc8a82c5156c', 'ppc6c', '2018-05-27 09:30:49');
INSERT INTO `sys_captcha` VALUES ('cd26ff9f-8292-4615-8d98-83710ff4f868', '3bd43', '2018-05-18 14:34:53');
INSERT INTO `sys_captcha` VALUES ('ce4548cb-ec6d-4945-8b09-03993c6166a7', '5xgw8', '2018-05-14 15:52:27');
INSERT INTO `sys_captcha` VALUES ('ce5c4b38-8072-46b4-8125-068e9bd3f1ab', 'd23nn', '2018-05-16 13:30:51');
INSERT INTO `sys_captcha` VALUES ('cecd1958-2a59-494f-89dd-8e693598ed0d', '8g257', '2018-05-15 09:43:08');
INSERT INTO `sys_captcha` VALUES ('cf4e672c-63e7-419a-8522-96ed26bef4d4', '8bnwd', '2018-05-26 14:39:10');
INSERT INTO `sys_captcha` VALUES ('cfbd3070-a84c-49a2-82a0-27a668679578', 'f7edc', '2018-05-16 10:12:38');
INSERT INTO `sys_captcha` VALUES ('d0d4e7c8-8135-4e6c-8bc1-0bd2176e4ea3', 'e5xe4', '2018-05-22 17:50:14');
INSERT INTO `sys_captcha` VALUES ('d0fa1050-24e3-46a7-8d80-0eb0e6e622b8', '54cay', '2018-05-30 08:47:06');
INSERT INTO `sys_captcha` VALUES ('d1ad3a63-174e-4a14-8ffc-4c25ef9c14ea', 'df67m', '2018-05-21 10:28:27');
INSERT INTO `sys_captcha` VALUES ('d205735d-9af0-42aa-84e9-9f28c85a5bf2', 'wg8cy', '2018-05-26 14:39:09');
INSERT INTO `sys_captcha` VALUES ('d2103ca7-b4dc-4e30-83ae-522385cb9b1c', 'apm8n', '2018-05-16 10:13:47');
INSERT INTO `sys_captcha` VALUES ('d21bf48f-46b4-4540-8b46-8336a44bc925', 'mae62', '2018-05-28 14:13:31');
INSERT INTO `sys_captcha` VALUES ('d2651e1b-ca89-4b91-88c7-b1901a77be93', 'wa6cn', '2018-05-23 14:21:25');
INSERT INTO `sys_captcha` VALUES ('d292cd1a-9d00-488c-8dfd-b69d641ea8cd', '2ppy2', '2018-05-25 09:12:26');
INSERT INTO `sys_captcha` VALUES ('d2f7c620-3c7a-42b9-8333-21ce4fc401b6', '5axcg', '2018-05-22 14:15:12');
INSERT INTO `sys_captcha` VALUES ('d3d7945e-c4e5-43ce-802e-f105006e65f4', 'd64g5', '2018-05-24 14:55:03');
INSERT INTO `sys_captcha` VALUES ('d5524a40-7044-4365-8efb-b0c1abbd68f8', 'ee2ae', '2018-05-25 13:33:18');
INSERT INTO `sys_captcha` VALUES ('d5f341b9-3535-4662-8941-145392b68bb3', 'yg6c2', '2018-05-14 14:48:14');
INSERT INTO `sys_captcha` VALUES ('d62de88f-7daa-424f-8243-4a76790495fd', 'ba42d', '2018-05-23 10:08:20');
INSERT INTO `sys_captcha` VALUES ('d64d3cc7-3c11-4bc1-8851-954b9dedd1ef', 'x2bnp', '2018-05-22 14:09:11');
INSERT INTO `sys_captcha` VALUES ('d75c66c0-78f2-4d38-81c3-36a298cd1d72', '36mm6', '2018-05-22 13:39:45');
INSERT INTO `sys_captcha` VALUES ('d816c906-49e1-4fc0-83a8-96ae77e81d7f', '6an82', '2018-05-15 10:58:56');
INSERT INTO `sys_captcha` VALUES ('d82642de-a5ed-411e-8ddd-fd4854732c13', 'neg68', '2018-05-29 15:32:00');
INSERT INTO `sys_captcha` VALUES ('d851fcae-47e5-4eca-8a0b-19ab9aeb28c8', 'n8x55', '2018-05-31 13:50:00');
INSERT INTO `sys_captcha` VALUES ('d853acec-1d65-4a11-828b-d6fc88fe6e2a', 'pnd7n', '2018-05-15 16:06:37');
INSERT INTO `sys_captcha` VALUES ('d99e7cc9-10bc-4b70-8d7b-b0066476bbc3', 'mwnwy', '2018-05-16 09:24:15');
INSERT INTO `sys_captcha` VALUES ('da77bed0-8225-47bc-8bc4-3b0d5596c56e', 'fpady', '2018-05-22 16:02:51');
INSERT INTO `sys_captcha` VALUES ('dbff44fe-5ad3-4bbc-8069-022a211dc9e9', 'b5777', '2018-05-22 17:26:13');
INSERT INTO `sys_captcha` VALUES ('dcbc783a-7c03-4fb9-889f-380aa7246acd', 'e25pb', '2018-05-18 16:01:34');
INSERT INTO `sys_captcha` VALUES ('dfe3c08b-8a3c-4c77-884f-380fcd780114', 'ddbg8', '2018-05-28 14:17:36');
INSERT INTO `sys_captcha` VALUES ('e14d6d45-9d4f-494f-8c68-25e7fffab4ae', '3cfm8', '2018-05-25 13:33:23');
INSERT INTO `sys_captcha` VALUES ('e191af4d-56ba-44ba-8c72-94d6695e6bf5', '3e6fd', '2018-06-06 14:03:28');
INSERT INTO `sys_captcha` VALUES ('e1e306a8-e9ff-4f9d-8947-afb9df737e6d', 'ny3ab', '2018-05-21 10:26:00');
INSERT INTO `sys_captcha` VALUES ('e2532268-7893-42a2-8d16-11b05d98b33c', 'pepxw', '2018-05-21 19:33:00');
INSERT INTO `sys_captcha` VALUES ('e29f243b-f64f-4d9f-83f2-cf0b8576fc71', 'nfgp4', '2018-05-21 10:28:19');
INSERT INTO `sys_captcha` VALUES ('e2e0afb9-e77d-4424-8262-7a1441f83e13', 'gypnp', '2018-05-28 13:34:48');
INSERT INTO `sys_captcha` VALUES ('e43fcf15-dd2c-4637-8826-56dde5a6086d', 'gc8pe', '2018-05-08 09:53:54');
INSERT INTO `sys_captcha` VALUES ('e487e6b0-1d94-49a5-8391-02e3fdfe85be', 'mb6gn', '2018-05-15 08:59:20');
INSERT INTO `sys_captcha` VALUES ('e4c53392-5527-4ec6-84f6-74782abc72fc', '3af7n', '2018-06-05 16:29:56');
INSERT INTO `sys_captcha` VALUES ('e5db4896-ad09-4e11-8e54-058a2ac42b87', '2638m', '2018-05-11 10:19:41');
INSERT INTO `sys_captcha` VALUES ('e6b42128-9a4c-4e26-8d61-5c46c05f70b8', 'fnb3c', '2018-05-17 16:18:01');
INSERT INTO `sys_captcha` VALUES ('e73bb264-c9e8-431d-8a86-13ab69ba8dc7', 'xddpn', '2018-05-07 17:23:04');
INSERT INTO `sys_captcha` VALUES ('e8a705be-fef2-45e7-84a6-0569235bbbce', '7a7f2', '2018-05-26 14:32:01');
INSERT INTO `sys_captcha` VALUES ('e8e78a03-b40b-4fa0-89d3-4e2b4d91a11a', '4w7fn', '2018-05-21 10:28:22');
INSERT INTO `sys_captcha` VALUES ('e9a0a01d-6bab-4404-82c6-3766ef4a3765', 'efx4x', '2018-05-21 19:47:20');
INSERT INTO `sys_captcha` VALUES ('ea148d6e-9ed9-4e04-87b1-6e577fb6cf39', '7nwgy', '2018-05-29 15:29:57');
INSERT INTO `sys_captcha` VALUES ('ea58feec-39fb-47b3-834b-1c685a49b36f', 'nm24e', '2018-05-14 10:52:02');
INSERT INTO `sys_captcha` VALUES ('ea876d64-1f3e-40a4-8f94-240b9eafc663', 'ng6d2', '2018-05-14 15:56:30');
INSERT INTO `sys_captcha` VALUES ('eadf598c-0d59-4f80-8511-0246146086aa', '4xwpn', '2018-05-17 09:33:36');
INSERT INTO `sys_captcha` VALUES ('ec21cdee-a909-488a-88c4-cc0bf8b8c005', '47cfn', '2018-05-21 10:28:01');
INSERT INTO `sys_captcha` VALUES ('ec4811ae-e9ba-49f2-8a64-a968ac0ff879', 'e863d', '2018-05-22 16:05:21');
INSERT INTO `sys_captcha` VALUES ('eccab28c-8c57-4006-879d-a74e2d041435', '7gwfc', '2018-05-14 10:35:19');
INSERT INTO `sys_captcha` VALUES ('ef2588c8-d9b1-4126-8445-1cf9de980f3c', 'a75g2', '2018-05-15 11:22:33');
INSERT INTO `sys_captcha` VALUES ('efa073c3-fc3e-44a8-8ca4-4ee86594c717', 'pm25n', '2018-05-15 09:47:16');
INSERT INTO `sys_captcha` VALUES ('f14909fd-fb95-4b43-8daa-6df3de249627', 'n4bnx', '2018-05-25 14:19:43');
INSERT INTO `sys_captcha` VALUES ('f205ddbf-9ddd-479a-8336-5714f2c42921', 'bwpe7', '2018-05-11 11:15:46');
INSERT INTO `sys_captcha` VALUES ('f3a77a81-74e2-47ff-8b57-1503df8e9ce9', '7yne8', '2018-05-17 09:31:44');
INSERT INTO `sys_captcha` VALUES ('f3dc323e-5891-485c-8b4b-39cda7ce37bb', 'mwaxn', '2018-05-16 09:48:03');
INSERT INTO `sys_captcha` VALUES ('f41e7b03-c49b-447c-8790-63a98b348ae2', 'bf8bm', '2018-05-28 13:55:19');
INSERT INTO `sys_captcha` VALUES ('f43d13eb-9f86-4928-8efa-58ec3f6eb5dc', 'xmawe', '2018-05-11 11:15:53');
INSERT INTO `sys_captcha` VALUES ('f4e56889-5322-4a85-87dc-2d02e892c18f', 'peg5y', '2018-05-28 09:11:01');
INSERT INTO `sys_captcha` VALUES ('f4f45a60-948a-4334-8721-2182612a9251', 'd4xwn', '2018-05-31 11:10:33');
INSERT INTO `sys_captcha` VALUES ('f5282bf6-3e13-472d-87d1-9b619bf66919', 'dc8x2', '2018-05-31 14:11:39');
INSERT INTO `sys_captcha` VALUES ('f78644da-fb3b-4009-8794-ec5540112cec', '5dmf8', '2018-05-21 10:28:19');
INSERT INTO `sys_captcha` VALUES ('f9754ad1-8cf8-4f6a-8fed-d975ce99e1b8', 'gbpdc', '2018-05-09 14:06:21');
INSERT INTO `sys_captcha` VALUES ('fac5d706-4be0-410a-80c7-bee96005dea1', 'cx7a2', '2018-05-28 14:45:06');
INSERT INTO `sys_captcha` VALUES ('fb57e18d-681a-4fbc-839e-a189c7b40039', 'agmfw', '2018-05-14 13:36:36');
INSERT INTO `sys_captcha` VALUES ('fbd7bb65-8f83-494a-875f-4ae340dccb56', 'w7nn3', '2018-05-16 10:10:26');
INSERT INTO `sys_captcha` VALUES ('fbedac38-7c82-4180-889c-23a2ea4a156a', '47np2', '2018-05-15 16:42:18');
INSERT INTO `sys_captcha` VALUES ('fd4a0660-f0e0-4586-8c53-e2e83450ea99', 'mmebg', '2018-05-18 14:34:51');
INSERT INTO `sys_captcha` VALUES ('fda09b8c-866c-4558-8b9c-831ec065e2cb', 'w6m62', '2018-05-14 14:41:00');
INSERT INTO `sys_captcha` VALUES ('fe6b44f2-199e-4a4a-8469-09bd8520da9f', 'e5ege', '2018-05-25 11:35:01');
INSERT INTO `sys_captcha` VALUES ('ffe6fae6-315b-4215-8e98-e63e1851e0be', '6mypb', '2018-05-28 14:07:15');

-- ----------------------------
-- Table structure for sys_certificate_type
-- ----------------------------
DROP TABLE IF EXISTS `sys_certificate_type`;
CREATE TABLE `sys_certificate_type` (
  `id` int(11) NOT NULL,
  `name` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of sys_certificate_type
-- ----------------------------
INSERT INTO `sys_certificate_type` VALUES ('1', '法人代表身份证');
INSERT INTO `sys_certificate_type` VALUES ('2', '开户银行许可证');
INSERT INTO `sys_certificate_type` VALUES ('3', '营业执照');

-- ----------------------------
-- Table structure for sys_coborrower_type
-- ----------------------------
DROP TABLE IF EXISTS `sys_coborrower_type`;
CREATE TABLE `sys_coborrower_type` (
  `id` int(11) NOT NULL,
  `type` varchar(50) COLLATE utf8_bin DEFAULT NULL COMMENT '借款类型',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of sys_coborrower_type
-- ----------------------------
INSERT INTO `sys_coborrower_type` VALUES ('1', '共同借款人');
INSERT INTO `sys_coborrower_type` VALUES ('2', '共同担保人');
INSERT INTO `sys_coborrower_type` VALUES ('3', '共同借款企业');
INSERT INTO `sys_coborrower_type` VALUES ('4', '共同担保企业');

-- ----------------------------
-- Table structure for sys_config
-- ----------------------------
DROP TABLE IF EXISTS `sys_config`;
CREATE TABLE `sys_config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `key` varchar(50) DEFAULT NULL COMMENT 'key',
  `value` varchar(2000) DEFAULT NULL COMMENT 'value',
  `status` tinyint(4) DEFAULT '1' COMMENT 'çŠ¶æ€   0ï¼šéšè—   1ï¼šæ˜¾ç¤º',
  `remark` varchar(500) DEFAULT NULL COMMENT 'å¤‡æ³¨',
  PRIMARY KEY (`id`),
  UNIQUE KEY `key` (`key`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='ç³»ç»Ÿé…ç½®ä¿¡æ¯è¡¨';

-- ----------------------------
-- Records of sys_config
-- ----------------------------
INSERT INTO `sys_config` VALUES ('1', 'CLOUD_STORAGE_CONFIG_KEY', '{\"type\":2,\"qiniuDomain\":\"http://7xqbwh.dl1.z0.glb.clouddn.com\",\"qiniuPrefix\":\"upload\",\"qiniuAccessKey\":\"NrgMfABZxWLo5B-YYSjoE8-AZ1EISdi1Z3ubLOeZ\",\"qiniuSecretKey\":\"uIwJHevMRWU0VLxFvgy0tAcOdGqasdtVlJkdy6vV\",\"qiniuBucketName\":\"ios-app\",\"aliyunDomain\":\"http://yjfintechtest.oss-cn-hzfinance.aliyuncs.com\",\"aliyunPrefix\":\"test\",\"aliyunEndPoint\":\"oss-cn-hzfinance.aliyuncs.com\",\"aliyunAccessKeyId\":\"LTAIe2tTZogkJSw1\",\"aliyunAccessKeySecret\":\"UHgn5kfs8U816YGlETVbea5TlT96CE\",\"aliyunBucketName\":\"yjfintechtest\",\"qcloudDomain\":\"\",\"qcloudPrefix\":\"\",\"qcloudSecretId\":\"\",\"qcloudSecretKey\":\"\",\"qcloudBucketName\":\"\"}', '0', '云存储配置信息');

-- ----------------------------
-- Table structure for sys_dept
-- ----------------------------
DROP TABLE IF EXISTS `sys_dept`;
CREATE TABLE `sys_dept` (
  `dept_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `parent_id` bigint(20) DEFAULT NULL COMMENT '上级部门ID，一级部门为0',
  `name` varchar(50) DEFAULT NULL COMMENT '部门名称',
  `order_num` int(11) DEFAULT NULL COMMENT '排序',
  `del_flag` tinyint(4) DEFAULT '0' COMMENT '是否删除  -1：已删除  0：正常',
  PRIMARY KEY (`dept_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='部门管理';

-- ----------------------------
-- Records of sys_dept
-- ----------------------------
INSERT INTO `sys_dept` VALUES ('1', '0', '易君财富', '0', '0');
INSERT INTO `sys_dept` VALUES ('2', '1', '无锡分公司', '1', '0');
INSERT INTO `sys_dept` VALUES ('3', '1', '上饶分公司', '2', '0');
INSERT INTO `sys_dept` VALUES ('4', '2', '技术部', '0', '0');
INSERT INTO `sys_dept` VALUES ('5', '3', '风控部', '0', '0');
INSERT INTO `sys_dept` VALUES ('6', '2', '风控部', '0', '0');
INSERT INTO `sys_dept` VALUES ('7', '3', '信贷部', '0', '0');
INSERT INTO `sys_dept` VALUES ('8', '2', '信贷部', '0', '0');

-- ----------------------------
-- Table structure for sys_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_log`;
CREATE TABLE `sys_log` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) DEFAULT NULL COMMENT 'ç”¨æˆ·å',
  `operation` varchar(50) DEFAULT NULL COMMENT 'ç”¨æˆ·æ“ä½œ',
  `method` varchar(200) DEFAULT NULL COMMENT 'è¯·æ±‚æ–¹æ³•',
  `params` varchar(5000) DEFAULT NULL COMMENT 'è¯·æ±‚å‚æ•°',
  `time` bigint(20) NOT NULL COMMENT 'æ‰§è¡Œæ—¶é•¿(æ¯«ç§’)',
  `ip` varchar(64) DEFAULT NULL COMMENT 'IPåœ°å€',
  `create_date` datetime DEFAULT NULL COMMENT 'åˆ›å»ºæ—¶é—´',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=128 DEFAULT CHARSET=utf8 COMMENT='ç³»ç»Ÿæ—¥å¿—';

-- ----------------------------
-- Records of sys_log
-- ----------------------------
INSERT INTO `sys_log` VALUES ('1', 'admin', '保存角色', 'com.yjcaifu.modules.sys.controller.SysRoleController.save()', '{\"roleId\":1,\"roleName\":\"是是是\",\"remark\":\"撒啊啊\",\"createUserId\":1,\"menuIdList\":[1,2,15,16,17,18,3,19,20,21,22,4,23,24,25,26,5,27,29,-666666],\"createTime\":\"May 3, 2018 6:03:23 PM\"}', '111', '0:0:0:0:0:0:0:1', '2018-05-03 18:03:23');
INSERT INTO `sys_log` VALUES ('2', 'admin', '保存菜单', 'com.yjcaifu.modules.sys.controller.SysMenuController.save()', '{\"menuId\":30,\"parentId\":0,\"name\":\"风控管理\",\"url\":\"\",\"perms\":\"\",\"type\":0,\"icon\":\"\",\"orderNum\":0}', '91', '0:0:0:0:0:0:0:1', '2018-05-03 18:09:31');
INSERT INTO `sys_log` VALUES ('3', 'admin', '保存菜单', 'com.yjcaifu.modules.sys.controller.SysMenuController.save()', '{\"menuId\":31,\"parentId\":1,\"name\":\"客户列表\",\"url\":\"modules/sys/user.html\",\"perms\":\"\",\"type\":1,\"icon\":\"\",\"orderNum\":0}', '58', '0:0:0:0:0:0:0:1', '2018-05-03 18:10:43');
INSERT INTO `sys_log` VALUES ('4', 'admin', '修改菜单', 'com.yjcaifu.modules.sys.controller.SysMenuController.update()', '{\"menuId\":31,\"parentId\":30,\"name\":\"客户列表\",\"url\":\"modules/sys/user.html\",\"type\":1,\"orderNum\":0}', '76', '0:0:0:0:0:0:0:1', '2018-05-03 18:11:07');
INSERT INTO `sys_log` VALUES ('5', 'admin', '修改菜单', 'com.yjcaifu.modules.sys.controller.SysMenuController.update()', '{\"menuId\":1,\"parentId\":0,\"name\":\"系统管理\",\"type\":0,\"icon\":\"fa fa-cog\",\"orderNum\":1000}', '47', '0:0:0:0:0:0:0:1', '2018-05-03 18:11:18');
INSERT INTO `sys_log` VALUES ('6', 'admin', '删除角色', 'com.yjcaifu.modules.sys.controller.SysRoleController.delete()', '[1]', '92', '0:0:0:0:0:0:0:1', '2018-05-04 14:01:33');
INSERT INTO `sys_log` VALUES ('7', 'admin', '保存角色', 'com.yjcaifu.modules.sys.controller.SysRoleController.save()', '{\"roleId\":2,\"roleName\":\"超管\",\"remark\":\"超级管理员\",\"createUserId\":1,\"menuIdList\":[1,2,15,16,17,18,3,19,20,21,22,4,23,24,25,26,5,27,29,32,33,34,35,36,30,31,-666666],\"createTime\":\"May 4, 2018 2:01:57 PM\"}', '189', '0:0:0:0:0:0:0:1', '2018-05-04 14:01:58');
INSERT INTO `sys_log` VALUES ('8', 'admin', '修改用户', 'com.yjcaifu.modules.sys.controller.SysUserController.update()', '{\"userId\":1,\"username\":\"admin\",\"email\":\"root@yjcaifu.com\",\"mobile\":\"18888888888\",\"status\":1,\"roleIdList\":[2],\"createUserId\":1}', '72', '0:0:0:0:0:0:0:1', '2018-05-04 14:02:10');
INSERT INTO `sys_log` VALUES ('9', 'admin', '修改菜单', 'com.yjcaifu.modules.sys.controller.SysMenuController.update()', '{\"menuId\":32,\"parentId\":30,\"name\":\"用户基本信息表\",\"url\":\"modules/generator/rduser.html\",\"type\":1,\"icon\":\"fa fa-file-code-o\",\"orderNum\":6}', '41', '0:0:0:0:0:0:0:1', '2018-05-04 14:02:40');
INSERT INTO `sys_log` VALUES ('10', 'admin', '修改菜单', 'com.yjcaifu.modules.sys.controller.SysMenuController.update()', '{\"menuId\":32,\"parentId\":30,\"name\":\"用户基本信息\",\"url\":\"modules/generator/rduser.html\",\"type\":1,\"icon\":\"fa fa-file-code-o\",\"orderNum\":6}', '32', '0:0:0:0:0:0:0:1', '2018-05-04 14:02:55');
INSERT INTO `sys_log` VALUES ('11', 'admin', '删除菜单', 'com.yjcaifu.modules.sys.controller.SysMenuController.delete()', '32', '3', '0:0:0:0:0:0:0:1', '2018-05-04 14:36:30');
INSERT INTO `sys_log` VALUES ('12', 'admin', '删除菜单', 'com.yjcaifu.modules.sys.controller.SysMenuController.delete()', '33', '90', '0:0:0:0:0:0:0:1', '2018-05-04 14:36:39');
INSERT INTO `sys_log` VALUES ('13', 'admin', '删除菜单', 'com.yjcaifu.modules.sys.controller.SysMenuController.delete()', '30', '0', '0:0:0:0:0:0:0:1', '2018-05-04 14:39:13');
INSERT INTO `sys_log` VALUES ('14', 'admin', '删除菜单', 'com.yjcaifu.modules.sys.controller.SysMenuController.delete()', '31', '0', '0:0:0:0:0:0:0:1', '2018-05-04 14:39:19');
INSERT INTO `sys_log` VALUES ('15', 'admin', '保存菜单', 'com.yjcaifu.modules.sys.controller.SysMenuController.save()', '{\"menuId\":37,\"parentId\":30,\"name\":\"2222\",\"url\":\"modules/sys/role.html\",\"perms\":\"\",\"type\":1,\"icon\":\"\",\"orderNum\":0}', '36', '0:0:0:0:0:0:0:1', '2018-05-04 15:10:02');
INSERT INTO `sys_log` VALUES ('16', 'admin', '修改菜单', 'com.yjcaifu.modules.sys.controller.SysMenuController.update()', '{\"menuId\":37,\"parentId\":30,\"name\":\"2222\",\"url\":\"modules/sys/role.html\",\"type\":1,\"icon\":\"bianji\",\"orderNum\":0}', '32', '0:0:0:0:0:0:0:1', '2018-05-04 15:11:31');
INSERT INTO `sys_log` VALUES ('17', 'admin', '删除菜单', 'com.yjcaifu.modules.sys.controller.SysMenuController.delete()', '37', '42', '0:0:0:0:0:0:0:1', '2018-05-04 15:24:08');
INSERT INTO `sys_log` VALUES ('18', 'admin', '修改菜单', 'com.yjcaifu.modules.sys.controller.SysMenuController.update()', '{\"menuId\":38,\"parentId\":30,\"name\":\"用户基本信息\",\"url\":\"modules/generator/rduser.html\",\"type\":1,\"icon\":\"fa fa-file-code-o\",\"orderNum\":6}', '40', '0:0:0:0:0:0:0:1', '2018-05-04 15:24:20');
INSERT INTO `sys_log` VALUES ('19', 'admin', '删除菜单', 'com.yjcaifu.modules.sys.controller.SysMenuController.delete()', '38', '4', '0:0:0:0:0:0:0:1', '2018-05-07 14:41:28');
INSERT INTO `sys_log` VALUES ('20', 'admin', '删除菜单', 'com.yjcaifu.modules.sys.controller.SysMenuController.delete()', '39', '61', '0:0:0:0:0:0:0:1', '2018-05-07 14:41:34');
INSERT INTO `sys_log` VALUES ('21', 'admin', '删除菜单', 'com.yjcaifu.modules.sys.controller.SysMenuController.delete()', '42', '50', '0:0:0:0:0:0:0:1', '2018-05-07 14:41:44');
INSERT INTO `sys_log` VALUES ('22', 'admin', '删除菜单', 'com.yjcaifu.modules.sys.controller.SysMenuController.delete()', '41', '38', '0:0:0:0:0:0:0:1', '2018-05-07 14:41:54');
INSERT INTO `sys_log` VALUES ('23', 'admin', '删除菜单', 'com.yjcaifu.modules.sys.controller.SysMenuController.delete()', '40', '44', '0:0:0:0:0:0:0:1', '2018-05-07 14:42:01');
INSERT INTO `sys_log` VALUES ('24', 'admin', '删除菜单', 'com.yjcaifu.modules.sys.controller.SysMenuController.delete()', '38', '41', '0:0:0:0:0:0:0:1', '2018-05-07 14:42:08');
INSERT INTO `sys_log` VALUES ('25', 'admin', '修改用户', 'com.yjcaifu.modules.sys.controller.SysUserController.update()', '{\"userId\":1,\"username\":\"admin\",\"email\":\"root@yjcaifu.com\",\"mobile\":\"18888888888\",\"status\":1,\"roleIdList\":[2],\"createUserId\":1}', '247', '0:0:0:0:0:0:0:1', '2018-05-07 16:06:43');
INSERT INTO `sys_log` VALUES ('26', 'admin', '修改菜单', 'com.yjcaifu.modules.sys.controller.SysMenuController.update()', '{\"menuId\":2,\"parentId\":1,\"name\":\"员工管理\",\"url\":\"modules/sys/user.html\",\"type\":1,\"icon\":\"fa fa-user\",\"orderNum\":1}', '79', '127.0.0.1', '2018-05-07 16:07:21');
INSERT INTO `sys_log` VALUES ('27', 'admin', '修改菜单', 'com.yjcaifu.modules.sys.controller.SysMenuController.update()', '{\"menuId\":58,\"parentId\":30,\"name\":\"借款信息\",\"url\":\"modules/generator/borrowinginformation.html\",\"type\":1,\"icon\":\"fa fa-file-code-o\",\"orderNum\":6}', '93', '0:0:0:0:0:0:0:1', '2018-05-08 09:52:42');
INSERT INTO `sys_log` VALUES ('28', 'admin', '修改菜单', 'com.yjcaifu.modules.sys.controller.SysMenuController.update()', '{\"menuId\":63,\"parentId\":30,\"name\":\"评审意见\",\"url\":\"modules/generator/reviewopinions.html\",\"type\":1,\"icon\":\"fa fa-file-code-o\",\"orderNum\":6}', '76', '0:0:0:0:0:0:0:1', '2018-05-08 10:53:36');
INSERT INTO `sys_log` VALUES ('29', 'admin', '保存菜单', 'com.yjcaifu.modules.sys.controller.SysMenuController.save()', '{\"menuId\":68,\"parentId\":30,\"name\":\"进件管理\",\"url\":\"\",\"perms\":\"\",\"type\":0,\"icon\":\"\",\"orderNum\":0}', '83', '0:0:0:0:0:0:0:1', '2018-05-08 11:03:11');
INSERT INTO `sys_log` VALUES ('30', 'admin', '修改菜单', 'com.yjcaifu.modules.sys.controller.SysMenuController.update()', '{\"menuId\":58,\"parentId\":68,\"name\":\"借款信息\",\"url\":\"modules/generator/borrowinginformation.html\",\"type\":1,\"icon\":\"fa fa-file-code-o\",\"orderNum\":6}', '80', '0:0:0:0:0:0:0:1', '2018-05-08 11:03:57');
INSERT INTO `sys_log` VALUES ('31', 'admin', '修改菜单', 'com.yjcaifu.modules.sys.controller.SysMenuController.update()', '{\"menuId\":63,\"parentId\":68,\"name\":\"评审意见\",\"url\":\"modules/generator/reviewopinions.html\",\"type\":1,\"icon\":\"fa fa-file-code-o\",\"orderNum\":6}', '77', '0:0:0:0:0:0:0:1', '2018-05-08 11:04:19');
INSERT INTO `sys_log` VALUES ('32', 'admin', '修改菜单', 'com.yjcaifu.modules.sys.controller.SysMenuController.update()', '{\"menuId\":69,\"parentId\":30,\"name\":\"房产信息\",\"url\":\"modules/generator/cusestate.html\",\"type\":1,\"icon\":\"fa fa-file-code-o\",\"orderNum\":6}', '55', '0:0:0:0:0:0:0:1', '2018-05-08 16:57:31');
INSERT INTO `sys_log` VALUES ('33', 'admin', '保存菜单', 'com.yjcaifu.modules.sys.controller.SysMenuController.save()', '{\"menuId\":74,\"parentId\":1,\"name\":\"文件上传\",\"url\":\"oss/oss\",\"perms\":\"sys:oss:all\",\"type\":1,\"icon\":\"\",\"orderNum\":6}', '101', '127.0.0.1', '2018-05-08 17:08:37');
INSERT INTO `sys_log` VALUES ('34', 'admin', '修改菜单', 'com.yjcaifu.modules.sys.controller.SysMenuController.update()', '{\"menuId\":74,\"parentId\":1,\"name\":\"文件上传\",\"url\":\"oss/index\",\"perms\":\"sys:oss:all\",\"type\":1,\"orderNum\":6}', '132', '127.0.0.1', '2018-05-08 17:10:29');
INSERT INTO `sys_log` VALUES ('35', 'admin', '修改菜单', 'com.yjcaifu.modules.sys.controller.SysMenuController.update()', '{\"menuId\":74,\"parentId\":1,\"name\":\"文件上传\",\"url\":\"oss/oss\",\"perms\":\"sys:oss:all\",\"type\":1,\"orderNum\":6}', '64', '127.0.0.1', '2018-05-08 17:15:06');
INSERT INTO `sys_log` VALUES ('36', 'admin', '删除菜单', 'com.yjcaifu.modules.sys.controller.SysMenuController.delete()', '75', '4', '0:0:0:0:0:0:0:1', '2018-05-09 09:40:01');
INSERT INTO `sys_log` VALUES ('37', 'admin', '删除菜单', 'com.yjcaifu.modules.sys.controller.SysMenuController.delete()', '76', '296', '0:0:0:0:0:0:0:1', '2018-05-09 09:40:12');
INSERT INTO `sys_log` VALUES ('38', 'admin', '删除菜单', 'com.yjcaifu.modules.sys.controller.SysMenuController.delete()', '77', '65', '0:0:0:0:0:0:0:1', '2018-05-09 09:40:36');
INSERT INTO `sys_log` VALUES ('39', 'admin', '删除菜单', 'com.yjcaifu.modules.sys.controller.SysMenuController.delete()', '78', '44', '0:0:0:0:0:0:0:1', '2018-05-09 09:40:46');
INSERT INTO `sys_log` VALUES ('40', 'admin', '删除菜单', 'com.yjcaifu.modules.sys.controller.SysMenuController.delete()', '79', '41', '0:0:0:0:0:0:0:1', '2018-05-09 09:40:57');
INSERT INTO `sys_log` VALUES ('41', 'admin', '删除菜单', 'com.yjcaifu.modules.sys.controller.SysMenuController.delete()', '75', '65', '0:0:0:0:0:0:0:1', '2018-05-09 09:41:08');
INSERT INTO `sys_log` VALUES ('42', 'admin', '修改菜单', 'com.yjcaifu.modules.sys.controller.SysMenuController.update()', '{\"menuId\":80,\"parentId\":30,\"name\":\"汽车信息\",\"url\":\"modules/generator/cuscar.html\",\"type\":1,\"icon\":\"fa fa-file-code-o\",\"orderNum\":6}', '56', '0:0:0:0:0:0:0:1', '2018-05-09 09:41:40');
INSERT INTO `sys_log` VALUES ('43', 'admin', '删除菜单', 'com.yjcaifu.modules.sys.controller.SysMenuController.delete()', '80', '4', '0:0:0:0:0:0:0:1', '2018-05-09 11:13:56');
INSERT INTO `sys_log` VALUES ('44', 'admin', '删除菜单', 'com.yjcaifu.modules.sys.controller.SysMenuController.delete()', '81', '59', '0:0:0:0:0:0:0:1', '2018-05-09 11:14:01');
INSERT INTO `sys_log` VALUES ('45', 'admin', '删除菜单', 'com.yjcaifu.modules.sys.controller.SysMenuController.delete()', '82', '45', '0:0:0:0:0:0:0:1', '2018-05-09 11:14:10');
INSERT INTO `sys_log` VALUES ('46', 'admin', '删除菜单', 'com.yjcaifu.modules.sys.controller.SysMenuController.delete()', '83', '40', '0:0:0:0:0:0:0:1', '2018-05-09 11:14:17');
INSERT INTO `sys_log` VALUES ('47', 'admin', '删除菜单', 'com.yjcaifu.modules.sys.controller.SysMenuController.delete()', '84', '43', '0:0:0:0:0:0:0:1', '2018-05-09 11:14:25');
INSERT INTO `sys_log` VALUES ('48', 'admin', '删除菜单', 'com.yjcaifu.modules.sys.controller.SysMenuController.delete()', '80', '43', '0:0:0:0:0:0:0:1', '2018-05-09 11:14:31');
INSERT INTO `sys_log` VALUES ('49', 'admin', '删除菜单', 'com.yjcaifu.modules.sys.controller.SysMenuController.delete()', '86', '79', '0:0:0:0:0:0:0:1', '2018-05-09 11:15:37');
INSERT INTO `sys_log` VALUES ('50', 'admin', '删除菜单', 'com.yjcaifu.modules.sys.controller.SysMenuController.delete()', '87', '50', '0:0:0:0:0:0:0:1', '2018-05-09 11:15:45');
INSERT INTO `sys_log` VALUES ('51', 'admin', '删除菜单', 'com.yjcaifu.modules.sys.controller.SysMenuController.delete()', '88', '51', '0:0:0:0:0:0:0:1', '2018-05-09 11:15:54');
INSERT INTO `sys_log` VALUES ('52', 'admin', '删除菜单', 'com.yjcaifu.modules.sys.controller.SysMenuController.delete()', '89', '40', '0:0:0:0:0:0:0:1', '2018-05-09 11:16:01');
INSERT INTO `sys_log` VALUES ('53', 'admin', '删除菜单', 'com.yjcaifu.modules.sys.controller.SysMenuController.delete()', '85', '51', '0:0:0:0:0:0:0:1', '2018-05-09 11:16:09');
INSERT INTO `sys_log` VALUES ('54', 'admin', '删除菜单', 'com.yjcaifu.modules.sys.controller.SysMenuController.delete()', '70', '482', '0:0:0:0:0:0:0:1', '2018-05-09 13:12:10');
INSERT INTO `sys_log` VALUES ('55', 'admin', '删除菜单', 'com.yjcaifu.modules.sys.controller.SysMenuController.delete()', '71', '549', '0:0:0:0:0:0:0:1', '2018-05-09 13:12:12');
INSERT INTO `sys_log` VALUES ('56', 'admin', '删除菜单', 'com.yjcaifu.modules.sys.controller.SysMenuController.delete()', '72', '647', '0:0:0:0:0:0:0:1', '2018-05-09 13:12:15');
INSERT INTO `sys_log` VALUES ('57', 'admin', '删除菜单', 'com.yjcaifu.modules.sys.controller.SysMenuController.delete()', '73', '606', '0:0:0:0:0:0:0:1', '2018-05-09 13:12:28');
INSERT INTO `sys_log` VALUES ('58', 'admin', '删除菜单', 'com.yjcaifu.modules.sys.controller.SysMenuController.delete()', '69', '115', '0:0:0:0:0:0:0:1', '2018-05-09 13:12:37');
INSERT INTO `sys_log` VALUES ('59', 'admin', '删除菜单', 'com.yjcaifu.modules.sys.controller.SysMenuController.delete()', '90', '9', '0:0:0:0:0:0:0:1', '2018-05-09 13:15:01');
INSERT INTO `sys_log` VALUES ('60', 'admin', '删除菜单', 'com.yjcaifu.modules.sys.controller.SysMenuController.delete()', '94', '210', '0:0:0:0:0:0:0:1', '2018-05-09 13:15:06');
INSERT INTO `sys_log` VALUES ('61', 'admin', '删除菜单', 'com.yjcaifu.modules.sys.controller.SysMenuController.delete()', '93', '159', '0:0:0:0:0:0:0:1', '2018-05-09 13:15:18');
INSERT INTO `sys_log` VALUES ('62', 'admin', '删除菜单', 'com.yjcaifu.modules.sys.controller.SysMenuController.delete()', '92', '190', '0:0:0:0:0:0:0:1', '2018-05-09 13:15:26');
INSERT INTO `sys_log` VALUES ('63', 'admin', '删除菜单', 'com.yjcaifu.modules.sys.controller.SysMenuController.delete()', '91', '79', '0:0:0:0:0:0:0:1', '2018-05-09 13:15:35');
INSERT INTO `sys_log` VALUES ('64', 'admin', '删除菜单', 'com.yjcaifu.modules.sys.controller.SysMenuController.delete()', '90', '195', '0:0:0:0:0:0:0:1', '2018-05-09 13:15:43');
INSERT INTO `sys_log` VALUES ('65', 'admin', '删除菜单', 'com.yjcaifu.modules.sys.controller.SysMenuController.delete()', '99', '629', '0:0:0:0:0:0:0:1', '2018-05-09 13:25:25');
INSERT INTO `sys_log` VALUES ('66', 'admin', '删除菜单', 'com.yjcaifu.modules.sys.controller.SysMenuController.delete()', '98', '774', '0:0:0:0:0:0:0:1', '2018-05-09 13:25:38');
INSERT INTO `sys_log` VALUES ('67', 'admin', '删除菜单', 'com.yjcaifu.modules.sys.controller.SysMenuController.delete()', '97', '123', '0:0:0:0:0:0:0:1', '2018-05-09 13:25:50');
INSERT INTO `sys_log` VALUES ('68', 'admin', '删除菜单', 'com.yjcaifu.modules.sys.controller.SysMenuController.delete()', '96', '85', '0:0:0:0:0:0:0:1', '2018-05-09 13:25:58');
INSERT INTO `sys_log` VALUES ('69', 'admin', '删除菜单', 'com.yjcaifu.modules.sys.controller.SysMenuController.delete()', '95', '91', '0:0:0:0:0:0:0:1', '2018-05-09 13:26:44');
INSERT INTO `sys_log` VALUES ('70', 'admin', '修改菜单', 'com.yjcaifu.modules.sys.controller.SysMenuController.update()', '{\"menuId\":100,\"parentId\":30,\"name\":\"房产信息\",\"url\":\"modules/generator/cusestate.html\",\"type\":1,\"icon\":\"fa fa-file-code-o\",\"orderNum\":6}', '68', '0:0:0:0:0:0:0:1', '2018-05-09 14:28:53');
INSERT INTO `sys_log` VALUES ('71', 'admin', '修改菜单', 'com.yjcaifu.modules.sys.controller.SysMenuController.update()', '{\"menuId\":105,\"parentId\":30,\"name\":\"汽车信息\",\"url\":\"modules/generator/cuscar.html\",\"type\":1,\"icon\":\"fa fa-file-code-o\",\"orderNum\":6}', '49', '0:0:0:0:0:0:0:1', '2018-05-09 14:51:15');
INSERT INTO `sys_log` VALUES ('72', 'admin', '修改菜单', 'com.yjcaifu.modules.sys.controller.SysMenuController.update()', '{\"menuId\":68,\"parentId\":0,\"name\":\"进件管理\",\"type\":0,\"orderNum\":0}', '200', '127.0.0.1', '2018-05-14 13:04:46');
INSERT INTO `sys_log` VALUES ('73', 'admin', '保存菜单', 'com.yjcaifu.modules.sys.controller.SysMenuController.save()', '{\"menuId\":126,\"parentId\":0,\"name\":\"TEMP\",\"url\":\"\",\"perms\":\"\",\"type\":0,\"icon\":\"\",\"orderNum\":0}', '32', '0:0:0:0:0:0:0:1', '2018-05-15 09:35:39');
INSERT INTO `sys_log` VALUES ('74', 'admin', '修改菜单', 'com.yjcaifu.modules.sys.controller.SysMenuController.update()', '{\"menuId\":43,\"parentId\":126,\"name\":\"注册信息\",\"url\":\"modules/generator/registerinfo.html\",\"type\":1,\"icon\":\"fa fa-file-code-o\",\"orderNum\":6}', '32', '0:0:0:0:0:0:0:1', '2018-05-15 09:35:49');
INSERT INTO `sys_log` VALUES ('75', 'admin', '修改菜单', 'com.yjcaifu.modules.sys.controller.SysMenuController.update()', '{\"menuId\":120,\"parentId\":126,\"name\":\"个人征信\",\"type\":0,\"orderNum\":0}', '43', '0:0:0:0:0:0:0:1', '2018-05-15 09:54:59');
INSERT INTO `sys_log` VALUES ('76', 'admin', '修改菜单', 'com.yjcaifu.modules.sys.controller.SysMenuController.update()', '{\"menuId\":110,\"parentId\":30,\"name\":\"征信信息\",\"url\":\"modules/generator/cuscreditinformation.html\",\"type\":1,\"icon\":\"fa fa-file-code-o\",\"orderNum\":6}', '36', '0:0:0:0:0:0:0:1', '2018-05-15 09:55:14');
INSERT INTO `sys_log` VALUES ('77', 'admin', '保存用户', 'com.yjcaifu.modules.sys.controller.SysUserController.save()', '{\"userId\":5,\"username\":\"qqqq\",\"password\":\"8fa22a14cab641e02ee282259425febc783730ac3385f8349e87b55e6a19c10b\",\"salt\":\"F1gEEWjFDymzy0ZKv1Wh\",\"email\":\"102356@qq.com\",\"mobile\":\"13030598598\",\"status\":1,\"roleIdList\":[],\"createUserId\":1,\"createTime\":\"May 21, 2018 3:18:12 PM\"}', '168', '0:0:0:0:0:0:0:1', '2018-05-21 15:18:13');
INSERT INTO `sys_log` VALUES ('78', 'admin', '保存用户', 'com.yjcaifu.modules.sys.controller.SysUserController.save()', '{\"userId\":6,\"username\":\"顾幼欣\",\"password\":\"459c28dd765e74334d09d09cbe4a567e3d2c7844be46895c4a03544c741a504f\",\"salt\":\"uLRKzgTUN9OheDGpqFV6\",\"email\":\"12356@qq.com\",\"mobile\":\"13030598598\",\"status\":1,\"roleIdList\":[2],\"createUserId\":1,\"createTime\":\"May 21, 2018 3:18:46 PM\"}', '58', '0:0:0:0:0:0:0:1', '2018-05-21 15:18:46');
INSERT INTO `sys_log` VALUES ('79', 'admin', '修改用户', 'com.yjcaifu.modules.sys.controller.SysUserController.update()', '{\"userId\":1,\"username\":\"admin\",\"email\":\"root@yjcaifu.com\",\"mobile\":\"18888888888\",\"status\":1,\"roleIdList\":[2],\"createUserId\":1}', '80', '0:0:0:0:0:0:0:1', '2018-05-28 09:10:00');
INSERT INTO `sys_log` VALUES ('80', 'admin', '修改用户', 'com.yjcaifu.modules.sys.controller.SysUserController.update()', '{\"userId\":7,\"username\":\"htshen\",\"email\":\"root@yjcaifu.com\",\"mobile\":\"18888888888\",\"status\":1,\"roleIdList\":[2],\"createUserId\":1}', '431', '127.0.0.1', '2018-05-28 13:51:28');
INSERT INTO `sys_log` VALUES ('81', 'admin', '修改角色', 'com.yjcaifu.modules.sys.controller.SysRoleController.update()', '{\"roleId\":2,\"roleName\":\"超管\",\"remark\":\"超级管理员\",\"createUserId\":1,\"menuIdList\":[1,2,15,16,17,18,3,19,20,21,22,4,23,24,25,26,5,27,29,74,30,48,49,50,51,52,53,54,55,56,57,100,101,102,103,104,105,106,107,108,109,121,122,123,124,125,128,110,111,112,113,114,130,131,132,133,134,68,58,59,60,61,62,63,64,65,66,67,126,43,44,45,46,47,120,115,116,117,118,119,127,-666666]}', '431', '127.0.0.1', '2018-05-28 13:53:19');
INSERT INTO `sys_log` VALUES ('82', 'admin', '删除用户', 'com.yjcaifu.modules.sys.controller.SysUserController.delete()', '[7]', '27', '0:0:0:0:0:0:0:1', '2018-05-28 14:00:11');
INSERT INTO `sys_log` VALUES ('83', 'admin', '修改用户', 'com.yjcaifu.modules.sys.controller.SysUserController.update()', '{\"userId\":5,\"username\":\"qqqq\",\"email\":\"102356@qq.com\",\"mobile\":\"15851998675\",\"status\":1,\"roleIdList\":[2],\"createUserId\":1}', '81', '0:0:0:0:0:0:0:1', '2018-05-28 14:49:14');
INSERT INTO `sys_log` VALUES ('84', 'qqqq', '保存用户', 'com.yjcaifu.modules.sys.controller.SysUserController.save()', '{\"userId\":8,\"username\":\"gxx\",\"password\":\"608512fdfea9c1d33f0967b119c2ae1ea3dc34a1dc05de1789773577dc60c3f7\",\"salt\":\"fwroEcm3wMK5lPimGHo8\",\"email\":\"123@163.com\",\"mobile\":\"15851998675\",\"status\":1,\"roleIdList\":[],\"createUserId\":5,\"createTime\":\"May 28, 2018 3:03:04 PM\"}', '146', '0:0:0:0:0:0:0:1', '2018-05-28 15:03:04');
INSERT INTO `sys_log` VALUES ('85', 'qqqq', '修改用户', 'com.yjcaifu.modules.sys.controller.SysUserController.update()', '{\"userId\":8,\"username\":\"gxx\",\"salt\":\"fwroEcm3wMK5lPimGHo8\",\"email\":\"123@163.com\",\"mobile\":\"15851998675\",\"status\":1,\"roleIdList\":[],\"createUserId\":5}', '39', '0:0:0:0:0:0:0:1', '2018-05-28 15:03:09');
INSERT INTO `sys_log` VALUES ('86', 'qqqq', '修改用户', 'com.yjcaifu.modules.sys.controller.SysUserController.update()', '{\"userId\":8,\"username\":\"gxx\",\"password\":\"18e89ca13c6776b8bcc583ec0e4fabae92109fd43c66095ad5b4e760f57f1542\",\"salt\":\"fwroEcm3wMK5lPimGHo8\",\"email\":\"123@163.com\",\"mobile\":\"15851998675\",\"status\":1,\"roleIdList\":[],\"createUserId\":5}', '31', '0:0:0:0:0:0:0:1', '2018-05-28 15:03:42');
INSERT INTO `sys_log` VALUES ('87', 'qqqq', '保存用户', 'com.yjcaifu.modules.sys.controller.SysUserController.save()', '{\"userId\":9,\"username\":\"qwe\",\"password\":\"0451ff2b21b270e69e8f6b29895993613d2fe290758746e2ea7b5de6ad1127e6\",\"salt\":\"N7wN3MaDkCnmXExzqRW1\",\"email\":\"123@qq.com\",\"mobile\":\"15851998675\",\"status\":1,\"roleIdList\":[],\"createUserId\":5,\"createTime\":\"May 28, 2018 3:33:33 PM\"}', '171', '0:0:0:0:0:0:0:1', '2018-05-28 15:33:34');
INSERT INTO `sys_log` VALUES ('88', 'qqqq', '保存用户', 'com.yjcaifu.modules.sys.controller.SysUserController.save()', '{\"userId\":10,\"username\":\"qwe\",\"password\":\"fd9bce0260a4501b44df503412002cea0c2752f9838bfa27a0169978b45f7d51\",\"salt\":\"yKqF2M3oHvhJ13uM8DyS\",\"email\":\"123@163.com\",\"mobile\":\"15851998675\",\"status\":1,\"roleIdList\":[],\"createUserId\":5,\"createTime\":\"May 28, 2018 3:34:37 PM\"}', '68', '0:0:0:0:0:0:0:1', '2018-05-28 15:34:38');
INSERT INTO `sys_log` VALUES ('89', 'qqqq', '保存用户', 'com.yjcaifu.modules.sys.controller.SysUserController.save()', '{\"userId\":11,\"username\":\"qwe\",\"password\":\"14fe522fbef6f5fb72307b18b3af0c3282943602d25903be951dc03bce494335\",\"salt\":\"Ys5o4sS6Y7I4ZVoev8eD\",\"email\":\"123@163.com\",\"mobile\":\"15851998675\",\"status\":1,\"roleIdList\":[],\"createUserId\":5,\"createTime\":\"May 28, 2018 3:35:28 PM\"}', '14320', '0:0:0:0:0:0:0:1', '2018-05-28 15:35:28');
INSERT INTO `sys_log` VALUES ('90', 'qqqq', '保存用户', 'com.yjcaifu.modules.sys.controller.SysUserController.save()', '{\"userId\":12,\"username\":\"qwe\",\"password\":\"0ffe06dc0e2cab12eeb5628825c2214eb649147446330fb796437daf2001659b\",\"salt\":\"E5o9RaXfNj3fjAHSO2rJ\",\"email\":\"123@123.com\",\"mobile\":\"15851998681\",\"status\":1,\"roleIdList\":[],\"createUserId\":5,\"createTime\":\"May 28, 2018 3:41:00 PM\"}', '2841', '0:0:0:0:0:0:0:1', '2018-05-28 15:41:00');
INSERT INTO `sys_log` VALUES ('91', 'qqqq', '修改用户', 'com.yjcaifu.modules.sys.controller.SysUserController.update()', '{\"userId\":12,\"username\":\"qwe\",\"salt\":\"E5o9RaXfNj3fjAHSO2rJ\",\"email\":\"123@123.com\",\"mobile\":\"15851998611\",\"status\":1,\"roleIdList\":[],\"createUserId\":5}', '147', '0:0:0:0:0:0:0:1', '2018-05-28 15:48:56');
INSERT INTO `sys_log` VALUES ('92', 'qqqq', '修改菜单', 'com.yjcaifu.modules.sys.controller.SysMenuController.update()', '{\"menuId\":135,\"parentId\":1,\"name\":\"需求申请\",\"url\":\"modules/generator/applicationrequirements.html\",\"type\":1,\"icon\":\"fa fa-file-code-o\",\"orderNum\":6}', '273', '0:0:0:0:0:0:0:1', '2018-05-29 14:55:28');
INSERT INTO `sys_log` VALUES ('93', 'qqqq', '修改菜单', 'com.yjcaifu.modules.sys.controller.SysMenuController.update()', '{\"menuId\":135,\"parentId\":30,\"name\":\"需求申请\",\"url\":\"modules/generator/applicationrequirements.html\",\"type\":1,\"icon\":\"fa fa-file-code-o\",\"orderNum\":6}', '46', '0:0:0:0:0:0:0:1', '2018-05-29 14:56:30');
INSERT INTO `sys_log` VALUES ('94', 'admin', '修改用户', 'com.yjcaifu.modules.sys.controller.SysUserController.update()', '{\"userId\":12,\"username\":\"qwe\",\"password\":\"ec7de5c58723e5ed9c5b68d421396c8a9faf6cced4a5a618bb4b1349b2deada5\",\"salt\":\"E5o9RaXfNj3fjAHSO2rJ\",\"email\":\"123@123.com\",\"mobile\":\"15851998611\",\"status\":1,\"roleIdList\":[],\"createUserId\":1}', '262', '0:0:0:0:0:0:0:1', '2018-05-29 15:28:44');
INSERT INTO `sys_log` VALUES ('95', 'admin', '修改用户', 'com.yjcaifu.modules.sys.controller.SysUserController.update()', '{\"userId\":12,\"username\":\"qwe\",\"salt\":\"E5o9RaXfNj3fjAHSO2rJ\",\"email\":\"123@123.com\",\"mobile\":\"15851998611\",\"status\":1,\"roleIdList\":[2],\"createUserId\":1}', '59', '0:0:0:0:0:0:0:1', '2018-05-29 15:28:54');
INSERT INTO `sys_log` VALUES ('96', 'admin', '修改用户', 'com.yjcaifu.modules.sys.controller.SysUserController.update()', '{\"userId\":5,\"username\":\"qqqq\",\"salt\":\"YzcmCZNvbXocrsz9dm8e\",\"email\":\"102356@qq.com\",\"mobile\":\"15851998675\",\"status\":1,\"roleIdList\":[2],\"createUserId\":1}', '58', '0:0:0:0:0:0:0:1', '2018-05-29 15:28:59');
INSERT INTO `sys_log` VALUES ('97', 'admin', '保存用户', 'com.yjcaifu.modules.sys.controller.SysUserController.save()', '{\"userId\":13,\"username\":\"顾欣欣\",\"password\":\"3b28fd7d89b1e47b5fb81aa9f7c95698a0316387b2d7502521abed6a7e92dc92\",\"salt\":\"hpZnpEgKifdGfGM2RUAi\",\"email\":\"123@163.com\",\"mobile\":\"15851998888\",\"status\":1,\"roleIdList\":[2],\"createUserId\":1,\"createTime\":\"Jun 1, 2018 9:24:23 AM\"}', '158', '127.0.0.1', '2018-06-01 09:24:24');
INSERT INTO `sys_log` VALUES ('98', 'admin', '保存用户', 'com.yjcaifu.modules.sys.controller.SysUserController.save()', '{\"userId\":14,\"username\":\"hong\",\"password\":\"24422f3cd7aac123a1495fddca11d39f583ab8695632a82683e5564ae91d126b\",\"salt\":\"v8d8ZUDaRAa5LeM7ezwp\",\"email\":\"hong@163.com\",\"mobile\":\"15106195972\",\"status\":1,\"roleIdList\":[2],\"createUserId\":1,\"createTime\":\"Jun 1, 2018 9:26:50 AM\"}', '164', '192.168.100.35', '2018-06-01 09:26:51');
INSERT INTO `sys_log` VALUES ('99', 'admin', '修改角色', 'com.yjcaifu.modules.sys.controller.SysRoleController.update()', '{\"roleId\":2,\"roleName\":\"超管\",\"remark\":\"超级管理员\",\"createUserId\":1,\"menuIdList\":[1,2,15,16,17,18,3,19,20,21,22,4,23,24,25,26,5,27,29,74,30,48,49,50,51,52,53,54,55,56,57,100,101,102,103,104,105,106,107,108,109,121,122,123,124,125,128,110,111,112,113,114,130,131,132,133,134,68,58,59,60,61,62,63,64,65,66,67,127,-666666]}', '367', '127.0.0.1', '2018-06-01 15:16:35');
INSERT INTO `sys_log` VALUES ('100', 'admin', '保存用户', 'com.yjcaifu.modules.sys.controller.SysUserController.save()', '{\"userId\":15,\"username\":\"007\",\"password\":\"98659da2cfd339996b3a09c10fe9d422cc88b7343b279cb5ee536477a303e4df\",\"salt\":\"3xVl0L9wCj92Q7Rx1Vpz\",\"email\":\"12345@163.com\",\"mobile\":\"13838389438\",\"status\":1,\"roleIdList\":[2],\"createUserId\":1,\"createTime\":\"Jun 4, 2018 9:22:02 AM\"}', '240', '0:0:0:0:0:0:0:1', '2018-06-04 09:22:02');
INSERT INTO `sys_log` VALUES ('101', '007', '保存菜单', 'com.yjcaifu.modules.sys.controller.SysMenuController.save()', '{\"menuId\":140,\"parentId\":30,\"name\":\"富文本\",\"url\":\"oss/oss\",\"perms\":\"\",\"type\":1,\"icon\":\"zhedie\",\"orderNum\":0}', '69', '0:0:0:0:0:0:0:1', '2018-06-04 10:19:24');
INSERT INTO `sys_log` VALUES ('102', '007', '修改菜单', 'com.yjcaifu.modules.sys.controller.SysMenuController.update()', '{\"menuId\":140,\"parentId\":30,\"name\":\"富文本\",\"url\":\"oss/oss\",\"type\":1,\"icon\":\"zhedie\",\"orderNum\":11}', '84', '0:0:0:0:0:0:0:1', '2018-06-04 10:20:37');
INSERT INTO `sys_log` VALUES ('103', 'hong', '保存用户', 'com.yjcaifu.modules.sys.controller.SysUserController.save()', '{\"userId\":16,\"username\":\"1\",\"password\":\"a526727121dabed4deb339bb9b8cefc83a5f58bbe86bb7410281d16b9e6f533c\",\"salt\":\"dJ0NLJvOLXoGoZxa2BK8\",\"email\":\"11111111@163.com\",\"mobile\":\"15145647895\",\"status\":1,\"roleIdList\":[],\"createUserId\":14,\"createTime\":\"Jun 4, 2018 1:28:22 PM\"}', '164', '127.0.0.1', '2018-06-04 13:28:22');
INSERT INTO `sys_log` VALUES ('104', 'hong', '删除用户', 'com.yjcaifu.modules.sys.controller.SysUserController.delete()', '[16]', '44', '127.0.0.1', '2018-06-04 13:30:57');
INSERT INTO `sys_log` VALUES ('105', 'hong', '保存角色', 'com.yjcaifu.modules.sys.controller.SysRoleController.save()', '{\"roleId\":4,\"roleName\":\"1\",\"remark\":\"1\",\"createUserId\":14,\"menuIdList\":[68,58,59,60,61,62,63,64,65,66,67,-666666],\"createTime\":\"Jun 4, 2018 2:17:36 PM\"}', '100', '127.0.0.1', '2018-06-04 14:17:36');
INSERT INTO `sys_log` VALUES ('106', 'hong', '删除角色', 'com.yjcaifu.modules.sys.controller.SysRoleController.delete()', '[4]', '41', '127.0.0.1', '2018-06-04 14:17:47');
INSERT INTO `sys_log` VALUES ('107', '007', '删除菜单', 'com.yjcaifu.modules.sys.controller.SysMenuController.delete()', '141', '7', '0:0:0:0:0:0:0:1', '2018-06-04 14:19:39');
INSERT INTO `sys_log` VALUES ('108', '007', '删除菜单', 'com.yjcaifu.modules.sys.controller.SysMenuController.delete()', '142', '76', '0:0:0:0:0:0:0:1', '2018-06-04 14:19:45');
INSERT INTO `sys_log` VALUES ('109', '007', '删除菜单', 'com.yjcaifu.modules.sys.controller.SysMenuController.delete()', '143', '42', '0:0:0:0:0:0:0:1', '2018-06-04 14:19:55');
INSERT INTO `sys_log` VALUES ('110', '007', '删除菜单', 'com.yjcaifu.modules.sys.controller.SysMenuController.delete()', '144', '67', '0:0:0:0:0:0:0:1', '2018-06-04 14:20:03');
INSERT INTO `sys_log` VALUES ('111', '007', '删除菜单', 'com.yjcaifu.modules.sys.controller.SysMenuController.delete()', '145', '54', '0:0:0:0:0:0:0:1', '2018-06-04 14:20:10');
INSERT INTO `sys_log` VALUES ('112', '007', '删除菜单', 'com.yjcaifu.modules.sys.controller.SysMenuController.delete()', '141', '75', '0:0:0:0:0:0:0:1', '2018-06-04 14:20:18');
INSERT INTO `sys_log` VALUES ('113', '007', '修改菜单', 'com.yjcaifu.modules.sys.controller.SysMenuController.update()', '{\"menuId\":146,\"parentId\":0,\"name\":\"富文本 \",\"url\":\"modules/generator/richtexts.html\",\"type\":1,\"icon\":\"fa fa-file-code-o\",\"orderNum\":6}', '47', '0:0:0:0:0:0:0:1', '2018-06-04 14:20:51');
INSERT INTO `sys_log` VALUES ('114', '007', '修改菜单', 'com.yjcaifu.modules.sys.controller.SysMenuController.update()', '{\"menuId\":140,\"parentId\":30,\"name\":\"富文本\",\"url\":\"oss/oss\",\"type\":1,\"icon\":\"zhedie\",\"orderNum\":11}', '37', '0:0:0:0:0:0:0:1', '2018-06-04 14:23:53');
INSERT INTO `sys_log` VALUES ('115', '007', '删除菜单', 'com.yjcaifu.modules.sys.controller.SysMenuController.delete()', '140', '42', '0:0:0:0:0:0:0:1', '2018-06-04 14:24:27');
INSERT INTO `sys_log` VALUES ('116', 'hong', '保存用户', 'com.yjcaifu.modules.sys.controller.SysUserController.save()', '{\"userId\":17,\"username\":\"q\",\"password\":\"0df6fcadc538939019dc841c9025677a0e1634c21a4a9754dc15235404ee69ef\",\"salt\":\"jBTRw8Wa6XRdbRgFBtfs\",\"email\":\"q@163.com\",\"mobile\":\"15145645645\",\"status\":1,\"roleIdList\":[],\"createUserId\":14,\"createTime\":\"Jun 4, 2018 2:33:39 PM\"}', '36', '127.0.0.1', '2018-06-04 14:33:40');
INSERT INTO `sys_log` VALUES ('117', 'hong', '删除用户', 'com.yjcaifu.modules.sys.controller.SysUserController.delete()', '[17]', '79', '127.0.0.1', '2018-06-04 14:34:20');
INSERT INTO `sys_log` VALUES ('118', 'hong', '保存角色', 'com.yjcaifu.modules.sys.controller.SysRoleController.save()', '{\"roleId\":5,\"roleName\":\"1\",\"remark\":\"1\",\"createUserId\":14,\"menuIdList\":[68,58,59,60,61,62,63,64,65,66,67,-666666],\"createTime\":\"Jun 4, 2018 2:34:43 PM\"}', '62', '127.0.0.1', '2018-06-04 14:34:43');
INSERT INTO `sys_log` VALUES ('119', 'hong', '修改角色', 'com.yjcaifu.modules.sys.controller.SysRoleController.update()', '{\"roleId\":5,\"roleName\":\"11\",\"remark\":\"1\",\"createUserId\":14,\"menuIdList\":[68,58,59,60,61,62,63,64,65,66,67,-666666]}', '57', '127.0.0.1', '2018-06-04 14:34:55');
INSERT INTO `sys_log` VALUES ('120', 'hong', '删除角色', 'com.yjcaifu.modules.sys.controller.SysRoleController.delete()', '[5]', '51', '127.0.0.1', '2018-06-04 14:35:24');
INSERT INTO `sys_log` VALUES ('121', 'hong', '保存菜单', 'com.yjcaifu.modules.sys.controller.SysMenuController.save()', '{\"menuId\":151,\"parentId\":0,\"name\":\"1\",\"url\":\"\",\"perms\":\"\",\"type\":0,\"icon\":\"dangdifill\",\"orderNum\":12}', '54', '127.0.0.1', '2018-06-04 14:35:49');
INSERT INTO `sys_log` VALUES ('122', 'hong', '修改菜单', 'com.yjcaifu.modules.sys.controller.SysMenuController.update()', '{\"menuId\":151,\"parentId\":0,\"name\":\"1\",\"type\":0,\"icon\":\"dangdifill\",\"orderNum\":12}', '35', '127.0.0.1', '2018-06-04 14:35:59');
INSERT INTO `sys_log` VALUES ('123', 'hong', '删除菜单', 'com.yjcaifu.modules.sys.controller.SysMenuController.delete()', '151', '35', '127.0.0.1', '2018-06-04 14:36:04');
INSERT INTO `sys_log` VALUES ('124', 'hong', '保存配置', 'com.yjcaifu.modules.sys.controller.SysConfigController.save()', '{\"id\":2,\"key\":\"1\",\"value\":\"1\",\"remark\":\"1\"}', '42', '127.0.0.1', '2018-06-04 14:36:18');
INSERT INTO `sys_log` VALUES ('125', 'hong', '修改配置', 'com.yjcaifu.modules.sys.controller.SysConfigController.update()', '{\"id\":2,\"key\":\"11\",\"value\":\"1\",\"remark\":\"1\"}', '42', '127.0.0.1', '2018-06-04 14:36:23');
INSERT INTO `sys_log` VALUES ('126', 'hong', '删除配置', 'com.yjcaifu.modules.sys.controller.SysConfigController.delete()', '[2]', '25', '127.0.0.1', '2018-06-04 14:36:34');
INSERT INTO `sys_log` VALUES ('127', 'admin', '修改角色', 'com.yjcaifu.modules.sys.controller.SysRoleController.update()', '{\"roleId\":2,\"roleName\":\"超管\",\"remark\":\"超级管理员\",\"createUserId\":1,\"menuIdList\":[1,2,15,16,17,18,3,19,20,21,22,4,23,24,25,26,5,27,29,74,48,49,50,51,52,53,54,55,56,57,100,101,102,103,104,105,106,107,108,109,128,110,111,112,113,114,130,131,132,133,134,146,147,148,149,150,68,58,59,60,61,62,63,64,65,66,67,127,135,136,137,138,139,-666666,30]}', '160', '127.0.0.1', '2018-06-07 13:14:14');

-- ----------------------------
-- Table structure for sys_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_menu`;
CREATE TABLE `sys_menu` (
  `menu_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `parent_id` bigint(20) DEFAULT NULL COMMENT '父菜单ID，一级菜单为0',
  `name` varchar(50) DEFAULT NULL COMMENT '菜单名称',
  `url` varchar(200) DEFAULT NULL COMMENT '菜单URL',
  `perms` varchar(500) DEFAULT NULL COMMENT '授权(多个用逗号分隔，如：user:list,user:create)',
  `type` int(11) DEFAULT NULL COMMENT '类型   0：目录   1：菜单   2：按钮',
  `icon` varchar(50) DEFAULT NULL COMMENT '菜单图标',
  `order_num` int(11) DEFAULT NULL COMMENT '排序',
  PRIMARY KEY (`menu_id`)
) ENGINE=InnoDB AUTO_INCREMENT=151 DEFAULT CHARSET=utf8 COMMENT='菜单管理';

-- ----------------------------
-- Records of sys_menu
-- ----------------------------
INSERT INTO `sys_menu` VALUES ('1', '0', '系统管理', null, null, '0', 'fa fa-cog', '1000');
INSERT INTO `sys_menu` VALUES ('2', '1', '员工管理', 'modules/sys/user.html', null, '1', 'fa fa-user', '1');
INSERT INTO `sys_menu` VALUES ('3', '1', '角色管理', 'modules/sys/role.html', null, '1', 'fa fa-user-secret', '2');
INSERT INTO `sys_menu` VALUES ('4', '1', '菜单管理', 'modules/sys/menu.html', null, '1', 'fa fa-th-list', '3');
INSERT INTO `sys_menu` VALUES ('5', '1', 'SQL监控', 'druid/sql.html', null, '1', 'fa fa-bug', '4');
INSERT INTO `sys_menu` VALUES ('15', '2', '查看', null, 'sys:user:list,sys:user:info', '2', null, '0');
INSERT INTO `sys_menu` VALUES ('16', '2', '新增', null, 'sys:user:save,sys:role:select', '2', null, '0');
INSERT INTO `sys_menu` VALUES ('17', '2', '修改', null, 'sys:user:update,sys:role:select', '2', null, '0');
INSERT INTO `sys_menu` VALUES ('18', '2', '删除', null, 'sys:user:delete', '2', null, '0');
INSERT INTO `sys_menu` VALUES ('19', '3', '查看', null, 'sys:role:list,sys:role:info', '2', null, '0');
INSERT INTO `sys_menu` VALUES ('20', '3', '新增', null, 'sys:role:save,sys:menu:list', '2', null, '0');
INSERT INTO `sys_menu` VALUES ('21', '3', '修改', null, 'sys:role:update,sys:menu:list', '2', null, '0');
INSERT INTO `sys_menu` VALUES ('22', '3', '删除', null, 'sys:role:delete', '2', null, '0');
INSERT INTO `sys_menu` VALUES ('23', '4', '查看', null, 'sys:menu:list,sys:menu:info', '2', null, '0');
INSERT INTO `sys_menu` VALUES ('24', '4', '新增', null, 'sys:menu:save,sys:menu:select', '2', null, '0');
INSERT INTO `sys_menu` VALUES ('25', '4', '修改', null, 'sys:menu:update,sys:menu:select', '2', null, '0');
INSERT INTO `sys_menu` VALUES ('26', '4', '删除', null, 'sys:menu:delete', '2', null, '0');
INSERT INTO `sys_menu` VALUES ('27', '1', '参数管理', 'modules/sys/config.html', 'sys:config:list,sys:config:info,sys:config:save,sys:config:update,sys:config:delete', '1', 'fa fa-sun-o', '6');
INSERT INTO `sys_menu` VALUES ('29', '1', '系统日志', 'modules/sys/log.html', 'sys:log:list', '1', 'fa fa-file-text-o', '7');
INSERT INTO `sys_menu` VALUES ('30', '0', '风控管理', null, null, '0', null, '0');
INSERT INTO `sys_menu` VALUES ('48', '30', '企业信息', 'modules/generator/enterpriseinfo.html', '', '1', 'fa fa-file-code-o', '6');
INSERT INTO `sys_menu` VALUES ('49', '48', '查看', null, 'generator:enterpriseinfo:list,generator:enterpriseinfo:info', '2', null, '6');
INSERT INTO `sys_menu` VALUES ('50', '48', '新增', null, 'generator:enterpriseinfo:save', '2', null, '6');
INSERT INTO `sys_menu` VALUES ('51', '48', '修改', null, 'generator:enterpriseinfo:update', '2', null, '6');
INSERT INTO `sys_menu` VALUES ('52', '48', '删除', null, 'generator:enterpriseinfo:delete', '2', null, '6');
INSERT INTO `sys_menu` VALUES ('53', '30', '个人信息', 'modules/generator/personalinfo.html', '', '1', 'fa fa-file-code-o', '6');
INSERT INTO `sys_menu` VALUES ('54', '53', '查看', null, 'generator:personalinfo:list,generator:personalinfo:info', '2', null, '6');
INSERT INTO `sys_menu` VALUES ('55', '53', '新增', null, 'generator:personalinfo:save', '2', null, '6');
INSERT INTO `sys_menu` VALUES ('56', '53', '修改', null, 'generator:personalinfo:update', '2', null, '6');
INSERT INTO `sys_menu` VALUES ('57', '53', '删除', null, 'generator:personalinfo:delete', '2', null, '6');
INSERT INTO `sys_menu` VALUES ('58', '30', '借款信息', 'modules/generator/borrowinginformation.html', null, '1', 'fa fa-file-code-o', '6');
INSERT INTO `sys_menu` VALUES ('59', '58', '查看', null, 'generator:borrowinginformation:list,generator:borrowinginformation:info', '2', null, '6');
INSERT INTO `sys_menu` VALUES ('60', '58', '新增', null, 'generator:borrowinginformation:save', '2', null, '6');
INSERT INTO `sys_menu` VALUES ('61', '58', '修改', null, 'generator:borrowinginformation:update', '2', null, '6');
INSERT INTO `sys_menu` VALUES ('62', '58', '删除', null, 'generator:borrowinginformation:delete', '2', null, '6');
INSERT INTO `sys_menu` VALUES ('74', '1', '文件上传', 'oss/oss.html', 'sys:oss:all', '1', null, '6');
INSERT INTO `sys_menu` VALUES ('100', '30', '房产信息', 'modules/generator/cusestate.html', null, '1', 'fa fa-file-code-o', '6');
INSERT INTO `sys_menu` VALUES ('101', '100', '查看', null, 'generator:cusestate:list,generator:cusestate:info', '2', null, '6');
INSERT INTO `sys_menu` VALUES ('102', '100', '新增', null, 'generator:cusestate:save', '2', null, '6');
INSERT INTO `sys_menu` VALUES ('103', '100', '修改', null, 'generator:cusestate:update', '2', null, '6');
INSERT INTO `sys_menu` VALUES ('104', '100', '删除', null, 'generator:cusestate:delete', '2', null, '6');
INSERT INTO `sys_menu` VALUES ('105', '30', '汽车信息', 'modules/generator/cuscar.html', null, '1', 'fa fa-file-code-o', '6');
INSERT INTO `sys_menu` VALUES ('106', '105', '查看', null, 'generator:cuscar:list,generator:cuscar:info', '2', null, '6');
INSERT INTO `sys_menu` VALUES ('107', '105', '新增', null, 'generator:cuscar:save', '2', null, '6');
INSERT INTO `sys_menu` VALUES ('108', '105', '修改', null, 'generator:cuscar:update', '2', null, '6');
INSERT INTO `sys_menu` VALUES ('109', '105', '删除', null, 'generator:cuscar:delete', '2', null, '6');
INSERT INTO `sys_menu` VALUES ('110', '128', '个人征信', 'modules/generator/cuscreditinformation.html', null, '1', 'fa fa-file-code-o', '6');
INSERT INTO `sys_menu` VALUES ('111', '110', '查看', null, 'generator:cuscreditinformation:list,generator:cuscreditinformation:info', '2', null, '6');
INSERT INTO `sys_menu` VALUES ('112', '110', '新增', null, 'generator:cuscreditinformation:save', '2', null, '6');
INSERT INTO `sys_menu` VALUES ('113', '110', '修改', null, 'generator:cuscreditinformation:update', '2', null, '6');
INSERT INTO `sys_menu` VALUES ('114', '110', '删除', null, 'generator:cuscreditinformation:delete', '2', null, '6');
INSERT INTO `sys_menu` VALUES ('127', '0', '运营报表', 'modules/generator/rdborrowtender.html', null, '0', null, '0');
INSERT INTO `sys_menu` VALUES ('128', '30', '征信信息', null, null, '0', 'fa fa-file-code-o', '6');
INSERT INTO `sys_menu` VALUES ('130', '128', '企业征信', 'modules/generator/cusentcreditinformation.html', null, '1', 'fa fa-file-code-o', '6');
INSERT INTO `sys_menu` VALUES ('131', '130', '查看', null, 'generator:cusentcreditinformation:list,generator:cusentcreditinformation:info', '2', null, '6');
INSERT INTO `sys_menu` VALUES ('132', '130', '新增', null, 'generator:cusentcreditinformation:save', '2', null, '6');
INSERT INTO `sys_menu` VALUES ('133', '130', '修改', null, 'generator:cusentcreditinformation:update', '2', null, '6');
INSERT INTO `sys_menu` VALUES ('134', '130', '删除', null, 'generator:cusentcreditinformation:delete', '2', null, '6');
INSERT INTO `sys_menu` VALUES ('135', '0', '需求申请', 'modules/generator/applicationrequirements.html', null, '1', 'fa fa-file-code-o', '6');
INSERT INTO `sys_menu` VALUES ('136', '135', '查看', null, 'generator:applicationrequirements:list,generator:applicationrequirements:info', '2', null, '6');
INSERT INTO `sys_menu` VALUES ('137', '135', '新增', null, 'generator:applicationrequirements:save', '2', null, '6');
INSERT INTO `sys_menu` VALUES ('138', '135', '修改', null, 'generator:applicationrequirements:update', '2', null, '6');
INSERT INTO `sys_menu` VALUES ('139', '135', '删除', null, 'generator:applicationrequirements:delete', '2', null, '6');

-- ----------------------------
-- Table structure for sys_oss
-- ----------------------------
DROP TABLE IF EXISTS `sys_oss`;
CREATE TABLE `sys_oss` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `url` varchar(200) DEFAULT NULL COMMENT 'URLåœ°å€',
  `create_date` datetime DEFAULT NULL COMMENT 'åˆ›å»ºæ—¶é—´',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='æ–‡ä»¶ä¸Šä¼ ';

-- ----------------------------
-- Records of sys_oss
-- ----------------------------
INSERT INTO `sys_oss` VALUES ('2', 'http://yjfintechtest.oss-cn-hzfinance.aliyuncs.com/test/20180529/48ee9bb8eac84392af03d1033a3868c4.jpg', '2018-05-29 15:19:28');
INSERT INTO `sys_oss` VALUES ('3', 'http://yjfintechtest.oss-cn-hzfinance.aliyuncs.com/test/20180529/e257b924c65a416fb4e5ef0a7bd69518.jpg', '2018-05-29 15:19:39');
INSERT INTO `sys_oss` VALUES ('4', 'http://yjfintechtest.oss-cn-hzfinance.aliyuncs.com/test/20180529/a417b9b4285a4db999c802272dcc699e.doc', '2018-05-29 15:53:38');

-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role` (
  `role_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `role_name` varchar(100) DEFAULT NULL COMMENT 'è§’è‰²åç§°',
  `remark` varchar(100) DEFAULT NULL COMMENT 'å¤‡æ³¨',
  `create_user_id` bigint(20) DEFAULT NULL COMMENT 'åˆ›å»ºè€…ID',
  `create_time` datetime DEFAULT NULL COMMENT 'åˆ›å»ºæ—¶é—´',
  `dept_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='è§’è‰²';

-- ----------------------------
-- Records of sys_role
-- ----------------------------
INSERT INTO `sys_role` VALUES ('2', '超管', '超级管理员', '1', '2018-05-04 14:01:58', '1');

-- ----------------------------
-- Table structure for sys_role_dept
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_dept`;
CREATE TABLE `sys_role_dept` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `role_id` bigint(20) DEFAULT NULL COMMENT '角色ID',
  `dept_id` bigint(20) DEFAULT NULL COMMENT '部门ID',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='角色与部门对应关系';

-- ----------------------------
-- Records of sys_role_dept
-- ----------------------------
INSERT INTO `sys_role_dept` VALUES ('1', '1', '1');
INSERT INTO `sys_role_dept` VALUES ('2', '1', '2');
INSERT INTO `sys_role_dept` VALUES ('3', '1', '4');
INSERT INTO `sys_role_dept` VALUES ('4', '1', '6');
INSERT INTO `sys_role_dept` VALUES ('5', '1', '8');
INSERT INTO `sys_role_dept` VALUES ('6', '1', '3');
INSERT INTO `sys_role_dept` VALUES ('7', '1', '5');
INSERT INTO `sys_role_dept` VALUES ('8', '1', '7');

-- ----------------------------
-- Table structure for sys_role_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_menu`;
CREATE TABLE `sys_role_menu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `role_id` bigint(20) DEFAULT NULL COMMENT 'è§’è‰²ID',
  `menu_id` bigint(20) DEFAULT NULL COMMENT 'èœå•ID',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=275 DEFAULT CHARSET=utf8 COMMENT='è§’è‰²ä¸Žèœå•å¯¹åº”å…³ç³»';

-- ----------------------------
-- Records of sys_role_menu
-- ----------------------------
INSERT INTO `sys_role_menu` VALUES ('200', '2', '1');
INSERT INTO `sys_role_menu` VALUES ('201', '2', '2');
INSERT INTO `sys_role_menu` VALUES ('202', '2', '15');
INSERT INTO `sys_role_menu` VALUES ('203', '2', '16');
INSERT INTO `sys_role_menu` VALUES ('204', '2', '17');
INSERT INTO `sys_role_menu` VALUES ('205', '2', '18');
INSERT INTO `sys_role_menu` VALUES ('206', '2', '3');
INSERT INTO `sys_role_menu` VALUES ('207', '2', '19');
INSERT INTO `sys_role_menu` VALUES ('208', '2', '20');
INSERT INTO `sys_role_menu` VALUES ('209', '2', '21');
INSERT INTO `sys_role_menu` VALUES ('210', '2', '22');
INSERT INTO `sys_role_menu` VALUES ('211', '2', '4');
INSERT INTO `sys_role_menu` VALUES ('212', '2', '23');
INSERT INTO `sys_role_menu` VALUES ('213', '2', '24');
INSERT INTO `sys_role_menu` VALUES ('214', '2', '25');
INSERT INTO `sys_role_menu` VALUES ('215', '2', '26');
INSERT INTO `sys_role_menu` VALUES ('216', '2', '5');
INSERT INTO `sys_role_menu` VALUES ('217', '2', '27');
INSERT INTO `sys_role_menu` VALUES ('218', '2', '29');
INSERT INTO `sys_role_menu` VALUES ('219', '2', '74');
INSERT INTO `sys_role_menu` VALUES ('220', '2', '48');
INSERT INTO `sys_role_menu` VALUES ('221', '2', '49');
INSERT INTO `sys_role_menu` VALUES ('222', '2', '50');
INSERT INTO `sys_role_menu` VALUES ('223', '2', '51');
INSERT INTO `sys_role_menu` VALUES ('224', '2', '52');
INSERT INTO `sys_role_menu` VALUES ('225', '2', '53');
INSERT INTO `sys_role_menu` VALUES ('226', '2', '54');
INSERT INTO `sys_role_menu` VALUES ('227', '2', '55');
INSERT INTO `sys_role_menu` VALUES ('228', '2', '56');
INSERT INTO `sys_role_menu` VALUES ('229', '2', '57');
INSERT INTO `sys_role_menu` VALUES ('230', '2', '100');
INSERT INTO `sys_role_menu` VALUES ('231', '2', '101');
INSERT INTO `sys_role_menu` VALUES ('232', '2', '102');
INSERT INTO `sys_role_menu` VALUES ('233', '2', '103');
INSERT INTO `sys_role_menu` VALUES ('234', '2', '104');
INSERT INTO `sys_role_menu` VALUES ('235', '2', '105');
INSERT INTO `sys_role_menu` VALUES ('236', '2', '106');
INSERT INTO `sys_role_menu` VALUES ('237', '2', '107');
INSERT INTO `sys_role_menu` VALUES ('238', '2', '108');
INSERT INTO `sys_role_menu` VALUES ('239', '2', '109');
INSERT INTO `sys_role_menu` VALUES ('240', '2', '128');
INSERT INTO `sys_role_menu` VALUES ('241', '2', '110');
INSERT INTO `sys_role_menu` VALUES ('242', '2', '111');
INSERT INTO `sys_role_menu` VALUES ('243', '2', '112');
INSERT INTO `sys_role_menu` VALUES ('244', '2', '113');
INSERT INTO `sys_role_menu` VALUES ('245', '2', '114');
INSERT INTO `sys_role_menu` VALUES ('246', '2', '130');
INSERT INTO `sys_role_menu` VALUES ('247', '2', '131');
INSERT INTO `sys_role_menu` VALUES ('248', '2', '132');
INSERT INTO `sys_role_menu` VALUES ('249', '2', '133');
INSERT INTO `sys_role_menu` VALUES ('250', '2', '134');
INSERT INTO `sys_role_menu` VALUES ('251', '2', '146');
INSERT INTO `sys_role_menu` VALUES ('252', '2', '147');
INSERT INTO `sys_role_menu` VALUES ('253', '2', '148');
INSERT INTO `sys_role_menu` VALUES ('254', '2', '149');
INSERT INTO `sys_role_menu` VALUES ('255', '2', '150');
INSERT INTO `sys_role_menu` VALUES ('256', '2', '68');
INSERT INTO `sys_role_menu` VALUES ('257', '2', '58');
INSERT INTO `sys_role_menu` VALUES ('258', '2', '59');
INSERT INTO `sys_role_menu` VALUES ('259', '2', '60');
INSERT INTO `sys_role_menu` VALUES ('260', '2', '61');
INSERT INTO `sys_role_menu` VALUES ('261', '2', '62');
INSERT INTO `sys_role_menu` VALUES ('262', '2', '63');
INSERT INTO `sys_role_menu` VALUES ('263', '2', '64');
INSERT INTO `sys_role_menu` VALUES ('264', '2', '65');
INSERT INTO `sys_role_menu` VALUES ('265', '2', '66');
INSERT INTO `sys_role_menu` VALUES ('266', '2', '67');
INSERT INTO `sys_role_menu` VALUES ('267', '2', '127');
INSERT INTO `sys_role_menu` VALUES ('268', '2', '135');
INSERT INTO `sys_role_menu` VALUES ('269', '2', '136');
INSERT INTO `sys_role_menu` VALUES ('270', '2', '137');
INSERT INTO `sys_role_menu` VALUES ('271', '2', '138');
INSERT INTO `sys_role_menu` VALUES ('272', '2', '139');
INSERT INTO `sys_role_menu` VALUES ('273', '2', '-666666');
INSERT INTO `sys_role_menu` VALUES ('274', '2', '30');

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user` (
  `user_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL COMMENT 'ç”¨æˆ·å',
  `password` varchar(100) DEFAULT NULL COMMENT 'å¯†ç ',
  `salt` varchar(20) DEFAULT NULL COMMENT 'ç›',
  `email` varchar(100) DEFAULT NULL COMMENT 'é‚®ç®±',
  `mobile` varchar(100) DEFAULT NULL COMMENT 'æ‰‹æœºå·',
  `status` tinyint(4) DEFAULT NULL COMMENT 'çŠ¶æ€  0ï¼šç¦ç”¨   1ï¼šæ­£å¸¸',
  `create_user_id` bigint(20) DEFAULT NULL COMMENT 'åˆ›å»ºè€…ID',
  `create_time` datetime DEFAULT NULL COMMENT 'åˆ›å»ºæ—¶é—´',
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COMMENT='ç³»ç»Ÿç”¨æˆ·';

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES ('1', 'admin', '9ec9750e709431dad22365cabc5c625482e574c74adaebba7dd02f1129e4ce1d', 'YzcmCZNvbXocrsz9dm8e', 'root@yjcaifu.com', '13088878787', '1', '1', '2017-11-11 11:11:11');
INSERT INTO `sys_user` VALUES ('2', '张霆', '9ec9750e709431dad22365cabc5c625482e574c74adaebba7dd02f1129e4ce1d', 'XzcmBAZvbXocrsz9dm8e', '123@163.com', '13088888888', '1', '1', '2018-05-21 13:35:14');
INSERT INTO `sys_user` VALUES ('3', '李先飞', '9ec9750e709431dad22365cabc5c625482e574c74adaebba7dd02f1129e4ce1d', 'LzcmLXFvbXocrsz9dm8e', '456@163.com', '18788888888', '1', '1', '2018-05-21 13:36:22');
INSERT INTO `sys_user` VALUES ('4', '李镇来', '9ec9750e709431dad22365cabc5c625482e574c74adaebba7dd02f1129e4ce1d', 'LzcmLZLvbXocrsz9dm8e', '789@163.com', '15888888888', '1', '1', '2018-05-21 13:37:23');
INSERT INTO `sys_user` VALUES ('5', 'qqqq', '9ec9750e709431dad22365cabc5c625482e574c74adaebba7dd02f1129e4ce1d', 'YzcmCZNvbXocrsz9dm8e', '102356@qq.com', '15851998675', '1', '1', '2018-05-21 15:18:13');
INSERT INTO `sys_user` VALUES ('6', '顾幼欣', '9ec9750e709431dad22365cabc5c625482e574c74adaebba7dd02f1129e4ce1d', 'uLRKzgTUN9OheDGpqFV6', '12356@qq.com', '13030598598', '1', '1', '2018-05-21 15:18:46');
INSERT INTO `sys_user` VALUES ('12', 'qwe', 'ec7de5c58723e5ed9c5b68d421396c8a9faf6cced4a5a618bb4b1349b2deada5', 'E5o9RaXfNj3fjAHSO2rJ', '123@123.com', '15851998611', '1', '1', '2018-05-28 15:41:00');
INSERT INTO `sys_user` VALUES ('13', '顾欣欣', '3b28fd7d89b1e47b5fb81aa9f7c95698a0316387b2d7502521abed6a7e92dc92', 'hpZnpEgKifdGfGM2RUAi', '123@163.com', '15851998888', '1', '1', '2018-06-01 09:24:24');
INSERT INTO `sys_user` VALUES ('14', 'hong', '24422f3cd7aac123a1495fddca11d39f583ab8695632a82683e5564ae91d126b', 'v8d8ZUDaRAa5LeM7ezwp', 'hong@163.com', '15106195972', '1', '1', '2018-06-01 09:26:50');
INSERT INTO `sys_user` VALUES ('15', '007', '98659da2cfd339996b3a09c10fe9d422cc88b7343b279cb5ee536477a303e4df', '3xVl0L9wCj92Q7Rx1Vpz', '12345@163.com', '13838389438', '1', '1', '2018-06-04 09:22:02');

-- ----------------------------
-- Table structure for sys_user_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_role`;
CREATE TABLE `sys_user_role` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) DEFAULT NULL COMMENT 'ç”¨æˆ·ID',
  `role_id` bigint(20) DEFAULT NULL COMMENT 'è§’è‰²ID',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COMMENT='ç”¨æˆ·ä¸Žè§’è‰²å¯¹åº”å…³ç³»';

-- ----------------------------
-- Records of sys_user_role
-- ----------------------------
INSERT INTO `sys_user_role` VALUES ('3', '6', '2');
INSERT INTO `sys_user_role` VALUES ('4', '1', '2');
INSERT INTO `sys_user_role` VALUES ('5', '7', '2');
INSERT INTO `sys_user_role` VALUES ('7', '12', '2');
INSERT INTO `sys_user_role` VALUES ('8', '5', '2');
INSERT INTO `sys_user_role` VALUES ('9', '13', '2');
INSERT INTO `sys_user_role` VALUES ('10', '14', '2');
INSERT INTO `sys_user_role` VALUES ('11', '15', '2');

-- ----------------------------
-- Table structure for sys_user_token
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_token`;
CREATE TABLE `sys_user_token` (
  `user_id` bigint(20) NOT NULL,
  `token` varchar(100) NOT NULL COMMENT 'token',
  `expire_time` datetime DEFAULT NULL COMMENT 'è¿‡æœŸæ—¶é—´',
  `update_time` datetime DEFAULT NULL COMMENT 'æ›´æ–°æ—¶é—´',
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `token` (`token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='ç³»ç»Ÿç”¨æˆ·Token';

-- ----------------------------
-- Records of sys_user_token
-- ----------------------------
INSERT INTO `sys_user_token` VALUES ('1', '5aba5ac4f5a736e1f60285d3cbf49f2e', '2018-06-08 04:40:23', '2018-06-07 16:40:23');
INSERT INTO `sys_user_token` VALUES ('5', '1c6c234eb1052db916df2480ed251671', '2018-06-01 22:26:12', '2018-06-01 10:26:12');
INSERT INTO `sys_user_token` VALUES ('7', 'ec0e8095252fd1162ec6bc5eeb8fc826', '2018-05-29 01:57:10', '2018-05-28 13:57:10');
INSERT INTO `sys_user_token` VALUES ('12', '2dd87809112fa7685c6a89928520b22f', '2018-06-07 21:05:43', '2018-06-07 09:05:43');
INSERT INTO `sys_user_token` VALUES ('13', '1782c56cbcef03195b45972dccfb75bc', '2018-06-08 02:54:32', '2018-06-07 14:54:32');
INSERT INTO `sys_user_token` VALUES ('14', '41dff0babf492509971a0e2415e8d02d', '2018-06-02 02:35:12', '2018-06-01 14:35:12');
INSERT INTO `sys_user_token` VALUES ('15', '005d1932c7a5a2d07b966fe9b3668640', '2018-06-05 02:15:47', '2018-06-04 14:15:47');

-- ----------------------------
-- Table structure for tb_user
-- ----------------------------
DROP TABLE IF EXISTS `tb_user`;
CREATE TABLE `tb_user` (
  `user_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL COMMENT 'ç”¨æˆ·å',
  `mobile` varchar(20) NOT NULL COMMENT 'æ‰‹æœºå·',
  `password` varchar(64) DEFAULT NULL COMMENT 'å¯†ç ',
  `create_time` datetime DEFAULT NULL COMMENT 'åˆ›å»ºæ—¶é—´',
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='ç”¨æˆ·';

-- ----------------------------
-- Records of tb_user
-- ----------------------------
INSERT INTO `tb_user` VALUES ('1', 'mark', '13612345678', '8c6976e5b5410415bde908bd4dee15dfb167a9c873fc4bb8a81f6f2ab448a918', '2017-03-23 22:37:41');
