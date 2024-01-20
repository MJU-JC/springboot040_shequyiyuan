/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - springbootf5kdg
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`springbootf5kdg` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `springbootf5kdg`;

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'picture1','http://localhost:8080/springbootf5kdg/upload/picture1.jpg');
insert  into `config`(`id`,`name`,`value`) values (2,'picture2','http://localhost:8080/springbootf5kdg/upload/picture2.jpg');
insert  into `config`(`id`,`name`,`value`) values (3,'picture3','http://localhost:8080/springbootf5kdg/upload/picture3.jpg');
insert  into `config`(`id`,`name`,`value`) values (6,'homepage',NULL);

/*Table structure for table `daijianchaliebiao` */

DROP TABLE IF EXISTS `daijianchaliebiao`;

CREATE TABLE `daijianchaliebiao` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `huanzhezhanghao` varchar(200) DEFAULT NULL COMMENT '患者账号',
  `huanzhexingming` varchar(200) DEFAULT NULL COMMENT '患者姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `nianling` int(11) DEFAULT NULL COMMENT '年龄',
  `zhaopian` varchar(200) DEFAULT NULL COMMENT '照片',
  `jianchaxiangmu` longtext COMMENT '检查项目',
  `jianchaleixing` varchar(200) DEFAULT NULL COMMENT '检查类型',
  `userid` bigint(20) DEFAULT NULL COMMENT '用户id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1619579559846 DEFAULT CHARSET=utf8 COMMENT='待检查列表';

/*Data for the table `daijianchaliebiao` */

insert  into `daijianchaliebiao`(`id`,`addtime`,`huanzhezhanghao`,`huanzhexingming`,`xingbie`,`nianling`,`zhaopian`,`jianchaxiangmu`,`jianchaleixing`,`userid`) values (51,'2021-04-28 11:06:15','患者账号1','患者姓名1','性别1',1,'http://localhost:8080/springbootf5kdg/upload/daijianchaliebiao_zhaopian1.jpg','检查项目1','检查类型1',1);
insert  into `daijianchaliebiao`(`id`,`addtime`,`huanzhezhanghao`,`huanzhexingming`,`xingbie`,`nianling`,`zhaopian`,`jianchaxiangmu`,`jianchaleixing`,`userid`) values (52,'2021-04-28 11:06:15','患者账号2','患者姓名2','性别2',2,'http://localhost:8080/springbootf5kdg/upload/daijianchaliebiao_zhaopian2.jpg','检查项目2','检查类型2',2);
insert  into `daijianchaliebiao`(`id`,`addtime`,`huanzhezhanghao`,`huanzhexingming`,`xingbie`,`nianling`,`zhaopian`,`jianchaxiangmu`,`jianchaleixing`,`userid`) values (53,'2021-04-28 11:06:15','患者账号3','患者姓名3','性别3',3,'http://localhost:8080/springbootf5kdg/upload/daijianchaliebiao_zhaopian3.jpg','检查项目3','检查类型3',3);
insert  into `daijianchaliebiao`(`id`,`addtime`,`huanzhezhanghao`,`huanzhexingming`,`xingbie`,`nianling`,`zhaopian`,`jianchaxiangmu`,`jianchaleixing`,`userid`) values (54,'2021-04-28 11:06:15','患者账号4','患者姓名4','性别4',4,'http://localhost:8080/springbootf5kdg/upload/daijianchaliebiao_zhaopian4.jpg','检查项目4','检查类型4',4);
insert  into `daijianchaliebiao`(`id`,`addtime`,`huanzhezhanghao`,`huanzhexingming`,`xingbie`,`nianling`,`zhaopian`,`jianchaxiangmu`,`jianchaleixing`,`userid`) values (55,'2021-04-28 11:06:15','患者账号5','患者姓名5','性别5',5,'http://localhost:8080/springbootf5kdg/upload/daijianchaliebiao_zhaopian5.jpg','检查项目5','检查类型5',5);
insert  into `daijianchaliebiao`(`id`,`addtime`,`huanzhezhanghao`,`huanzhexingming`,`xingbie`,`nianling`,`zhaopian`,`jianchaxiangmu`,`jianchaleixing`,`userid`) values (56,'2021-04-28 11:06:15','患者账号6','患者姓名6','性别6',6,'http://localhost:8080/springbootf5kdg/upload/daijianchaliebiao_zhaopian6.jpg','检查项目6','检查类型6',6);
insert  into `daijianchaliebiao`(`id`,`addtime`,`huanzhezhanghao`,`huanzhexingming`,`xingbie`,`nianling`,`zhaopian`,`jianchaxiangmu`,`jianchaleixing`,`userid`) values (1619579559845,'2021-04-28 11:12:39','患者1','患者姓名1','男',1,'http://localhost:8080/springbootf5kdg/upload/huanzhe_zhaopian1.jpg','123123123\n123123123','内科',NULL);

/*Table structure for table `huanzhe` */

DROP TABLE IF EXISTS `huanzhe`;

