-- MySQL dump 10.13  Distrib 5.6.17, for Win64 (x86_64)
--
-- Host: localhost    Database: lj
-- ------------------------------------------------------
-- Server version	5.6.17

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
-- Table structure for table `t_lj_blog`
--

DROP TABLE IF EXISTS `t_lj_blog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_lj_blog` (
  `blog_id` int(8) NOT NULL AUTO_INCREMENT,
  `blog_flag` int(8) DEFAULT NULL,
  `blog_title_name` varchar(128) DEFAULT NULL,
  `blog_summary` varchar(1280) DEFAULT NULL,
  `blog_read_number` int(8) DEFAULT NULL,
  `blog_classify` int(8) DEFAULT NULL,
  `blog_author` varchar(128) DEFAULT NULL,
  `sort` int(8) DEFAULT NULL,
  `recomment` int(8) DEFAULT NULL,
  `create_time` varchar(20) DEFAULT NULL,
  `update_time` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`blog_id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_lj_blog`
--

LOCK TABLES `t_lj_blog` WRITE;
/*!40000 ALTER TABLE `t_lj_blog` DISABLE KEYS */;
INSERT INTO `t_lj_blog` VALUES (26,1,'<b>《幸福额度》</b>—不同的选择各自的幸福','要找到一个男人能够给我们幸福，是非常困难的事情，他的年纪、身高、体重、我们都可以用外在来判断，可是他的收入、财务状况、家庭、事业，还有健康状况，就不是短时间内可以判断出结果的。一个男人的价值取决于他的信用卡额度。让银行帮你选男人。银行会调查他的职业、他的公司、他的一切，然后给你一个数字化的信用额度，信用，在爱情里占优相当重要的位置，我们可能会出错，但银行绝对不会。——《幸福额度》李晓红你要见的是他的母亲而不是见他。穿衣服给你的对象看，要性感；穿衣服给你对象的母亲看，要感性。要尽量选择在颜色还有款式上没有杀伤力和侵略性的，要让他的母亲知道，你永远不会跟她争，也争不过她',0,2,'马琴',1,1,'2014-04-16 20:39:25','2014-04-16 20:39:25'),(27,2,'<b>童年</b>的朋友','六岁的时候，我曾经急着要当一个拳击家。因为没有训练用的沙袋，我就拿自己的小熊练拳。我把它放到沙发上，摆好，以便打起来顺手些。小熊坐在我的面前，一身巧克力色。两只眼睛一大一小：小的——黄色，玻璃做的；大的白色——是用一个纽扣做的。小熊用它那不一样大的眼睛十分快活地瞧着我，两手朝上举着，似乎在开玩笑，说它不等我打就投降了……',0,3,'马琴',2,1,'2014-04-16 20:39:25','2014-04-16 20:39:25'),(28,3,'<b>拐弯处</b>的回头','一天，弟弟在郊游时脚被尖利的石头割破，到医院包扎后，几个同学送他回家。在家附近的巷口，弟弟碰见了爸爸。于是他一边跷起扎了绷带的脚给爸爸看，一边哭丧着脸诉苦，满以为会收获一点同情与怜爱，不料爸爸并没有安慰他，只是简单交代几句，便自己走了。',0,4,'马琴',3,1,'2014-04-16 20:39:25','2014-04-16 20:39:25'),(29,4,'<b>遗失</b>的美德','中国人喜欢赞美苦难，美化苦难，这种观点把一切需要解决和改良的问题都转化为一个无私奉献的道德自律问题。这是一种毫无血性的评论，它把一个人无法选择的行为、别人的痛苦变成饭后谈论的资本。鲁迅先生曾称这种文化培养出的道德为“瞒和骗”。所以，我们认为这种“苦难美学”不值得追捧。',0,4,'马琴',4,1,'2014-04-16 20:39:25','2014-04-16 20:39:25'),(30,5,'<b>钱？</b>前？','向前看？向钱看？也许很多人认为应该选择“向前看”。',0,3,'马琴',5,1,'2014-04-16 20:39:25','2014-04-16 20:39:25'),(31,6,'<b>陌上</b>花开','“陌上花开，可缓缓归矣。” 含义：（夫人），田间阡陌上的花开了，你可以一边赏花，一边慢慢地回来。',0,4,'马琴',6,1,'2014-04-16 20:39:25','2014-04-16 20:39:25'),(32,7,'<b>诗人赵丽华：</b>男人都是好色的动物','男人都好色，这一点你要知道。他们都是吃着锅里的还要占着碗里的，这一点你也要知道。他们吃锅里的时候是真心吃，吃碗里的时候也同样有滋有味，所以你不要相信他们说得“更爱你”或者“只爱你”之类的话。',0,3,'马琴',7,1,'2014-04-16 20:39:25','2014-04-16 20:39:25'),(33,8,'<b>去年</b>的树',' 一棵树和一只鸟儿是好朋友。鸟儿站在树枝上，天天给树唱歌。树呢，天天听着鸟儿唱。日子一天天过去，寒冷的冬天就要来到了。鸟儿必须离开树，飞到很远很远的地方去。树对鸟儿说：“再见了，小鸟！明年春天请你回来，还唱歌给我听。”鸟儿说：“好的，我明年春天一定回来，给你唱歌。请等着我吧！”鸟儿说完，就向南方飞去了。',0,5,'马琴',8,1,'2014-04-16 20:39:25','2014-04-16 20:39:25'),(34,9,'<b>一份疼爱,</b>有多长久？','这个世界五彩缤纷，这个红尘浪漫镌永，我将自己置身世外，立于红尘却疏于红尘。孤独地张望，心中是空洞，眼里是迷茫，目无表情地看红尘来去梦一场，没有悲伤也无所谓快乐，只是彻骨的麻木，无法苏醒，也无法温暖，冷冷的心冷冷地感受着这个冷冷的世界。',0,2,'马琴',9,1,'2014-04-16 20:39:25','2014-04-16 20:39:25'),(35,10,'<b>嘟嘟</b>的这些话','亲爱的嘟嘟，你必须找到除了爱情之外，能够使你用双脚坚强站在大地上的东西。 你要找到谋生的方式。天才都不是科班，但，不是科班，连龙套都跑不了。',0,3,'马琴',10,1,'2014-04-16 20:39:25','2014-04-16 20:39:25');
/*!40000 ALTER TABLE `t_lj_blog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_lj_blog_classify`
--

DROP TABLE IF EXISTS `t_lj_blog_classify`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_lj_blog_classify` (
  `blog_classify_id` int(8) NOT NULL AUTO_INCREMENT,
  `blog_classify_name` varchar(128) DEFAULT NULL,
  `create_time` varchar(20) DEFAULT NULL,
  `update_time` varchar(20) DEFAULT NULL,
  `sort` int(8) DEFAULT NULL,
  PRIMARY KEY (`blog_classify_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_lj_blog_classify`
--

LOCK TABLES `t_lj_blog_classify` WRITE;
/*!40000 ALTER TABLE `t_lj_blog_classify` DISABLE KEYS */;
INSERT INTO `t_lj_blog_classify` VALUES (2,'无聊消谴','2014-04-16 20:39:25','2014-04-16 20:39:25',1),(3,'自恋情节','2014-04-16 20:39:25','2014-04-16 20:39:25',2),(4,'童话故事','2014-04-16 20:39:25','2014-04-16 20:39:25',3),(5,'乱七八糟','2014-04-16 20:39:25','2014-04-16 20:39:25',4);
/*!40000 ALTER TABLE `t_lj_blog_classify` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_lj_blog_comment`
--

DROP TABLE IF EXISTS `t_lj_blog_comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_lj_blog_comment` (
  `blog_comment_id` int(8) NOT NULL AUTO_INCREMENT,
  `blog_id` int(8) DEFAULT NULL,
  `visit_name` varchar(128) DEFAULT NULL,
  `visit_email` varchar(128) DEFAULT NULL,
  `visit_url` varchar(128) DEFAULT NULL,
  `visit_content` varchar(1280) DEFAULT NULL,
  `create_time` varchar(20) DEFAULT NULL,
  `update_time` varchar(20) DEFAULT NULL,
  `blog_comment_flag` int(8) DEFAULT NULL,
  PRIMARY KEY (`blog_comment_id`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_lj_blog_comment`
--

LOCK TABLES `t_lj_blog_comment` WRITE;
/*!40000 ALTER TABLE `t_lj_blog_comment` DISABLE KEYS */;
INSERT INTO `t_lj_blog_comment` VALUES (32,29,'aaaa',NULL,NULL,'afsadfsafs','2014-04-16 20:56:23','2014-04-16 20:56:23',1),(33,29,'aaaa',NULL,NULL,'afsadfsafs','2014-04-16 20:57:08','2014-04-16 20:57:08',1),(34,28,'abcd','dfa','sfdsa','fdasfdsa','2014-04-17 20:51:21','2014-04-17 20:51:21',1);
/*!40000 ALTER TABLE `t_lj_blog_comment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_lj_blog_message`
--

DROP TABLE IF EXISTS `t_lj_blog_message`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_lj_blog_message` (
  `blog_message_id` int(8) NOT NULL AUTO_INCREMENT,
  `visit_name` varchar(128) DEFAULT NULL,
  `visit_email` varchar(128) DEFAULT NULL,
  `visit_url` varchar(128) DEFAULT NULL,
  `visit_content` varchar(1280) DEFAULT NULL,
  `create_time` varchar(20) DEFAULT NULL,
  `update_time` varchar(20) DEFAULT NULL,
  `blog_message_flag` int(8) DEFAULT NULL,
  PRIMARY KEY (`blog_message_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_lj_blog_message`
--

LOCK TABLES `t_lj_blog_message` WRITE;
/*!40000 ALTER TABLE `t_lj_blog_message` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_lj_blog_message` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2014-04-17 21:57:18
