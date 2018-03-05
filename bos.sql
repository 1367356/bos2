-- crm_domain
DROP TABLE IF EXISTS 'T_CUSTOMER';
CREATE TABLE `T_CUSTOMER`(
    C_ID int not null,
    C_USERNAME varchar(30) not null comment '用户名',
    C_PASSWORD varchar(20) not null comment '密码',
    C_TYPE tinyint not null comment '类型 设置1 绑定邮箱',
    C_BRITHDAY date not null comment '生日',
    C_SEX tinyint not null comment '性别 1男 2女',
    C_TELEPHONE varchar(20) not null comment '手机',
    C_COMPANY varchar(20) not null comment '公司',
    C_DEPARTMENT varchar(20) not null comment '部门',
    C_POSITION varchar(20) not null comment '职位',
    C_ADDRESS varchar(20) not null comment '地址',
    C_MOBILEPHONE varchar(20) not null comment '座机',
    C_EMAIL varchar(30) not null comment '邮箱',
    C_Fixed_AREA_ID varchar(30) not null comment '定区编码'
)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
INSERT INTO `T_CUSTOMER` VALUES (1,'123456', '123456', '1', '2018-11-02', '1','18888888888','uestc','ee','stu','sichuang','0371-2222222','122@gmail.com','644533');

-- bos_domain> system '------------------------------------'
-- T_USER表
DROP TABLE IF EXISTS 'T_USER';
CREATE TABLE `T_USER`(
    C_ID int primary key not null comment '主鍵id',
    C_BIRTHDAY date not null comment '出生日期',
    C_GENDER varchar(10) not null comment '性別',
    C_PASSWORD varchar(20) not null comment '密碼',
    C_REMARK varchar(50) not null comment'被注',
    C_STATION varchar(20) not null,
    C_TELEPHONE varchar(11) not null comment '電話',
    C_USERNAME varchar(20) not null comment '用戶名',
    C_NICKNAME varchar(20) not null comment '姓名'
)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
insert into 'T_USER' values (2,'2018-03-02','male','123456','student','in','18888888888','123456','li');

-- T_ROLE表
