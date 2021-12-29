-- MySQL dump 10.13  Distrib 5.6.51, for Linux (x86_64)
--
-- Host: localhost    Database: nainitaluntraveled
-- ------------------------------------------------------
-- Server version	5.6.51

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
-- Current Database: `nainitaluntraveled`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `nainitaluntraveled` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci */;

USE `nainitaluntraveled`;

--
-- Table structure for table `aboutus`
--

DROP TABLE IF EXISTS `aboutus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aboutus` (
  `SRNO` int(4) NOT NULL AUTO_INCREMENT,
  `ABOUT` text NOT NULL,
  PRIMARY KEY (`SRNO`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aboutus`
--

LOCK TABLES `aboutus` WRITE;
/*!40000 ALTER TABLE `aboutus` DISABLE KEYS */;
INSERT INTO `aboutus` VALUES (1,'Here is another instance where any area of your website -- not just the \'About Us\' page -- is an opportunity to break the mold.Many companies add just a simple mission statement or company profile, but people often don\'t want to ready a wall of text explaining what you do. So, Refinery broke it down to convey the intangible qualities that are tough to include in a basic \'About Us\' page,Although Refinery does introduce its page with a description of its business, its goes out on a bang -- four bangs, to be exact. The organization is on a \'mission, sure, but there\'s also an \'essence\' of Refinery, a \'promise\' it keeps, and a \'vibe\' it gives off.');
/*!40000 ALTER TABLE `aboutus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contacts`
--

DROP TABLE IF EXISTS `contacts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contacts` (
  `SRNO` int(4) NOT NULL AUTO_INCREMENT,
  `NAME` varchar(14) NOT NULL,
  `EMAIL` varchar(16) NOT NULL,
  `PHONE` int(12) NOT NULL,
  `MESSAGE` text NOT NULL,
  `DATE` datetime NOT NULL,
  PRIMARY KEY (`SRNO`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contacts`
--

LOCK TABLES `contacts` WRITE;
/*!40000 ALTER TABLE `contacts` DISABLE KEYS */;
INSERT INTO `contacts` VALUES (1,'Vinay durgapal','csmkec@gmail.com',2147483647,'Hi this is a test message','2021-04-11 14:22:55');
/*!40000 ALTER TABLE `contacts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posts`
--

DROP TABLE IF EXISTS `posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `posts` (
  `SRNO` int(11) NOT NULL AUTO_INCREMENT,
  `TITLE` text NOT NULL,
  `CONTENT` text NOT NULL,
  `SUBTITLE` text NOT NULL,
  `SLUG` varchar(14) NOT NULL,
  `IMG_FILE` varchar(14) NOT NULL,
  `DATE` datetime NOT NULL,
  PRIMARY KEY (`SRNO`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts`
--

LOCK TABLES `posts` WRITE;
/*!40000 ALTER TABLE `posts` DISABLE KEYS */;
INSERT INTO `posts` VALUES (10,'Lansdowne','Lansdowne is a hill station in the north Indian state of Uttarakhand. It was founded as a military garrison under the British Raj, and the Garhwali Museum traces the history of the Garhwal Rifles regiment, which still trains in the town. Close to colonial-era St. Mary’s Church, Tip-n-Top viewpoint is perched up on a ridge overlooking forested hills. Hindu devotees worship Shiva at the centuries-old Kaleshwar Temple','A Town in Uttarakhand','lansdowne','Lans-bg.jpg','2021-12-29 11:20:32'),(11,'Reetha-Sahib','Reetha Sahib also known as Meetha Reetha Sahib is located in a tiny hamlet called Dyuri in Champawat district of Uttarakhand. It is considered sacred by the Sikhs and is located about 72 km from Champawat. ','A Gurudwara in Champawat Uttarakhand','reetha-sahib','Reetha-bg.jpg','2021-12-29 11:21:42'),(12,'Munsiyari','Munsiyari is the name of the sub-division headquarters, a conglomeration of revenue villages and it also refers to the entire region as Munsiyari Tehsil and Sub Division in the Pithoragarh District in the hill-state of Uttarakhand, India','Munsiyari-A small town of Uttarakhand','munsiyari','Muns-bg.jpg','2021-12-29 11:22:16');
/*!40000 ALTER TABLE `posts` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-12-29 11:28:10