CREATE TABLE `huanzhe` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `huanzhezhanghao` varchar(200) NOT NULL COMMENT '患者账号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `huanzhexingming` varchar(200) DEFAULT NULL COMMENT '患者姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `nianling` int(11) DEFAULT NULL COMMENT '年龄',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `shenfenzheng` varchar(200) DEFAULT NULL COMMENT '身份证',
  `zhaopian` varchar(200) DEFAULT NULL COMMENT '照片',
  PRIMARY KEY (`id`),
  UNIQUE KEY `huanzhezhanghao` (`huanzhezhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='患者';

/*Data for the table `huanzhe` */

insert  into `huanzhe`(`id`,`addtime`,`huanzhezhanghao`,`mima`,`huanzhexingming`,`xingbie`,`nianling`,`shouji`,`youxiang`,`shenfenzheng`,`zhaopian`) values (11,'2021-04-28 11:06:15','患者1','123456','患者姓名1','男',1,'13823888881','773890001@qq.com','440300199101010001','http://localhost:8080/springbootf5kdg/upload/huanzhe_zhaopian1.jpg');
insert  into `huanzhe`(`id`,`addtime`,`huanzhezhanghao`,`mima`,`huanzhexingming`,`xingbie`,`nianling`,`shouji`,`youxiang`,`shenfenzheng`,`zhaopian`) values (12,'2021-04-28 11:06:15','患者2','123456','患者姓名2','男',2,'13823888882','773890002@qq.com','440300199202020002','http://localhost:8080/springbootf5kdg/upload/huanzhe_zhaopian2.jpg');
insert  into `huanzhe`(`id`,`addtime`,`huanzhezhanghao`,`mima`,`huanzhexingming`,`xingbie`,`nianling`,`shouji`,`youxiang`,`shenfenzheng`,`zhaopian`) values (13,'2021-04-28 11:06:15','患者3','123456','患者姓名3','男',3,'13823888883','773890003@qq.com','440300199303030003','http://localhost:8080/springbootf5kdg/upload/huanzhe_zhaopian3.jpg');
insert  into `huanzhe`(`id`,`addtime`,`huanzhezhanghao`,`mima`,`huanzhexingming`,`xingbie`,`nianling`,`shouji`,`youxiang`,`shenfenzheng`,`zhaopian`) values (14,'2021-04-28 11:06:15','患者4','123456','患者姓名4','男',4,'13823888884','773890004@qq.com','440300199404040004','http://localhost:8080/springbootf5kdg/upload/huanzhe_zhaopian4.jpg');
insert  into `huanzhe`(`id`,`addtime`,`huanzhezhanghao`,`mima`,`huanzhexingming`,`xingbie`,`nianling`,`shouji`,`youxiang`,`shenfenzheng`,`zhaopian`) values (15,'2021-04-28 11:06:15','患者5','123456','患者姓名5','男',5,'13823888885','773890005@qq.com','440300199505050005','http://localhost:8080/springbootf5kdg/upload/huanzhe_zhaopian5.jpg');
insert  into `huanzhe`(`id`,`addtime`,`huanzhezhanghao`,`mima`,`huanzhexingming`,`xingbie`,`nianling`,`shouji`,`youxiang`,`shenfenzheng`,`zhaopian`) values (16,'2021-04-28 11:06:15','患者6','123456','患者姓名6','男',6,'13823888886','773890006@qq.com','440300199606060006','http://localhost:8080/springbootf5kdg/upload/huanzhe_zhaopian6.jpg');

/*Table structure for table `hushi` */

DROP TABLE IF EXISTS `hushi`;

CREATE TABLE `hushi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `hushigonghao` varchar(200) NOT NULL COMMENT '护士工号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `hushixingming` varchar(200) DEFAULT NULL COMMENT '护士姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `shenfenzheng` varchar(200) DEFAULT NULL COMMENT '身份证',
  `zhaopian` varchar(200) DEFAULT NULL COMMENT '照片',
  PRIMARY KEY (`id`),
  UNIQUE KEY `hushigonghao` (`hushigonghao`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COMMENT='护士';

/*Data for the table `hushi` */

insert  into `hushi`(`id`,`addtime`,`hushigonghao`,`mima`,`hushixingming`,`xingbie`,`shouji`,`youxiang`,`shenfenzheng`,`zhaopian`) values (21,'2021-04-28 11:06:15','护士1','123456','护士姓名1','男','13823888881','773890001@qq.com','440300199101010001','http://localhost:8080/springbootf5kdg/upload/hushi_zhaopian1.jpg');
insert  into `hushi`(`id`,`addtime`,`hushigonghao`,`mima`,`hushixingming`,`xingbie`,`shouji`,`youxiang`,`shenfenzheng`,`zhaopian`) values (22,'2021-04-28 11:06:15','护士2','123456','护士姓名2','男','13823888882','773890002@qq.com','440300199202020002','http://localhost:8080/springbootf5kdg/upload/hushi_zhaopian2.jpg');
insert  into `hushi`(`id`,`addtime`,`hushigonghao`,`mima`,`hushixingming`,`xingbie`,`shouji`,`youxiang`,`shenfenzheng`,`zhaopian`) values (23,'2021-04-28 11:06:15','护士3','123456','护士姓名3','男','13823888883','773890003@qq.com','440300199303030003','http://localhost:8080/springbootf5kdg/upload/hushi_zhaopian3.jpg');
insert  into `hushi`(`id`,`addtime`,`hushigonghao`,`mima`,`hushixingming`,`xingbie`,`shouji`,`youxiang`,`shenfenzheng`,`zhaopian`) values (24,'2021-04-28 11:06:15','护士4','123456','护士姓名4','男','13823888884','773890004@qq.com','440300199404040004','http://localhost:8080/springbootf5kdg/upload/hushi_zhaopian4.jpg');
insert  into `hushi`(`id`,`addtime`,`hushigonghao`,`mima`,`hushixingming`,`xingbie`,`shouji`,`youxiang`,`shenfenzheng`,`zhaopian`) values (25,'2021-04-28 11:06:15','护士5','123456','护士姓名5','男','13823888885','773890005@qq.com','440300199505050005','http://localhost:8080/springbootf5kdg/upload/hushi_zhaopian5.jpg');
insert  into `hushi`(`id`,`addtime`,`hushigonghao`,`mima`,`hushixingming`,`xingbie`,`shouji`,`youxiang`,`shenfenzheng`,`zhaopian`) values (26,'2021-04-28 11:06:15','护士6','123456','护士姓名6','男','13823888886','773890006@qq.com','440300199606060006','http://localhost:8080/springbootf5kdg/upload/hushi_zhaopian6.jpg');

/*Table structure for table `jianchajieguo` */

DROP TABLE IF EXISTS `jianchajieguo`;

CREATE TABLE `jianchajieguo` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `huanzhezhanghao` varchar(200) DEFAULT NULL COMMENT '患者账号',
  `huanzhexingming` varchar(200) DEFAULT NULL COMMENT '患者姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `nianling` int(11) DEFAULT NULL COMMENT '年龄',
  `jianchashijian` datetime DEFAULT NULL COMMENT '检查时间',
  `jianchaxiangmu` varchar(200) DEFAULT NULL COMMENT '检查项目',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `jianchajieguo` longtext COMMENT '检查结果',
  `userid` bigint(20) DEFAULT NULL COMMENT '用户id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1619579587069 DEFAULT CHARSET=utf8 COMMENT='检查结果';

/*Data for the table `jianchajieguo` */

insert  into `jianchajieguo`(`id`,`addtime`,`huanzhezhanghao`,`huanzhexingming`,`xingbie`,`nianling`,`jianchashijian`,`jianchaxiangmu`,`tupian`,`jianchajieguo`,`userid`) values (61,'2021-04-28 11:06:15','患者账号1','患者姓名1','性别1',1,'2021-04-28 11:06:15','检查项目1','http://localhost:8080/springbootf5kdg/upload/jianchajieguo_tupian1.jpg','检查结果1',1);
insert  into `jianchajieguo`(`id`,`addtime`,`huanzhezhanghao`,`huanzhexingming`,`xingbie`,`nianling`,`jianchashijian`,`jianchaxiangmu`,`tupian`,`jianchajieguo`,`userid`) values (62,'2021-04-28 11:06:15','患者账号2','患者姓名2','性别2',2,'2021-04-28 11:06:15','检查项目2','http://localhost:8080/springbootf5kdg/upload/jianchajieguo_tupian2.jpg','检查结果2',2);
insert  into `jianchajieguo`(`id`,`addtime`,`huanzhezhanghao`,`huanzhexingming`,`xingbie`,`nianling`,`jianchashijian`,`jianchaxiangmu`,`tupian`,`jianchajieguo`,`userid`) values (63,'2021-04-28 11:06:15','患者账号3','患者姓名3','性别3',3,'2021-04-28 11:06:15','检查项目3','http://localhost:8080/springbootf5kdg/upload/jianchajieguo_tupian3.jpg','检查结果3',3);
insert  into `jianchajieguo`(`id`,`addtime`,`huanzhezhanghao`,`huanzhexingming`,`xingbie`,`nianling`,`jianchashijian`,`jianchaxiangmu`,`tupian`,`jianchajieguo`,`userid`) values (64,'2021-04-28 11:06:15','患者账号4','患者姓名4','性别4',4,'2021-04-28 11:06:15','检查项目4','http://localhost:8080/springbootf5kdg/upload/jianchajieguo_tupian4.jpg','检查结果4',4);
insert  into `jianchajieguo`(`id`,`addtime`,`huanzhezhanghao`,`huanzhexingming`,`xingbie`,`nianling`,`jianchashijian`,`jianchaxiangmu`,`tupian`,`jianchajieguo`,`userid`) values (65,'2021-04-28 11:06:15','患者账号5','患者姓名5','性别5',5,'2021-04-28 11:06:15','检查项目5','http://localhost:8080/springbootf5kdg/upload/jianchajieguo_tupian5.jpg','检查结果5',5);
insert  into `jianchajieguo`(`id`,`addtime`,`huanzhezhanghao`,`huanzhexingming`,`xingbie`,`nianling`,`jianchashijian`,`jianchaxiangmu`,`tupian`,`jianchajieguo`,`userid`) values (66,'2021-04-28 11:06:15','患者账号6','患者姓名6','性别6',6,'2021-04-28 11:06:15','检查项目6','http://localhost:8080/springbootf5kdg/upload/jianchajieguo_tupian6.jpg','检查结果6',6);
insert  into `jianchajieguo`(`id`,`addtime`,`huanzhezhanghao`,`huanzhexingming`,`xingbie`,`nianling`,`jianchashijian`,`jianchaxiangmu`,`tupian`,`jianchajieguo`,`userid`) values (1619579587068,'2021-04-28 11:13:06','患者1','患者姓名1','男',1,'2021-04-28 11:12:50','123123123\n123123123','http://localhost:8080/springbootf5kdg/upload/1619579575373.jpg','<p>检查无异常</p><p>检查无异常</p><p>检查无异常检查无异常</p><p>检查无异常</p>',NULL);

/*Table structure for table `quyaoliebiao` */

DROP TABLE IF EXISTS `quyaoliebiao`;

CREATE TABLE `quyaoliebiao` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `huanzhezhanghao` varchar(200) DEFAULT NULL COMMENT '患者账号',
  `huanzhexingming` varchar(200) DEFAULT NULL COMMENT '患者姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `nianling` int(11) DEFAULT NULL COMMENT '年龄',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `zhenduanjieguo` varchar(200) DEFAULT NULL COMMENT '诊断结果',
  `kaiyaoliebiao` varchar(200) DEFAULT NULL COMMENT '开药列表',
  `quyaochuangkou` varchar(200) DEFAULT NULL COMMENT '取药窗口',
  `quyaozhuangtai` varchar(200) DEFAULT NULL COMMENT '取药状态',
  `userid` bigint(20) DEFAULT NULL COMMENT '用户id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1619579666950 DEFAULT CHARSET=utf8 COMMENT='取药列表';

/*Data for the table `quyaoliebiao` */

insert  into `quyaoliebiao`(`id`,`addtime`,`huanzhezhanghao`,`huanzhexingming`,`xingbie`,`nianling`,`tupian`,`zhenduanjieguo`,`kaiyaoliebiao`,`quyaochuangkou`,`quyaozhuangtai`,`userid`) values (121,'2021-04-28 11:06:15','患者账号1','患者姓名1','性别1',1,'http://localhost:8080/springbootf5kdg/upload/quyaoliebiao_tupian1.jpg','诊断结果1','开药列表1','一号窗口','未取药',1);
insert  into `quyaoliebiao`(`id`,`addtime`,`huanzhezhanghao`,`huanzhexingming`,`xingbie`,`nianling`,`tupian`,`zhenduanjieguo`,`kaiyaoliebiao`,`quyaochuangkou`,`quyaozhuangtai`,`userid`) values (122,'2021-04-28 11:06:15','患者账号2','患者姓名2','性别2',2,'http://localhost:8080/springbootf5kdg/upload/quyaoliebiao_tupian2.jpg','诊断结果2','开药列表2','一号窗口','未取药',2);
insert  into `quyaoliebiao`(`id`,`addtime`,`huanzhezhanghao`,`huanzhexingming`,`xingbie`,`nianling`,`tupian`,`zhenduanjieguo`,`kaiyaoliebiao`,`quyaochuangkou`,`quyaozhuangtai`,`userid`) values (123,'2021-04-28 11:06:15','患者账号3','患者姓名3','性别3',3,'http://localhost:8080/springbootf5kdg/upload/quyaoliebiao_tupian3.jpg','诊断结果3','开药列表3','一号窗口','未取药',3);
insert  into `quyaoliebiao`(`id`,`addtime`,`huanzhezhanghao`,`huanzhexingming`,`xingbie`,`nianling`,`tupian`,`zhenduanjieguo`,`kaiyaoliebiao`,`quyaochuangkou`,`quyaozhuangtai`,`userid`) values (124,'2021-04-28 11:06:15','患者账号4','患者姓名4','性别4',4,'http://localhost:8080/springbootf5kdg/upload/quyaoliebiao_tupian4.jpg','诊断结果4','开药列表4','一号窗口','未取药',4);
insert  into `quyaoliebiao`(`id`,`addtime`,`huanzhezhanghao`,`huanzhexingming`,`xingbie`,`nianling`,`tupian`,`zhenduanjieguo`,`kaiyaoliebiao`,`quyaochuangkou`,`quyaozhuangtai`,`userid`) values (125,'2021-04-28 11:06:15','患者账号5','患者姓名5','性别5',5,'http://localhost:8080/springbootf5kdg/upload/quyaoliebiao_tupian5.jpg','诊断结果5','开药列表5','一号窗口','未取药',5);
insert  into `quyaoliebiao`(`id`,`addtime`,`huanzhezhanghao`,`huanzhexingming`,`xingbie`,`nianling`,`tupian`,`zhenduanjieguo`,`kaiyaoliebiao`,`quyaochuangkou`,`quyaozhuangtai`,`userid`) values (126,'2021-04-28 11:06:15','患者账号6','患者姓名6','性别6',6,'http://localhost:8080/springbootf5kdg/upload/quyaoliebiao_tupian6.jpg','诊断结果6','开药列表6','一号窗口','未取药',6);
insert  into `quyaoliebiao`(`id`,`addtime`,`huanzhezhanghao`,`huanzhexingming`,`xingbie`,`nianling`,`tupian`,`zhenduanjieguo`,`kaiyaoliebiao`,`quyaochuangkou`,`quyaozhuangtai`,`userid`) values (1619579666949,'2021-04-28 11:14:26','患者1','患者姓名1','男',1,'http://localhost:8080/springbootf5kdg/upload/1619579575373.jpg','肺部有问题','<p>哈哈哈</p><p>哈哈哈</p><p>哈哈</p>','一号窗口','已取药',NULL);

/*Table structure for table `token` */

DROP TABLE IF EXISTS `token`;

CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,31,'医生1','yisheng','医生','kvrq3mjk9fiyz07t2mnxlcaq3ta068pe','2021-04-28 11:12:26','2021-04-28 12:13:17');
insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (2,21,'护士1','hushi','护士','6ejxmz7ucv0a8nhc9qnmt6utw7r4g5m5','2021-04-28 11:12:45','2021-04-28 12:12:45');
insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (3,41,'药品管理员1','yaopinguanliyuan','药品管理员','pttv1oh5x462svildkgmkhsgamzmrs79','2021-04-28 11:14:06','2021-04-28 12:14:07');
insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (4,11,'患者1','huanzhe','患者','rsy5onvq4c2gvqys2q2ymuvze91zi4io','2021-04-28 11:18:09','2021-04-28 12:18:10');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'abo','abo','管理员','2021-04-28 11:06:15');

