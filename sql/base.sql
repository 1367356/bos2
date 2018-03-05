-- T_ARCHIVE 表
DROP TABLE IF EXISTS T_ARCHIVE;

CREATE TABLE `T_ARCHIVE`(
    C_ID int not null,
    C_ARCHIVE_NUM varchar(30) not null comment '档案编号',
    C_ARCHIVE_NAME varchar(20) not null comment '档案名称',
    C_REMARK varchar(20) not null comment '备注',
    C_HASCHILD int not null comment '是否分级 0代表不分级 1代表分级',
    C_OPERATING_TIME date not null comment '操作时间',
    C_OPERATOR varchar(20) not null comment '操作员',
    C_OPERATING_COMPANY varchar(20) not null comment '操作单位'
    )ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
INSERT INTO T_ARCHIVE VALUES (1,'123456', '123456', '备注',0,'2018-11-02', '操作员','操作单位');

-- T_AREA 表
DROP TABLE IF EXISTS T_AREA;

CREATE TABLE T_AREA(
    C_ID int not null,
    C_PROVINCE varchar(30) not null comment '省',
    C_CITY varchar(20) not null comment '城市',
    C_DISTRICT varchar(20) not null comment '区域',
    C_POSTCODE varchar(20) not null comment '邮编',
    C_CITYCODE varchar(20) not null comment '城市编码',
    C_SHORTCODE varchar(20) not null comment '简码'
    )ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
INSERT INTO T_AREA VALUES (1,'省', '城市', '区域','邮编', '城市编码','简码');

-- T_COURIER 表
DROP TABLE IF EXISTS T_COURIER;
CREATE TABLE T_COURIER(
    C_ID int not null,
    C_COURIER_NUM varchar(30) not null comment '快递员工号',
    C_NAME varchar(20) not null comment '快递员姓名',
    C_TELEPHONE varchar(20) not null comment '快递员联系电话',
    C_PDA varchar(20) not null comment 'PDA号',
    C_DELTAG varchar(20) not null comment '作废标志 1 为标记作废',
    C_CHECK_PWD varchar(20) not null comment '查台密码',
    C_TYPE varchar(20) not null comment '取件员类型',
    C_COMPANY varchar(20) not null comment '单位',
    C_VEHICLE_TYPE varchar(20) not null comment '车辆类型',
    C_VEHICLE_NUM varchar(20) not null comment '车牌号'
    )ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
INSERT INTO T_COURIER VALUES (1,'快递员工号', '快递员姓名', '快递员联系电话','PDA号', '作废标志 1 为标记作废','查台密码','取件员类型','单位','车辆类型','车牌号');
