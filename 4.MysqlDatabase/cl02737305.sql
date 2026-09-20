-- MySQL dump 10.13  Distrib 5.7.31, for Linux (x86_64)
--
-- Host: localhost    Database: cl02737305
-- ------------------------------------------------------
-- Server version	5.7.31

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Current Database: `cl02737305`
--

/*!40000 DROP DATABASE IF EXISTS `cl02737305`*/;

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `cl02737305` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `cl02737305`;

--
-- Table structure for table `config`
--

DROP TABLE IF EXISTS `config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='配置文件';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `config`
--

LOCK TABLES `config` WRITE;
/*!40000 ALTER TABLE `config` DISABLE KEYS */;
INSERT INTO `config` VALUES (1,'swiper1','file/swiperPicture1.jpg'),(2,'swiper2','file/swiperPicture2.jpg'),(3,'swiper3','file/swiperPicture3.jpg');
/*!40000 ALTER TABLE `config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dingdanpingjia`
--

DROP TABLE IF EXISTS `dingdanpingjia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dingdanpingjia` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `dingdanbianhao` varchar(200) DEFAULT NULL COMMENT '订单编号',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `yonghuxingming` varchar(200) DEFAULT NULL COMMENT '用户姓名',
  `paotuizhanghao` varchar(200) DEFAULT NULL COMMENT '跑腿账号',
  `paotuixingming` varchar(200) DEFAULT NULL COMMENT '跑腿姓名',
  `paotuishouji` varchar(200) DEFAULT NULL COMMENT '跑腿手机',
  `wupinmingcheng` varchar(200) DEFAULT NULL COMMENT '物品名称',
  `wupinfenlei` varchar(200) DEFAULT NULL COMMENT '物品分类',
  `paotuifei` double DEFAULT NULL COMMENT '跑腿费',
  `quhuodidian` varchar(200) DEFAULT NULL COMMENT '取货地点',
  `songdadidian` varchar(200) DEFAULT NULL COMMENT '送达地点',
  `pingjianeirong` longtext COMMENT '评价内容',
  `pingjiashijian` datetime DEFAULT NULL COMMENT '评价时间',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `tupian` longtext COMMENT '图片',
  `crossuserid` bigint(20) DEFAULT NULL COMMENT '跨表用户id',
  `crossrefid` bigint(20) DEFAULT NULL COMMENT '跨表主键id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=97 DEFAULT CHARSET=utf8 COMMENT='订单评价';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dingdanpingjia`
--