/*Table structure for table `wanchengzhusheliebiao` */

DROP TABLE IF EXISTS `wanchengzhusheliebiao`;

CREATE TABLE `wanchengzhusheliebiao` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `huanzhexingming` varchar(200) DEFAULT NULL COMMENT '患者姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `nianling` int(11) DEFAULT NULL COMMENT '年龄',
  `zhusheyaowuliebiao` varchar(200) DEFAULT NULL COMMENT '注射药物列表',
  `zhusheshijian` datetime DEFAULT NULL COMMENT '注射时间',
  `hushigonghao` varchar(200) DEFAULT NULL COMMENT '护士工号',
  `hushixingming` varchar(200) DEFAULT NULL COMMENT '护士姓名',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=97 DEFAULT CHARSET=utf8 COMMENT='完成注射列表';

/*Data for the table `wanchengzhusheliebiao` */

insert  into `wanchengzhusheliebiao`(`id`,`addtime`,`huanzhexingming`,`xingbie`,`nianling`,`zhusheyaowuliebiao`,`zhusheshijian`,`hushigonghao`,`hushixingming`) values (91,'2021-04-28 11:06:15','患者姓名1','性别1',1,'注射药物列表1','2021-04-28 11:06:15','护士工号1','护士姓名1');
insert  into `wanchengzhusheliebiao`(`id`,`addtime`,`huanzhexingming`,`xingbie`,`nianling`,`zhusheyaowuliebiao`,`zhusheshijian`,`hushigonghao`,`hushixingming`) values (92,'2021-04-28 11:06:15','患者姓名2','性别2',2,'注射药物列表2','2021-04-28 11:06:15','护士工号2','护士姓名2');
insert  into `wanchengzhusheliebiao`(`id`,`addtime`,`huanzhexingming`,`xingbie`,`nianling`,`zhusheyaowuliebiao`,`zhusheshijian`,`hushigonghao`,`hushixingming`) values (93,'2021-04-28 11:06:15','患者姓名3','性别3',3,'注射药物列表3','2021-04-28 11:06:15','护士工号3','护士姓名3');
insert  into `wanchengzhusheliebiao`(`id`,`addtime`,`huanzhexingming`,`xingbie`,`nianling`,`zhusheyaowuliebiao`,`zhusheshijian`,`hushigonghao`,`hushixingming`) values (94,'2021-04-28 11:06:15','患者姓名4','性别4',4,'注射药物列表4','2021-04-28 11:06:15','护士工号4','护士姓名4');
insert  into `wanchengzhusheliebiao`(`id`,`addtime`,`huanzhexingming`,`xingbie`,`nianling`,`zhusheyaowuliebiao`,`zhusheshijian`,`hushigonghao`,`hushixingming`) values (95,'2021-04-28 11:06:15','患者姓名5','性别5',5,'注射药物列表5','2021-04-28 11:06:15','护士工号5','护士姓名5');
insert  into `wanchengzhusheliebiao`(`id`,`addtime`,`huanzhexingming`,`xingbie`,`nianling`,`zhusheyaowuliebiao`,`zhusheshijian`,`hushigonghao`,`hushixingming`) values (96,'2021-04-28 11:06:15','患者姓名6','性别6',6,'注射药物列表6','2021-04-28 11:06:15','护士工号6','护士姓名6');

