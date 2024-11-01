/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - shiyanshikaifang
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`shiyanshikaifang` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `shiyanshikaifang`;

/*Table structure for table `chat` */

DROP TABLE IF EXISTS `chat`;

CREATE TABLE `chat` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `adminid` bigint(20) DEFAULT NULL COMMENT '管理员id',
  `ask` longtext COMMENT '提问',
  `reply` longtext COMMENT '回复',
  `isreply` int(11) DEFAULT NULL COMMENT '是否回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1613638686675 DEFAULT CHARSET=utf8 COMMENT='客服聊天表';

/*Data for the table `chat` */

insert  into `chat`(`id`,`addtime`,`userid`,`adminid`,`ask`,`reply`,`isreply`) values (1608781605725,'2020-12-24 11:46:45',1608781436204,NULL,'这里可以咨询  可以求救 后台管理员会回复',NULL,0);

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'picture1','http://localhost:8080/shiyanshikaifang/upload/1616136568927.jpg'),(2,'picture2','http://localhost:8080/shiyanshikaifang/upload/1616136573762.jpg'),(3,'picture3','http://localhost:8080/shiyanshikaifang/upload/1616136578624.jpg'),(4,'picture4','http://localhost:8080/shiyanshikaifang/upload/1616136583746.jpg'),(5,'picture5','http://localhost:8080/shiyanshikaifang/upload/1616136590778.jpg');

/*Table structure for table `dictionary` */

DROP TABLE IF EXISTS `dictionary`;