LOCK TABLES `dingdanpingjia` WRITE;
/*!40000 ALTER TABLE `dingdanpingjia` DISABLE KEYS */;
INSERT INTO `dingdanpingjia` VALUES (91,'2024-05-09 06:58:16','订单编号1','账号1','用户姓名1','跑腿账号1','跑腿姓名1','跑腿手机1','物品名称1','物品分类1',1,'取货地点1','送达地点1','评价内容1','2024-05-09 14:58:16','手机1','file/dingdanpingjiaTupian1.jpg,file/dingdanpingjiaTupian2.jpg,file/dingdanpingjiaTupian3.jpg',1,1),(92,'2024-05-09 06:58:16','订单编号2','账号2','用户姓名2','跑腿账号2','跑腿姓名2','跑腿手机2','物品名称2','物品分类2',2,'取货地点2','送达地点2','评价内容2','2024-05-09 14:58:16','手机2','file/dingdanpingjiaTupian2.jpg,file/dingdanpingjiaTupian3.jpg,file/dingdanpingjiaTupian4.jpg',2,2),(93,'2024-05-09 06:58:16','订单编号3','账号3','用户姓名3','跑腿账号3','跑腿姓名3','跑腿手机3','物品名称3','物品分类3',3,'取货地点3','送达地点3','评价内容3','2024-05-09 14:58:16','手机3','file/dingdanpingjiaTupian3.jpg,file/dingdanpingjiaTupian4.jpg,file/dingdanpingjiaTupian5.jpg',3,3),(94,'2024-05-09 06:58:16','订单编号4','账号4','用户姓名4','跑腿账号4','跑腿姓名4','跑腿手机4','物品名称4','物品分类4',4,'取货地点4','送达地点4','评价内容4','2024-05-09 14:58:16','手机4','file/dingdanpingjiaTupian4.jpg,file/dingdanpingjiaTupian5.jpg,file/dingdanpingjiaTupian6.jpg',4,4),(95,'2024-05-09 06:58:16','订单编号5','账号5','用户姓名5','跑腿账号5','跑腿姓名5','跑腿手机5','物品名称5','物品分类5',5,'取货地点5','送达地点5','评价内容5','2024-05-09 14:58:16','手机5','file/dingdanpingjiaTupian5.jpg,file/dingdanpingjiaTupian6.jpg,file/dingdanpingjiaTupian7.jpg',5,5),(96,'2024-05-09 06:58:16','订单编号6','账号6','用户姓名6','跑腿账号6','跑腿姓名6','跑腿手机6','物品名称6','物品分类6',6,'取货地点6','送达地点6','评价内容6','2024-05-09 14:58:16','手机6','file/dingdanpingjiaTupian6.jpg,file/dingdanpingjiaTupian7.jpg,file/dingdanpingjiaTupian8.jpg',6,6);
/*!40000 ALTER TABLE `dingdanpingjia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dingdanwancheng`
--

DROP TABLE IF EXISTS `dingdanwancheng`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dingdanwancheng` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `dingdanbianhao` varchar(200) DEFAULT NULL COMMENT '订单编号',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `paotuizhanghao` varchar(200) DEFAULT NULL COMMENT '跑腿账号',
  `paotuixingming` varchar(200) DEFAULT NULL COMMENT '跑腿姓名',
  `paotuishouji` varchar(200) DEFAULT NULL COMMENT '跑腿手机',
  `wupinmingcheng` varchar(200) DEFAULT NULL COMMENT '物品名称',
  `wupinfenlei` varchar(200) DEFAULT NULL COMMENT '物品分类',
  `paotuifei` double DEFAULT NULL COMMENT '跑腿费',
  `quhuodidian` longtext COMMENT '取货地点',
  `songdadidian` longtext COMMENT '送达地点',
  `wanchengshijian` datetime DEFAULT NULL COMMENT '完成时间',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `tupian` longtext COMMENT '图片',
  `ispay` varchar(200) DEFAULT NULL COMMENT '是否支付',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=87 DEFAULT CHARSET=utf8 COMMENT='订单完成';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dingdanwancheng`
--

LOCK TABLES `dingdanwancheng` WRITE;
/*!40000 ALTER TABLE `dingdanwancheng` DISABLE KEYS */;
INSERT INTO `dingdanwancheng` VALUES (81,'2024-05-09 06:58:16','订单编号1','账号1','跑腿账号1','跑腿姓名1','跑腿手机1','物品名称1','物品分类1',1,'取货地点1','送达地点1','2024-05-09 14:58:16','手机1','file/dingdanwanchengTupian1.jpg,file/dingdanwanchengTupian2.jpg,file/dingdanwanchengTupian3.jpg','未支付'),(82,'2024-05-09 06:58:16','订单编号2','账号2','跑腿账号2','跑腿姓名2','跑腿手机2','物品名称2','物品分类2',2,'取货地点2','送达地点2','2024-05-09 14:58:16','手机2','file/dingdanwanchengTupian2.jpg,file/dingdanwanchengTupian3.jpg,file/dingdanwanchengTupian4.jpg','未支付'),(83,'2024-05-09 06:58:16','订单编号3','账号3','跑腿账号3','跑腿姓名3','跑腿手机3','物品名称3','物品分类3',3,'取货地点3','送达地点3','2024-05-09 14:58:16','手机3','file/dingdanwanchengTupian3.jpg,file/dingdanwanchengTupian4.jpg,file/dingdanwanchengTupian5.jpg','未支付'),(84,'2024-05-09 06:58:16','订单编号4','账号4','跑腿账号4','跑腿姓名4','跑腿手机4','物品名称4','物品分类4',4,'取货地点4','送达地点4','2024-05-09 14:58:16','手机4','file/dingdanwanchengTupian4.jpg,file/dingdanwanchengTupian5.jpg,file/dingdanwanchengTupian6.jpg','未支付'),(85,'2024-05-09 06:58:16','订单编号5','账号5','跑腿账号5','跑腿姓名5','跑腿手机5','物品名称5','物品分类5',5,'取货地点5','送达地点5','2024-05-09 14:58:16','手机5','file/dingdanwanchengTupian5.jpg,file/dingdanwanchengTupian6.jpg,file/dingdanwanchengTupian7.jpg','未支付'),(86,'2024-05-09 06:58:16','订单编号6','账号6','跑腿账号6','跑腿姓名6','跑腿手机6','物品名称6','物品分类6',6,'取货地点6','送达地点6','2024-05-09 14:58:16','手机6','file/dingdanwanchengTupian6.jpg,file/dingdanwanchengTupian7.jpg,file/dingdanwanchengTupian8.jpg','未支付');
/*!40000 ALTER TABLE `dingdanwancheng` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discusszhaopinxinxi`
--

DROP TABLE IF EXISTS `discusszhaopinxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `discusszhaopinxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `avatarurl` longtext COMMENT '头像',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='招聘信息评论表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discusszhaopinxinxi`
--

LOCK TABLES `discusszhaopinxinxi` WRITE;
/*!40000 ALTER TABLE `discusszhaopinxinxi` DISABLE KEYS */;
/*!40000 ALTER TABLE `discusszhaopinxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jiedanxinxi`
--

DROP TABLE IF EXISTS `jiedanxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jiedanxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `dingdanbianhao` varchar(200) DEFAULT NULL COMMENT '订单编号',
  `paotuizhanghao` varchar(200) DEFAULT NULL COMMENT '跑腿账号',
  `paotuixingming` varchar(200) DEFAULT NULL COMMENT '跑腿姓名',
  `paotuishouji` varchar(200) DEFAULT NULL COMMENT '跑腿手机',
  `wupinmingcheng` varchar(200) DEFAULT NULL COMMENT '物品名称',
  `wupinfenlei` varchar(200) DEFAULT NULL COMMENT '物品分类',
  `paotuifei` double DEFAULT NULL COMMENT '跑腿费',
  `quhuodidian` longtext COMMENT '取货地点',
  `songdadidian` longtext COMMENT '送达地点',
  `dingdanzhuangtai` varchar(200) DEFAULT NULL COMMENT '订单状态',
  `jiedanshijian` datetime DEFAULT NULL COMMENT '接单时间',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `yonghuxingming` varchar(200) DEFAULT NULL COMMENT '用户姓名',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `tupian` longtext COMMENT '图片',
  PRIMARY KEY (`id`),
  UNIQUE KEY `dingdanbianhao` (`dingdanbianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=utf8 COMMENT='接单信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jiedanxinxi`
--

LOCK TABLES `jiedanxinxi` WRITE;
/*!40000 ALTER TABLE `jiedanxinxi` DISABLE KEYS */;
INSERT INTO `jiedanxinxi` VALUES (71,'2024-05-09 06:58:16','1111111111','跑腿账号1','跑腿姓名1','跑腿手机1','物品名称1','物品分类1',1,'取货地点1','送达地点1','已完成或已取消','2024-05-09 14:58:16','账号1','用户姓名1','手机1','file/jiedanxinxiTupian1.jpg,file/jiedanxinxiTupian2.jpg,file/jiedanxinxiTupian3.jpg'),(72,'2024-05-09 06:58:16','2222222222','跑腿账号2','跑腿姓名2','跑腿手机2','物品名称2','物品分类2',2,'取货地点2','送达地点2','已完成或已取消','2024-05-09 14:58:16','账号2','用户姓名2','手机2','file/jiedanxinxiTupian2.jpg,file/jiedanxinxiTupian3.jpg,file/jiedanxinxiTupian4.jpg'),(73,'2024-05-09 06:58:16','3333333333','跑腿账号3','跑腿姓名3','跑腿手机3','物品名称3','物品分类3',3,'取货地点3','送达地点3','已完成或已取消','2024-05-09 14:58:16','账号3','用户姓名3','手机3','file/jiedanxinxiTupian3.jpg,file/jiedanxinxiTupian4.jpg,file/jiedanxinxiTupian5.jpg'),(74,'2024-05-09 06:58:16','4444444444','跑腿账号4','跑腿姓名4','跑腿手机4','物品名称4','物品分类4',4,'取货地点4','送达地点4','已完成或已取消','2024-05-09 14:58:16','账号4','用户姓名4','手机4','file/jiedanxinxiTupian4.jpg,file/jiedanxinxiTupian5.jpg,file/jiedanxinxiTupian6.jpg'),(75,'2024-05-09 06:58:16','5555555555','跑腿账号5','跑腿姓名5','跑腿手机5','物品名称5','物品分类5',5,'取货地点5','送达地点5','已完成或已取消','2024-05-09 14:58:16','账号5','用户姓名5','手机5','file/jiedanxinxiTupian5.jpg,file/jiedanxinxiTupian6.jpg,file/jiedanxinxiTupian7.jpg'),(76,'2024-05-09 06:58:16','6666666666','跑腿账号6','跑腿姓名6','跑腿手机6','物品名称6','物品分类6',6,'取货地点6','送达地点6','已完成或已取消','2024-05-09 14:58:16','账号6','用户姓名6','手机6','file/jiedanxinxiTupian6.jpg,file/jiedanxinxiTupian7.jpg,file/jiedanxinxiTupian8.jpg');
/*!40000 ALTER TABLE `jiedanxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu`
--

DROP TABLE IF EXISTS `menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `menujson` longtext COMMENT '菜单',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='菜单';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu`
--

LOCK TABLES `menu` WRITE;
/*!40000 ALTER TABLE `menu` DISABLE KEYS */;
INSERT INTO `menu` VALUES (1,'2024-05-09 06:58:16','[{\"backMenu\":[{\"child\":[{\"appFrontIcon\":\"cuIcon-clothes\",\"buttons\":[\"查看\",\"修改\",\"删除\",\"回复\"],\"menu\":\"在线留言\",\"menuJump\":\"列表\",\"tableName\":\"messages\"}],\"fontClass\":\"icon-common26\",\"menu\":\"留言板管理\",\"unicode\":\"&#xee2b;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-goods\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"menu\":\"系统公告\",\"menuJump\":\"列表\",\"tableName\":\"news\"}],\"fontClass\":\"icon-common21\",\"menu\":\"系统公告管理\",\"unicode\":\"&#xee03;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-time\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\",\"查看评论\"],\"menu\":\"招聘信息\",\"menuJump\":\"列表\",\"tableName\":\"zhaopinxinxi\"}],\"fontClass\":\"icon-common3\",\"menu\":\"招聘管理\",\"unicode\":\"&#xeda5;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-circle\",\"buttons\":[\"查看\",\"修改\",\"删除\",\"取消订单\"],\"menu\":\"接单信息\",\"menuJump\":\"列表\",\"tableName\":\"jiedanxinxi\"},{\"appFrontIcon\":\"cuIcon-flashlightopen\",\"buttons\":[\"查看\",\"修改\",\"删除\"],\"menu\":\"订单完成\",\"menuJump\":\"列表\",\"tableName\":\"dingdanwancheng\"},{\"appFrontIcon\":\"cuIcon-full\",\"buttons\":[\"查看\",\"修改\",\"删除\"],\"menu\":\"订单评价\",\"menuJump\":\"列表\",\"tableName\":\"dingdanpingjia\"},{\"appFrontIcon\":\"cuIcon-list\",\"buttons\":[\"查看\",\"修改\",\"删除\"],\"menu\":\"取消订单\",\"menuJump\":\"列表\",\"tableName\":\"quxiaodingdan\"}],\"fontClass\":\"icon-common25\",\"menu\":\"订单管理\",\"unicode\":\"&#xee09;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-circle\",\"buttons\":[\"查看\",\"修改\",\"删除\"],\"menu\":\"跑腿任务\",\"menuJump\":\"列表\",\"tableName\":\"paotuirenwu\"}],\"fontClass\":\"icon-common13\",\"menu\":\"跑腿任务管理\",\"unicode\":\"&#xedf7;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-discover\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"menu\":\"物品分类\",\"menuJump\":\"列表\",\"tableName\":\"wupinfenlei\"}],\"fontClass\":\"icon-common25\",\"menu\":\"物品分类管理\",\"unicode\":\"&#xee09;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-keyboard\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"menu\":\"跑腿\",\"menuJump\":\"列表\",\"tableName\":\"paotui\"}],\"fontClass\":\"icon-user3\",\"menu\":\"跑腿管理\",\"unicode\":\"&#xef99;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-link\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"menu\":\"用户\",\"menuJump\":\"列表\",\"tableName\":\"yonghu\"}],\"fontClass\":\"icon-user6\",\"menu\":\"用户管理\",\"unicode\":\"&#xef9c;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-taxi\",\"buttons\":[\"查看\",\"修改\"],\"menu\":\"轮播图\",\"menuJump\":\"列表\",\"tableName\":\"config\"}],\"fontClass\":\"icon-common47\",\"menu\":\"轮播图管理\",\"unicode\":\"&#xef63;\"}],\"frontMenu\":[{\"child\":[{\"appFrontIcon\":\"cuIcon-flashlightopen\",\"buttons\":[\"查看\",\"接单\",\"新增\"],\"menu\":\"跑腿任务\",\"menuJump\":\"列表\",\"tableName\":\"paotuirenwu\"}],\"menu\":\"跑腿任务管理\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-wenzi\",\"buttons\":[\"查看\"],\"menu\":\"系统公告\",\"menuJump\":\"列表\",\"tableName\":\"news\"}],\"menu\":\"新闻资讯管理\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-vipcard\",\"buttons\":[\"查看\",\"查看评论\"],\"menu\":\"招聘信息\",\"menuJump\":\"列表\",\"tableName\":\"zhaopinxinxi\"}],\"menu\":\"兼职招聘管理\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-vipcard\",\"buttons\":[\"查看\",\"新增\"],\"menu\":\"在线留言\",\"menuJump\":\"列表\",\"tableName\":\"messages\"}],\"menu\":\"留言板管理\"}],\"hasBackLogin\":\"是\",\"hasBackRegister\":\"否\",\"hasFrontLogin\":\"否\",\"hasFrontRegister\":\"否\",\"roleName\":\"管理员\",\"tableName\":\"users\"},{\"backMenu\":[{\"child\":[{\"appFrontIcon\":\"cuIcon-similar\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"menu\":\"我的收藏\",\"menuJump\":\"1\",\"tableName\":\"storeup\"}],\"fontClass\":\"icon-common8\",\"menu\":\"我的收藏管理\",\"unicode\":\"&#xedb6;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-circle\",\"buttons\":[\"查看\"],\"menu\":\"接单信息\",\"menuJump\":\"列表\",\"tableName\":\"jiedanxinxi\"},{\"appFrontIcon\":\"cuIcon-flashlightopen\",\"buttons\":[\"查看\",\"支付\",\"评价\"],\"menu\":\"订单完成\",\"menuJump\":\"列表\",\"tableName\":\"dingdanwancheng\"},{\"appFrontIcon\":\"cuIcon-full\",\"buttons\":[\"查看\"],\"menu\":\"订单评价\",\"menuJump\":\"列表\",\"tableName\":\"dingdanpingjia\"},{\"appFrontIcon\":\"cuIcon-list\",\"buttons\":[\"查看\"],\"menu\":\"取消订单\",\"menuJump\":\"列表\",\"tableName\":\"quxiaodingdan\"}],\"fontClass\":\"icon-common25\",\"menu\":\"订单管理\",\"unicode\":\"&#xee09;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-circle\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"menu\":\"跑腿任务\",\"menuJump\":\"列表\",\"tableName\":\"paotuirenwu\"}],\"fontClass\":\"icon-common13\",\"menu\":\"跑腿任务管理\",\"unicode\":\"&#xedf7;\"}],\"frontMenu\":[{\"child\":[{\"appFrontIcon\":\"cuIcon-flashlightopen\",\"buttons\":[\"查看\",\"接单\",\"新增\"],\"menu\":\"跑腿任务\",\"menuJump\":\"列表\",\"tableName\":\"paotuirenwu\"}],\"menu\":\"跑腿任务管理\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-wenzi\",\"buttons\":[\"查看\"],\"menu\":\"系统公告\",\"menuJump\":\"列表\",\"tableName\":\"news\"}],\"menu\":\"新闻资讯管理\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-vipcard\",\"buttons\":[\"查看\",\"查看评论\"],\"menu\":\"招聘信息\",\"menuJump\":\"列表\",\"tableName\":\"zhaopinxinxi\"}],\"menu\":\"兼职招聘管理\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-vipcard\",\"buttons\":[\"查看\",\"新增\"],\"menu\":\"在线留言\",\"menuJump\":\"列表\",\"tableName\":\"messages\"}],\"menu\":\"留言板管理\"}],\"hasBackLogin\":\"否\",\"hasBackRegister\":\"否\",\"hasFrontLogin\":\"是\",\"hasFrontRegister\":\"是\",\"roleName\":\"用户\",\"tableName\":\"yonghu\"},{\"backMenu\":[{\"child\":[{\"appFrontIcon\":\"cuIcon-circle\",\"buttons\":[\"查看\",\"完成任务\"],\"menu\":\"接单信息\",\"menuJump\":\"列表\",\"tableName\":\"jiedanxinxi\"},{\"appFrontIcon\":\"cuIcon-flashlightopen\",\"buttons\":[\"查看\"],\"menu\":\"订单完成\",\"menuJump\":\"列表\",\"tableName\":\"dingdanwancheng\"},{\"appFrontIcon\":\"cuIcon-full\",\"buttons\":[\"查看\"],\"menu\":\"订单评价\",\"menuJump\":\"列表\",\"tableName\":\"dingdanpingjia\"},{\"appFrontIcon\":\"cuIcon-list\",\"buttons\":[\"查看\"],\"menu\":\"取消订单\",\"menuJump\":\"列表\",\"tableName\":\"quxiaodingdan\"}],\"fontClass\":\"icon-common25\",\"menu\":\"订单管理\",\"unicode\":\"&#xee09;\"}],\"frontMenu\":[{\"child\":[{\"appFrontIcon\":\"cuIcon-flashlightopen\",\"buttons\":[\"查看\",\"接单\",\"新增\"],\"menu\":\"跑腿任务\",\"menuJump\":\"列表\",\"tableName\":\"paotuirenwu\"}],\"menu\":\"跑腿任务管理\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-wenzi\",\"buttons\":[\"查看\"],\"menu\":\"系统公告\",\"menuJump\":\"列表\",\"tableName\":\"news\"}],\"menu\":\"新闻资讯管理\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-vipcard\",\"buttons\":[\"查看\",\"查看评论\"],\"menu\":\"招聘信息\",\"menuJump\":\"列表\",\"tableName\":\"zhaopinxinxi\"}],\"menu\":\"兼职招聘管理\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-vipcard\",\"buttons\":[\"查看\",\"新增\"],\"menu\":\"在线留言\",\"menuJump\":\"列表\",\"tableName\":\"messages\"}],\"menu\":\"留言板管理\"}],\"hasBackLogin\":\"否\",\"hasBackRegister\":\"否\",\"hasFrontLogin\":\"是\",\"hasFrontRegister\":\"是\",\"roleName\":\"跑腿\",\"tableName\":\"paotui\"}]');
/*!40000 ALTER TABLE `menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `messages`
--

DROP TABLE IF EXISTS `messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `messages` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '留言人id',
  `username` varchar(200) DEFAULT NULL COMMENT '用户名',
  `avatarurl` longtext COMMENT '头像',
  `content` longtext NOT NULL COMMENT '留言内容',
  `cpicture` longtext COMMENT '留言图片',
  `reply` longtext COMMENT '回复内容',
  `rpicture` longtext COMMENT '回复图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=127 DEFAULT CHARSET=utf8 COMMENT='在线留言';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `messages`
--

LOCK TABLES `messages` WRITE;
/*!40000 ALTER TABLE `messages` DISABLE KEYS */;
INSERT INTO `messages` VALUES (121,'2024-05-09 06:58:16',1,'用户名1','file/messagesAvatarurl1.jpg','留言内容1','file/messagesCpicture1.jpg','回复内容1','file/messagesRpicture1.jpg'),(122,'2024-05-09 06:58:16',2,'用户名2','file/messagesAvatarurl2.jpg','留言内容2','file/messagesCpicture2.jpg','回复内容2','file/messagesRpicture2.jpg'),(123,'2024-05-09 06:58:16',3,'用户名3','file/messagesAvatarurl3.jpg','留言内容3','file/messagesCpicture3.jpg','回复内容3','file/messagesRpicture3.jpg'),(124,'2024-05-09 06:58:16',4,'用户名4','file/messagesAvatarurl4.jpg','留言内容4','file/messagesCpicture4.jpg','回复内容4','file/messagesRpicture4.jpg'),(125,'2024-05-09 06:58:16',5,'用户名5','file/messagesAvatarurl5.jpg','留言内容5','file/messagesCpicture5.jpg','回复内容5','file/messagesRpicture5.jpg'),(126,'2024-05-09 06:58:16',6,'用户名6','file/messagesAvatarurl6.jpg','留言内容6','file/messagesCpicture6.jpg','回复内容6','file/messagesRpicture6.jpg');
/*!40000 ALTER TABLE `messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `news`
--

DROP TABLE IF EXISTS `news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `news` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) NOT NULL COMMENT '标题',
  `introduction` longtext COMMENT '简介',
  `picture` longtext NOT NULL COMMENT '图片',
  `content` longtext NOT NULL COMMENT '内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=147 DEFAULT CHARSET=utf8 COMMENT='系统公告';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `news`
--

LOCK TABLES `news` WRITE;
/*!40000 ALTER TABLE `news` DISABLE KEYS */;
INSERT INTO `news` VALUES (141,'2024-05-09 06:58:16','青花瓷','素胚勾勒出青花笔锋浓转淡，瓶身描绘的牡丹一如你初妆，冉冉檀香透过窗心事我了然，宣上走笔至此搁一半，釉色渲染仕女图韵味被私藏，而你嫣然的一笑如含苞待放，你的美缕飘散，去到我去不了的地方，天青色等烟雨 而我在等你，炊烟袅袅升起','file/newsPicture1.jpg','素胚勾勒出青花笔锋浓转淡，瓶身描绘的牡丹一如你初妆，冉冉檀香透过窗心事我了然，宣上走笔至此搁一半，釉色渲染仕女图韵味被私藏，而你嫣然的一笑如含苞待放，你的美缕飘散，去到我去不了的地方，天青色等烟雨 而我在等你，炊烟袅袅升起， 隔江千万里，在瓶底书前朝的飘逸，就当我为遇见你伏笔，天青色等烟雨， 而我在等你，月色被打捞起， 晕开了局，如传世的青花瓷自顾自美丽，你眼带笑意，色白花青的锦鲤跃然于碗底，临摹宋体落款时却惦记着你，你隐藏在窑烧里千年的秘密，极细腻犹如绣花针落地，帘外芭蕉惹骤雨门环惹铜绿，而我路过那江南小镇惹了你，在泼墨山水画里，你从墨色深处被隐去，天青色等烟雨 ，而我在等你，炊烟袅袅升起 ，隔江千万里，在瓶底书汉隶仿前朝的飘逸，就当我为遇见你伏笔，天色等烟雨 ，而我在等你，月色被打捞起， 晕开了结局，如传世的青花瓷自顾自美丽，你眼带笑意，天青色等烟雨 ，而我在等你，炊烟袅袅升起 ，隔江千万里，在瓶底书汉隶仿前朝的飘逸，就当我为遇见你伏笔，天青色等烟雨， 而我在等你，月色被打捞起 ，晕开了结局，如传世的青花瓷自顾自美丽，你眼带笑意。'),(142,'2024-05-09 06:58:16','理想三旬','雨后有车驶来，驶过暮色苍白，旧铁皮往南开，恋人已不在，收听浓烟下的，诗歌电台，不动情的咳嗽，至少看起来，归途也还可爱，琴弦少了姿态，再不见那夜里，听歌的小孩，时光匆匆独白，将颠沛磨成卡带，已枯倦的情怀，踏碎成年代，就老去吧，孤独别醒来，你渴望的离开，只是无处停摆，就歌唱吧，眼睛眯起来，而热泪的崩坏，只是没抵达的存在','file/newsPicture2.jpg','雨后有车驶来，驶过暮色苍白，旧铁皮往南开，恋人已不在，收听浓烟下的，诗歌电台，不动情的咳嗽，至少看起来，归途也还可爱，琴弦少了姿态，再不见那夜里，听歌的小孩，时光匆匆独白，将颠沛磨成卡带，已枯倦的情怀，踏碎成年代，就老去吧，孤独别醒来，你渴望的离开，只是无处停摆，就歌唱吧，眼睛眯起来，而热泪的崩坏，只是没抵达的存在，青春又醉倒在，籍籍无名的怀，靠嬉笑来虚度，聚散得慷慨，辗转却去不到，对的站台，如果漂泊是成长，必经的路牌，你迷醒岁月中，那贫瘠的未来，像遗憾季节里，未结果的爱，弄脏了每一页诗，吻最疼痛的告白，而风声吹到这，已不需要释怀，就老去吧，孤独别醒来，渴望的离开只是无处停摆就歌唱吧，眼睛眯起来而热泪的崩坏，只是没抵达的存在，就甜蜜地忍耐，繁星润湿窗台，光影跳动着像在，困倦里说爱，再无谓的感慨，以为明白，梦倒塌的地方，今已爬满青苔。'),(143,'2024-05-09 06:58:16','七里香','窗外的麻雀在电线杆上多嘴，你说这一句很有夏天的感觉，手中的铅笔在纸上来来回回，我用几行字形容你是我的谁，秋刀鱼的滋味猫跟你都想了解，初恋的香味就这样被我们寻回，那温暖的阳光像刚摘的鲜艳草莓，你说你舍不得吃掉这一种感觉，雨下整夜我的爱溢出就像雨水，院子落叶跟我的思念厚厚一叠','file/newsPicture3.jpg','窗外的麻雀在电线杆上多嘴，你说这一句很有夏天的感觉，手中的铅笔在纸上来来回回，我用几行字形容你是我的谁，秋刀鱼的滋味猫跟你都想了解，初恋的香味就这样被我们寻回，那温暖的阳光像刚摘的鲜艳草莓，你说你舍不得吃掉这一种感觉，雨下整夜我的爱溢出就像雨水，院子落叶跟我的思念厚厚一叠，几句是非也无法将我的热情冷却，你出现在我诗的每一页，雨下整夜我的爱溢出就像雨水，窗台蝴蝶像诗里纷飞的美丽章节，我接着写，把永远爱你写进诗的结尾，你是我唯一想要的了解，雨下整夜我的爱溢出就像雨水，院子落叶跟我的思念厚厚一叠，几句是非也无法将我的热情冷却，你出现在我诗的每一页，那饱满的稻穗幸福了这个季节，而你的脸颊像田里熟透的番茄，你突然对我说七里香的名字很美，我此刻却只想亲吻你倔强的嘴，雨下整夜我的爱溢出就像雨水，院子落叶跟我的思念厚厚一叠，几句是非也无法将我的热情冷却，你出现在我诗的每一页，整夜我的爱溢出就像雨水，窗台蝴蝶像诗里纷飞的美丽章节，我接着写，把永远爱你写进诗的结尾，是我唯一想要的了解。'),(144,'2024-05-09 06:58:16','江南','风到这里就是粘，粘住过客的思念，雨到了这里缠成线，缠着我们流连人世间，你在身边就是缘，缘分写在三生石上面，爱有万分之一甜，宁愿我就葬在这一点，圈圈圆圆圈圈，天天年年天天的我，深深看你的脸，生气的温柔，埋怨的温柔的脸','file/newsPicture4.jpg','风到这里就是粘，粘住过客的思念，雨到了这里缠成线，缠着我们流连人世间，你在身边就是缘，缘分写在三生石上面，爱有万分之一甜，宁愿我就葬在这一点，圈圈圆圆圈圈，天天年年天天的我，深深看你的脸，生气的温柔，埋怨的温柔的脸，不懂爱恨情愁煎熬的我们，都以为相爱就像风云的善变，相信爱一天抵过永远，在这一刹那冻结了时间，不懂怎么表现温柔的我们，还以为殉情只是古老的传言，离愁能有多痛痛有多浓，当梦被埋在江南烟雨中，心碎了才懂，圈圈圆圆圈圈，天天年年天天的我，深深看你的脸，生气的温柔，埋怨的温柔的脸，不懂爱恨情愁煎熬的我们，都以为相爱就像风云的善变，相信爱一天 抵过永远，在这一刹那冻结了时间，不懂怎么表现温柔的我们，还以为殉情只是古老的传言，离愁能有多痛 痛有多浓，当梦被埋在江南烟雨中，心碎了才懂，相信爱一天抵过永远。在这一刹那冻结了时间，不懂怎么表现温柔的我们，还以为殉情只是古老的传言，离愁能有多痛 痛有多浓，当梦被埋在江南烟雨中，心碎了才懂。'),(145,'2024-05-09 06:58:16','那些你很冒险的梦','当两颗心开始震动，当你瞳孔学会闪躲，当爱慢慢被遮住只剩下黑，距离像影子被拉拖，当爱的故事剩听说，我找不到你单纯的面孔，当生命每分每秒都为你转动，心多执着就加倍心痛，那些你很冒险的梦， 我陪你去疯，折纸飞机碰到雨天终究会坠落','file/newsPicture5.jpg','当两颗心开始震动，当你瞳孔学会闪躲，当爱慢慢被遮住只剩下黑，距离像影子被拉拖，当爱的故事剩听说，我找不到你单纯的面孔，当生命每分每秒都为你转动，心多执着就加倍心痛，那些你很冒险的梦， 我陪你去疯，折纸飞机碰到雨天终究会坠落，太残忍的话我直说 因为爱很重，你却不想懂 只往反方向走，当爱的故事剩听说，我找不到你单纯的面孔，当生命每分每秒都为你转动，心有多执着就加倍心痛，那些你很冒险的梦 我陪你去疯，折纸飞机 碰到雨天 终究会坠落，太残忍的话我直说 因为爱很重，你却不想懂 只往反方向走，我不想放手 你松开的左手，你爱的放纵 我白不回天空，我输了 累了，但你再也 不回头，那些你很冒险的梦 我陪你去疯，折纸飞机 碰到雨天 终究会坠落，太残忍的话我直说 因为爱很重，你却不想懂 只往反方向走，你真的不懂 我的爱已降落。'),(146,'2024-05-09 06:58:16','孤勇者','都，是勇敢的，你额头的伤口 你的 不同 你犯的错，都 不必隐藏，你破旧的玩偶 你的 面具 你的自我，他们说 要带着光 驯服每一头怪兽，他们说 要缝好你的伤，没有人爱小丑 为何孤独 不可 光荣，人只有不完美 值得歌颂，谁说污泥满身的不算英雄，爱你孤身走暗巷，爱你不跪的模样，爱你对峙过绝望','file/newsPicture6.jpg','都，是勇敢的，你额头的伤口 你的 不同 你犯的错，都 不必隐藏，你破旧的玩偶 你的 面具 你的自我，他们说 要带着光 驯服每一头怪兽，他们说 要缝好你的伤，没有人爱小丑 为何孤独 不可 光荣，人只有不完美 值得歌颂，谁说污泥满身的不算英雄，爱你孤身走暗巷，爱你不跪的模样，爱你对峙过绝望，不肯哭一场，爱你破烂的衣裳，却敢堵命运的枪，爱你和我那么像，缺口都一样，去吗 配吗 这褴褛的披风，战吗 战啊 以最卑微的梦，致那黑夜中的呜咽与怒吼，谁说站在光里的才算英雄，他们说 要戒了你的狂，就像擦掉了污垢，他们说 要顺台阶而上，而代价是低头，那就让我 不可 乘风，你一样骄傲着 那种孤勇，谁说对弈平凡的不算英雄，爱你孤身走暗巷 爱你不跪的模样，爱你对峙过绝望 不肯哭一场，爱你破烂的衣裳 却敢堵命运的枪，爱你和我那么像 缺口都一样，去吗 配吗 这褴褛的披风，战吗 战啊 以最卑微的梦，致那黑夜中的呜咽与怒吼，谁说站在光里的才算英雄，你的斑驳 与众不同 与众不同，你的沉默 震耳欲聋 震耳欲聋，You Are The Hero，爱你孤身走暗巷 爱你不跪的模样，爱你对峙过绝望 不肯哭一场，爱你来自于蛮荒 一生不借谁的光，你将造你的城邦 在废墟之上，去吗 去啊 以最卑微的梦，战吗 战啊 以最孤高的梦，致那黑夜中的呜咽与怒吼，谁说站在光里的才算英雄。');
/*!40000 ALTER TABLE `news` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `paotui`
--

DROP TABLE IF EXISTS `paotui`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `paotui` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `paotuizhanghao` varchar(200) NOT NULL COMMENT '跑腿账号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `paotuixingming` varchar(200) NOT NULL COMMENT '跑腿姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `shenfenzheng` varchar(200) NOT NULL COMMENT '身份证',
  `paotuishouji` varchar(200) NOT NULL COMMENT '跑腿手机',
  `touxiang` longtext COMMENT '头像',
  PRIMARY KEY (`id`),
  UNIQUE KEY `paotuizhanghao` (`paotuizhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8 COMMENT='跑腿';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `paotui`
--

LOCK TABLES `paotui` WRITE;
/*!40000 ALTER TABLE `paotui` DISABLE KEYS */;
INSERT INTO `paotui` VALUES (41,'2024-05-09 06:58:16','跑腿账号1','123456','跑腿姓名1','男','441622200101010001','19819881111','file/paotuiTouxiang1.jpg'),(42,'2024-05-09 06:58:16','跑腿账号2','123456','跑腿姓名2','男','441622200202020002','19819881112','file/paotuiTouxiang2.jpg'),(43,'2024-05-09 06:58:16','跑腿账号3','123456','跑腿姓名3','男','441622200303030003','19819881113','file/paotuiTouxiang3.jpg'),(44,'2024-05-09 06:58:16','跑腿账号4','123456','跑腿姓名4','男','441622200404040004','19819881114','file/paotuiTouxiang4.jpg'),(45,'2024-05-09 06:58:16','跑腿账号5','123456','跑腿姓名5','男','441622200505050005','19819881115','file/paotuiTouxiang5.jpg'),(46,'2024-05-09 06:58:16','跑腿账号6','123456','跑腿姓名6','男','441622200606060006','19819881116','file/paotuiTouxiang6.jpg');
/*!40000 ALTER TABLE `paotui` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `paotuirenwu`
--

DROP TABLE IF EXISTS `paotuirenwu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `paotuirenwu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `wupinmingcheng` varchar(200) NOT NULL COMMENT '物品名称',
  `wupinfenlei` varchar(200) NOT NULL COMMENT '物品分类',
  `renwumiaoshu` varchar(200) NOT NULL COMMENT '任务描述',
  `quhuodidian` longtext NOT NULL COMMENT '取货地点',
  `songdadidian` longtext NOT NULL COMMENT '送达地点',
  `paotuifei` double NOT NULL COMMENT '跑腿费',
  `tupian` longtext NOT NULL COMMENT '图片',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `yonghuxingming` varchar(200) DEFAULT NULL COMMENT '用户姓名',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `fabushijian` datetime DEFAULT NULL COMMENT '发布时间',
  `zhuangtai` varchar(200) DEFAULT NULL COMMENT '状态',
  `renwubianhao` varchar(200) DEFAULT NULL COMMENT '任务编号',
  PRIMARY KEY (`id`),
  UNIQUE KEY `renwubianhao` (`renwubianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8 COMMENT='跑腿任务';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `paotuirenwu`
--

LOCK TABLES `paotuirenwu` WRITE;
/*!40000 ALTER TABLE `paotuirenwu` DISABLE KEYS */;
INSERT INTO `paotuirenwu` VALUES (51,'2024-05-09 06:58:16','物品名称1','物品分类1','任务描述1','取货地点1','送达地点1',1,'file/paotuirenwuTupian1.jpg,file/paotuirenwuTupian2.jpg,file/paotuirenwuTupian3.jpg','账号1','用户姓名1','手机1','2024-05-09 14:58:16','已接单','1111111111'),(52,'2024-05-09 06:58:16','物品名称2','物品分类2','任务描述2','取货地点2','送达地点2',2,'file/paotuirenwuTupian2.jpg,file/paotuirenwuTupian3.jpg,file/paotuirenwuTupian4.jpg','账号2','用户姓名2','手机2','2024-05-09 14:58:16','已接单','2222222222'),(53,'2024-05-09 06:58:16','物品名称3','物品分类3','任务描述3','取货地点3','送达地点3',3,'file/paotuirenwuTupian3.jpg,file/paotuirenwuTupian4.jpg,file/paotuirenwuTupian5.jpg','账号3','用户姓名3','手机3','2024-05-09 14:58:16','已接单','3333333333'),(54,'2024-05-09 06:58:16','物品名称4','物品分类4','任务描述4','取货地点4','送达地点4',4,'file/paotuirenwuTupian4.jpg,file/paotuirenwuTupian5.jpg,file/paotuirenwuTupian6.jpg','账号4','用户姓名4','手机4','2024-05-09 14:58:16','已接单','4444444444'),(55,'2024-05-09 06:58:16','物品名称5','物品分类5','任务描述5','取货地点5','送达地点5',5,'file/paotuirenwuTupian5.jpg,file/paotuirenwuTupian6.jpg,file/paotuirenwuTupian7.jpg','账号5','用户姓名5','手机5','2024-05-09 14:58:16','已接单','5555555555'),(56,'2024-05-09 06:58:16','物品名称6','物品分类6','任务描述6','取货地点6','送达地点6',6,'file/paotuirenwuTupian6.jpg,file/paotuirenwuTupian7.jpg,file/paotuirenwuTupian8.jpg','账号6','用户姓名6','手机6','2024-05-09 14:58:16','已接单','6666666666');
/*!40000 ALTER TABLE `paotuirenwu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `quxiaodingdan`
--

DROP TABLE IF EXISTS `quxiaodingdan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `quxiaodingdan` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `dingdanbianhao` varchar(200) DEFAULT NULL COMMENT '订单编号',
  `paotuizhanghao` varchar(200) DEFAULT NULL COMMENT '跑腿账号',
  `paotuixingming` varchar(200) DEFAULT NULL COMMENT '跑腿姓名',
  `paotuishouji` varchar(200) DEFAULT NULL COMMENT '跑腿手机',
  `wupinmingcheng` varchar(200) DEFAULT NULL COMMENT '物品名称',
  `wupinfenlei` varchar(200) DEFAULT NULL COMMENT '物品分类',
  `paotuifei` double DEFAULT NULL COMMENT '跑腿费',
  `quhuodidian` longtext COMMENT '取货地点',
  `songdadidian` longtext COMMENT '送达地点',
  `wanchengzhuangtai` varchar(200) DEFAULT NULL COMMENT '完成状态',
  `jiedanshijian` datetime DEFAULT NULL COMMENT '接单时间',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `yonghuxingming` varchar(200) DEFAULT NULL COMMENT '用户姓名',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `tupian` longtext COMMENT '图片',
  `quxiaoshijian` datetime DEFAULT NULL COMMENT '取消时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `dingdanbianhao` (`dingdanbianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=137 DEFAULT CHARSET=utf8 COMMENT='取消订单';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `quxiaodingdan`
--

LOCK TABLES `quxiaodingdan` WRITE;
/*!40000 ALTER TABLE `quxiaodingdan` DISABLE KEYS */;
INSERT INTO `quxiaodingdan` VALUES (131,'2024-05-09 06:58:16','1111111111','跑腿账号1','跑腿姓名1','跑腿手机1','物品名称1','物品分类1',1,'取货地点1','送达地点1','已完成','2024-05-09 14:58:16','账号1','用户姓名1','手机1','file/quxiaodingdanTupian1.jpg,file/quxiaodingdanTupian2.jpg,file/quxiaodingdanTupian3.jpg','2024-05-09 14:58:16'),(132,'2024-05-09 06:58:16','2222222222','跑腿账号2','跑腿姓名2','跑腿手机2','物品名称2','物品分类2',2,'取货地点2','送达地点2','已完成','2024-05-09 14:58:16','账号2','用户姓名2','手机2','file/quxiaodingdanTupian2.jpg,file/quxiaodingdanTupian3.jpg,file/quxiaodingdanTupian4.jpg','2024-05-09 14:58:16'),(133,'2024-05-09 06:58:16','3333333333','跑腿账号3','跑腿姓名3','跑腿手机3','物品名称3','物品分类3',3,'取货地点3','送达地点3','已完成','2024-05-09 14:58:16','账号3','用户姓名3','手机3','file/quxiaodingdanTupian3.jpg,file/quxiaodingdanTupian4.jpg,file/quxiaodingdanTupian5.jpg','2024-05-09 14:58:16'),(134,'2024-05-09 06:58:16','4444444444','跑腿账号4','跑腿姓名4','跑腿手机4','物品名称4','物品分类4',4,'取货地点4','送达地点4','已完成','2024-05-09 14:58:16','账号4','用户姓名4','手机4','file/quxiaodingdanTupian4.jpg,file/quxiaodingdanTupian5.jpg,file/quxiaodingdanTupian6.jpg','2024-05-09 14:58:16'),(135,'2024-05-09 06:58:16','5555555555','跑腿账号5','跑腿姓名5','跑腿手机5','物品名称5','物品分类5',5,'取货地点5','送达地点5','已完成','2024-05-09 14:58:16','账号5','用户姓名5','手机5','file/quxiaodingdanTupian5.jpg,file/quxiaodingdanTupian6.jpg,file/quxiaodingdanTupian7.jpg','2024-05-09 14:58:16'),(136,'2024-05-09 06:58:16','6666666666','跑腿账号6','跑腿姓名6','跑腿手机6','物品名称6','物品分类6',6,'取货地点6','送达地点6','已完成','2024-05-09 14:58:16','账号6','用户姓名6','手机6','file/quxiaodingdanTupian6.jpg,file/quxiaodingdanTupian7.jpg,file/quxiaodingdanTupian8.jpg','2024-05-09 14:58:16');
/*!40000 ALTER TABLE `quxiaodingdan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `storeup`
--

DROP TABLE IF EXISTS `storeup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `storeup` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) DEFAULT NULL COMMENT 'refid',
  `tablename` varchar(200) DEFAULT NULL COMMENT '表名',
  `name` varchar(200) NOT NULL COMMENT '名称',
  `picture` longtext NOT NULL COMMENT '图片',
  `type` varchar(200) DEFAULT NULL COMMENT '类型(1:收藏,21:赞,22:踩,31:竞拍参与,41:关注)',
  `inteltype` varchar(200) DEFAULT NULL COMMENT '推荐类型',
  `remark` varchar(200) DEFAULT NULL COMMENT '备注',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='我的收藏';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `storeup`
--

LOCK TABLES `storeup` WRITE;
/*!40000 ALTER TABLE `storeup` DISABLE KEYS */;
/*!40000 ALTER TABLE `storeup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `token`
--

DROP TABLE IF EXISTS `token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='token表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `token`
--

LOCK TABLES `token` WRITE;
/*!40000 ALTER TABLE `token` DISABLE KEYS */;
/*!40000 ALTER TABLE `token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `username` varchar(200) NOT NULL COMMENT '用户名',
  `password` varchar(200) NOT NULL COMMENT '密码',
  `role` varchar(200) DEFAULT NULL COMMENT '角色',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='管理员';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'2024-05-09 06:58:16','admin','admin','管理员');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wupinfenlei`
--

DROP TABLE IF EXISTS `wupinfenlei`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wupinfenlei` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `fenlei` varchar(200) DEFAULT NULL COMMENT '分类',
  PRIMARY KEY (`id`),
  UNIQUE KEY `fenlei` (`fenlei`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8 COMMENT='物品分类';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wupinfenlei`
--

LOCK TABLES `wupinfenlei` WRITE;
/*!40000 ALTER TABLE `wupinfenlei` DISABLE KEYS */;
INSERT INTO `wupinfenlei` VALUES (61,'2024-05-09 06:58:16','分类1'),(62,'2024-05-09 06:58:16','分类2'),(63,'2024-05-09 06:58:16','分类3'),(64,'2024-05-09 06:58:16','分类4'),(65,'2024-05-09 06:58:16','分类5'),(66,'2024-05-09 06:58:16','分类6');
/*!40000 ALTER TABLE `wupinfenlei` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yonghu`
--

DROP TABLE IF EXISTS `yonghu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yonghu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhanghao` varchar(200) NOT NULL COMMENT '账号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `yonghuxingming` varchar(200) NOT NULL COMMENT '用户姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `shouji` varchar(200) NOT NULL COMMENT '手机',
  `yonghudizhi` varchar(200) NOT NULL COMMENT '用户地址',
  `touxiang` longtext COMMENT '头像',
  PRIMARY KEY (`id`),
  UNIQUE KEY `zhanghao` (`zhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COMMENT='用户';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yonghu`
--

LOCK TABLES `yonghu` WRITE;
/*!40000 ALTER TABLE `yonghu` DISABLE KEYS */;
INSERT INTO `yonghu` VALUES (31,'2024-05-09 06:58:16','账号1','123456','用户姓名1','男','19819881111','用户地址1','file/yonghuTouxiang1.jpg'),(32,'2024-05-09 06:58:16','账号2','123456','用户姓名2','男','19819881112','用户地址2','file/yonghuTouxiang2.jpg'),(33,'2024-05-09 06:58:16','账号3','123456','用户姓名3','男','19819881113','用户地址3','file/yonghuTouxiang3.jpg'),(34,'2024-05-09 06:58:16','账号4','123456','用户姓名4','男','19819881114','用户地址4','file/yonghuTouxiang4.jpg'),(35,'2024-05-09 06:58:16','账号5','123456','用户姓名5','男','19819881115','用户地址5','file/yonghuTouxiang5.jpg'),(36,'2024-05-09 06:58:16','账号6','123456','用户姓名6','男','19819881116','用户地址6','file/yonghuTouxiang6.jpg');
/*!40000 ALTER TABLE `yonghu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zhaopinxinxi`
--

DROP TABLE IF EXISTS `zhaopinxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zhaopinxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `gangweimingcheng` varchar(200) DEFAULT NULL COMMENT '岗位名称',
  `tupian` longtext COMMENT '图片',
  `gongzi` double DEFAULT NULL COMMENT '工资',
  `zhaopinrenshu` varchar(200) DEFAULT NULL COMMENT '招聘人数',
  `gongzuoshijian` varchar(200) DEFAULT NULL COMMENT '工作时间',
  `gangweixiangqing` longtext COMMENT '岗位详情',
  `storeupnum` int(11) DEFAULT NULL COMMENT '收藏数量',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=107 DEFAULT CHARSET=utf8 COMMENT='招聘信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zhaopinxinxi`
--

LOCK TABLES `zhaopinxinxi` WRITE;
/*!40000 ALTER TABLE `zhaopinxinxi` DISABLE KEYS */;
INSERT INTO `zhaopinxinxi` VALUES (101,'2024-05-09 06:58:16','岗位名称1','file/zhaopinxinxiTupian1.jpg,file/zhaopinxinxiTupian2.jpg,file/zhaopinxinxiTupian3.jpg',1,'招聘人数1','工作时间1','岗位详情1',1),(102,'2024-05-09 06:58:16','岗位名称2','file/zhaopinxinxiTupian2.jpg,file/zhaopinxinxiTupian3.jpg,file/zhaopinxinxiTupian4.jpg',2,'招聘人数2','工作时间2','岗位详情2',2),(103,'2024-05-09 06:58:16','岗位名称3','file/zhaopinxinxiTupian3.jpg,file/zhaopinxinxiTupian4.jpg,file/zhaopinxinxiTupian5.jpg',3,'招聘人数3','工作时间3','岗位详情3',3),(104,'2024-05-09 06:58:16','岗位名称4','file/zhaopinxinxiTupian4.jpg,file/zhaopinxinxiTupian5.jpg,file/zhaopinxinxiTupian6.jpg',4,'招聘人数4','工作时间4','岗位详情4',4),(105,'2024-05-09 06:58:16','岗位名称5','file/zhaopinxinxiTupian5.jpg,file/zhaopinxinxiTupian6.jpg,file/zhaopinxinxiTupian7.jpg',5,'招聘人数5','工作时间5','岗位详情5',5),(106,'2024-05-09 06:58:16','岗位名称6','file/zhaopinxinxiTupian6.jpg,file/zhaopinxinxiTupian7.jpg,file/zhaopinxinxiTupian8.jpg',6,'招聘人数6','工作时间6','岗位详情6',6);
/*!40000 ALTER TABLE `zhaopinxinxi` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-05-09 15:44:48