/*Table structure for table `yaofeijiesuan` */

DROP TABLE IF EXISTS `yaofeijiesuan`;

CREATE TABLE `yaofeijiesuan` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `huanzhezhanghao` varchar(200) DEFAULT NULL COMMENT '患者账号',
  `huanzhexingming` varchar(200) DEFAULT NULL COMMENT '患者姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `nianling` int(11) DEFAULT NULL COMMENT '年龄',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `kaiyaoliebiao` varchar(200) DEFAULT NULL COMMENT '开药列表',
  `zongjine` int(11) DEFAULT NULL COMMENT '总金额',
  `ispay` varchar(200) DEFAULT '未支付' COMMENT '是否支付',
  `userid` bigint(20) DEFAULT NULL COMMENT '用户id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1619579881624 DEFAULT CHARSET=utf8 COMMENT='药费结算';

/*Data for the table `yaofeijiesuan` */

insert  into `yaofeijiesuan`(`id`,`addtime`,`huanzhezhanghao`,`huanzhexingming`,`xingbie`,`nianling`,`tupian`,`kaiyaoliebiao`,`zongjine`,`ispay`,`userid`) values (141,'2021-04-28 11:06:15','患者账号1','患者姓名1','性别1',1,'http://localhost:8080/springbootf5kdg/upload/yaofeijiesuan_tupian1.jpg','开药列表1',1,'未支付',1);
insert  into `yaofeijiesuan`(`id`,`addtime`,`huanzhezhanghao`,`huanzhexingming`,`xingbie`,`nianling`,`tupian`,`kaiyaoliebiao`,`zongjine`,`ispay`,`userid`) values (142,'2021-04-28 11:06:15','患者账号2','患者姓名2','性别2',2,'http://localhost:8080/springbootf5kdg/upload/yaofeijiesuan_tupian2.jpg','开药列表2',2,'未支付',2);
insert  into `yaofeijiesuan`(`id`,`addtime`,`huanzhezhanghao`,`huanzhexingming`,`xingbie`,`nianling`,`tupian`,`kaiyaoliebiao`,`zongjine`,`ispay`,`userid`) values (143,'2021-04-28 11:06:15','患者账号3','患者姓名3','性别3',3,'http://localhost:8080/springbootf5kdg/upload/yaofeijiesuan_tupian3.jpg','开药列表3',3,'未支付',3);
insert  into `yaofeijiesuan`(`id`,`addtime`,`huanzhezhanghao`,`huanzhexingming`,`xingbie`,`nianling`,`tupian`,`kaiyaoliebiao`,`zongjine`,`ispay`,`userid`) values (144,'2021-04-28 11:06:15','患者账号4','患者姓名4','性别4',4,'http://localhost:8080/springbootf5kdg/upload/yaofeijiesuan_tupian4.jpg','开药列表4',4,'未支付',4);
insert  into `yaofeijiesuan`(`id`,`addtime`,`huanzhezhanghao`,`huanzhexingming`,`xingbie`,`nianling`,`tupian`,`kaiyaoliebiao`,`zongjine`,`ispay`,`userid`) values (145,'2021-04-28 11:06:15','患者账号5','患者姓名5','性别5',5,'http://localhost:8080/springbootf5kdg/upload/yaofeijiesuan_tupian5.jpg','开药列表5',5,'未支付',5);
insert  into `yaofeijiesuan`(`id`,`addtime`,`huanzhezhanghao`,`huanzhexingming`,`xingbie`,`nianling`,`tupian`,`kaiyaoliebiao`,`zongjine`,`ispay`,`userid`) values (146,'2021-04-28 11:06:15','患者账号6','患者姓名6','性别6',6,'http://localhost:8080/springbootf5kdg/upload/yaofeijiesuan_tupian6.jpg','开药列表6',6,'未支付',6);
insert  into `yaofeijiesuan`(`id`,`addtime`,`huanzhezhanghao`,`huanzhexingming`,`xingbie`,`nianling`,`tupian`,`kaiyaoliebiao`,`zongjine`,`ispay`,`userid`) values (1619579881623,'2021-04-28 11:18:01','患者1','患者姓名1','男',1,'http://localhost:8080/springbootf5kdg/upload/1619579575373.jpg','<p>哈哈哈</p><p>哈哈哈</p><p>哈哈</p>',33333,'已支付',NULL);

/*Table structure for table `yaopinguanliyuan` */

DROP TABLE IF EXISTS `yaopinguanliyuan`;

