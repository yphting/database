/*
SQLyog Ultimate v12.4.1 (64 bit)
MySQL - 5.5.61 : Database - yphting
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`yphting` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `yphting`;

/*Table structure for table `admin` */

DROP TABLE IF EXISTS `admin`;

CREATE TABLE `admin` (
  `adminID` int(11) NOT NULL AUTO_INCREMENT,
  `adminType` int(11) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `creationTime` timestamp NULL DEFAULT NULL,
  `roleID` int(11) DEFAULT NULL,
  `creationIP` varchar(50) DEFAULT NULL,
  `founder` int(11) DEFAULT NULL,
  `recentEntry` timestamp NULL DEFAULT NULL,
  `IP` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`adminID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `administratorlog` */

DROP TABLE IF EXISTS `administratorlog`;

CREATE TABLE `administratorlog` (
  `adminlogID` int(11) NOT NULL AUTO_INCREMENT,
  `adminID` int(11) DEFAULT NULL,
  `remarks` text,
  `remarksTime` timestamp NULL DEFAULT NULL,
  `remarksIP` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`adminlogID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `advertisement` */

DROP TABLE IF EXISTS `advertisement`;

CREATE TABLE `advertisement` (
  `aid` int(11) NOT NULL AUTO_INCREMENT,
  `atid` int(11) DEFAULT NULL,
  `atitle` varchar(50) DEFAULT NULL,
  `aorder` int(11) DEFAULT NULL,
  `aimgPath` varchar(255) DEFAULT NULL,
  `apcUrl` varchar(255) DEFAULT NULL,
  `aappUrl` varchar(255) DEFAULT NULL,
  `state` tinyint(1) DEFAULT NULL,
  `startTime` timestamp NULL DEFAULT NULL,
  `rentAMonth` int(11) DEFAULT NULL,
  `price` float DEFAULT NULL,
  `adescribe` text,
  PRIMARY KEY (`aid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `advertisementapply` */

DROP TABLE IF EXISTS `advertisementapply`;

CREATE TABLE `advertisementapply` (
  `aaID` int(11) NOT NULL AUTO_INCREMENT,
  `userID` int(11) DEFAULT NULL,
  `aid` int(11) DEFAULT NULL,
  `aimgPath` varchar(255) DEFAULT NULL,
  `apcUrl` varchar(255) DEFAULT NULL,
  `aappUrl` varchar(255) DEFAULT NULL,
  `price` float DEFAULT NULL,
  `rentAMonth` int(11) DEFAULT NULL,
  `startTime` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `endTime` timestamp NULL DEFAULT NULL,
  `applyTime` timestamp NULL DEFAULT NULL,
  `auditTime` timestamp NULL DEFAULT NULL,
  `auditStatus` int(11) DEFAULT NULL,
  PRIMARY KEY (`aaID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `advertisementtype` */

DROP TABLE IF EXISTS `advertisementtype`;

CREATE TABLE `advertisementtype` (
  `atid` int(11) NOT NULL AUTO_INCREMENT,
  `atname` varchar(50) DEFAULT NULL,
  `atpx` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`atid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `appraisalapply` */

DROP TABLE IF EXISTS `appraisalapply`;

CREATE TABLE `appraisalapply` (
  `applyID` int(11) NOT NULL AUTO_INCREMENT,
  `userID` int(11) DEFAULT NULL,
  `stid` int(11) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `sex` int(11) DEFAULT NULL,
  `height` int(11) DEFAULT NULL,
  `constellation` varchar(50) DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `visaType` varchar(50) DEFAULT NULL,
  `documentType` int(11) DEFAULT NULL,
  `certificates` varchar(50) DEFAULT NULL,
  `experience` varchar(50) DEFAULT NULL,
  `vehicle` tinyint(1) DEFAULT NULL,
  `guideCard` tinyint(1) DEFAULT NULL,
  `inKorea` varchar(50) DEFAULT NULL,
  `phone` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `country` varchar(50) DEFAULT NULL,
  `provincialID` varchar(50) DEFAULT NULL,
  `cityID` varchar(50) DEFAULT NULL,
  `detailed` varchar(50) DEFAULT NULL,
  `hospitalLicense` varchar(50) DEFAULT NULL,
  `cooperativeHospital` varchar(50) DEFAULT NULL,
  `cooperativeHospitalURL` varchar(255) DEFAULT NULL,
  `hospitalPhone` varchar(50) DEFAULT NULL,
  `translateType` int(11) DEFAULT NULL,
  `translate` varchar(255) DEFAULT NULL,
  `office` tinyint(1) DEFAULT '0',
  `officeCountry` varchar(50) DEFAULT NULL,
  `officeProvince` varchar(50) DEFAULT NULL,
  `officeCity` varchar(50) DEFAULT NULL,
  `officeDetailed` varchar(100) DEFAULT NULL,
  `koreaLicense` varchar(255) DEFAULT NULL,
  `translateWebsite` varchar(255) DEFAULT NULL,
  `studyMajor` varchar(100) DEFAULT NULL,
  `schoolReport` varchar(255) DEFAULT NULL,
  `officialNetworkURL` varchar(255) DEFAULT NULL,
  `submitTime` timestamp NULL DEFAULT NULL,
  `auditTime` timestamp NULL DEFAULT NULL,
  `adminOpinion` text,
  `auditStatus` int(11) DEFAULT '1',
  PRIMARY KEY (`applyID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

/*Table structure for table `banktype` */

DROP TABLE IF EXISTS `banktype`;

CREATE TABLE `banktype` (
  `bankID` int(11) NOT NULL AUTO_INCREMENT,
  `bankName` varchar(50) DEFAULT NULL,
  `show` tinyint(1) DEFAULT NULL,
  `sort` int(11) DEFAULT NULL,
  PRIMARY KEY (`bankID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `bond` */

DROP TABLE IF EXISTS `bond`;

CREATE TABLE `bond` (
  `bID` int(11) NOT NULL AUTO_INCREMENT,
  `userID` int(11) DEFAULT NULL,
  `bondType` int(11) DEFAULT NULL,
  `goldCoin` float DEFAULT NULL,
  `reviewNotes` text,
  `submitTime` timestamp NULL DEFAULT NULL,
  `completeTime` timestamp NULL DEFAULT NULL,
  `auditStatus` int(11) DEFAULT NULL,
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

/*Table structure for table `breachofcontract` */

DROP TABLE IF EXISTS `breachofcontract`;

CREATE TABLE `breachofcontract` (
  `bcID` int(11) NOT NULL AUTO_INCREMENT,
  `stid` int(11) DEFAULT NULL,
  `operationTime` int(11) DEFAULT NULL,
  `confirmationTime` int(11) DEFAULT NULL,
  `BreachOfContractTime` int(11) DEFAULT NULL,
  `confirmationMoney` int(11) DEFAULT NULL,
  PRIMARY KEY (`bcID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `browserecords` */

DROP TABLE IF EXISTS `browserecords`;

CREATE TABLE `browserecords` (
  `brID` int(11) NOT NULL AUTO_INCREMENT,
  `brType` int(11) DEFAULT NULL,
  `userID` int(11) DEFAULT NULL,
  `postID` int(11) DEFAULT NULL,
  `serviceID` int(11) DEFAULT NULL,
  `browseTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`brID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `complaint` */

DROP TABLE IF EXISTS `complaint`;

CREATE TABLE `complaint` (
  `cid` int(11) NOT NULL AUTO_INCREMENT,
  `posting` int(11) DEFAULT NULL,
  `pcID` int(11) DEFAULT NULL,
  `userID` int(11) DEFAULT NULL,
  `ctID` int(11) DEFAULT NULL,
  `TimeOfComplaint` timestamp NULL DEFAULT NULL,
  `auditStatus` int(11) DEFAULT NULL,
  PRIMARY KEY (`cid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `complainttype` */

DROP TABLE IF EXISTS `complainttype`;

CREATE TABLE `complainttype` (
  `ctID` int(11) NOT NULL AUTO_INCREMENT,
  `ctName` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`ctID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `downloadrecord` */

DROP TABLE IF EXISTS `downloadrecord`;

CREATE TABLE `downloadrecord` (
  `drID` int(11) NOT NULL AUTO_INCREMENT,
  `userID` int(11) DEFAULT NULL,
  `postID` int(11) DEFAULT NULL,
  `downloadTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`drID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `evaluationservice` */

DROP TABLE IF EXISTS `evaluationservice`;

CREATE TABLE `evaluationservice` (
  `serviceAppraiseID` int(11) NOT NULL AUTO_INCREMENT,
  `serviceID` int(11) DEFAULT NULL,
  `userID` int(11) DEFAULT NULL,
  `serviceAppraiseContent` varchar(255) DEFAULT NULL,
  `serviceAppraiseDate` timestamp NULL DEFAULT NULL,
  `serviceAppraiseLevel` int(11) DEFAULT NULL,
  `serviceAppraisePID` int(11) DEFAULT NULL,
  PRIMARY KEY (`serviceAppraiseID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `forummanagement` */

DROP TABLE IF EXISTS `forummanagement`;

CREATE TABLE `forummanagement` (
  `fmID` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) DEFAULT NULL,
  `sort` int(11) DEFAULT NULL,
  `fmName` varchar(50) DEFAULT NULL,
  `auditStatus` tinyint(1) DEFAULT NULL,
  `giftIntegral` tinyint(1) DEFAULT NULL,
  `adminID` int(11) DEFAULT NULL,
  `serviceCopies` int(11) DEFAULT NULL,
  PRIMARY KEY (`fmID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `function` */

DROP TABLE IF EXISTS `function`;

CREATE TABLE `function` (
  `fID` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) DEFAULT '0',
  `fName` varchar(50) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`fID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `goldnotes` */

DROP TABLE IF EXISTS `goldnotes`;

CREATE TABLE `goldnotes` (
  `recordID` int(11) NOT NULL AUTO_INCREMENT,
  `userID` int(11) DEFAULT NULL,
  `acquisitionMode` int(11) DEFAULT NULL,
  `recordDate` timestamp NULL DEFAULT NULL,
  `recordDescribe` varchar(255) DEFAULT NULL,
  `recordInAndOut` float DEFAULT NULL,
  `auditStatus` int(11) DEFAULT NULL,
  PRIMARY KEY (`recordID`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

/*Table structure for table `integral` */

DROP TABLE IF EXISTS `integral`;

CREATE TABLE `integral` (
  `integralID` int(11) NOT NULL AUTO_INCREMENT,
  `viceID` int(11) DEFAULT NULL,
  `integralName` varchar(20) DEFAULT NULL,
  `require` int(11) DEFAULT NULL,
  `integral` int(11) DEFAULT NULL,
  PRIMARY KEY (`integralID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `integralrecord` */

DROP TABLE IF EXISTS `integralrecord`;

CREATE TABLE `integralrecord` (
  `IRID` int(11) NOT NULL AUTO_INCREMENT,
  `userID` int(11) DEFAULT NULL,
  `IRDate` timestamp NULL DEFAULT NULL,
  `IRDescribe` varchar(255) DEFAULT NULL,
  `recordInAndOut` int(11) DEFAULT NULL,
  `integralID` int(11) DEFAULT NULL,
  `auditStatus` int(11) DEFAULT NULL,
  PRIMARY KEY (`IRID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `languagetype` */

DROP TABLE IF EXISTS `languagetype`;

CREATE TABLE `languagetype` (
  `languageID` int(11) NOT NULL AUTO_INCREMENT,
  `languageName` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`languageID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `login` */

DROP TABLE IF EXISTS `login`;

CREATE TABLE `login` (
  `loginID` int(11) NOT NULL AUTO_INCREMENT,
  `userID` int(11) DEFAULT NULL,
  `opentId` varchar(50) DEFAULT NULL,
  `loginType` int(11) DEFAULT NULL,
  `userEmail` varchar(50) DEFAULT NULL,
  `userPwd` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`loginID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `logistics` */

DROP TABLE IF EXISTS `logistics`;

CREATE TABLE `logistics` (
  `logisticsID` int(11) NOT NULL AUTO_INCREMENT,
  `userID` int(11) DEFAULT NULL,
  `orderID` varchar(50) DEFAULT NULL,
  `title` varchar(50) DEFAULT NULL,
  `describe` text,
  `img1` varchar(255) DEFAULT NULL,
  `img2` varchar(255) DEFAULT NULL,
  `img3` varchar(255) DEFAULT NULL,
  `img4` varchar(255) DEFAULT NULL,
  `img5` varchar(255) DEFAULT NULL,
  `kg` int(11) DEFAULT NULL,
  `delivery` int(11) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `userPhone` varchar(50) DEFAULT NULL,
  `userName` varchar(50) DEFAULT NULL,
  `userAddr` varchar(50) DEFAULT NULL,
  `collectGoods` varchar(50) DEFAULT NULL,
  `collectGoodsPhone` varchar(50) DEFAULT NULL,
  `collectGoodsAddr` varchar(255) DEFAULT NULL,
  `orderTime` timestamp NULL DEFAULT NULL,
  `auditStatus` int(11) DEFAULT NULL,
  `auditTime` timestamp NULL DEFAULT NULL,
  `logisticsCompany` varchar(50) DEFAULT NULL,
  `logisticsSingleNumber` varchar(50) DEFAULT NULL,
  `submitTime` timestamp NULL DEFAULT NULL,
  `number1` varchar(50) DEFAULT NULL,
  `number2` varchar(50) DEFAULT NULL,
  `numberTime1` timestamp NULL DEFAULT NULL,
  `numberTime2` timestamp NULL DEFAULT NULL,
  `confirmationTime` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`logisticsID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `majortype` */

DROP TABLE IF EXISTS `majortype`;

CREATE TABLE `majortype` (
  `majorID` int(11) NOT NULL AUTO_INCREMENT,
  `category` int(11) DEFAULT NULL,
  `majorName` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`majorID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `merchantcollection` */

DROP TABLE IF EXISTS `merchantcollection`;

CREATE TABLE `merchantcollection` (
  `collectID` int(11) NOT NULL AUTO_INCREMENT,
  `userID` int(11) DEFAULT NULL,
  `merchantOrServiceByID` int(11) DEFAULT NULL,
  `collectType` int(11) DEFAULT NULL,
  `collectionTime` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`collectID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `messagefeedback` */

DROP TABLE IF EXISTS `messagefeedback`;

CREATE TABLE `messagefeedback` (
  `mfID` int(11) NOT NULL AUTO_INCREMENT,
  `mfName` varchar(50) DEFAULT NULL,
  `mfPhone` varchar(50) DEFAULT NULL,
  `mfEmail` varchar(50) DEFAULT NULL,
  `mfContent` varchar(255) DEFAULT NULL,
  `mfJoinTheWay` varchar(255) DEFAULT NULL,
  `mfDate` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`mfID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `news` */

DROP TABLE IF EXISTS `news`;

CREATE TABLE `news` (
  `newsID` int(11) NOT NULL AUTO_INCREMENT,
  `theSender` int(11) DEFAULT NULL,
  `addRessee` int(11) DEFAULT NULL,
  `content` text,
  `sendingTime` timestamp NULL DEFAULT NULL,
  `readState` tinyint(1) DEFAULT NULL,
  `newsType` int(11) DEFAULT NULL,
  `messageGroup` int(11) DEFAULT NULL,
  PRIMARY KEY (`newsID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `orders` */

DROP TABLE IF EXISTS `orders`;

CREATE TABLE `orders` (
  `orderID` varchar(50) NOT NULL,
  `userID` int(11) DEFAULT NULL,
  `serviceID` int(11) DEFAULT NULL,
  `resouroeID` int(11) DEFAULT NULL,
  `orderType` int(11) DEFAULT NULL,
  `orderTime` timestamp NULL DEFAULT NULL,
  `paymentTime` timestamp NULL DEFAULT NULL,
  `receiptTime` timestamp NULL DEFAULT NULL,
  `provideServicesTime` timestamp NULL DEFAULT NULL,
  `completeTime` timestamp NULL DEFAULT NULL,
  `remarks` text,
  `scheduledStartTime` timestamp NULL DEFAULT NULL,
  `scheduledEndTime` timestamp NULL DEFAULT NULL,
  `population` int(11) DEFAULT NULL,
  `number` int(11) DEFAULT NULL,
  `smallPlan` float DEFAULT NULL,
  `totalPrice` float DEFAULT NULL,
  `uploadPath` varchar(255) DEFAULT NULL,
  `weight` double DEFAULT NULL,
  `integral` int(11) DEFAULT NULL,
  `collectGoods` int(11) DEFAULT NULL,
  `AddressID` int(11) DEFAULT NULL,
  `orderStatus` int(11) DEFAULT NULL,
  `commentstatus` int(11) DEFAULT NULL,
  `refundstatus` int(11) DEFAULT NULL,
  `filesatus` int(11) DEFAULT NULL,
  `documentpath` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`orderID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `post` */

DROP TABLE IF EXISTS `post`;

CREATE TABLE `post` (
  `postID` int(11) NOT NULL AUTO_INCREMENT,
  `userID` int(11) DEFAULT NULL,
  `browseNumber` int(11) DEFAULT NULL,
  `commentNumber` int(11) DEFAULT NULL,
  `fabulousNumber` int(11) DEFAULT NULL,
  `collectionNumber` int(11) DEFAULT NULL,
  `fmID` int(11) DEFAULT NULL,
  `title` varchar(50) DEFAULT NULL,
  `content` text,
  `releaseTime` timestamp NULL DEFAULT NULL,
  `operatingState` int(11) DEFAULT NULL,
  `adminOpinion` text,
  `essence` tinyint(1) DEFAULT NULL,
  `solid` tinyint(1) DEFAULT NULL,
  `majorID` int(11) DEFAULT NULL,
  `resourcesPath` varchar(255) DEFAULT NULL,
  `serviceCostTypeID` varchar(255) DEFAULT NULL,
  `integral` int(11) DEFAULT NULL,
  `goldCoin` int(11) DEFAULT NULL,
  `videoPath` varchar(255) DEFAULT NULL,
  `coverPath` varchar(255) DEFAULT NULL,
  `time` varchar(20) DEFAULT NULL,
  `auditStatus` int(11) DEFAULT NULL,
  PRIMARY KEY (`postID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

/*Table structure for table `postcollection` */

DROP TABLE IF EXISTS `postcollection`;

CREATE TABLE `postcollection` (
  `CollectionID` int(11) NOT NULL AUTO_INCREMENT,
  `pcID` int(11) DEFAULT NULL,
  `userID` int(11) DEFAULT NULL,
  `collectionTime` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`CollectionID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `postcomment` */

DROP TABLE IF EXISTS `postcomment`;

CREATE TABLE `postcomment` (
  `pcID` int(11) NOT NULL AUTO_INCREMENT,
  `postID` int(11) DEFAULT NULL,
  `commentator` int(11) DEFAULT NULL,
  `pid` int(11) DEFAULT NULL,
  `content` text,
  `reviewTime` timestamp NULL DEFAULT NULL,
  `operatingState` int(11) DEFAULT NULL,
  PRIMARY KEY (`pcID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `postfabulous` */

DROP TABLE IF EXISTS `postfabulous`;

CREATE TABLE `postfabulous` (
  `postFab` int(11) NOT NULL AUTO_INCREMENT,
  `userID` int(11) DEFAULT NULL,
  `postID` int(11) DEFAULT NULL,
  `fabulousTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`postFab`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `putforward` */

DROP TABLE IF EXISTS `putforward`;

CREATE TABLE `putforward` (
  `pfID` int(11) NOT NULL AUTO_INCREMENT,
  `userID` int(11) DEFAULT NULL,
  `putName` varchar(50) DEFAULT NULL,
  `bankID` int(11) DEFAULT NULL,
  `bankAccount` varchar(50) DEFAULT NULL,
  `openBankName` varchar(50) DEFAULT NULL,
  `submitTime` timestamp NULL DEFAULT NULL,
  `auditTime` timestamp NULL DEFAULT NULL,
  `money` float DEFAULT NULL,
  `auditStatus` int(11) DEFAULT NULL,
  PRIMARY KEY (`pfID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `putforwardrecord` */

DROP TABLE IF EXISTS `putforwardrecord`;

CREATE TABLE `putforwardrecord` (
  `pfrID` int(11) NOT NULL AUTO_INCREMENT,
  `userID` int(11) DEFAULT NULL,
  `bankAccount` varchar(50) DEFAULT NULL,
  `bankID` int(11) DEFAULT NULL,
  `submitTime` timestamp NULL DEFAULT NULL,
  `completeTime` timestamp NULL DEFAULT NULL,
  `money` float DEFAULT NULL,
  `adminOpinion` text,
  PRIMARY KEY (`pfrID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `refund` */

DROP TABLE IF EXISTS `refund`;

CREATE TABLE `refund` (
  `refundID` int(11) NOT NULL AUTO_INCREMENT,
  `point` int(11) DEFAULT NULL,
  `orderID` varchar(50) DEFAULT NULL,
  `userID` int(11) DEFAULT NULL,
  `refundReason` text,
  `refundExplain` text,
  `refundImg` varchar(255) DEFAULT NULL,
  `applyRefundMoney` float DEFAULT NULL,
  `ActualRefundMoney` float DEFAULT NULL,
  `applicationTime` timestamp NULL DEFAULT NULL,
  `businessRemarks` text,
  `auditTime` timestamp NULL DEFAULT NULL,
  `auditStatus` int(11) DEFAULT NULL,
  `adminRemarks` text,
  `adminTime` timestamp NULL DEFAULT NULL,
  `adminStatus` int(11) DEFAULT NULL,
  PRIMARY KEY (`refundID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `resouroe` */

DROP TABLE IF EXISTS `resouroe`;

CREATE TABLE `resouroe` (
  `resouroeID` int(11) NOT NULL AUTO_INCREMENT,
  `resouroeName` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`resouroeID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `role` */

DROP TABLE IF EXISTS `role`;

CREATE TABLE `role` (
  `roleID` int(11) NOT NULL AUTO_INCREMENT,
  `roleName` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`roleID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `rolefunction` */

DROP TABLE IF EXISTS `rolefunction`;

CREATE TABLE `rolefunction` (
  `rfID` int(11) NOT NULL AUTO_INCREMENT,
  `roleID` int(11) DEFAULT NULL,
  `fID` int(11) DEFAULT NULL,
  PRIMARY KEY (`rfID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `servicecollection` */

DROP TABLE IF EXISTS `servicecollection`;

CREATE TABLE `servicecollection` (
  `serColleID` int(11) NOT NULL AUTO_INCREMENT,
  `serviceID` int(11) DEFAULT NULL,
  `userID` int(11) DEFAULT NULL,
  `collectionTime` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`serColleID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `servicecosttype` */

DROP TABLE IF EXISTS `servicecosttype`;

CREATE TABLE `servicecosttype` (
  `serviceCostTypeID` int(11) NOT NULL AUTO_INCREMENT,
  `serviceCostTypeName` varchar(50) DEFAULT NULL,
  `stid` int(11) DEFAULT NULL,
  PRIMARY KEY (`serviceCostTypeID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `servicedes` */

DROP TABLE IF EXISTS `servicedes`;

CREATE TABLE `servicedes` (
  `serviceDesID` int(11) NOT NULL AUTO_INCREMENT,
  `serviceDesTitle` varchar(50) DEFAULT NULL,
  `serviceDesContentIOUrl` varchar(255) DEFAULT NULL,
  `serviceID` int(11) DEFAULT NULL,
  PRIMARY KEY (`serviceDesID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `serviceintegral` */

DROP TABLE IF EXISTS `serviceintegral`;

CREATE TABLE `serviceintegral` (
  `serIntID` int(11) NOT NULL AUTO_INCREMENT,
  `userID` int(11) DEFAULT NULL,
  `stid` int(11) DEFAULT NULL,
  `Integral` int(11) DEFAULT NULL,
  PRIMARY KEY (`serIntID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `servicelevel` */

DROP TABLE IF EXISTS `servicelevel`;

CREATE TABLE `servicelevel` (
  `serlevelID` int(11) NOT NULL AUTO_INCREMENT,
  `serlevelName` varchar(50) DEFAULT NULL,
  `stid` int(11) DEFAULT NULL,
  `serviceIntegralMin` int(11) DEFAULT NULL,
  `serviceIntegralMax` int(11) DEFAULT NULL,
  PRIMARY KEY (`serlevelID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `servicereporting` */

DROP TABLE IF EXISTS `servicereporting`;

CREATE TABLE `servicereporting` (
  `srID` int(11) NOT NULL AUTO_INCREMENT,
  `businessID` int(11) DEFAULT NULL,
  `serviceID` int(11) DEFAULT NULL,
  `userID` int(11) DEFAULT NULL,
  `ctID` int(11) DEFAULT NULL,
  `TimeOfComplaint` timestamp NULL DEFAULT NULL,
  `auditTime` timestamp NULL DEFAULT NULL,
  `auditStatus` int(11) DEFAULT NULL,
  PRIMARY KEY (`srID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `services` */

DROP TABLE IF EXISTS `services`;

CREATE TABLE `services` (
  `serviceID` int(11) NOT NULL AUTO_INCREMENT,
  `stid` int(11) DEFAULT NULL,
  `userID` int(11) DEFAULT NULL,
  `resourceID` int(11) DEFAULT NULL,
  `serviceTitle` varchar(50) DEFAULT NULL,
  `serviceFuTitle` varchar(50) DEFAULT NULL,
  `downloadTitle` varchar(50) DEFAULT NULL,
  `servicePrice` int(11) DEFAULT NULL,
  `serviceCoverImg` varchar(255) DEFAULT NULL,
  `serviceImgUrlOne` varchar(255) DEFAULT NULL,
  `serviceImgUrlTwo` varchar(255) DEFAULT NULL,
  `serviceImgUrlThree` varchar(255) DEFAULT NULL,
  `serviceImgUrlFour` varchar(255) DEFAULT NULL,
  `serviceCostTypeID` varchar(255) DEFAULT NULL,
  `serviceIntro` varchar(255) DEFAULT NULL,
  `serviceCity` varchar(255) DEFAULT NULL,
  `country` int(11) DEFAULT NULL,
  `serviceCostInclude` varchar(255) DEFAULT NULL,
  `serviceStartDate` timestamp NULL DEFAULT NULL,
  `serviceEndDate` timestamp NULL DEFAULT NULL,
  `schoolRegion` varchar(255) DEFAULT NULL,
  `schoolNameByCN` varchar(50) DEFAULT NULL,
  `majoyNameByCN` varchar(50) DEFAULT NULL,
  `schoolNameByROK` varchar(50) DEFAULT NULL,
  `majoyNameByROK` varchar(50) DEFAULT NULL,
  `goodAtMajoy` varchar(255) DEFAULT NULL,
  `hospitalName` varchar(50) DEFAULT NULL,
  `serviceHour` int(11) DEFAULT NULL,
  `uploadDataUrl` varchar(255) DEFAULT NULL,
  `releaseTime` timestamp NULL DEFAULT NULL,
  `browseNumber` int(11) DEFAULT NULL,
  `weight` float DEFAULT NULL,
  `recommendBool` tinyint(1) DEFAULT NULL,
  `adminOpinion` text,
  `shelfState` int(11) DEFAULT NULL,
  `auditStatus` int(11) DEFAULT NULL,
  PRIMARY KEY (`serviceID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `servicetype` */

DROP TABLE IF EXISTS `servicetype`;

CREATE TABLE `servicetype` (
  `stid` int(11) NOT NULL AUTO_INCREMENT,
  `stPid` int(11) DEFAULT NULL,
  `stName` varchar(50) DEFAULT NULL,
  `sort` int(11) DEFAULT NULL,
  `display` tinyint(1) DEFAULT '1',
  `operationTime` int(11) DEFAULT NULL,
  `confirmTime` int(11) DEFAULT NULL,
  `violatedNumber` int(11) DEFAULT NULL,
  `proportion` int(11) DEFAULT NULL,
  `toExamine` tinyint(1) DEFAULT NULL,
  `advertisement` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`stid`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8;

/*Table structure for table `sharea` */

DROP TABLE IF EXISTS `sharea`;

CREATE TABLE `sharea` (
  `areaID` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `mergerName` varchar(255) DEFAULT NULL,
  `level` int(11) DEFAULT NULL,
  PRIMARY KEY (`areaID`)
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=utf8;

/*Table structure for table `system` */

DROP TABLE IF EXISTS `system`;

CREATE TABLE `system` (
  `sysID` int(11) NOT NULL AUTO_INCREMENT,
  `exchangeRate` int(11) DEFAULT NULL,
  `charge` int(11) DEFAULT NULL,
  `signIn` int(11) DEFAULT NULL,
  `postIntegral` int(11) DEFAULT NULL,
  `track` int(11) DEFAULT NULL,
  `releaseBeauty` int(11) DEFAULT NULL,
  `logisticMin` int(11) DEFAULT NULL,
  `logisticMinSeller` int(11) DEFAULT NULL,
  `logisticWeight` int(11) DEFAULT NULL,
  `logisticPrice` int(11) DEFAULT NULL,
  `bond` float DEFAULT NULL,
  `videoSize` int(11) DEFAULT NULL,
  `closeorderdays` int(11) DEFAULT NULL,
  `receivedays` int(11) DEFAULT NULL,
  `refunddays` int(11) DEFAULT NULL,
  `refundconfirmdays` int(11) DEFAULT NULL,
  `shopFreeStatus` tinyint(1) DEFAULT NULL,
  `freeTime` int(11) DEFAULT NULL,
  PRIMARY KEY (`sysID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `trusteeship` */

DROP TABLE IF EXISTS `trusteeship`;

CREATE TABLE `trusteeship` (
  `truID` int(11) NOT NULL AUTO_INCREMENT,
  `userID` int(11) DEFAULT NULL,
  `applicationTime` timestamp NULL DEFAULT NULL,
  `trusteeshipMonth` int(11) DEFAULT NULL,
  `auditTime` timestamp NULL DEFAULT NULL,
  `auditStatus` int(11) DEFAULT NULL,
  PRIMARY KEY (`truID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `user` */

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `userID` int(11) NOT NULL AUTO_INCREMENT,
  `userImgPath` varchar(255) DEFAULT NULL,
  `userName` varchar(50) DEFAULT NULL,
  `userRealName` varchar(50) DEFAULT NULL,
  `userSex` int(11) DEFAULT NULL,
  `userPhone` varchar(50) DEFAULT NULL,
  `contactMailbox` varchar(50) DEFAULT NULL,
  `userMoney` float DEFAULT NULL,
  `userIntegral` int(11) DEFAULT NULL,
  `country` int(11) DEFAULT NULL,
  `provincialID` int(11) DEFAULT NULL,
  `cityID` int(11) DEFAULT NULL,
  `countyID` int(11) DEFAULT NULL,
  `adDetail` varchar(255) DEFAULT NULL,
  `merchantType` int(11) DEFAULT '0',
  `merchantRegistrationTime` timestamp NULL DEFAULT NULL,
  `firstServiceID` int(11) DEFAULT NULL,
  `secondServiceID` int(11) DEFAULT NULL,
  `firstServiceMoney` float DEFAULT NULL,
  `secondServiceMoney` float DEFAULT NULL,
  `hospitalName` varchar(50) DEFAULT NULL,
  `shopName` varchar(50) DEFAULT NULL,
  `signature` varchar(255) DEFAULT NULL,
  `guaranteeMoney` int(11) DEFAULT '0',
  `shopImg` varchar(255) DEFAULT NULL,
  `identityType` int(11) DEFAULT NULL,
  `identityNumder` varchar(255) DEFAULT NULL,
  `identityRealName` varchar(50) DEFAULT NULL,
  `identityPositiveImg` varchar(255) DEFAULT NULL,
  `identityNegativeImg` varchar(255) DEFAULT NULL,
  `identityHandImg` varchar(255) DEFAULT NULL,
  `languageNameText` varchar(255) DEFAULT NULL,
  `majorNameText` varchar(255) DEFAULT NULL,
  `liveCityID` int(11) DEFAULT NULL,
  `merchantEmail` varchar(50) DEFAULT NULL,
  `merchantPhone` varchar(50) DEFAULT NULL,
  `merchantLevel` float DEFAULT '0',
  `merchantExp` int(11) DEFAULT '0',
  `qq` varchar(50) DEFAULT NULL,
  `weChat` varchar(50) DEFAULT NULL,
  `profession` varchar(50) DEFAULT NULL,
  `height` float DEFAULT NULL,
  `constellation` varchar(50) DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `selfIntroduction` text,
  `collectCount` int(11) DEFAULT '0',
  `orderCount` int(11) DEFAULT '0',
  `browseNumber` int(11) DEFAULT '0',
  `trusteeship` tinyint(1) DEFAULT NULL,
  `trusteeshipStartTime` timestamp NULL DEFAULT NULL,
  `trusteeshipMonth` int(11) DEFAULT '0',
  `businessState` int(11) DEFAULT NULL,
  `experience` int(11) DEFAULT NULL,
  `experienceStatus` tinyint(1) DEFAULT '0',
  `auditStatus` int(11) DEFAULT NULL,
  `auditTime` timestamp NULL DEFAULT NULL,
  `reason` text,
  `authentication` tinyint(1) DEFAULT '0',
  `authenticationer` tinyint(1) DEFAULT '0',
  `creditScore` int(11) DEFAULT '0',
  `stateboolean` tinyint(1) DEFAULT '1',
  `mailboxVerification` tinyint(1) DEFAULT '0',
  `registerIP` varchar(50) DEFAULT NULL,
  `lastEntry` varchar(50) DEFAULT NULL,
  `userRegistrationTime` timestamp NULL DEFAULT NULL,
  `recentEntry` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`userID`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