CREATE TABLE `dictionary` (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` tinyint(4) DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字',
  `super_id` int(11) DEFAULT NULL COMMENT '父字段id',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='字典表';

/*Data for the table `dictionary` */

insert  into `dictionary`(`id`,`dic_code`,`dic_name`,`code_index`,`index_name`,`super_id`,`create_time`) values (1,'sex_types','性别',1,'男',NULL,'2021-02-25 11:41:54'),(2,'sex_types','性别',2,'女',NULL,'2021-02-25 11:41:54'),(3,'sf_types','结果',1,'已使用',NULL,'2021-02-25 11:41:54'),(4,'sf_types','结果',2,'未使用',NULL,'2021-02-25 11:41:54'),(5,'sq_types','结果',1,'拒绝',NULL,'2021-03-19 14:07:32'),(6,'sq_types','结果',2,'同意',NULL,'2021-03-19 14:07:33');

/*Table structure for table `messages` */

DROP TABLE IF EXISTS `messages`;

CREATE TABLE `messages` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '留言人id',
  `username` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '留言内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1615428241851 DEFAULT CHARSET=utf8 COMMENT='留言板';

/*Data for the table `messages` */

insert  into `messages`(`id`,`addtime`,`userid`,`username`,`content`,`reply`) values (1,'2021-03-10 17:42:43',1,'用户名1','留言内容1','回复内容1'),(2,'2021-03-10 17:42:43',2,'用户名2','留言内容2','回复内容2'),(3,'2021-03-10 17:42:43',3,'用户名3','留言内容3','回复内容3'),(4,'2021-03-10 17:42:43',4,'用户名4','留言内容4','回复内容4'),(5,'2021-03-10 17:42:43',5,'用户名5','留言内容5','回复内容5'),(6,'2021-03-10 17:42:43',6,'用户名6','留言内容6','回复内容6'),(1615428241850,'2021-03-19 15:54:42',1,'111','qwe',NULL);

/*Table structure for table `news` */

DROP TABLE IF EXISTS `news`;

CREATE TABLE `news` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) NOT NULL COMMENT '标题',
  `picture` varchar(200) NOT NULL COMMENT '图片',
  `content` longtext NOT NULL COMMENT '内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='新闻资讯';

/*Data for the table `news` */

insert  into `news`(`id`,`addtime`,`title`,`picture`,`content`) values (1,'2020-12-24 11:36:16','标题1','http://localhost:8080/shiyanshikaifang/upload/1616136539699.jpg','内容1\r\n'),(2,'2020-12-24 11:36:16','标题2','http://localhost:8080/shiyanshikaifang/upload/1616136545068.jpg','内容2\r\n'),(3,'2020-12-24 11:36:16','标题3','http://localhost:8080/shiyanshikaifang/upload/1616136549938.jpg','内容3\r\n'),(4,'2020-12-24 11:36:16','标题4','http://localhost:8080/shiyanshikaifang/upload/1616136554041.jpg','内容4\r\n');

/*Table structure for table `shenqing` */

DROP TABLE IF EXISTS `shenqing`;

CREATE TABLE `shenqing` (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `sys_types` tinyint(4) DEFAULT NULL COMMENT '申请实验室',
  `yh_types` tinyint(4) DEFAULT NULL COMMENT '申请人',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '申请时间',
  `sq_types` tinyint(4) DEFAULT NULL COMMENT '申请结果 Search',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COMMENT='申请';

/*Data for the table `shenqing` */

insert  into `shenqing`(`id`,`sys_types`,`yh_types`,`create_time`,`sq_types`) values (8,3,1,'2021-03-19 15:53:32',1),(9,2,1,'2021-03-19 15:53:33',2),(10,3,2,'2021-03-19 15:53:53',1),(11,1,2,'2021-03-19 15:53:55',2);

/*Table structure for table `shiyanshi` */

DROP TABLE IF EXISTS `shiyanshi`;

CREATE TABLE `shiyanshi` (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(200) DEFAULT NULL COMMENT '实验室名称 Search',
  `img_photo` varchar(200) DEFAULT NULL COMMENT '实验室图片',
  `kaifang_time` timestamp NULL DEFAULT NULL COMMENT '实验室开放时间',
  `jieshu_time` timestamp NULL DEFAULT NULL COMMENT '实验室结束时间',
  `sf_types` tinyint(4) DEFAULT NULL COMMENT '是否被使用 Search',
  `shiyanshi_content` varchar(200) DEFAULT NULL COMMENT '实验室内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='实验室';

/*Data for the table `shiyanshi` */

insert  into `shiyanshi`(`id`,`name`,`img_photo`,`kaifang_time`,`jieshu_time`,`sf_types`,`shiyanshi_content`) values (1,'实验室名称1','http://localhost:8080/shiyanshikaifang/file/download?fileName=1616133501540.jpeg','1970-01-01 09:00:00','1970-01-01 16:00:00',1,'实验室内容1\r\n'),(2,'实验室名称2','http://localhost:8080/shiyanshikaifang/file/download?fileName=1616135435599.jpeg','1970-01-01 09:00:00','1970-01-01 16:00:00',1,'实验室内容1\r\n'),(3,'实验室名称3','http://localhost:8080/shiyanshikaifang/file/download?fileName=1616140035518.jpg','1970-01-01 10:00:00','1970-01-01 13:00:00',1,'实验室内容3\r\n');

/*Table structure for table `token` */

DROP TABLE IF EXISTS `token`;

CREATE TABLE `token` (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` int(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1,'admin','users','管理员','uyzq070lvnspt9faxf6btngec5kb84i5','2021-01-28 18:04:51','2021-03-19 16:53:59'),(2,1,'小札','users','用户','xwlli707ljymlv0raangzkksoicmmh0h','2021-02-03 16:33:33','2021-03-19 16:54:30'),(3,30,'123','users',NULL,'31ztl98nm0uiodqbiajww0ig3bkqm92z','2021-02-03 16:59:57','2021-02-03 17:59:57'),(4,30,'123','users','用户','y33tglpuy0aacwtcyu9x6ewodbs15tox','2021-02-03 17:05:40','2021-02-03 18:05:57'),(5,32,'1233','users','用户','vkl4u1yicgsxytzrhxztol20vp3ha6g0','2021-02-03 17:15:57','2021-02-03 18:16:16'),(6,34,'uamm','users','用户','h6dq0z9qux5jyjwfondkawy98o7mdu3l','2021-02-03 17:56:00','2021-02-03 18:56:00'),(7,1,'房东1','users','房东','0bes8lkk0ld015fl4pdbki29erz1gyrn','2021-02-06 10:36:26','2021-02-18 16:33:02'),(8,2,'小札','users','实验室管理员','5daip3pzl3lcj6ff1bbyckuifhydqv4z','2021-03-19 14:57:39','2021-03-19 15:57:39'),(9,2,'小札','users','用户','hvmncdstkbep0j9a8jbideso4lw0a8vo','2021-03-19 14:58:55','2021-03-19 16:53:42'),(10,5,'实验室管理员1','users','实验室管理员','pi6jbi1f6yrkphrhagbgx9nt430t1k3g','2021-03-19 15:54:11','2021-03-19 16:54:11');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) NOT NULL DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='用户表';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'admin','admin','管理员','2021-01-28 18:04:51');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(200) DEFAULT NULL COMMENT '名称  Search',
  `username` varchar(255) DEFAULT NULL COMMENT '账号',
  `password` varchar(255) DEFAULT NULL COMMENT '密码',
  `img_photo` varchar(255) DEFAULT NULL COMMENT '头像',
  `sex_types` tinyint(4) DEFAULT NULL COMMENT '性别  Search',
  `phone` varchar(200) DEFAULT NULL COMMENT '手机号',
  `role` varchar(255) DEFAULT NULL COMMENT '身份',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COMMENT='用户表';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`name`,`username`,`password`,`img_photo`,`sex_types`,`phone`,`role`) values (1,'小金','111','111','http://localhost:8080/shiyanshikaifang/file/download?fileName=1616137108676.jpg',1,'17796312333','用户'),(2,'小札','222','222','http://localhost:8080/shiyanshikaifang/file/download?fileName=1616137098144.jpg',2,'12312312333','用户'),(5,'实验室管理员1','333','333','http://localhost:8080/shiyanshikaifang/file/download?fileName=1616137125002.jpg',2,'123123123','实验室管理员');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
