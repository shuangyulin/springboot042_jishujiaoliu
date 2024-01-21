/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - springboot1o52x
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`springboot1o52x` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `springboot1o52x`;

/*Table structure for table `bijifenxiang` */

DROP TABLE IF EXISTS `bijifenxiang`;

CREATE TABLE `bijifenxiang` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `bijimingcheng` varchar(200) NOT NULL COMMENT '笔记名称',
  `bijileixing` varchar(200) DEFAULT NULL COMMENT '笔记类型',
  `bijibiaoti` varchar(200) DEFAULT NULL COMMENT '笔记标题',
  `bijitupian` varchar(200) DEFAULT NULL COMMENT '笔记图片',
  `bijifujian` varchar(200) DEFAULT NULL COMMENT '笔记附件',
  `bijineirong` longtext NOT NULL COMMENT '笔记内容',
  `faburiqi` date DEFAULT NULL COMMENT '发布日期',
  `yonghuming` varchar(200) DEFAULT NULL COMMENT '用户名',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `thumbsupnum` int(11) DEFAULT '0' COMMENT '赞',
  `crazilynum` int(11) DEFAULT '0' COMMENT '踩',
  `clicktime` datetime DEFAULT NULL COMMENT '最近点击时间',
  `clicknum` int(11) DEFAULT '0' COMMENT '点击次数',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1617373002828 DEFAULT CHARSET=utf8 COMMENT='笔记分享';

/*Data for the table `bijifenxiang` */

insert  into `bijifenxiang`(`id`,`addtime`,`bijimingcheng`,`bijileixing`,`bijibiaoti`,`bijitupian`,`bijifujian`,`bijineirong`,`faburiqi`,`yonghuming`,`xingming`,`thumbsupnum`,`crazilynum`,`clicktime`,`clicknum`) values (21,'2021-04-02 22:12:19','笔记名称1','笔记类型1','笔记标题1','http://localhost:8080/springboot1o52x/upload/bijifenxiang_bijitupian1.jpg','','笔记内容1','2021-04-02','用户名1','姓名1',1,1,'2021-04-02 22:12:19',1),(22,'2021-04-02 22:12:19','笔记名称2','笔记类型2','笔记标题2','http://localhost:8080/springboot1o52x/upload/bijifenxiang_bijitupian2.jpg','','笔记内容2','2021-04-02','用户名2','姓名2',2,2,'2021-04-02 22:12:19',2),(23,'2021-04-02 22:12:19','笔记名称3','笔记类型3','笔记标题3','http://localhost:8080/springboot1o52x/upload/bijifenxiang_bijitupian3.jpg','','笔记内容3','2021-04-02','用户名3','姓名3',3,3,'2021-04-02 22:12:19',3),(24,'2021-04-02 22:12:19','笔记名称4','笔记类型4','笔记标题4','http://localhost:8080/springboot1o52x/upload/bijifenxiang_bijitupian4.jpg','','笔记内容4','2021-04-02','用户名4','姓名4',4,4,'2021-04-02 22:12:19',4),(25,'2021-04-02 22:12:19','笔记名称5','笔记类型5','笔记标题5','http://localhost:8080/springboot1o52x/upload/bijifenxiang_bijitupian5.jpg','','笔记内容5','2021-04-02','用户名5','姓名5',5,5,'2021-04-02 22:12:19',5),(26,'2021-04-02 22:12:19','笔记名称6','笔记类型6','笔记标题6','http://localhost:8080/springboot1o52x/upload/bijifenxiang_bijitupian6.jpg','','笔记内容6','2021-04-02','用户名6','姓名6',6,6,'2021-04-02 22:12:19',6),(1617373002827,'2021-04-02 22:16:42','测试','ssm','测试','http://localhost:8080/springboot1o52x/upload/1617372985216.jpg','http://localhost:8080/springboot1o52x/upload/1617372987516.jpg','<p>附件可上传文件格式<img src=\"http://localhost:8080/springboot1o52x/upload/1617373000747.jpg\"></p>','2021-04-15','1','阿三',1,0,'2021-04-02 22:17:38',4);

/*Table structure for table `bijileixing` */

DROP TABLE IF EXISTS `bijileixing`;

CREATE TABLE `bijileixing` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `leixing` varchar(200) DEFAULT NULL COMMENT '类型',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1617372967017 DEFAULT CHARSET=utf8 COMMENT='笔记类型';

/*Data for the table `bijileixing` */

insert  into `bijileixing`(`id`,`addtime`,`leixing`) values (35,'2021-04-02 22:12:19','springboog'),(36,'2021-04-02 22:12:19','ssm'),(1617372967016,'2021-04-02 22:16:06','net');

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'picture1','http://localhost:8080/springboot1o52x/upload/picture1.jpg'),(2,'picture2','http://localhost:8080/springboot1o52x/upload/picture2.jpg'),(3,'picture3','http://localhost:8080/springboot1o52x/upload/picture3.jpg'),(6,'homepage','http://localhost:8080/springboot1o52x/upload/1617372903703.jpg');