CREATE TABLE `yaopinguanliyuan` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `guanliyuanzhanghao` varchar(200) NOT NULL COMMENT '管理员账号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `guanliyuanxingming` varchar(200) NOT NULL COMMENT '管理员姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  PRIMARY KEY (`id`),
  UNIQUE KEY `guanliyuanzhanghao` (`guanliyuanzhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8 COMMENT='药品管理员';

/*Data for the table `yaopinguanliyuan` */

insert  into `yaopinguanliyuan`(`id`,`addtime`,`guanliyuanzhanghao`,`mima`,`guanliyuanxingming`,`xingbie`,`shouji`,`youxiang`,`touxiang`) values (41,'2021-04-28 11:06:15','药品管理员1','123456','管理员姓名1','男','13823888881','773890001@qq.com','http://localhost:8080/springbootf5kdg/upload/yaopinguanliyuan_touxiang1.jpg');
insert  into `yaopinguanliyuan`(`id`,`addtime`,`guanliyuanzhanghao`,`mima`,`guanliyuanxingming`,`xingbie`,`shouji`,`youxiang`,`touxiang`) values (42,'2021-04-28 11:06:15','药品管理员2','123456','管理员姓名2','男','13823888882','773890002@qq.com','http://localhost:8080/springbootf5kdg/upload/yaopinguanliyuan_touxiang2.jpg');
insert  into `yaopinguanliyuan`(`id`,`addtime`,`guanliyuanzhanghao`,`mima`,`guanliyuanxingming`,`xingbie`,`shouji`,`youxiang`,`touxiang`) values (43,'2021-04-28 11:06:15','药品管理员3','123456','管理员姓名3','男','13823888883','773890003@qq.com','http://localhost:8080/springbootf5kdg/upload/yaopinguanliyuan_touxiang3.jpg');
insert  into `yaopinguanliyuan`(`id`,`addtime`,`guanliyuanzhanghao`,`mima`,`guanliyuanxingming`,`xingbie`,`shouji`,`youxiang`,`touxiang`) values (44,'2021-04-28 11:06:15','药品管理员4','123456','管理员姓名4','男','13823888884','773890004@qq.com','http://localhost:8080/springbootf5kdg/upload/yaopinguanliyuan_touxiang4.jpg');
insert  into `yaopinguanliyuan`(`id`,`addtime`,`guanliyuanzhanghao`,`mima`,`guanliyuanxingming`,`xingbie`,`shouji`,`youxiang`,`touxiang`) values (45,'2021-04-28 11:06:15','药品管理员5','123456','管理员姓名5','男','13823888885','773890005@qq.com','http://localhost:8080/springbootf5kdg/upload/yaopinguanliyuan_touxiang5.jpg');
insert  into `yaopinguanliyuan`(`id`,`addtime`,`guanliyuanzhanghao`,`mima`,`guanliyuanxingming`,`xingbie`,`shouji`,`youxiang`,`touxiang`) values (46,'2021-04-28 11:06:15','药品管理员6','123456','管理员姓名6','男','13823888886','773890006@qq.com','http://localhost:8080/springbootf5kdg/upload/yaopinguanliyuan_touxiang6.jpg');

/*Table structure for table `yaopinjinjia` */

DROP TABLE IF EXISTS `yaopinjinjia`;

CREATE TABLE `yaopinjinjia` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yaopinbianhao` varchar(200) NOT NULL COMMENT '药品编号',
  `yaopinmingcheng` varchar(200) NOT NULL COMMENT '药品名称',
  `jixing` varchar(200) DEFAULT NULL COMMENT '剂型',
  `picihao` varchar(200) DEFAULT NULL COMMENT '批次号',
  `shengchanriqi` date DEFAULT NULL COMMENT '生产日期',
  `shengchandanwei` varchar(200) DEFAULT NULL COMMENT '生产单位',
  `shengchandizhi` varchar(200) DEFAULT NULL COMMENT '生产地址',
  `yaopintupian` varchar(200) DEFAULT NULL COMMENT '药品图片',
  `baozhiqi` varchar(200) DEFAULT NULL COMMENT '保质期',
  `yaopinjinjiajiage` int(11) NOT NULL COMMENT '药品进价价格',
  PRIMARY KEY (`id`),
  UNIQUE KEY `yaopinbianhao` (`yaopinbianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=117 DEFAULT CHARSET=utf8 COMMENT='药品进价';

/*Data for the table `yaopinjinjia` */

insert  into `yaopinjinjia`(`id`,`addtime`,`yaopinbianhao`,`yaopinmingcheng`,`jixing`,`picihao`,`shengchanriqi`,`shengchandanwei`,`shengchandizhi`,`yaopintupian`,`baozhiqi`,`yaopinjinjiajiage`) values (111,'2021-04-28 11:06:15','药品编号1','药品名称1','颗粒','批次号1','2021-04-28','生产单位1','生产地址1','http://localhost:8080/springbootf5kdg/upload/yaopinjinjia_yaopintupian1.jpg','保质期1',1);
insert  into `yaopinjinjia`(`id`,`addtime`,`yaopinbianhao`,`yaopinmingcheng`,`jixing`,`picihao`,`shengchanriqi`,`shengchandanwei`,`shengchandizhi`,`yaopintupian`,`baozhiqi`,`yaopinjinjiajiage`) values (112,'2021-04-28 11:06:15','药品编号2','药品名称2','颗粒','批次号2','2021-04-28','生产单位2','生产地址2','http://localhost:8080/springbootf5kdg/upload/yaopinjinjia_yaopintupian2.jpg','保质期2',2);
insert  into `yaopinjinjia`(`id`,`addtime`,`yaopinbianhao`,`yaopinmingcheng`,`jixing`,`picihao`,`shengchanriqi`,`shengchandanwei`,`shengchandizhi`,`yaopintupian`,`baozhiqi`,`yaopinjinjiajiage`) values (113,'2021-04-28 11:06:15','药品编号3','药品名称3','颗粒','批次号3','2021-04-28','生产单位3','生产地址3','http://localhost:8080/springbootf5kdg/upload/yaopinjinjia_yaopintupian3.jpg','保质期3',3);
insert  into `yaopinjinjia`(`id`,`addtime`,`yaopinbianhao`,`yaopinmingcheng`,`jixing`,`picihao`,`shengchanriqi`,`shengchandanwei`,`shengchandizhi`,`yaopintupian`,`baozhiqi`,`yaopinjinjiajiage`) values (114,'2021-04-28 11:06:15','药品编号4','药品名称4','颗粒','批次号4','2021-04-28','生产单位4','生产地址4','http://localhost:8080/springbootf5kdg/upload/yaopinjinjia_yaopintupian4.jpg','保质期4',4);
insert  into `yaopinjinjia`(`id`,`addtime`,`yaopinbianhao`,`yaopinmingcheng`,`jixing`,`picihao`,`shengchanriqi`,`shengchandanwei`,`shengchandizhi`,`yaopintupian`,`baozhiqi`,`yaopinjinjiajiage`) values (115,'2021-04-28 11:06:15','药品编号5','药品名称5','颗粒','批次号5','2021-04-28','生产单位5','生产地址5','http://localhost:8080/springbootf5kdg/upload/yaopinjinjia_yaopintupian5.jpg','保质期5',5);
insert  into `yaopinjinjia`(`id`,`addtime`,`yaopinbianhao`,`yaopinmingcheng`,`jixing`,`picihao`,`shengchanriqi`,`shengchandanwei`,`shengchandizhi`,`yaopintupian`,`baozhiqi`,`yaopinjinjiajiage`) values (116,'2021-04-28 11:06:15','药品编号6','药品名称6','颗粒','批次号6','2021-04-28','生产单位6','生产地址6','http://localhost:8080/springbootf5kdg/upload/yaopinjinjia_yaopintupian6.jpg','保质期6',6);

/*Table structure for table `yaopinxinxi` */

DROP TABLE IF EXISTS `yaopinxinxi`;

CREATE TABLE `yaopinxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yaopinbianhao` varchar(200) NOT NULL COMMENT '药品编号',
  `yaopinmingcheng` varchar(200) NOT NULL COMMENT '药品名称',
  `jixing` varchar(200) DEFAULT NULL COMMENT '剂型',
  `picihao` varchar(200) DEFAULT NULL COMMENT '批次号',
  `shengchanriqi` varchar(200) DEFAULT NULL COMMENT '生产日期',
  `shengchandanwei` varchar(200) DEFAULT NULL COMMENT '生产单位',
  `yaopintupian` varchar(200) DEFAULT NULL COMMENT '药品图片',
  `baozhiqi` varchar(200) DEFAULT NULL COMMENT '保质期',
  `yaopinshuoming` longtext COMMENT '药品说明',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=107 DEFAULT CHARSET=utf8 COMMENT='药品信息';

/*Data for the table `yaopinxinxi` */

insert  into `yaopinxinxi`(`id`,`addtime`,`yaopinbianhao`,`yaopinmingcheng`,`jixing`,`picihao`,`shengchanriqi`,`shengchandanwei`,`yaopintupian`,`baozhiqi`,`yaopinshuoming`) values (101,'2021-04-28 11:06:15','药品编号1','药品名称1','剂型1','批次号1','生产日期1','生产单位1','http://localhost:8080/springbootf5kdg/upload/yaopinxinxi_yaopintupian1.jpg','保质期1','药品说明1');
insert  into `yaopinxinxi`(`id`,`addtime`,`yaopinbianhao`,`yaopinmingcheng`,`jixing`,`picihao`,`shengchanriqi`,`shengchandanwei`,`yaopintupian`,`baozhiqi`,`yaopinshuoming`) values (102,'2021-04-28 11:06:15','药品编号2','药品名称2','剂型2','批次号2','生产日期2','生产单位2','http://localhost:8080/springbootf5kdg/upload/yaopinxinxi_yaopintupian2.jpg','保质期2','药品说明2');
insert  into `yaopinxinxi`(`id`,`addtime`,`yaopinbianhao`,`yaopinmingcheng`,`jixing`,`picihao`,`shengchanriqi`,`shengchandanwei`,`yaopintupian`,`baozhiqi`,`yaopinshuoming`) values (103,'2021-04-28 11:06:15','药品编号3','药品名称3','剂型3','批次号3','生产日期3','生产单位3','http://localhost:8080/springbootf5kdg/upload/yaopinxinxi_yaopintupian3.jpg','保质期3','药品说明3');
insert  into `yaopinxinxi`(`id`,`addtime`,`yaopinbianhao`,`yaopinmingcheng`,`jixing`,`picihao`,`shengchanriqi`,`shengchandanwei`,`yaopintupian`,`baozhiqi`,`yaopinshuoming`) values (104,'2021-04-28 11:06:15','药品编号4','药品名称4','剂型4','批次号4','生产日期4','生产单位4','http://localhost:8080/springbootf5kdg/upload/yaopinxinxi_yaopintupian4.jpg','保质期4','药品说明4');
insert  into `yaopinxinxi`(`id`,`addtime`,`yaopinbianhao`,`yaopinmingcheng`,`jixing`,`picihao`,`shengchanriqi`,`shengchandanwei`,`yaopintupian`,`baozhiqi`,`yaopinshuoming`) values (105,'2021-04-28 11:06:15','药品编号5','药品名称5','剂型5','批次号5','生产日期5','生产单位5','http://localhost:8080/springbootf5kdg/upload/yaopinxinxi_yaopintupian5.jpg','保质期5','药品说明5');
insert  into `yaopinxinxi`(`id`,`addtime`,`yaopinbianhao`,`yaopinmingcheng`,`jixing`,`picihao`,`shengchanriqi`,`shengchandanwei`,`yaopintupian`,`baozhiqi`,`yaopinshuoming`) values (106,'2021-04-28 11:06:15','药品编号6','药品名称6','剂型6','批次号6','生产日期6','生产单位6','http://localhost:8080/springbootf5kdg/upload/yaopinxinxi_yaopintupian6.jpg','保质期6','药品说明6');

/*Table structure for table `yisheng` */

DROP TABLE IF EXISTS `yisheng`;

CREATE TABLE `yisheng` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yishenggonghao` varchar(200) NOT NULL COMMENT '医生工号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `yishengxingming` varchar(200) DEFAULT NULL COMMENT '医生姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `keshi` varchar(200) DEFAULT NULL COMMENT '科室',
  `zhicheng` varchar(200) DEFAULT NULL COMMENT '职称',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `shenfenzheng` varchar(200) DEFAULT NULL COMMENT '身份证',
  `zhaopian` varchar(200) DEFAULT NULL COMMENT '照片',
  PRIMARY KEY (`id`),
  UNIQUE KEY `yishenggonghao` (`yishenggonghao`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COMMENT='医生';

/*Data for the table `yisheng` */

insert  into `yisheng`(`id`,`addtime`,`yishenggonghao`,`mima`,`yishengxingming`,`xingbie`,`keshi`,`zhicheng`,`shouji`,`youxiang`,`shenfenzheng`,`zhaopian`) values (31,'2021-04-28 11:06:15','医生1','123456','医生姓名1','男','科室1','职称1','13823888881','773890001@qq.com','440300199101010001','http://localhost:8080/springbootf5kdg/upload/yisheng_zhaopian1.jpg');
insert  into `yisheng`(`id`,`addtime`,`yishenggonghao`,`mima`,`yishengxingming`,`xingbie`,`keshi`,`zhicheng`,`shouji`,`youxiang`,`shenfenzheng`,`zhaopian`) values (32,'2021-04-28 11:06:15','医生2','123456','医生姓名2','男','科室2','职称2','13823888882','773890002@qq.com','440300199202020002','http://localhost:8080/springbootf5kdg/upload/yisheng_zhaopian2.jpg');
insert  into `yisheng`(`id`,`addtime`,`yishenggonghao`,`mima`,`yishengxingming`,`xingbie`,`keshi`,`zhicheng`,`shouji`,`youxiang`,`shenfenzheng`,`zhaopian`) values (33,'2021-04-28 11:06:15','医生3','123456','医生姓名3','男','科室3','职称3','13823888883','773890003@qq.com','440300199303030003','http://localhost:8080/springbootf5kdg/upload/yisheng_zhaopian3.jpg');
insert  into `yisheng`(`id`,`addtime`,`yishenggonghao`,`mima`,`yishengxingming`,`xingbie`,`keshi`,`zhicheng`,`shouji`,`youxiang`,`shenfenzheng`,`zhaopian`) values (34,'2021-04-28 11:06:15','医生4','123456','医生姓名4','男','科室4','职称4','13823888884','773890004@qq.com','440300199404040004','http://localhost:8080/springbootf5kdg/upload/yisheng_zhaopian4.jpg');
insert  into `yisheng`(`id`,`addtime`,`yishenggonghao`,`mima`,`yishengxingming`,`xingbie`,`keshi`,`zhicheng`,`shouji`,`youxiang`,`shenfenzheng`,`zhaopian`) values (35,'2021-04-28 11:06:15','医生5','123456','医生姓名5','男','科室5','职称5','13823888885','773890005@qq.com','440300199505050005','http://localhost:8080/springbootf5kdg/upload/yisheng_zhaopian5.jpg');
insert  into `yisheng`(`id`,`addtime`,`yishenggonghao`,`mima`,`yishengxingming`,`xingbie`,`keshi`,`zhicheng`,`shouji`,`youxiang`,`shenfenzheng`,`zhaopian`) values (36,'2021-04-28 11:06:15','医生6','123456','医生姓名6','男','科室6','职称6','13823888886','773890006@qq.com','440300199606060006','http://localhost:8080/springbootf5kdg/upload/yisheng_zhaopian6.jpg');

/*Table structure for table `zhenduanxinxi` */

DROP TABLE IF EXISTS `zhenduanxinxi`;

CREATE TABLE `zhenduanxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `huanzhezhanghao` varchar(200) DEFAULT NULL COMMENT '患者账号',
  `huanzhexingming` varchar(200) DEFAULT NULL COMMENT '患者姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `nianling` int(11) DEFAULT NULL COMMENT '年龄',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `zhenduanjieguo` longtext COMMENT '诊断结果',
  `shifouzhushe` varchar(200) DEFAULT NULL COMMENT '是否注射',
  `zhusheyaowuliebiao` longtext COMMENT '注射药物列表',
  `kaiyaomingdanyi` varchar(200) DEFAULT NULL COMMENT '开药名单一',
  `kaiyaomingdaner` varchar(200) DEFAULT NULL COMMENT '开药名单二',
  `kaiyaomingdansan` varchar(200) DEFAULT NULL COMMENT '开药名单三',
  `kaiyaoliebiao` longtext COMMENT '开药列表',
  `yishenggonghao` varchar(200) DEFAULT NULL COMMENT '医生工号',
  `yishengxingming` varchar(200) DEFAULT NULL COMMENT '医生姓名',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1619579639776 DEFAULT CHARSET=utf8 COMMENT='诊断信息';

/*Data for the table `zhenduanxinxi` */

insert  into `zhenduanxinxi`(`id`,`addtime`,`huanzhezhanghao`,`huanzhexingming`,`xingbie`,`nianling`,`tupian`,`zhenduanjieguo`,`shifouzhushe`,`zhusheyaowuliebiao`,`kaiyaomingdanyi`,`kaiyaomingdaner`,`kaiyaomingdansan`,`kaiyaoliebiao`,`yishenggonghao`,`yishengxingming`) values (71,'2021-04-28 11:06:15','患者账号1','患者姓名1','性别1',1,'http://localhost:8080/springbootf5kdg/upload/zhenduanxinxi_tupian1.jpg','诊断结果1','是','注射药物列表1','开药名单一1','开药名单二1','开药名单三1','开药列表1','医生工号1','医生姓名1');
insert  into `zhenduanxinxi`(`id`,`addtime`,`huanzhezhanghao`,`huanzhexingming`,`xingbie`,`nianling`,`tupian`,`zhenduanjieguo`,`shifouzhushe`,`zhusheyaowuliebiao`,`kaiyaomingdanyi`,`kaiyaomingdaner`,`kaiyaomingdansan`,`kaiyaoliebiao`,`yishenggonghao`,`yishengxingming`) values (72,'2021-04-28 11:06:15','患者账号2','患者姓名2','性别2',2,'http://localhost:8080/springbootf5kdg/upload/zhenduanxinxi_tupian2.jpg','诊断结果2','是','注射药物列表2','开药名单一2','开药名单二2','开药名单三2','开药列表2','医生工号2','医生姓名2');
insert  into `zhenduanxinxi`(`id`,`addtime`,`huanzhezhanghao`,`huanzhexingming`,`xingbie`,`nianling`,`tupian`,`zhenduanjieguo`,`shifouzhushe`,`zhusheyaowuliebiao`,`kaiyaomingdanyi`,`kaiyaomingdaner`,`kaiyaomingdansan`,`kaiyaoliebiao`,`yishenggonghao`,`yishengxingming`) values (73,'2021-04-28 11:06:15','患者账号3','患者姓名3','性别3',3,'http://localhost:8080/springbootf5kdg/upload/zhenduanxinxi_tupian3.jpg','诊断结果3','是','注射药物列表3','开药名单一3','开药名单二3','开药名单三3','开药列表3','医生工号3','医生姓名3');
insert  into `zhenduanxinxi`(`id`,`addtime`,`huanzhezhanghao`,`huanzhexingming`,`xingbie`,`nianling`,`tupian`,`zhenduanjieguo`,`shifouzhushe`,`zhusheyaowuliebiao`,`kaiyaomingdanyi`,`kaiyaomingdaner`,`kaiyaomingdansan`,`kaiyaoliebiao`,`yishenggonghao`,`yishengxingming`) values (74,'2021-04-28 11:06:15','患者账号4','患者姓名4','性别4',4,'http://localhost:8080/springbootf5kdg/upload/zhenduanxinxi_tupian4.jpg','诊断结果4','是','注射药物列表4','开药名单一4','开药名单二4','开药名单三4','开药列表4','医生工号4','医生姓名4');
insert  into `zhenduanxinxi`(`id`,`addtime`,`huanzhezhanghao`,`huanzhexingming`,`xingbie`,`nianling`,`tupian`,`zhenduanjieguo`,`shifouzhushe`,`zhusheyaowuliebiao`,`kaiyaomingdanyi`,`kaiyaomingdaner`,`kaiyaomingdansan`,`kaiyaoliebiao`,`yishenggonghao`,`yishengxingming`) values (75,'2021-04-28 11:06:15','患者账号5','患者姓名5','性别5',5,'http://localhost:8080/springbootf5kdg/upload/zhenduanxinxi_tupian5.jpg','诊断结果5','是','注射药物列表5','开药名单一5','开药名单二5','开药名单三5','开药列表5','医生工号5','医生姓名5');
insert  into `zhenduanxinxi`(`id`,`addtime`,`huanzhezhanghao`,`huanzhexingming`,`xingbie`,`nianling`,`tupian`,`zhenduanjieguo`,`shifouzhushe`,`zhusheyaowuliebiao`,`kaiyaomingdanyi`,`kaiyaomingdaner`,`kaiyaomingdansan`,`kaiyaoliebiao`,`yishenggonghao`,`yishengxingming`) values (76,'2021-04-28 11:06:15','患者账号6','患者姓名6','性别6',6,'http://localhost:8080/springbootf5kdg/upload/zhenduanxinxi_tupian6.jpg','诊断结果6','是','注射药物列表6','开药名单一6','开药名单二6','开药名单三6','开药列表6','医生工号6','医生姓名6');
insert  into `zhenduanxinxi`(`id`,`addtime`,`huanzhezhanghao`,`huanzhexingming`,`xingbie`,`nianling`,`tupian`,`zhenduanjieguo`,`shifouzhushe`,`zhusheyaowuliebiao`,`kaiyaomingdanyi`,`kaiyaomingdaner`,`kaiyaomingdansan`,`kaiyaoliebiao`,`yishenggonghao`,`yishengxingming`) values (1619579639775,'2021-04-28 11:13:59','患者1','患者姓名1','男',1,'http://localhost:8080/springbootf5kdg/upload/1619579575373.jpg','肺部有问题','是','药\n药\n药','药品名称1','药品名称5','药品名称5','<p>哈哈哈</p><p>哈哈哈</p><p>哈哈</p>','医生1','医生姓名1');

/*Table structure for table `zhusheliebiao` */

DROP TABLE IF EXISTS `zhusheliebiao`;

CREATE TABLE `zhusheliebiao` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `huanzhexingming` varchar(200) DEFAULT NULL COMMENT '患者姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `nianling` int(11) DEFAULT NULL COMMENT '年龄',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `zhusheyaowuliebiao` varchar(200) DEFAULT NULL COMMENT '注射药物列表',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=87 DEFAULT CHARSET=utf8 COMMENT='注射列表';

/*Data for the table `zhusheliebiao` */

insert  into `zhusheliebiao`(`id`,`addtime`,`huanzhexingming`,`xingbie`,`nianling`,`tupian`,`zhusheyaowuliebiao`) values (81,'2021-04-28 11:06:15','患者姓名1','性别1',1,'http://localhost:8080/springbootf5kdg/upload/zhusheliebiao_tupian1.jpg','注射药物列表1');
insert  into `zhusheliebiao`(`id`,`addtime`,`huanzhexingming`,`xingbie`,`nianling`,`tupian`,`zhusheyaowuliebiao`) values (82,'2021-04-28 11:06:15','患者姓名2','性别2',2,'http://localhost:8080/springbootf5kdg/upload/zhusheliebiao_tupian2.jpg','注射药物列表2');
insert  into `zhusheliebiao`(`id`,`addtime`,`huanzhexingming`,`xingbie`,`nianling`,`tupian`,`zhusheyaowuliebiao`) values (83,'2021-04-28 11:06:15','患者姓名3','性别3',3,'http://localhost:8080/springbootf5kdg/upload/zhusheliebiao_tupian3.jpg','注射药物列表3');
insert  into `zhusheliebiao`(`id`,`addtime`,`huanzhexingming`,`xingbie`,`nianling`,`tupian`,`zhusheyaowuliebiao`) values (84,'2021-04-28 11:06:15','患者姓名4','性别4',4,'http://localhost:8080/springbootf5kdg/upload/zhusheliebiao_tupian4.jpg','注射药物列表4');
insert  into `zhusheliebiao`(`id`,`addtime`,`huanzhexingming`,`xingbie`,`nianling`,`tupian`,`zhusheyaowuliebiao`) values (85,'2021-04-28 11:06:15','患者姓名5','性别5',5,'http://localhost:8080/springbootf5kdg/upload/zhusheliebiao_tupian5.jpg','注射药物列表5');
insert  into `zhusheliebiao`(`id`,`addtime`,`huanzhexingming`,`xingbie`,`nianling`,`tupian`,`zhusheyaowuliebiao`) values (86,'2021-04-28 11:06:15','患者姓名6','性别6',6,'http://localhost:8080/springbootf5kdg/upload/zhusheliebiao_tupian6.jpg','注射药物列表6');

/*Table structure for table `zhushequyaoliebiao` */

DROP TABLE IF EXISTS `zhushequyaoliebiao`;

CREATE TABLE `zhushequyaoliebiao` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `huanzhexingming` varchar(200) DEFAULT NULL COMMENT '患者姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `nianling` varchar(200) DEFAULT NULL COMMENT '年龄',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `zhusheyaowuliebiao` varchar(200) DEFAULT NULL COMMENT '注射药物列表',
  `quyaochuangkou` varchar(200) DEFAULT NULL COMMENT '取药窗口',
  `quyaozhuangtai` varchar(200) DEFAULT NULL COMMENT '取药状态',
  `guanliyuanzhanghao` varchar(200) DEFAULT NULL COMMENT '管理员账号',
  `guanliyuanxingming` varchar(200) DEFAULT NULL COMMENT '管理员姓名',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=137 DEFAULT CHARSET=utf8 COMMENT='注射取药列表';

/*Data for the table `zhushequyaoliebiao` */

insert  into `zhushequyaoliebiao`(`id`,`addtime`,`huanzhexingming`,`xingbie`,`nianling`,`tupian`,`zhusheyaowuliebiao`,`quyaochuangkou`,`quyaozhuangtai`,`guanliyuanzhanghao`,`guanliyuanxingming`) values (131,'2021-04-28 11:06:15','患者姓名1','性别1','年龄1','http://localhost:8080/springbootf5kdg/upload/zhushequyaoliebiao_tupian1.jpg','注射药物列表1','一号窗口','未取药','管理员账号1','管理员姓名1');
insert  into `zhushequyaoliebiao`(`id`,`addtime`,`huanzhexingming`,`xingbie`,`nianling`,`tupian`,`zhusheyaowuliebiao`,`quyaochuangkou`,`quyaozhuangtai`,`guanliyuanzhanghao`,`guanliyuanxingming`) values (132,'2021-04-28 11:06:15','患者姓名2','性别2','年龄2','http://localhost:8080/springbootf5kdg/upload/zhushequyaoliebiao_tupian2.jpg','注射药物列表2','一号窗口','未取药','管理员账号2','管理员姓名2');
insert  into `zhushequyaoliebiao`(`id`,`addtime`,`huanzhexingming`,`xingbie`,`nianling`,`tupian`,`zhusheyaowuliebiao`,`quyaochuangkou`,`quyaozhuangtai`,`guanliyuanzhanghao`,`guanliyuanxingming`) values (133,'2021-04-28 11:06:15','患者姓名3','性别3','年龄3','http://localhost:8080/springbootf5kdg/upload/zhushequyaoliebiao_tupian3.jpg','注射药物列表3','一号窗口','未取药','管理员账号3','管理员姓名3');
insert  into `zhushequyaoliebiao`(`id`,`addtime`,`huanzhexingming`,`xingbie`,`nianling`,`tupian`,`zhusheyaowuliebiao`,`quyaochuangkou`,`quyaozhuangtai`,`guanliyuanzhanghao`,`guanliyuanxingming`) values (134,'2021-04-28 11:06:15','患者姓名4','性别4','年龄4','http://localhost:8080/springbootf5kdg/upload/zhushequyaoliebiao_tupian4.jpg','注射药物列表4','一号窗口','未取药','管理员账号4','管理员姓名4');
insert  into `zhushequyaoliebiao`(`id`,`addtime`,`huanzhexingming`,`xingbie`,`nianling`,`tupian`,`zhusheyaowuliebiao`,`quyaochuangkou`,`quyaozhuangtai`,`guanliyuanzhanghao`,`guanliyuanxingming`) values (135,'2021-04-28 11:06:15','患者姓名5','性别5','年龄5','http://localhost:8080/springbootf5kdg/upload/zhushequyaoliebiao_tupian5.jpg','注射药物列表5','一号窗口','未取药','管理员账号5','管理员姓名5');
insert  into `zhushequyaoliebiao`(`id`,`addtime`,`huanzhexingming`,`xingbie`,`nianling`,`tupian`,`zhusheyaowuliebiao`,`quyaochuangkou`,`quyaozhuangtai`,`guanliyuanzhanghao`,`guanliyuanxingming`) values (136,'2021-04-28 11:06:15','患者姓名6','性别6','年龄6','http://localhost:8080/springbootf5kdg/upload/zhushequyaoliebiao_tupian6.jpg','注射药物列表6','一号窗口','未取药','管理员账号6','管理员姓名6');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
