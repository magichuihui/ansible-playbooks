-- MySQL dump 10.13  Distrib 5.7.19, for Linux (x86_64)
--
-- Host: 172.17.30.42    Database: shopnc
-- ------------------------------------------------------
-- Server version	5.6.38-log

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
SET @MYSQLDUMP_TEMP_LOG_BIN = @@SESSION.SQL_LOG_BIN;
SET @@SESSION.SQL_LOG_BIN= 0;

--
-- GTID state at the beginning of the backup 
--

SET @@GLOBAL.GTID_PURGED='d3138704-7031-11e7-b3ca-005056a7b974:1-338467,
d54b06b8-cf36-11e7-9f66-005056a726fd:1-22348,
d56439c6-cf36-11e7-9f66-005056a7c1c2:1-43694';

--
-- Table structure for table `test1234`
--

DROP TABLE IF EXISTS `test1234`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `test1234` (
  `id` tinyint(1) unsigned NOT NULL AUTO_INCREMENT COMMENT '索引ID',
  `e_name` varchar(50) NOT NULL COMMENT '公司名称',
  `e_state` enum('0','1') NOT NULL DEFAULT '1' COMMENT '状态',
  `e_code` varchar(50) NOT NULL COMMENT '编号',
  `e_code_kdniao` varchar(50) DEFAULT NULL COMMENT '快递鸟快递公司代码',
  `e_letter` char(1) NOT NULL COMMENT '首字母',
  `e_order` enum('1','2') NOT NULL DEFAULT '2' COMMENT '1常用2不常用',
  `e_url` varchar(100) NOT NULL COMMENT '公司网址',
  `e_zt_state` tinyint(4) DEFAULT '0' COMMENT '是否支持服务站配送0否1是',
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8 COMMENT='快递公司';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `test1234`
--

LOCK TABLES `test1234` WRITE;
/*!40000 ALTER TABLE `test1234` DISABLE KEYS */;
INSERT INTO `test1234` VALUES (1,'安信达','0','anxindakuaixi','AXD','A','2','http://www.anxinda.com',1),(2,'包裹平邮','1','youzhengguonei','YZPY','B','2','http://yjcx.chinapost.com.cn',1),(3,'CCES','1','cces','CCES','C','2','http://www.cces.com.cn',1),(4,'传喜物流','1','chuanxiwuliu','CXWL','C','2','http://www.cxcod.com',1),(5,'DHL快递','1','dhl','DHL_C','D','2','http://www.cn.dhl.com',1),(6,'大田物流','1','datianwuliu','DTWL','D','2','http://www.dtw.com.cn',1),(7,'德邦物流','1','debangwuliu','DBL','D','2','http://www.deppon.com',1),(8,'EMS','1','ems','EMS','E','2','http://www.ems.com.cn',1),(9,'EMS国际','1','emsguoji','EMSGJ','E','2','###',1),(10,'飞康达','1','feikangda','FKD','F','2','http://www.fkd.com.cn',1),(11,'FedEx(国际)','1','fedex','FEDEX','F','2','http://fedex.com/cn',1),(12,'凡客如风达','1','rufengda','RFD','F','2','http://www.rufengda.com',1),(13,'港中能达','1','ganzhongnengda','NEDA','G','2','http://www.nd56.com',1),(14,'挂号信','1','youzhengguonei','YZPY','G','2','http://yjcx.chinapost.com.cn',1),(15,'共速达','1','gongsuda','GSD','G','2','http://www.gongsuda.com/mall/Search.aspx',1),(16,'汇通快递','1','huitongkuaidi','HTKY','H','2','http://www.htky365.com',1),(17,'华宇物流','1','tiandihuayu','HOAU','H','2','http://www.hoau.net',1),(18,'佳吉快运','1','jiajiwuliu','JJKY','J','2','http://www.jiaji.com',1),(19,'佳怡物流','1','jiayiwuliu','JYWL','J','2','http://www.jiayi56.com',1),(20,'急先达','1','jixianda','JXD','J','2','http://www.joust.cn',1),(21,'快捷速递','1','kuaijiesudi','FAST','K','2','http://www.fastexpress.com.cn',1),(22,'龙邦快递','1','longbanwuliu','LB','L','2','http://www.lbex.com.cn',1),(23,'联邦快递','1','lianbangkuaidi','LBKD','L','2','http://cndxp.apac.fedex.com/dxp.html',1),(24,'联昊通','1','lianhaowuliu','LHT','L','2','http://www.lhtex.com.cn',1),(25,'全一快递','1','quanyikuaidi','UAPEX','Q','2','http://www.unitop-apex.com',1),(26,'全峰快递','1','quanfengkuaidi','QFKD','Q','2','http://www.qfkd.com.cn',1),(27,'全日通','1','quanritongkuaidi','QRT','Q','2','http://www.at-express.com',1),(28,'申通快递','1','shentong','STO','S','2','http://www.sto.cn',1),(29,'顺丰快递','1','shunfeng','SF','S','1','http://www.sf-express.com',1),(30,'速尔快递','1','suer','SURE','S','2','http://www.sure56.com',1),(31,'TNT快递','1','tnt','TNT','T','2','http://www.tnt.com.cn',1),(32,'天天快递','1','tiantian','HHTT','T','2','http://www.ttkdex.com',1),(33,'天地华宇','1','tiandihuayu','HOAU','T','2','http://www.hoau.net',1),(34,'UPS快递','1','ups','UPS','U','2','http://www.ups.com/cn',1),(35,'USPS','1','usps','USPS','U','2','http://www.ups.com/us',1),(36,'新邦物流','1','xinbangwuliu','XBWL','X','2','http://www.xbwl.cn',1),(37,'信丰物流','1','xinfengwuliu','XFEX','X','2','http://www.xf-express.com.cn',1),(38,'希伊艾斯','1','cces','CCES','X','2','http://www.cces.com.cn',1),(39,'新蛋物流','1','neweggozzo','OZZO','X','2','http://www.ozzo.com.cn',1),(40,'圆通快递','1','yuantong','YTO','Y','1','http://www.yto.net.cn',1),(41,'韵达快递','1','yunda','YD','Y','1','http://www.yundaex.com',1),(42,'邮政包裹','1','youzhengguonei','YZPY','Y','2','http://yjcx.chinapost.com.cn',1),(43,'优速快递','1','youshuwuliu','UC','Y','2','http://www.uce.cn',1),(44,'中通快递','1','zhongtong','ZTO','Z','1','http://www.zto.cn',1),(45,'中铁快运','1','zhongtiewuliu','ZTKY','Z','2','http://www.cre.cn',1),(46,'宅急送','1','zhaijisong','ZJS','Z','2','http://www.zjs.com.cn',1),(47,'中邮物流','1','zhongyouwuliu','ZYWL','Z','2','http://www.cnpl.com.cn',1),(48,'运通','1','yuntong',NULL,'Y','2',' ',0),(49,'运通','1','yuntong',NULL,'Y','2',' ',0),(50,'运通','1','yuntong',NULL,'Y','2',' ',0);
/*!40000 ALTER TABLE `test1234` ENABLE KEYS */;
UNLOCK TABLES;
SET @@SESSION.SQL_LOG_BIN = @MYSQLDUMP_TEMP_LOG_BIN;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-02-07 17:07:33