/*Table structure for table `discussbijifenxiang` */

DROP TABLE IF EXISTS `discussbijifenxiang`;

CREATE TABLE `discussbijifenxiang` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1617373041897 DEFAULT CHARSET=utf8 COMMENT='笔记分享评论表';

/*Data for the table `discussbijifenxiang` */

insert  into `discussbijifenxiang`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (51,'2021-04-02 22:12:19',1,1,'用户名1','评论内容1','回复内容1'),(52,'2021-04-02 22:12:19',2,2,'用户名2','评论内容2','回复内容2'),(53,'2021-04-02 22:12:19',3,3,'用户名3','评论内容3','回复内容3'),(54,'2021-04-02 22:12:19',4,4,'用户名4','评论内容4','回复内容4'),(55,'2021-04-02 22:12:19',5,5,'用户名5','评论内容5','回复内容5'),(56,'2021-04-02 22:12:19',6,6,'用户名6','评论内容6','回复内容6'),(1617373041896,'2021-04-02 22:17:21',1617373002827,1617372875402,'1','666',NULL);

/*Table structure for table `storeup` */

DROP TABLE IF EXISTS `storeup`;

CREATE TABLE `storeup` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `refid` bigint(20) DEFAULT NULL COMMENT '收藏id',
  `tablename` varchar(200) DEFAULT NULL COMMENT '表名',
  `name` varchar(200) NOT NULL COMMENT '收藏名称',
  `picture` varchar(200) NOT NULL COMMENT '收藏图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1617373048878 DEFAULT CHARSET=utf8 COMMENT='收藏表';

/*Data for the table `storeup` */

insert  into `storeup`(`id`,`addtime`,`userid`,`refid`,`tablename`,`name`,`picture`) values (1617373048877,'2021-04-02 22:17:27',1617372875402,1617373002827,'bijifenxiang','测试','http://localhost:8080/springboot1o52x/upload/1617372985216.jpg');

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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1,'abo','users','管理员','48duj9ornxcdzj1zza9gct5140nximen','2021-04-02 22:13:20','2021-04-02 23:14:41'),(2,1617372875402,'1','yonghu','用户','gxsb3tun7tqab77lzb840k5bff1818u6','2021-04-02 22:15:19','2021-04-02 23:16:54');

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

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'abo','abo','管理员','2021-04-02 22:12:19');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yonghuming` varchar(200) NOT NULL COMMENT '用户名',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `shenfenzheng` varchar(200) DEFAULT NULL COMMENT '身份证',
  `zhaopian` varchar(200) DEFAULT NULL COMMENT '照片',
  PRIMARY KEY (`id`),
  UNIQUE KEY `yonghuming` (`yonghuming`)
) ENGINE=InnoDB AUTO_INCREMENT=1617372875403 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`addtime`,`yonghuming`,`mima`,`xingming`,`xingbie`,`shouji`,`youxiang`,`shenfenzheng`,`zhaopian`) values (11,'2021-04-02 22:12:19','用户1','123456','姓名1','男','13823888881','773890001@qq.com','440300199101010001','http://localhost:8080/springboot1o52x/upload/yonghu_zhaopian1.jpg'),(12,'2021-04-02 22:12:19','用户2','123456','姓名2','男','13823888882','773890002@qq.com','440300199202020002','http://localhost:8080/springboot1o52x/upload/yonghu_zhaopian2.jpg'),(13,'2021-04-02 22:12:19','用户3','123456','姓名3','男','13823888883','773890003@qq.com','440300199303030003','http://localhost:8080/springboot1o52x/upload/yonghu_zhaopian3.jpg'),(14,'2021-04-02 22:12:19','用户4','123456','姓名4','男','13823888884','773890004@qq.com','440300199404040004','http://localhost:8080/springboot1o52x/upload/yonghu_zhaopian4.jpg'),(15,'2021-04-02 22:12:19','用户5','123456','姓名5','男','13823888885','773890005@qq.com','440300199505050005','http://localhost:8080/springboot1o52x/upload/yonghu_zhaopian5.jpg'),(16,'2021-04-02 22:12:19','用户6','123456','姓名6','男','13823888886','773890006@qq.com','440300199606060006','http://localhost:8080/springboot1o52x/upload/yonghu_zhaopian6.jpg'),(1617372875402,'2021-04-02 22:14:35','1','1','阿三','女','12312312323','123@qq.com','441402000000000000','http://localhost:8080/springboot1o52x/upload/1617372924470.png');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
