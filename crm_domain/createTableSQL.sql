DROP TABLE IF EXISTS 'T_CUSTOMER';
CREATE TABLE `T_CUSTOMER`(
'C_ID' int not null,
'C_USERNAME' varchar(30) not null comment '用户名',
'C_PASSWORD' varchar(20) not null comment '密码',
'C_TYPE' tinyint not null comment '类型 设置1 绑定邮箱',
'C_BRITHDAY' date not null comment '生日',
'C_SEX' tinyint not null comment '性别 1男 2女',
'C_TELEPHONE' varchar(20) not null comment '手机',
'C_COMPANY' varchar(20) not null comment '公司',
'C_DEPARTMENT' varchar(20) not null comment '部门',
'C_POSITION' varchar(20) not null comment '职位',
'C_ADDRESS' varchar(20) not null comment '地址',
'C_MOBILEPHONE' varchar(20) not null comment '座机',
'C_EMAIL' varchar(30) not null comment '邮箱',
'C_Fixed_AREA_ID' varchar(30) not null comment '定区编码'
)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
INSERT INTO `T_CUSTOMER` VALUES (1,'li', '123', '1', '2018-11-02', '1','15528129888','uestc','ee','stu','sichuang','0371-2222222','122@gmail.com','644533');