-- ----------------------------
-- Table structure for tb_settle_wallet
-- ----------------------------
DROP TABLE IF EXISTS `tb_settle_wallet`;
CREATE TABLE `tb_settle_wallet` (
  `user_info_id` bigint(20) NOT NULL,
  `settle_type` tinyint(3) DEFAULT '0' COMMENT '结算方式(0:自动结算 1:申请结算)',
  `settle_period` tinyint(3) DEFAULT '1' COMMENT '结算周期(0:周 1:月)',
  `bank_card` varchar(50) CHARACTER SET utf8 NOT NULL COMMENT '银行卡号',
  `holder_name` varchar(20) CHARACTER SET utf8 NOT NULL COMMENT '银行卡户主名',
  `bank_name` varchar(100) CHARACTER SET utf8 NOT NULL COMMENT '开户行',
  `sub_bank_name` varchar(100) CHARACTER SET utf8 NOT NULL COMMENT '开户支行',
  `bank_address` varchar(20) CHARACTER SET utf8 NOT NULL COMMENT '开户银行所在地',
  PRIMARY KEY (`user_info_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of tb_settle_wallet
-- ----------------------------
INSERT INTO `tb_settle_wallet` VALUES ('1709141612361','银行卡号', '银行卡户主名', '开户行', '开户支行', '开户银行所在地');

-- ----------------------------
-- Table structure for tb_settle_inf
-- ----------------------------
DROP TABLE IF EXISTS `tb_settle_inf`;
CREATE TABLE `tb_settle_inf` (
  `settle_inf_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_info_id` varchar(32) DEFAULT NULL COMMENT '被支付人账户编号',
  `real_name` varchar(32) DEFAULT NULL COMMENT '被支付人账户名称',
  `serial_no` varchar(32) DEFAULT NULL COMMENT '交易流水号',
  `pay_period` varchar(22) DEFAULT NULL COMMENT '账期',
  `status` tinyint(3) DEFAULT '0' COMMENT '单状态(0:待结算 1:已结算)',
  `type` tinyint(3) DEFAULT '0' COMMENT '收支类型(0:汇入 1:提现)',
  `pay_type` tinyint(3) DEFAULT '0' COMMENT '支付类型(0:刷卡 1:微信 2:支付宝 3:账单 4:现金支付 5:支票 6:其他)',
  `pay_amount` decimal(18,2) DEFAULT NULL COMMENT '支付金额',
  `remark` varchar(1000) DEFAULT NULL,
  `create_date` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`settle_inf_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COMMENT=' 结算信息表';


INSERT INTO `tb_settle_inf` VALUES ('1','1709141612361','被支付人账户名称', '交易流水号', '2018-10-7', '0', '0','0','100.1', 'remark', '2017-08-12 07:
