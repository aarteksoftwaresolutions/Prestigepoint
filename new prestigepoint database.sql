/*
SQLyog Enterprise - MySQL GUI v7.15 
MySQL - 5.7.6-m16-log : Database - aartek14_prestigepoint_dbpro
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

CREATE DATABASE /*!32312 IF NOT EXISTS*/`aartek14_prestigepoint_dbpro` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `aartek14_prestigepoint_dbpro`;

/*Table structure for table `add_challenge` */

DROP TABLE IF EXISTS `add_challenge`;

CREATE TABLE `add_challenge` (
  `CHALLENGE_ID` int(80) NOT NULL AUTO_INCREMENT,
  `TITLE` varchar(250) DEFAULT NULL,
  `DISCRIPTION` varchar(10000) DEFAULT NULL,
  `PRICE` int(60) DEFAULT NULL,
  `CHALLENGE_CONDITION` varchar(1000) DEFAULT NULL,
  `DURATION` varchar(1000) DEFAULT NULL,
  `TECHNOLOGY` varchar(1000) DEFAULT NULL,
  `IS_DELETED` int(80) DEFAULT NULL,
  `IS_ACTIVE` int(80) DEFAULT NULL,
  PRIMARY KEY (`CHALLENGE_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=109 DEFAULT CHARSET=latin1;

/*Data for the table `add_challenge` */

insert  into `add_challenge`(`CHALLENGE_ID`,`TITLE`,`DISCRIPTION`,`PRICE`,`CHALLENGE_CONDITION`,`DURATION`,`TECHNOLOGY`,`IS_DELETED`,`IS_ACTIVE`) values (90,'fhg','fgh',345347,'fgh','fh','fg',1,1),(91,NULL,NULL,NULL,NULL,NULL,NULL,1,0),(92,'szdcfs','sdf',3242,'dsfsd','as35','fr',0,0),(93,'dgftdr','bhj',7878,'vgj','jgv6765','h',1,0),(94,'eswf','gf',23,'xdg','dfg','xdgf',1,0),(95,'sdfx','dfg',435,'df','dfg','df',1,1),(96,'xdfs','ddfg',543,'fdgwqeq','df','dfg',0,0),(97,'fd','fs',2334235,'sde','dsf','d',0,0),(98,'deswf','re',345,'rf','re','rf',0,0),(99,'werftghy','waefrcxfgbrytrtyrgfh',35346,'erfwewrwfg','er5t65ftgh','fgh',0,0),(100,'sd','sdf',35,'sdfsd','sedr','serw',1,0),(101,'zsdcsfdsfe','drfcdsf',35345,'sder','e45','e',1,0),(102,'sadf','sedf',543545,'grtr','e45','e',0,0),(103,'dfdgfgrmmmmmmmm','rdygetr',56,'dgrf','564','dtfrgy',0,1),(104,'wer','wer',32,'werwe','2534','eswr',0,0),(105,'ewsfr','sedf',33,'ew','324','ed',0,0),(106,'fgh','ry',456,'dgrffdg','56','',1,1),(107,'dgrf','dfr',46,'fre','5e6','dfg',0,0),(108,'title','sdf',345,'sf','345','reg',1,1);

/*Table structure for table `add_marquee` */

DROP TABLE IF EXISTS `add_marquee`;

CREATE TABLE `add_marquee` (
  `MARQUEE_ID` int(60) NOT NULL AUTO_INCREMENT,
  `MARQUEE_DISCRIPTION` varchar(130) DEFAULT NULL,
  `IS_DELETED` int(60) DEFAULT NULL,
  `IS_ACTIVE` int(60) DEFAULT NULL,
  PRIMARY KEY (`MARQUEE_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8;

/*Data for the table `add_marquee` */

insert  into `add_marquee`(`MARQUEE_ID`,`MARQUEE_DISCRIPTION`,`IS_DELETED`,`IS_ACTIVE`) values (1,'adw',NULL,1),(2,'asdf',NULL,1),(3,'sdarg',NULL,NULL),(4,'asf',NULL,NULL),(5,'asdf',NULL,NULL),(6,'aSD',NULL,NULL),(7,'asdf',NULL,NULL),(8,'asdw1212',1,1),(9,'asd',0,NULL),(10,'wae123',0,NULL),(11,'sdxf',0,0),(12,'frhyu',1,0),(13,'dsxg',1,1),(14,'aZcsd',1,0),(15,'dgr dg bh dhgy gfdh fhb fhnj fhj nhf fhbf bnhfh fgh fh fvh',1,1),(16,'43w4t547686ghfgv789890-',1,1),(17,'45e45t',0,0),(18,'wewqarew',0,0),(19,'sadsfsdef',0,0),(20,'adsfcxg',0,0),(21,'dfg',1,1),(22,'fghwaqsderw sdfe sdf sdef sdf sdefg',1,0),(23,'sedf',1,1),(24,NULL,1,0),(25,NULL,1,0),(26,NULL,0,0),(27,NULL,0,0),(28,NULL,0,0),(29,NULL,0,0),(30,NULL,0,0),(31,'meenal',1,1),(32,'was',1,0),(33,'sdeg',1,0),(34,'ghetg',1,0),(35,'wqderwqrfw3er4 sewafwergftw',1,0),(36,'sa asc faasf sdddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddd',1,0);

/*Table structure for table `adminlogin` */

DROP TABLE IF EXISTS `adminlogin`;

CREATE TABLE `adminlogin` (
  `ADMIN_LOGIN_ID` int(60) NOT NULL AUTO_INCREMENT,
  `EMAIL_ID` varchar(100) DEFAULT NULL,
  `PASSWORD` varchar(60) DEFAULT NULL,
  `IS_DELETED` tinyint(4) DEFAULT NULL,
  `FIRST_NAME` varchar(60) DEFAULT NULL,
  `LAST_NAME` varchar(60) DEFAULT NULL,
  `CONTACT_NO` varchar(12) DEFAULT NULL,
  `ADMIN_TYPE` int(10) DEFAULT NULL,
  `STATUS_ID` int(10) DEFAULT NULL,
  PRIMARY KEY (`ADMIN_LOGIN_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8;

/*Data for the table `adminlogin` */

insert  into `adminlogin`(`ADMIN_LOGIN_ID`,`EMAIL_ID`,`PASSWORD`,`IS_DELETED`,`FIRST_NAME`,`LAST_NAME`,`CONTACT_NO`,`ADMIN_TYPE`,`STATUS_ID`) values (1,'admin@gmail.com','Aartek2013',1,NULL,NULL,NULL,1,NULL),(2,'sandeep@gmail.com','123',1,NULL,NULL,NULL,1,NULL),(3,'patidar@gmail.com','1234',1,NULL,NULL,NULL,2,NULL),(4,'sandeepp@gmail.com','123',1,'sandeep','patidar','8602219170',3,NULL),(5,'mayank@gmail.com','12345',1,'mayank','sir','8602219170',2,1),(6,'jariyasandeep@gmail.com','12345',1,'sandeep','jariya','8871871977',3,1),(7,'SAF@gmail.com','123',1,'ESWDF','WESFR','SDF',0,1),(8,'adxas@gmail.com','123',1,'asd','aaaasd','szfcsdg',0,1),(9,'meenalpathre01@gmail.com','123',1,'sada','asdfa','ascdfaf',1,1),(10,'sfc@gmail.com','123',1,'zcfd','sdxfvgs','sfc',0,1),(11,'zcs@gma.com','123',1,'zc','zxc','zcsd',0,1),(12,'radha@gmail.com','123',1,'radha','pal','adxf',2,1),(13,'jiya@gmail.com','123',1,'adxae','sadf','sada',1,1),(14,'piyapal@gmail.com','123',1,'ad','sadf','adfasd',3,1),(15,'minakshi@gmail.com','123',1,'aS','SQAds','adawes',4,1),(16,'sunita@gmail.com','123',1,'sunita','gahrewal','123',4,1),(17,'xdgfv23q34524@gmail.com','123',1,'132142342333xdfsdffsdfsdfsdddddddddddddddddddddddd','324325346fdggggggggggggggggggggggggggggggggggggggg','sdefrdfrg132',0,1),(18,'radha@gmail.com','123',1,'radha','pal','123',2,1),(19,'rrw333@gmail.com','12345678',1,'Rahul','Raghuvanshi','999999999999',4,1),(20,'deepak@gmail.com','123',1,'deepak','nandwal','545465545455',2,1),(21,'jyoti@gmail.com','123',1,'jyoti','pal','545465545455',1,1),(22,'deepak@gmail.com','123',1,'deepak','pal','545465545455',4,1),(23,'priti@gmail.com','123',1,'priti','pal','545465545455',3,1),(24,'neetu@gmail.com','123',1,'neetu','pal','545465545455',2,1),(25,'harish@gmail.com','123',1,'harish','panchal','2342342423',1,1),(26,'niya@gmail.com','123',1,'wqe','qwe','2321432434',1,1),(27,'qe3424@gmail.com','123',1,'asd','sazdf','5435436232',2,1),(28,'q42','34',1,'wqe','e','34',0,1),(29,'weq','342',1,'we','we','342',0,1),(30,'werr','34',1,'ewr','we','34',0,1),(31,'ew','34',1,'swe','ew','324',0,1),(32,'awsde','423',1,'adew','qwe','234',0,1),(33,'se','34',1,'sd','sd','342',0,1),(34,'as','342',1,'da','sas','24',0,1),(35,'w3','34',1,'sad','wq','32',0,1),(36,'rew','34',1,'ed','ewr','443',0,1),(37,'342','342',1,'we','w','342',0,1),(38,'32','324',1,'we','wr','32',0,1),(39,'meenal@gmail.comsfsdfsdfsdfdfdsfsdfdfdfdfdfdfdffff','123',1,'qwesdfsdfdrgdyfh','aqwescfsdfdfdf','3242352123',4,1),(40,'ew4@gmail.com','123',1,'dgrf','et','2324345356',2,1);

/*Table structure for table `batch` */

DROP TABLE IF EXISTS `batch`;

CREATE TABLE `batch` (
  `BATCH_ID` int(60) NOT NULL AUTO_INCREMENT,
  `BATCH_NAME` varchar(60) DEFAULT NULL,
  `START_DATE` varchar(60) DEFAULT NULL,
  `IS_DELETED` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`BATCH_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=108 DEFAULT CHARSET=utf8;

/*Data for the table `batch` */

insert  into `batch`(`BATCH_ID`,`BATCH_NAME`,`START_DATE`,`IS_DELETED`) values (1,'core + adv','27-10-2014',0),(2,'Batch0004','01-11-2014',0),(3,'Batch0003','03-09-2014',1),(4,'Batch0002','02-08-2014',1),(5,'Batch0001','01-07-2014',1),(6,'Old Batch','01-01-2013',1),(7,'Batch0005','01-12-2014',1),(8,'Batch0006','01-01-2015',1),(9,'Batch0000','15-04-2015',0),(10,'asdwce','15-05-1991',0),(11,'zscdsvgf','',0),(12,'ASDWWEAAA','',0),(13,'Batch000','',0),(14,'Batch 009','02-04-2015',1),(15,'qwed','06-05-2014',0),(16,'Batch2222','21-05-2015',0),(17,'qw222','12-05-2015',0),(18,'ASQ','21-05-2015',0),(19,'qwe','14-05-2015',0),(20,'oip24','13-05-2015',0),(21,'ert','07-05-2015',0),(22,'223423425','12-05-2015',0),(23,'sdsfwq','10-05-2016',0),(24,'awsdzsc','10-05-2001',0),(25,'qwewq','16-05-2012',0),(26,'2qw','09-05-1990',0),(27,'sed','03-06-1981',0),(28,'wsd','02-06-2015',0),(29,'qw2e','09-06-2015',0),(30,'fhy','11-06-1975',0),(31,'xvfgawsr212','11-06-1969',0),(32,'ZXda','16-06-1987',0),(33,'xvgf','08-06-1999',0),(34,'asdfc','04-06-2008',0),(35,'wsda','08-06-1981',0),(36,'cfgbh','13-06-1984',0),(37,'qaw','11-06-1986',0),(38,'adsdfsdfredsfrg','09-06-1959',0),(39,'ZASDX','09-06-1981',0),(100,'batch','-2013',0),(101,'meenl','07-07-1976',0),(102,'sferwesrfetge','13-07-1983',0),(103,'mmmmmmmpppppppppppp','14-07-1992',0),(104,'neha121','18-07-1984',1),(105,'aaserase3q2423423423435df3254545','18-07-1984',1),(106,'243mm','15-07-1987',0),(107,'234sdfes','13-07-1965',0);

/*Table structure for table `c3p0_con_test` */

DROP TABLE IF EXISTS `c3p0_con_test`;

CREATE TABLE `c3p0_con_test` (
  `a` char(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `c3p0_con_test` */

/*Table structure for table `course` */

DROP TABLE IF EXISTS `course`;

CREATE TABLE `course` (
  `COURSE_ID` int(60) NOT NULL AUTO_INCREMENT,
  `COURSE_NAME` varchar(100) DEFAULT NULL,
  `COURSE_FEE` int(60) DEFAULT NULL,
  `IS_DELETED` tinyint(4) DEFAULT NULL,
  `ADMIN_LOGIN_ID` int(60) DEFAULT NULL,
  PRIMARY KEY (`COURSE_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8;

/*Data for the table `course` */

insert  into `course`(`COURSE_ID`,`COURSE_NAME`,`COURSE_FEE`,`IS_DELETED`,`ADMIN_LOGIN_ID`) values (1,'Corporate  Training',350000,0,NULL),(2,'Industrial Training',15000,0,NULL),(5,'College',4500,1,NULL),(6,'Orcle10gwesfr',10000,0,NULL),(7,'java',100000,0,NULL),(8,'axdDRFYH',2345,0,NULL),(9,'javap',120000,0,NULL),(10,'DB',10000,0,NULL),(11,'Angularjs',100000,0,NULL),(12,'wwe',3250,0,NULL),(13,'edsgr',3425,0,NULL),(14,'hibernate',123455,1,NULL),(15,'wasqrd',2345,0,NULL),(16,'wedr',3436,0,NULL),(17,'rty',456,0,NULL),(18,'qwader',241512,0,NULL),(19,'sdf',43213,0,NULL),(20,'tert',4540,0,NULL),(21,'khjk',7567,0,NULL),(22,'lk',65,0,NULL),(23,'dfgdfg',435,0,NULL),(24,'qawd',1234,0,NULL),(25,'wedw',324234,0,NULL),(26,'hb',43,0,NULL),(27,'qwe',14,0,NULL),(28,'qw',23,0,NULL),(29,'wqe',234245,0,NULL),(30,'wqeedtf',344543,0,NULL),(31,'drg',465,0,NULL),(32,'sdfrds',45346,1,NULL),(33,'sdf',435,1,NULL),(34,'sedr',454354,1,NULL),(35,'dg',45436,1,NULL),(36,'sedfrtgt',45646,1,NULL),(37,'dgftd',456,0,NULL),(38,'dfgrsadfsde',546723,0,NULL),(39,'drgft',5467,0,NULL),(40,'fthy',682433,0,NULL),(41,'sdf',453,0,NULL),(42,'asdwasdwwsadre',234,1,NULL),(43,'AWQS',23423,1,NULL),(44,'aSAQW',232342,1,NULL),(45,'WADEMEENALP',232132,0,NULL),(46,'asdrzxdfdvfgdgdfhfdhfgthtfhytfhyfcgbcfgcfgfgfgfcgc',123343,0,NULL),(47,'sdef',3245,1,NULL),(48,'asd',24234,1,NULL),(49,'as',4324,1,NULL),(50,'jiya',1213,1,NULL),(51,'sedsgfthgtrfgh',24,1,NULL),(52,'wqa',2134,1,NULL);

/*Table structure for table `currentbatch` */

DROP TABLE IF EXISTS `currentbatch`;

CREATE TABLE `currentbatch` (
  `CURRENT_BATCH_ID` int(60) NOT NULL AUTO_INCREMENT,
  `STATUS` varchar(60) DEFAULT NULL,
  `NO_OF_STUDENT` int(30) DEFAULT NULL,
  `BATCH_ID` int(60) DEFAULT NULL,
  `IS_DELETED` tinyint(3) DEFAULT NULL,
  `CURRENT_TOPIC` varchar(60) DEFAULT NULL,
  `BATCH_NAME` varchar(60) DEFAULT NULL,
  PRIMARY KEY (`CURRENT_BATCH_ID`),
  KEY `BATCH_ID` (`BATCH_ID`),
  CONSTRAINT `currentbatch_ibfk_1` FOREIGN KEY (`BATCH_ID`) REFERENCES `batch` (`BATCH_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

/*Data for the table `currentbatch` */

insert  into `currentbatch`(`CURRENT_BATCH_ID`,`STATUS`,`NO_OF_STUDENT`,`BATCH_ID`,`IS_DELETED`,`CURRENT_TOPIC`,`BATCH_NAME`) values (1,'close',24,NULL,1,'Request Dispatcher','Adavnce Java 9.00 Am Batch'),(2,'0',NULL,NULL,0,'wqa3rfq23q4r2353465464cbcgfhhhhgvhbghghg','Wqaerq'),(3,'open',50,NULL,1,'Util Package','Advance Java 7.00am Batch'),(4,'open',23134,NULL,0,'WDF','233424'),(5,'open',4346,NULL,1,'awsedresefwe','Safr'),(6,'close',35,NULL,1,'wer','Sawerd'),(7,'close',4546,NULL,0,'SE','Wasdr'),(8,'open',24,NULL,0,'as','We'),(9,'close',35,NULL,0,'wer','Awser'),(10,'open',35345,NULL,0,'werzsdcsf','Ware'),(11,'open',354,NULL,0,'we','Asdr'),(12,'open',32432,NULL,0,'wrtsedfr','Zscf'),(13,'open',32,NULL,1,'q','Wadr'),(14,'open',34,NULL,1,'wre','Ewsr'),(15,'open',34,NULL,1,'sdf','Wer'),(16,'open',34,NULL,1,'sfr','Wesr'),(17,'open',324,NULL,0,'wq','Sdrmmmmmmm');

/*Table structure for table `currentstatus` */

DROP TABLE IF EXISTS `currentstatus`;

CREATE TABLE `currentstatus` (
  `CURRENT_STATUS_ID` int(10) DEFAULT NULL,
  `CURRENTSTATUS` tinytext,
  `IS_DELETED` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `currentstatus` */

insert  into `currentstatus`(`CURRENT_STATUS_ID`,`CURRENTSTATUS`,`IS_DELETED`) values (1,'Core Java',1),(2,'Servlet',1),(3,'JSP',1),(4,'JDBC',1),(5,'Hibernate',1),(6,'Spring',1),(7,'Demo',1),(8,'Placed',1),(9,'Left',1),(10,'Struts',1),(0,'Please select',1);

/*Table structure for table `dynamic_footer` */

DROP TABLE IF EXISTS `dynamic_footer`;

CREATE TABLE `dynamic_footer` (
  `student_id` int(50) NOT NULL AUTO_INCREMENT,
  `student_name` tinytext,
  `company_name` tinytext,
  `student_comment` text,
  `is_deleted` int(10) DEFAULT NULL,
  `is_status_active` int(11) DEFAULT NULL,
  PRIMARY KEY (`student_id`)
) ENGINE=InnoDB AUTO_INCREMENT=113 DEFAULT CHARSET=latin1;

/*Data for the table `dynamic_footer` */

insert  into `dynamic_footer`(`student_id`,`student_name`,`company_name`,`student_comment`,`is_deleted`,`is_status_active`) values (60,'Divakar','Placed In Cognizant','I joined Prestige Point to pursue my Industrial training in my final year of engineering. A well\r\n                planned schedule from the mentors helped me to achieve the necessary exposure to the software industry\r\n                in a short span of 45 days.',1,1),(61,'Ashutosh Kumarg','Placed In TCS','Prestige Point was the actual destination where I discovered my interest in coding; I thank the\r\n                mentors here to motivate me and to develop my interest in the technical concepts in the time which\r\n                needed it the most.',1,1),(82,'drgdfg','hfhghjh','dfg',1,0),(83,'sdfe','ewsg','ewsdg',0,0),(84,'wefr','ewfr','we',0,0),(85,'wefrwerwertert','fdgfhgfcdxgfgf','dgtyhrtyrtyrtyrty',0,0),(86,'aswf','safe','saef',0,0),(87,'dfgr','szfddghrtfg','dsg',0,0),(88,'dsxfghfgfhfghfghfghdfgfdgfhhfghfghfghffhfghfgh','sdfsedgt','xdfvs',0,0),(89,'dsxgfv','dxfvg','sxdvfg',0,0),(90,'asda','ASdasf','sewdrewr',0,0),(91,'asd','zsd','sazd',0,0),(92,'dstge','dfg','gt',0,0),(93,'fdg','dfr','fdh',0,0),(94,'wr','wer','frt',0,0),(95,'safews','meenal','erfter',0,0),(96,'a','wq','awsdwq',0,0),(97,'wsadwasd','wer','wqade',0,0),(98,'sdfc','sd','sdfes',0,0),(99,'wsr','ewt','erw',0,0),(100,'qawsew','weqw','wqe',0,0),(101,'sdfe','sdf','dsfsd',0,0),(102,'asda','aswd','dsadw',0,0),(103,'sazdrxvdgds','xdvfsdg','xzdvf',0,0),(104,'sdef','sdfe','sdef',0,0),(105,'kkkkkkkkkkk','qwrd','awqd',0,0),(106,'mmmmmmmm','asdf','sedf',0,0),(107,'sdf','fdsfgetrert','dzsf',0,0),(108,'wsedredsfdfdgffdgfhgfhghghghghghgfhffhfghfghfhfghg','sfrsddddddddfggggggggggggggggggggggggggggggggggggg','adwsarfghfghghghghgfhfghfghfghfghfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff',0,0),(109,'asf','waqr','war',0,0),(110,'asd','qawse','adsw',0,0),(111,'sd','awsde','sadf',0,0),(112,'swer','wer','wesr',0,0);

/*Table structure for table `emi` */

DROP TABLE IF EXISTS `emi`;

CREATE TABLE `emi` (
  `EMI_ID` int(60) NOT NULL AUTO_INCREMENT,
  `AMOUNT` int(60) DEFAULT NULL,
  `DATE` varchar(60) DEFAULT NULL,
  `IS_DELETED` tinyint(4) DEFAULT NULL,
  `REGISTRATION_ID` int(60) DEFAULT NULL,
  PRIMARY KEY (`EMI_ID`),
  KEY `REGISTRATION_ID` (`REGISTRATION_ID`),
  CONSTRAINT `emi_ibfk_1` FOREIGN KEY (`REGISTRATION_ID`) REFERENCES `registration` (`REGISTRATION_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `emi` */

/*Table structure for table `enquiry` */

DROP TABLE IF EXISTS `enquiry`;

CREATE TABLE `enquiry` (
  `ENQUIRY_ID` int(60) NOT NULL AUTO_INCREMENT,
  `MOBILE_NO` varchar(60) DEFAULT NULL,
  `NAME` varchar(60) DEFAULT NULL,
  `EMAIL_ID` varchar(100) DEFAULT NULL,
  `COMMENT` varchar(200) DEFAULT NULL,
  `IS_DELETED` tinyint(4) DEFAULT NULL,
  `DATE` varchar(60) DEFAULT NULL,
  `SUBJECT` varchar(60) DEFAULT NULL,
  `QUALIFICATION` varchar(60) DEFAULT NULL,
  `COLLAGE` varchar(60) DEFAULT NULL,
  `REFERENCE_NAME` varchar(60) DEFAULT NULL,
  `REFERENCER_MOBILE_NO` varchar(60) DEFAULT NULL,
  `HANDLED_BY` varchar(60) DEFAULT NULL,
  `TRAINING_TYPE` varchar(60) DEFAULT NULL,
  `ENQUIRY_BY` varchar(60) DEFAULT NULL,
  `Response` varchar(60) DEFAULT NULL,
  `status` int(10) DEFAULT NULL,
  `LAST_NAME` varchar(60) DEFAULT NULL,
  PRIMARY KEY (`ENQUIRY_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=140 DEFAULT CHARSET=utf8;

/*Data for the table `enquiry` */

insert  into `enquiry`(`ENQUIRY_ID`,`MOBILE_NO`,`NAME`,`EMAIL_ID`,`COMMENT`,`IS_DELETED`,`DATE`,`SUBJECT`,`QUALIFICATION`,`COLLAGE`,`REFERENCE_NAME`,`REFERENCER_MOBILE_NO`,`HANDLED_BY`,`TRAINING_TYPE`,`ENQUIRY_BY`,`Response`,`status`,`LAST_NAME`) values (128,'2345446758','Wsaq','ankush77patel@gmail.com','sxa',0,'2018-08-20',NULL,'sd','sde','sd','2434567768','Wsd','2','admin',NULL,1,'Wsa'),(138,'4354657686','Dgt','viveknagar2012@gmail.com','dfg',1,'0026-12-08',NULL,'aaswde','s','esd','3243564676','Sdet','1','admin',NULL,0,'Dre'),(139,'2132435465','Sdf','meenalpathre01@gmail.com','vgbhjsdegr',1,'0035-11-05',NULL,'swer','zsf','xdf','1224324354','Ser','2','admin',NULL,0,'Serf');

/*Table structure for table `forum_answer` */

DROP TABLE IF EXISTS `forum_answer`;

CREATE TABLE `forum_answer` (
  `FORUM_ANSWER_ID` int(60) NOT NULL AUTO_INCREMENT,
  `FORUM_ANSWER` varchar(1250) DEFAULT NULL,
  `CREATED_DATE` varchar(60) DEFAULT NULL,
  `UPDATED_DATE` varchar(60) DEFAULT NULL,
  `IS_DELETED` tinyint(5) DEFAULT NULL,
  `FORUM_QUESTION_ID` int(60) DEFAULT NULL,
  PRIMARY KEY (`FORUM_ANSWER_ID`),
  KEY `FORUM_QUESTION_ID` (`FORUM_QUESTION_ID`),
  CONSTRAINT `forum_answer_ibfk_1` FOREIGN KEY (`FORUM_QUESTION_ID`) REFERENCES `forum_question` (`FORUM_QUESTION_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;

/*Data for the table `forum_answer` */

insert  into `forum_answer`(`FORUM_ANSWER_ID`,`FORUM_ANSWER`,`CREATED_DATE`,`UPDATED_DATE`,`IS_DELETED`,`FORUM_QUESTION_ID`) values (1,'To over come the problem of the fail fast we can use Concurrent HashMap.,,,,,,,,,,,,',NULL,NULL,1,1),(2,'jdbc is used for connectivity ,,,',NULL,NULL,1,4),(3,',,,,',NULL,NULL,1,7),(4,'servlet,,,,',NULL,NULL,1,17),(5,',ajax,,,',NULL,NULL,1,16),(6,',,bdbdbrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrr,,',NULL,NULL,1,15),(7,',,,hello.......,',NULL,NULL,1,14),(8,',,,,qse',NULL,NULL,1,13),(9,',,,,',NULL,NULL,1,17),(10,',,,,',NULL,NULL,1,17),(11,'dfssssssssssssss,,,,',NULL,NULL,1,23),(12,'sdfg,,,,,sdfg,,,,,sdfg,,,,,sdfg,,,,,sdfg,,,,',NULL,NULL,1,3),(13,'43t6,,,,',NULL,NULL,1,28),(14,',wsefr sf,,,',NULL,NULL,1,27),(15,',,,Hibernate: select forumanswe0_.FORUM_QUESTION_ID as FORUM6_11_1_, forumanswe0_.FORUM_ANSWER_ID as FORUM1_1_, forumanswe0_.FORUM_ANSWER_ID as FORUM1_10_0_,,',NULL,NULL,1,25),(16,',FORUM_ANSWER_ID as FORUM1_1_, forumanswe0_.FORUM_ANSWER_ID as FORUM1_10_0_, forumanswe0_.CREATED_DATE,,,',NULL,NULL,1,27),(17,'FORUM_ANSWER_ID as FORUM1_1_, forumanswe0_.FORUM_ANSWER_ID as FORUM1_10_0_, forumanswe0_.CREATED_DATE,,,,',NULL,NULL,1,28),(18,',,,,FORUM_ANSWER_ID as FORUM1_1_, forumanswe0_.FORUM_ANSWER_ID as FORUM1_10_0_, forumanswe0_.CREATED_DATE',NULL,NULL,1,24),(19,',,,FORUM_ANSWER_ID as FORUM1_1_, forumanswe0_.FORUM_ANSWER_ID as FORUM1_10_0_, forumanswe0_.CREATED_DATE,',NULL,NULL,1,25),(20,',,,,,,,,,,,,,,,,,,,,\r\nwhat is dependency ',NULL,NULL,1,5),(21,',,,FORUM_ANSWER_ID as FORUM1_1_, forumanswe0_.FORUM_ANSWER_ID as FORUM1_10_0_, forumanswe0_.CREATED_D,',NULL,NULL,1,25),(22,',,FORUM_ANSWER_ID as FORUM1_1_, forumanswe0_.FORUM_ANSWER_ID as FORUM1_10_0_, forumanswe0_.CREATED_D,,',NULL,NULL,1,26),(23,',FORUM_ANSWER_ID as ,,,,',NULL,NULL,1,28),(24,',dfgsdg,,,',NULL,NULL,1,32);

/*Table structure for table `forum_question` */

DROP TABLE IF EXISTS `forum_question`;

CREATE TABLE `forum_question` (
  `FORUM_QUESTION_ID` int(60) NOT NULL AUTO_INCREMENT,
  `FORUM_QUESTION` varchar(1250) DEFAULT NULL,
  `CREATED_DATE` varchar(60) DEFAULT NULL,
  `UPDATED_DATE` varchar(60) DEFAULT NULL,
  `IS_DELETED` tinyint(5) DEFAULT NULL,
  `SUBJECT_ID` int(60) DEFAULT NULL,
  PRIMARY KEY (`FORUM_QUESTION_ID`),
  KEY `SUBJECT_ID` (`SUBJECT_ID`),
  CONSTRAINT `forum_question_ibfk_1` FOREIGN KEY (`SUBJECT_ID`) REFERENCES `subject` (`SUBJECT_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8;

/*Data for the table `forum_question` */

insert  into `forum_question`(`FORUM_QUESTION_ID`,`FORUM_QUESTION`,`CREATED_DATE`,`UPDATED_DATE`,`IS_DELETED`,`SUBJECT_ID`) values (1,'What is Concurrent HashMap ?',NULL,NULL,1,1),(2,'When Null Pointer Exception Comes ?',NULL,NULL,1,1),(3,'Internal Working of Proxy Object in load method?\r\n\r\nI need to know the internal working of load method in hibernate. Also I have updated the value after using the load() then how it will update the records in database. Is their is any internal working in it?,',NULL,NULL,1,5),(4,'Steps of JDBC..?',NULL,NULL,1,4),(5,'what is dependency',NULL,NULL,1,5),(6,'what is java',NULL,NULL,1,1),(7,'what is mysql?',NULL,NULL,1,1),(8,'what is dependency',NULL,NULL,1,5),(9,'what is exception',NULL,NULL,1,1),(10,'vgfcshdfjdsgvjfgvwds',NULL,NULL,1,1),(11,'wwww',NULL,NULL,1,3),(12,'what is jsp',NULL,NULL,1,2),(13,'why use jdbc',NULL,NULL,1,4),(14,'vg',NULL,NULL,1,2),(15,'bcdrrrrrrrrrrr',NULL,NULL,1,2),(16,'what is ajax',NULL,NULL,1,4),(17,'qwhat is servlet',NULL,NULL,1,3),(18,'asd',NULL,NULL,1,4),(19,'1111111111',NULL,NULL,1,4),(20,'13214235',NULL,NULL,1,4),(21,'cccccccccc',NULL,NULL,1,1),(22,'jjjjjjjjjjjjjjjjj',NULL,NULL,1,2),(23,'whai is spring\r\n',NULL,NULL,1,5),(24,'whai is jsp',NULL,NULL,1,2),(25,'llll',NULL,NULL,1,3),(26,'fg',NULL,NULL,1,3),(27,'1212',NULL,NULL,1,1),(28,'ewfrt23435346',NULL,NULL,1,2),(29,'hi dear',NULL,NULL,1,2),(30,'aS',NULL,NULL,1,1),(31,'Asd',NULL,NULL,1,3),(32,'sfshdhh',NULL,NULL,1,5),(33,'uuuuuuuuuuuuuuuuuuuuuuu',NULL,NULL,1,2),(34,'r5wesr35w3ejjjjjjjjjjjjjjjjjj',NULL,NULL,1,4),(35,'sdet',NULL,NULL,1,1),(36,'sfstesert',NULL,NULL,1,2),(37,'szfres',NULL,NULL,1,2),(38,'ghghghhhhghhhhhhhh',NULL,NULL,1,2);

/*Table structure for table `placed_student` */

DROP TABLE IF EXISTS `placed_student`;

CREATE TABLE `placed_student` (
  `STUDENT_ID` int(30) NOT NULL AUTO_INCREMENT,
  `COMPANY_NAME` varchar(250) DEFAULT NULL,
  `PACKAGE` varchar(30) DEFAULT NULL,
  `JOINING_DATE` varchar(250) DEFAULT NULL,
  `RELEASE_DATE_FROM_AARTEK` varchar(250) DEFAULT NULL,
  `JOB_LOCATION` varchar(250) DEFAULT NULL,
  `EXPERIENCE` varchar(30) DEFAULT NULL,
  `YEAR` varchar(30) DEFAULT NULL,
  `IS_DELETED` int(30) DEFAULT NULL,
  `REGISTRATION_ID` int(30) NOT NULL,
  PRIMARY KEY (`STUDENT_ID`),
  KEY `REGISTRATION_ID` (`REGISTRATION_ID`),
  CONSTRAINT `placed_student_ibfk_1` FOREIGN KEY (`REGISTRATION_ID`) REFERENCES `registration` (`REGISTRATION_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `placed_student` */

/*Table structure for table `question_answer` */

DROP TABLE IF EXISTS `question_answer`;

CREATE TABLE `question_answer` (
  `QUESTION_ID` int(60) NOT NULL AUTO_INCREMENT,
  `QUESTION` mediumtext,
  `ANSWER` mediumtext,
  `IS_DELETED` tinyint(5) DEFAULT NULL,
  `SUBJECT_ID` int(60) DEFAULT NULL,
  `ANSWER1` mediumtext,
  PRIMARY KEY (`QUESTION_ID`),
  KEY `SUBJECT_ID` (`SUBJECT_ID`),
  CONSTRAINT `question_answer_ibfk_1` FOREIGN KEY (`SUBJECT_ID`) REFERENCES `subject` (`SUBJECT_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=97 DEFAULT CHARSET=utf8;

/*Data for the table `question_answer` */

insert  into `question_answer`(`QUESTION_ID`,`QUESTION`,`ANSWER`,`IS_DELETED`,`SUBJECT_ID`,`ANSWER1`) values (4,'Explain the impact of private constructor','Private Constructors can\'t be access from any derived classes neither from another class. So you\r\n          have to provide a public function that calls the private constructor if the object has not been initialized,\r\n          or you have to return an instance to the object, if it was initialized. This can be useful for objects that\r\n          can\'t be instantiated.',1,1,NULL),(7,'What are transient and volatile modifiers?','When serializable interface is declared, the compiler knows that the object has to be handled so\r\n          as so be able to serialize it. However, if you declare a variable in an object as transient, then it doesnÃƒÂƒÃ‚Â¢ÃƒÂ‚Ã‚Â€ÃƒÂ‚Ã‚Â™t\r\n          get serialized. Volatile Specifying a variable as volatile tells the JVM that any threads using that variable\r\n          are not allowed to cache that value at all. Volatile modifier tells the compiler that the variable modified by\r\n          volatile can be changed unexpectedly by other parts of the program.',1,1,NULL),(8,'What are daemon threads?','Threads that work in the background to support the runtime environment are called daemon threads.\r\n          Eg garbage collector threads. When the only remaining threads in a process are daemon threads, the interpreter\r\n          exits. This makes sense because when only daemon threads remain, there is no other thread for which a daemon\r\n          thread can provide a service. You cannot create a daemon method but you can use public final void\r\n          setDaemon(boolean isDaemon) method to turn it into one.',1,1,NULL),(10,'difference between interface and abstract class','Main difference is methods of a Java interface are implicitly abstract and cannot have implementations. #Variables declared in a Java interface is by default final.#ava interface should be implemented using keyword \"implements\"',1,1,' A Java abstract class can have instance methods that implements a default behavior.#An  abstract class may contain non-final variables.#A Java abstract class should be extended using keyword \"extends\".'),(11,'difference between JSP and Servlet','Servlet#1.Servlet is server side programing#2.Servlet is a private res#',1,2,'Jsp#1.Jsp is client side programing#2.Jsp is a public res#'),(12,'difference between http and https','HTTP#\r\n1. It uses port 80 for communication#\r\n2. Unsecured#\r\n3.Operates at Application Layer',1,2,'HTTPS#\r\n1.It uses port 443 for communication#\r\n2. Secured#\r\n3. Operates at Transport Layer'),(13,'What is hibernate??','Hibernate is a high-performance Object/Relational persistence and query service which is licensed under the open source GNU Lesser General Public License (LGPL) and is free to download. Hibernate not only takes care of the mapping from Java classes to database tables (and from Java data types to SQL data types), but also provides data query and retrieval facilities.',1,6,NULL),(14,'1. What is the base class of all classes?   ','java.lang.Object ',1,1,NULL),(15,'8. Does Java support multiple inheritance?    ','Java doesn\'t support multiple inheritance.',1,1,NULL),(16,' Are arrays primitive data types?  ','In Java, Arrays are objects.',1,1,NULL),(17,' What are local variables? ',' Local variables are those which are declared within a block of code like methods. Local variables should be initialized before accessing them.',1,1,NULL),(18,'What are instance variables? ',' Instance variables are those which are defined at the class level. Instance variables need not be initialized before using them as they are automatically initialized to their default values.',1,1,NULL),(19,'Should a main() method be compulsorily declared in all java classes? ',' No not required. main() method should be defined only if the source class is a java application.',1,1,NULL),(20,' Why is the main() method declared static?  ','main() method is called by the JVM even before the instantiation of the class hence it is declared as static.',1,1,NULL),(21,'What is the arguement of main() method?  ','main() method accepts an array of String object as arguement.',1,1,NULL),(22,' Can a main() method be overloaded?','  Yes. You can have any number of main() methods with different method signature and implementation in the class.',1,1,NULL),(23,' Can a main() method be declared final? ',' Yes. Any inheriting class will not be able to have it\'s own default main() method.',1,1,NULL),(24,' Can a source file contain more than one class declaration?','  Yes a single source file can contain any number of Class declarations but only one of the class can be declared as public.',1,1,NULL),(25,'Which package is imported by default? ',' java.lang package is imported by default even without a package declaration.  ',1,1,NULL),(26,'Can a class be declared as protected?  ','The protected access modifier cannot be applied to class and interfaces. Methods, fields can be declared protected, however methods and fields in a interface cannot be declared protected.',1,1,NULL),(27,' What is the base class of all classes?','',1,1,NULL),(28,' What is the access scope of a protected method? ',' A protected method can be accessed by the classes within the same package or by the subclasses of the class in any package.',1,1,NULL),(29,'What is the impact of declaring a method as final? ',' A method declared as final can\'t be overridden. A sub-class can\'t have the same method signature with a different implementation.',1,1,NULL),(30,'What is the main difference between Java platform and other platforms?','The Java platform differs from most other platforms in the sense that it\'s a software-based platform that runs on top of other hardware-based platforms.It has two components:\r\n\r\n  1.  Runtime Environment\r\n   2. API(Application Programming Interface)\r\n\r\n',1,1,''),(31,'What is difference between JDK,JRE and JVM?',' JVM : JVM is an acronym for Java Virtual Machine, it is an abstract machine which provides the runtime environment in which java bytecode can be executed.\r\n\r\nJVMs are available for many hardware and software platforms (so JVM is plateform dependent).\r\n\r\nJRE:\r\n\r\nJRE stands for Java Runtime Environment. It is the implementation of JVM and physically exists.\r\n\r\nJDK:\r\n\r\nJDK is an acronym for Java Development Kit. It physically exists. It contains JRE + development tools. ',1,1,''),(32,'  Difference between Thread and Process in Java?','Thread is subset of Process, in other words one process can contain multiple threads. Two process runs on different memory space, but all threads share same memory space. Don\'t confuse this with stack memory, which is different for different thread and used to store local data to that thread.\r\n\r\n\r\n',1,1,''),(33,' Difference between start() and run() method of Thread class?','One of trick Java question from early days, but still good enough to differentiate between shallow understanding of Java threading model start() method is used to start newly created thread, while start() internally calls run() method, there is difference calling run() method directly. When you invoke run() as normal method, its called in the same thread, no new thread is started, which is the case when you call start() method.\r\n\r\n',1,1,''),(34,'What is difference between static (class) method and instance method?','\r\n1)A method i.e. declared as static is known as static method.	A method i.e. not declared as static is known as instance method.\r\n\r\n2)Object is not required to call static method.	Object is required to call instance methods.\r\n\r\n3)Non-static (instance) members cannot be accessed in static context (static method, static block and static nested class) directly.	static and non-static variables both can be accessed in instance methods.\r\n\r\n4)For example: public static int cube(int n){ return n*n*n;}	For example: public void msg(){...}.\r\n',1,1,''),(35,'What is difference between aggregation and composition? ','Aggregation represents weak relationship whereas composition represents strong relationship. For example: bike has an indicator (aggregation) but bike has an engine (compostion).',1,1,''),(36,'Which class is the superclass for every class?','Object class',1,1,NULL),(37,'How can I implement a thread-safe JSP page? What are the advantages and Disadvantages of using it?','You can make your JSPs thread-safe by having them implement the SingleThreadModel interface. This is done by adding the directive <%@ page isThreadSafe=\"false\" %> within your JSP page.',1,2,NULL),(38,'How can we handle the exceptions in JSP ?','There are two ways to perform exception handling, one is by the errorPage element of page directive, and second is by the error-page element of web.xml file.\r\n',1,2,NULL),(39,'Can we use the exception implicit object in any jsp page ?','No. The exception implicit object can only be used in the error page which defines it with the isErrorPage attribute of page directive.',1,2,NULL),(40,'Explain include Directive and include Action of JSP.',' This is a very popular interview question on JSP, which has been asked from long time and still asked in various interview. This question is good to test some fundamental concept like translation of JSP and difference between translation time and run time kind of concept.\r\n\r\nSyntax for include Directive is <%@ include file=\"fileName\" %> which means we are including some file to our JSP Page when we use include directive contents of included file will be added to calling JSP page at translation time means when the calling JSP is converted to servlet ,all the contents are added to that page .one important thing is that any JSP page is complied if we make any changes to that particular page but if we have changed the included file or JSP page the main calling JSP page will not execute again so the output will not be according to our expectation, this one is the main disadvantage of using the include directive that why it is mostly use to add static  resources, like Header and footer .\r\n\r\nSyntax for include action is <jsp:include page=Ã¢Â€ÂrelativeURLÃ¢Â€Â /> itÃ¢Â€Â™s a runtime procedure means the result of the JSP page which is mentioned in relative URL is appended  to calling JSP at runtime on their response object at the location where we have used this tag\r\nSo any changes made to included page is being effected every time, this is the main advantage of this action but only relative URL we can use here ,because request and response object is passed between calling JSP and included JSP.\r\n',1,2,NULL),(41,'Difference Between include Directive and include Action of JSP .',' Include Directive:\r\n1.include directive is processed at the translation time.\r\n2.include directive can use relative or absolute path.\r\n3.Include directive can only include contents of resource it will not process the dynamic resource.\r\n4. We can not pass any other parameter.\r\n5. We cannot  pass any request or response object to calling jsp to included file or JSP or vice versa.\r\n\r\nInclude Action:	\r\n1. Include action is processed at the run time.	\r\n2. Include action always use relative path	\r\n3. Include action process the dynamic resource and  result will be added to calling JSP.\r\n4. Here we can pass other parameter also using JSP:param.\r\n5. In this case itÃ¢Â€Â™s possible.\r\n',1,2,NULL),(42,'Is it possible for one JSP to extend another java class if yes how? ','Yes it is possible we can extends another JSP using this <%@ include page extends=\"classname\" %> itÃ¢Â€Â™s a perfectly correct because when JSP is converted to servlet its implements javax.servlet.jsp.HttpJspPage interface, so for jsp page its possible to extend another java class . This question can be tricky if you donÃ¢Â€Â™t know some basic fact J, though its not advisable to write java code in jsp instead its better to use expression language and tag library.\r\n\r\n\r\n',1,2,NULL),(43,'What is < jsp:usebean >tag why it is used?','JSP Syntax:\r\n<jsp:useBean\r\n        id=\"beanInstName\"\r\n        scope=\"page | request | session | application\"\r\n       \r\n            class=\"package.class\"    type=\"package.class\"\r\n\r\n           </jsp:useBean>\r\n\r\nThis tag is used to create a instance of java bean first of all it tries to find out the bean if bean instance already exist assign stores a reference to it in the variable. If we specified type, gives the Bean that type.otherwise instantiates it from the class we specify, storing a reference to it in the new variable.so jsp:usebean is simple way to create a java bean.\r\nExample:\r\n     \r\n<jsp:useBean id=\"stock\" scope=\"request\" class=\"market.Stock\" />\r\n<jsp:setProperty name=\"bid\" property=\"price\" value=\"0.0\" />\r\na <jsp:useBean> element contains a <jsp:setProperty> element that sets property values in the Bean,we have <jsp:getProperty>element also to get the value from the bean.\r\n\r\nExplanation of Attribute\r\n\r\n id=\"beanInstanceName\"\r\nA variable that identifies the Bean in the scope we specify. If the Bean has already been created by another <jsp:useBean> element, the value of id must match the value of id used in the original <jsp:useBean> element.\r\nscope=\"page | request | session | application\"\r\nThe scope in which the Bean exists and the variable named in id is available. The default value is page. The meanings of the different scopes are shown below:\r\n\r\n    page Ã¢Â€Â“ we can use the Bean within the JSP page with the <jsp:useBean> element\r\n    request Ã¢Â€Â“ we can use the Bean from any JSP page processing the same request, until a JSP page sends a response to the client or forwards the request to another file.\r\n\r\n    session Ã¢Â€Â“ we can use the Bean from any JSP page in the same session as the JSP page that created the Bean. The Bean exists across the entire session, and any page that participates in the session can use it..\r\n    application Ã¢Â€Â“ we can use the Bean from any JSP page in the same application as the JSP page that created the Bean. The Bean exists across an entire JSP application, and any page in the application can use the Bean.\r\n\r\nclass=\"package.class\"\r\nInstantiates a Bean from a class, using the new keyword and the class constructor. The class must not be abstract and must have a public, no-argument constructor.\r\ntype=\"package.class\"\r\nIf the Bean already exists in the scope, gives the Bean a data type other than the class from which it was instantiated. If you use type without class or beanName, no Bean is instantiated.\r\n\r\n\r\n',1,2,NULL),(44,'How can one Jsp Communicate with Java file?','we have import tag <%@ page import=\"market.stock.*Ã¢Â€Â %> like this we can import all the java file to our jsp and use them as a regular class another way is  servlet can send  the instance of the java class to our  jsp and we can retrieve that object from the request obj and use it in our page.',1,2,NULL),(45,'what are the implicit Objects?',' This is a fact based interview question what it checks is how much coding you do in JSP if you are doing it frequently you definitely know them. Implicit object are the object that are created by web container provides to a developer to access them in their program using JavaBeans and Servlets. These objects are called implicit objects because they are automatically instantiated.they are bydefault available in JSP page.\r\n\r\nThey are: request, response, pageContext, session, and application, out, config, page, and exception.\r\n',1,2,NULL),(46,'In JSP page how can we handle runtime exception?  ',' This is another popular JSP interview question which has asked to check how candidate used to handle Error and Exception in JSP. We can use the errorPage attribute of the page directive to have uncaught run-time exceptions automatically forwarded to an error processing page.\r\n\r\nExample: <%@ page errorPage=\"error.jsp\" %>\r\n\r\nIt will redirect the browser to the JSP page error.jsp if an uncaught exception is encountered during request processing. Within error.jsp, will have to indicate that it is an error-processing page, using the directive: <%@ page isErrorPage=\"true\"%>\r\n\r\n',1,2,NULL),(47,'Why is _jspService() method starting with an \'_\' while other life cycle methods do not? ','main JSP life cycle method are jspInit() jspDestroy() and _jspService() ,bydefault whatever content we write in our jsp page will go inside the _jspService() method by the container if again will try to override this method JSP compiler will give error but we can override other two life cycle method as we have implementing this two in jsp so making this difference container use _ in jspService() method and shows that we cant override this method.\r\n\r\n\r\n\r\n\r\n',1,2,NULL),(48,' How can you pass information form one jsp to included jsp?','This JSP interview question is little tricky and fact based. Using < Jsp: param> tag we can pass parameter from main jsp to included jsp page\r\n\r\nExample:\r\n<jsp:include page=\"newbid.jsp\" flush=\"true\">\r\n<jsp:param name=\"price\" value=\"123.7\"/>\r\n<jsp:param name=\"quantity\" value=\"4\"/>\r\n\r\n\r\n\r\n',1,2,NULL),(49,' what is the need of tag library?','tag library is a collection of custom tags. Custom actions helps recurring tasks will be handled more easily they can be reused across more than one application and increase productivity. JSP tag libraries are used by Web application designers who can focus on presentation issues rather than being concerned with how to access databases and other enterprise services. Some of the popular tag libraries are Apache display tag library and String tag library. You can also check my post on display tag library example on Spring.\r\n\r\n',1,2,NULL),(50,'Difference between fail-fast Iterator vs fail-safe Iterator in Java ?',' fail-fast Iterators in Java:\r\n          As name suggest fail-fast Iterators fail as soon as they realized that structure of Collection has been changed since iteration has begun. Structural changes means adding, removing or updating any element from collection while one thread is Iterating over that collection. fail-fast behavior is implemented by keeping a modification count and if iteration thread realizes the change in modification count it throws ConcurrentModificationException.\r\n\r\nJava doc says this is not a guaranteed behavior instead its done of \"best effort basis\", So application programming can not  rely on this behavior. Also since multiple threads are involved while updating and checking modification count and this check  is done without synchronization, there is a chance that Iteration thread still sees a stale value and might not be able to detect any change done by parallel threads. Iterators returned by most of JDK1.4 collection are fail-fast including Vector, ArrayList, HashSet etc. \r\n\r\n    fail-safe Iterator in java:\r\n  Contrary to fail-fast Iterator, fail-safe iterator doesn\'t throw any Exception if Collection is modified structurally while one thread is Iterating over it because they work on clone of Collection instead of original collection and thatÃ¢Â€Â™s why they are called as fail-safe iterator. Iterator of CopyOnWriteArrayList is an example of fail-safe Iterator also iterator written by ConcurrentHashMap keySet is also fail-safe iterator and never throw ConcurrentModificationException in Java.\r\n\r\n\r\nThatÃ¢Â€Â™s all on difference between fail-safe vs fail-fast Iterator in Java.\r\n\r\n\r\n',1,1,''),(51,'Difference between Abstract class vs Interface in Java and When to use them ?',' When to use interface and abstract class is one of the most popular object oriented design questions and almost always asked in Java, C# and C++ interviews. In this article, we will mostly talk in context of Java programming language, but it equally applies to other languages as well. Question usually starts with difference between abstract class and interface in Java, which is rather easy to answer, especially if you are familiar with syntax of Java interface and abstract class. Things start getting difficult when interviewer ask about when to use abstract class and interface in Java, which is mostly based upon solid understanding of popular OOPS concept like Polymorphism, Encapsulation, Abstraction, Inheritance and Composition. Many programmer fumbles here, which is natural because most of them haven\'t gone through real system design process and havenÃ¢Â€Â™t seen the impact of choosing one over other. Repercussion of design decisions are best known during maintenance phase, a good design allows seamless evolution while maintaining a fragile design is nightmare. As I have said previously, some time object oriented design interview questions also helps to understand a topic better, but only if you are willing to do some research and not just mugging the answer. Questions like when to use abstract class and interface falls under same category. In order to best understand this topic, you need to work out some scenarios, examples etc. It\'s best to get this kind of knowledge as part of your work but even if you don\'t get there, you can supplement them by reading some good books like Head First design pattern and doing some object-oriented software design exercises. In this article, we will learn difference between abstract class and interface in Java programming language and based upon our understanding of those differences, we will try to find out some tips and guidelines to decide when its better to use abstract class over interface or vice-versa.\r\n\r\n\r\n',1,1,''),(52,'What is difference between hide comment and output comment?',' The jsp comment is called hide comment whereas html comment is called output comment. If user views the source of the page, the jsp comment will not be shown whereas html comment will be shown.\r\n',1,2,''),(53,'What are context initialization parameters?','Context initialization parameters are specified by the <context-param> in the web.xml file, these are initialization parameter for the whole application and not specific to any servlet or JSP.',1,2,''),(54,'What is the difference between ServletContext and PageContext?','ServletContext gives the information about the container whereas PageContext gives the information about the Request.',1,2,''),(55,' What is EL in JSP?','The Expression Language(EL) is used in JSP to simplify the accessibility of objects. It provides many objects that can be used directly like param, requestScope, sessionScope, applicationScope, request, session etc.',1,2,''),(56,'What is basic differences between the JSP custom tags and java beans?','\r\n    Custom tags can manipulate JSP content whereas beans cannot.\r\n    Complex operations can be reduced to a significantly simpler form with custom tags than with beans.\r\n    Custom tags require quite a bit more work to set up than do beans.\r\n    Custom tags are available only in JSP 1.1 and later, but beans can be used in all JSP 1.x versions.\r\n',1,2,''),(57,'Can an interface be implemented in the jsp file ? ','No.',1,2,''),(58,'Which directive is used in jsp custom tag?','The jsp taglib directive.\r\n',1,2,''),(59,'What are the 3 tags used in JSP bean development?','\r\n1.  jsp:useBean\r\n\r\n 2. jsp:setProperty\r\n\r\n 3. jsp:getProperty\r\n\r\n',1,2,''),(60,'How to create Immutable Class and Object in Java ?','Here is complete code example of writing immutable class in Java. We have followed simplest approach and all rules for making a class immutable, including it making class final to avoid putting immutability at risk due to Inheritance and Polymorphism.\r\n\r\n\r\n\r\n\r\n\r\npublic final class Contacts\r\n {\r\n    private final String name;\r\n\r\n    private final String mobile;\r\n\r\n    public Contacts(String name, String mobile)\r\n {\r\n\r\n        this.name = name;\r\n\r\n        this.mobile = mobile;\r\n  }\r\n\r\n   \r\n\r\n    public String getName()\r\n   {\r\n\r\n        return name;\r\n\r\n    }\r\n\r\n   \r\n\r\n    public String getMobile()\r\n   {\r\n\r\n        return mobile;\r\n\r\n    }\r\n\r\n}\r\n\r\n\r\n\r\n',1,1,NULL),(61,'Why Java doesn\'t support multiple inheritance?','1) First reason is ambiguity around Diamond problem, consider a class A has foo() method and then B and C derived from A and has there own foo() implementation and now class D derive from B and C using multiple inheritance and if we refer just foo() compiler will not be able to decide which foo() it should invoke. This is also called Diamond problem because structure on this inheritance scenario is similar to 4 edge diamond, see below\r\n\r\n           A foo()\r\n           / \\\r\n          /   \\\r\n   foo() B     C foo()\r\n          \\   /\r\n           \\ /\r\n            D\r\n           foo()\r\n\r\nEven if we remove the top head of diamond class A and allow multiple inheritances we will see this problem of ambiguity.\r\n\r\nSome times if you give this reason to interviewer he asks if C++ can support multiple inheritance than why not Java.In that case I would try to explain him the second reason which I have given below that its not because of technical difficulty but more to maintainable and clearer design was driving factor though this can only be confirmed by any of java designer and we can just speculate. Wikipedia link has some good explanation on how different language address problem arises due to diamond problem while using multiple inheritances.\r\n\r\n2) Second and more convincing reason to me is that multiple inheritances does complicate the design and creates problem during casting, constructor chaining etc and given that there are not many scenario on which you need multiple inheritance its wise decision to omit it for the sake of simplicity. Also java avoids this ambiguity by supporting single inheritance with interfaces. Since interface only have method declaration and doesn\'t provide any implementation there will only be just one implementation of specific method hence there would not be any ambiguity.\r\n\r\n\r\n\r\n\r\n',1,1,NULL),(62,'what is core java','',1,1,NULL),(63,'what is java','',1,1,''),(64,'what is jvm','',1,1,NULL),(65,'what is servlet','',1,3,''),(68,'IS String is Immutable','yes',1,1,NULL),(69,'sad','ds',1,3,NULL),(70,'bnghgh','',1,1,NULL),(71,'hggh','',1,4,NULL),(72,'yhjhjhgj','',1,4,''),(73,'q','2we',1,3,NULL),(74,'q2we3r','q',1,2,'qw1'),(75,'what is php','php is hipertxt presfhryfhtu',1,1,NULL),(76,'what is php2','setgy',1,1,NULL),(77,'what is diffrence php','ser',1,2,'wes'),(78,'what 111','11122',1,1,NULL),(79,'232323','23232',1,3,'23232'),(80,'asd','aws',1,2,'aews'),(81,'ssssssss','sssssss',1,3,'sssssssss'),(82,'cf','',1,2,''),(83,'wewewe','',1,7,NULL),(84,NULL,NULL,1,NULL,NULL),(85,NULL,NULL,1,NULL,NULL),(86,NULL,NULL,1,NULL,NULL),(87,NULL,NULL,1,NULL,NULL),(88,NULL,NULL,1,NULL,NULL),(89,NULL,NULL,1,NULL,NULL),(90,'gggg','ggg',1,3,NULL),(91,'qwe','qwejjjjjjjjjjjjjjjjjjjjj',1,5,NULL),(92,'ewr','wesr',1,1,'wert'),(93,'what is hr','asfasf',1,8,NULL),(94,'what is hr diff','waq',1,8,'wq'),(95,'121','121',1,8,NULL),(96,'w3e','r4ewtr121',1,2,'121');

/*Table structure for table `registration` */

DROP TABLE IF EXISTS `registration`;

CREATE TABLE `registration` (
  `CURRENT_STATUS_ID` int(60) DEFAULT NULL,
  `REGISTRATION_ID` int(60) NOT NULL AUTO_INCREMENT,
  `FIRST_NAME` varchar(60) DEFAULT NULL,
  `LAST_NAME` varchar(60) DEFAULT NULL,
  `EMAIL_ID` varchar(100) DEFAULT NULL,
  `DATE_OF_BIRTH` varchar(60) DEFAULT NULL,
  `CONTACT` varchar(60) DEFAULT NULL,
  `QUALIFICATION` varchar(60) DEFAULT NULL,
  `PARENT_CONTACT` varchar(60) DEFAULT NULL,
  `DISCOUNT` int(60) DEFAULT NULL,
  `SUBMITTED_FEE` int(60) DEFAULT NULL,
  `BATCH_ID` int(60) DEFAULT NULL,
  `YEAR_ID` int(60) DEFAULT NULL,
  `COURSE_ID` int(60) DEFAULT NULL,
  `COURSE_FEE` int(60) DEFAULT NULL,
  `IS_DELETED` tinyint(4) DEFAULT NULL,
  `TOTAL_FEE` double DEFAULT NULL,
  `IMAGE_PATH` varchar(100) DEFAULT NULL,
  `STATUS` varchar(50) DEFAULT NULL,
  `CITY` varchar(60) DEFAULT NULL,
  `STATE` varchar(60) DEFAULT NULL,
  `password` varchar(60) DEFAULT NULL,
  `HANDLEDBY` varchar(60) DEFAULT NULL,
  `REFERENCE` varchar(60) DEFAULT NULL,
  `REMARK` varchar(60) DEFAULT NULL,
  PRIMARY KEY (`REGISTRATION_ID`),
  KEY `BATCH_ID` (`BATCH_ID`),
  KEY `YEAR_ID` (`YEAR_ID`),
  KEY `COURSE_ID` (`COURSE_ID`),
  KEY `CURRENT_STATUS_ID` (`CURRENT_STATUS_ID`),
  KEY `CURRENT_STATUS_ID_2` (`CURRENT_STATUS_ID`),
  CONSTRAINT `registration_ibfk_1` FOREIGN KEY (`BATCH_ID`) REFERENCES `batch` (`BATCH_ID`),
  CONSTRAINT `registration_ibfk_2` FOREIGN KEY (`YEAR_ID`) REFERENCES `year` (`YEAR_ID`),
  CONSTRAINT `registration_ibfk_3` FOREIGN KEY (`COURSE_ID`) REFERENCES `course` (`COURSE_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=237 DEFAULT CHARSET=utf8;

/*Data for the table `registration` */

insert  into `registration`(`CURRENT_STATUS_ID`,`REGISTRATION_ID`,`FIRST_NAME`,`LAST_NAME`,`EMAIL_ID`,`DATE_OF_BIRTH`,`CONTACT`,`QUALIFICATION`,`PARENT_CONTACT`,`DISCOUNT`,`SUBMITTED_FEE`,`BATCH_ID`,`YEAR_ID`,`COURSE_ID`,`COURSE_FEE`,`IS_DELETED`,`TOTAL_FEE`,`IMAGE_PATH`,`STATUS`,`CITY`,`STATE`,`password`,`HANDLEDBY`,`REFERENCE`,`REMARK`) values (2,210,'jhjhj','fgfgfgg','viveknagar2012@gmail.com','20-05-1948','5545565454','ggfgfg','33233322332',NULL,359819,7,15,1,350001,1,0,NULL,'paid','ffgfg','fgfgf','kYeMDJjd','fffff','ghgh','gfghgh'),(8,227,'meenal','er','ankush77patel@gmail.com','14-05-1979','3243245359','rfg','24235346545',10,57889,7,15,5,4500,1,4050,NULL,'paid','indoree','MP','123','dfg','drgf','fgbh'),(NULL,236,'ll','ll','meenalpathre01@gmail.com','01-06-1995','24354645657','gf',NULL,NULL,NULL,NULL,15,13,NULL,1,NULL,NULL,'free','gf','g','12345',NULL,NULL,NULL);

/*Table structure for table `scroller` */

DROP TABLE IF EXISTS `scroller`;

CREATE TABLE `scroller` (
  `image_id` int(100) NOT NULL AUTO_INCREMENT,
  `is_deleted` int(5) DEFAULT NULL,
  `is_status_active` int(5) DEFAULT NULL,
  PRIMARY KEY (`image_id`)
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=latin1;

/*Data for the table `scroller` */

insert  into `scroller`(`image_id`,`is_deleted`,`is_status_active`) values (1,0,0),(2,0,0),(3,0,0),(4,0,0),(5,0,0),(6,0,0),(7,0,0),(8,0,0),(9,0,0),(10,0,0),(11,0,0),(12,0,0),(13,0,0),(14,0,0),(15,0,0),(16,0,0),(17,0,0),(18,0,0),(19,0,0),(20,0,0),(21,0,0),(22,0,0),(23,0,0),(24,0,0),(25,0,0),(26,0,0),(27,0,0),(28,0,0),(29,0,0),(30,0,0),(31,0,0),(32,0,1),(33,0,0),(34,0,0),(35,0,0),(36,0,0),(37,0,0),(38,0,1),(39,0,0),(40,0,0),(41,0,0),(42,0,0),(43,1,0),(44,1,0),(45,1,1),(46,1,1),(47,1,0),(48,1,0),(49,1,0),(50,1,0),(51,1,0),(52,1,0),(53,1,0),(54,1,1);

/*Table structure for table `subject` */

DROP TABLE IF EXISTS `subject`;

CREATE TABLE `subject` (
  `SUBJECT_ID` int(60) NOT NULL AUTO_INCREMENT,
  `SUBJECT_NAME` varchar(60) DEFAULT NULL,
  `CREATED_DATE` varchar(60) DEFAULT NULL,
  `UPDATED_DATE` varchar(60) DEFAULT NULL,
  `IS_DELETED` tinyint(5) DEFAULT NULL,
  PRIMARY KEY (`SUBJECT_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

/*Data for the table `subject` */

insert  into `subject`(`SUBJECT_ID`,`SUBJECT_NAME`,`CREATED_DATE`,`UPDATED_DATE`,`IS_DELETED`) values (1,'CORE JAVA',NULL,NULL,1),(2,'JSP',NULL,NULL,1),(3,'SERVLET',NULL,NULL,1),(4,'JDBC',NULL,NULL,1),(5,'SPRING',NULL,NULL,1),(6,'HIBERNATE',NULL,NULL,1),(7,'STRUTS',NULL,NULL,1),(8,'HR QUESTION ANSWER',NULL,NULL,1);

/*Table structure for table `upload1` */

DROP TABLE IF EXISTS `upload1`;

CREATE TABLE `upload1` (
  `JAR_ID` int(20) NOT NULL AUTO_INCREMENT,
  `JAR_TYPE` varchar(50) NOT NULL,
  `NAME_OF_JAR` varchar(50) NOT NULL,
  `PATH_OF_JAR` varchar(200) NOT NULL,
  PRIMARY KEY (`JAR_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=220 DEFAULT CHARSET=utf8;

/*Data for the table `upload1` */

insert  into `upload1`(`JAR_ID`,`JAR_TYPE`,`NAME_OF_JAR`,`PATH_OF_JAR`) values (164,'struts','camel-servlet-2.8.1-sources.jar','D:/imgForPP/jar/struts\\camel-servlet-2.8.1-sources.jar'),(165,'struts','camel-servlet-2.8.1-sources.jar','D:/imgForPP/jar/struts\\camel-servlet-2.8.1-sources.jar'),(166,'others','camel-servlet-2.8.1-sources.jar','D:/imgForPP/jar/others\\camel-servlet-2.8.1-sources.jar'),(167,'others','camel-servlet-2.8.1-sources.jar','D:/imgForPP/jar/others\\camel-servlet-2.8.1-sources.jar'),(168,'jdbc','camel-servlet-2.8.1-sources.jar','D:/imgForPP/jar/jdbc\\camel-servlet-2.8.1-sources.jar'),(201,'corejava','apache-mailet-2.4.jar','D:/imgForPP/jar/corejava\\apache-mailet-2.4.jar'),(202,'corejava','apache-mailet-2.4.jar','D:/imgForPP/jar/corejava\\apache-mailet-2.4.jar'),(203,'jdbc','apache-mailet-2.4.jar','D:/imgForPP/jar/jdbc\\apache-mailet-2.4.jar'),(204,'jdbc','apache-mailet-2.4.jar','D:/imgForPP/jar/jdbc\\apache-mailet-2.4.jar'),(205,'jdbc','apache-mailet-2.4.jar','D:/imgForPP/jar/jdbc\\apache-mailet-2.4.jar'),(206,'jdbc','apache-mailet-2.4.jar','D:/imgForPP/jar/jdbc\\apache-mailet-2.4.jar'),(207,'jdbc','apache-mailet-2.4.jar','D:/imgForPP/jar/jdbc\\apache-mailet-2.4.jar'),(208,'corejava','apache-mailet-2.4.jar','D:/imgForPP/jar/corejava\\apache-mailet-2.4.jar'),(209,'jdbc','apache-mailet-2.4.jar','D:/imgForPP/jar/jdbc\\apache-mailet-2.4.jar'),(210,'jdbc','apache-mailet-2.4.jar','D:/imgForPP/jar/jdbc\\apache-mailet-2.4.jar'),(211,'hibernate','apache-mailet-2.4.jar','D:/imgForPP/jar/hibernate\\apache-mailet-2.4.jar'),(212,'spring','apache-mailet-2.4.jar','D:/imgForPP/jar/spring\\apache-mailet-2.4.jar'),(213,'corejava','apache-mailet-2.4.jar','D:/imgForPP/jar/corejava\\apache-mailet-2.4.jar'),(214,'others','apache-mailet-2.4.jar','D:/imgForPP/jar/others\\apache-mailet-2.4.jar'),(215,'hibernate','apache-mailet-2.4.jar','D:/imgForPP/jar/hibernate\\apache-mailet-2.4.jar'),(216,'others','apache-mailet-2.4.jar','D:/imgForPP/jar/others\\apache-mailet-2.4.jar'),(217,'hibernate','apache-mailet-2.4.jar','D:/imgForPP/jar/hibernate\\apache-mailet-2.4.jar'),(218,'others','apache-mailet-2.4.jar','D:/imgForPP/jar/others\\apache-mailet-2.4.jar'),(219,'struts','apache-mailet-2.4.jar','D:/imgForPP/jar/struts\\apache-mailet-2.4.jar');

/*Table structure for table `upload_images` */

DROP TABLE IF EXISTS `upload_images`;

CREATE TABLE `upload_images` (
  `IMAGES_ID` int(60) NOT NULL AUTO_INCREMENT,
  `NAME_OF_IMAGES` varchar(60) DEFAULT NULL,
  `IS_DELETED` int(60) DEFAULT NULL,
  `IS_ACTIVE` int(60) DEFAULT NULL,
  PRIMARY KEY (`IMAGES_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=90 DEFAULT CHARSET=utf8;

/*Data for the table `upload_images` */

insert  into `upload_images`(`IMAGES_ID`,`NAME_OF_IMAGES`,`IS_DELETED`,`IS_ACTIVE`) values (63,'63.png',0,0),(64,'64.png',0,0),(65,'65.png',1,0),(66,'66.png',0,0),(67,'67.png',0,0),(68,'68.png',0,0),(69,'69.png',0,1),(70,'70.png',1,0),(71,'71.png',0,0),(72,'72.png',1,0),(73,'73.png',1,0),(74,'74.png',1,0),(75,'75.png',1,0),(76,'76.png',1,0),(77,'77.png',1,0),(78,'78.png',1,0),(79,'79.png',1,0),(80,'80.png',1,0),(81,NULL,0,0),(82,'82.png',0,0),(83,'83.png',1,0),(84,NULL,0,0),(85,'85.png',0,1),(86,'86.png',1,0),(87,'87.png',1,1),(88,'88.png',1,1),(89,'89.png',1,0);

/*Table structure for table `year` */

DROP TABLE IF EXISTS `year`;

CREATE TABLE `year` (
  `YEAR_ID` int(60) NOT NULL AUTO_INCREMENT,
  `YEAR` varchar(80) DEFAULT NULL,
  `IS_DELETED` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`YEAR_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

/*Data for the table `year` */

insert  into `year`(`YEAR_ID`,`YEAR`,`IS_DELETED`) values (1,'2013',1),(2,'2014',1),(12,'2012',1),(13,'2011',1),(15,'2015',1),(16,'2016',1),(17,'2017',1),(18,'2018',1),(19,'2019',1),(20,'2020',1);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
