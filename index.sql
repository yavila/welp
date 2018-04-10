-- MySQL dump 10.13  Distrib 5.7.21, for osx10.13 (x86_64)
--
-- Host: localhost    Database: yelp_db
-- ------------------------------------------------------
-- Server version	5.7.21

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
-- Table structure for table `business_index`
--

DROP TABLE IF EXISTS `business_index`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `business_index` (
  `business_id` varchar(22) NOT NULL,
  `m_index` int(11) DEFAULT NULL,
  PRIMARY KEY (`business_id`),
  CONSTRAINT `business_index_ibfk_1` FOREIGN KEY (`business_id`) REFERENCES `business` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `business_index`
--

LOCK TABLES `business_index` WRITE;
/*!40000 ALTER TABLE `business_index` DISABLE KEYS */;
INSERT INTO `business_index` VALUES ('--g-a85VwrdZJNf0R95GcQ',0),('-01XupAWZEXbdNbxNg5mEg',1),('-050d_XIor1NpCuWkbIVaQ',2),('-092wE7j5HZOogMLAh40zA',3),('-0aIra_B6iALlfqAriBSYA',6),('-0Sgh0QlUKVsWosCWJzGqQ',4),('-0tgMGl7D9B10YjSN2ujLA',7),('-0WegMt6Cy966qlDKhu6jA',5),('-17CAGmIRBHpPFlWBTDGuw',8),('-1UMR00eXtwaeh59pEiDjA',9),('-1VaIJza42Hjev6ukacCNg',10),('-2A9emZwBK8zYHPnAmM0hw',11),('-2isRNVb6PDuBagELL5EBw',12),('-34vSRcMz_RjN00dWIiQ3Q',13),('-3oxnPPPU3YoxO9M1I2idg',14),('-4g68Hwm892_KPUuW5g1_Q',16),('-4TMQnQJW1yd6NqGRDvAeA',15),('-4w2eZqQJcS-UNuB1lCPFA',17),('-5brzniWtye3w__aEvCaAA',18),('-6h3K1hj0d4DRcZNUtHDuw',19),('-6tvduBzjLI1ISfs3F_qTg',20),('-79cl_yASWXiv7RmzirNxA',21),('-7d3UqQYYcBxbDH2do86sg',23),('-7HB0UjguXW8csOH9svG4Q',22),('-8JaNeG3etLgOVyg2gOIiA',24),('-8QlV3b_9H4BAh6LgMIr1g',25),('-9eNGMp8XiygI8t8QFuFWw',26),('-9nai28tnoylwViuJVrYEQ',27),('-9xZZLLxuQabvBDODqpM-g',28),('-A9sm-E6uQxWTJ_MuyOzFw',29),('-Bdw-5H5C4AYSMGnAvmnzw',30),('-Bo1rsE6Mfn0wdqnIj3GSA',31),('-BrMNg4MbpftOUTjOMVp9g',32),('-BxWyEIQ6wypT-37MzZizQ',33),('-CBZRTYGcksmshymcD5iMA',34),('-CfFjcCcGGDM9MVH_d42RQ',35),('-DaXLvd3M8OACEEuNR-BDQ',36),('-DcE_4T0_iRKGLARmjsjUw',37),('-Dnh48f029YNugtMKkkI-Q',38),('-DrDzpZaMrNnH55ZVyTXRQ',39),('-Du1WSRseqUXbCt_K-D-ww',40),('-F5mm0-YeCI7viSiOwVAAw',41),('-FLnsWAa4AGEW4NgE8Fqew',42),('-FrgepJj0h-OWU1CupUrOQ',44),('-FveSBaantlFExq__ESLcw',45),('-FWhwGTP9YsV_5ONgdQ4hg',43),('-FyfimfMvvOcMT7Cr4q2Aw',46),('-GpTZfp2qxyV-20Vu9_mBg',48),('-GUi0xyzwT9KJPS0v96dRA',47),('-Gy0BAMgRN4sGlY7theqxQ',49),('-H1-IzxW6CXmjhmF5F6iMA',50),('-HbTh_spJOeyEbdj4geK2Q',52),('-HfeXGN4O83x8P4rZc-_kQ',53),('-HO8ejDGgvj_Guw3R6lH1g',51),('-Ht7HiGBox8lS1Y8IPjO8g',54),('-ITj6Pu8Gdw8MmLf0XBEKQ',55),('-Iu6EwsbZQZY8HTBN853Iw',57),('-IZvuqxekWEvJqDw308daQ',56),('-J-d5x84RuyLNiUzOhO_6A',58),('-JwSuDqyFILFJmVpjrVbwA',59),('-JzL9Xkx42k82uKSy3X5Zw',60),('-K3kqmykKlhlB4arCsLHOw',61),('-KIdCJnkt5N8rnnmWR5MQg',62),('-Ll4vN947kBXmNxdDjeBCQ',64),('-LVpf-mKjrWT51JgCY3gRQ',63),('-Ma5JqzuI_3xIAtpNJfQ2g',67),('-MKWJZnMjSit406AUKf7Pg',65),('-MuatiMmslPOvk9kOMyjkA',68),('-MUn9i6htSMJUFXxToaBVg',66),('-NfdQz7Pesvthek59uGl8Q',69),('-Ofk9ELkGJQasOApqJ9lCw',71),('-OjKVujPWqfbQJRg_WcZTg',72),('-Oj_rs84KRFOTtbeQXPB7Q',73),('-OmQXmGomWfJNi449Uh99g',74),('-OOVJcc1-qOUqI9131u0gw',70),('-OuTv9a9_MabQjyiZx2Stw',75),('-PARO4rKPyOBgra18yANYQ',76),('-PbCfkydmvuNcG9VG_ixkQ',79),('-PJgh1XoQBMnnSgg6MhmMA',77),('-PUPEpMsjBjk_rX5lFaWng',78),('-Q8F0KbFIK3m3VeGXoCDEA',80),('-QgX4QofONhh6XFZ4Zbnvw',82),('-QIQLK8RR6rl7v19cAQQHg',81),('-RIWE3MU3GCHM5KIW7PLww',83),('-RN70NJDP02wVcrg5yPO8Q',84),('-RYIKWBSTaJ21B2UMyzI-Q',85),('-TVXOYL6kvKP1uW6ND9PIg',86),('-TWZ4-AM76pUxPIt47mInw',87),('-UM5wXw2scKFW6QHchBL4Q',88),('-Ut87cwGFsO3444Rd11p0Q',90),('-UXH_mn5SLip3MMiaGM69g',89),('-Vk9BMbpL2hcv4SZTuk4TA',91),('-WjQWbAIGyJE4vYJYUZjSQ',92),('-WmQxBr4jsdZs_7RgamNmQ',93),('-Wxje8_M3S-0wIwdub9Kug',94),('-X61Cipa9OOtY7ZnDw_f4A',95),('-X9QS8l7u5R3CswmfZtn-Q',96),('-XW3Peaen5jsnvGRrue_Qw',97),('-Y9woV5m-KaTzu9VpirYyg',98),('-YGePLsJ2pYccR3oaeCSAw',99);
/*!40000 ALTER TABLE `business_index` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-04-10 18:49:28
