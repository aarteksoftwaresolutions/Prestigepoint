/*
SQLyog Community Edition- MySQL GUI v6.07
Host - 5.0.24-community-nt : Database - aartek14_prestigepoint_db
*********************************************************************
Server version : 5.0.24-community-nt
*/
/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

create database if not exists `aartek14_prestigepoint_db`;

USE `aartek14_prestigepoint_db`;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

/*Table structure for table `adminlogin` */

DROP TABLE IF EXISTS `adminlogin`;

CREATE TABLE `adminlogin` (
  `ADMIN_LOGIN_ID` int(60) NOT NULL auto_increment,
  `EMAIL_ID` varchar(100) default NULL,
  `PASSWORD` varchar(60) default NULL,
  `IS_DELETED` tinyint(4) default NULL,
  `STATUS_ID` int(10) NOT NULL,
  PRIMARY KEY  (`ADMIN_LOGIN_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `adminlogin` */

insert  into `adminlogin`(`ADMIN_LOGIN_ID`,`EMAIL_ID`,`PASSWORD`,`IS_DELETED`,`STATUS_ID`) values (1,'admin@gmail.com','Aartek2013',1,1);

/*Table structure for table `bannerimage` */

DROP TABLE IF EXISTS `bannerimage`;

CREATE TABLE `bannerimage` (
  `IMAGE_ID` int(20) NOT NULL auto_increment,
  `IMAGE_TYPE` varchar(120) NOT NULL,
  `NAME_OF_IMAGE` varchar(120) NOT NULL,
  `PATH_OF_IMAGE` varchar(120) NOT NULL,
  PRIMARY KEY  (`IMAGE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `bannerimage` */

/*Table structure for table `batch` */

DROP TABLE IF EXISTS `batch`;

CREATE TABLE `batch` (
  `BATCH_ID` int(60) NOT NULL auto_increment,
  `BATCH_NAME` varchar(60) default NULL,
  `START_DATE` varchar(60) default NULL,
  `IS_DELETED` tinyint(4) default NULL,
  PRIMARY KEY  (`BATCH_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `batch` */

insert  into `batch`(`BATCH_ID`,`BATCH_NAME`,`START_DATE`,`IS_DELETED`) values (1,'core java','27-10-2014',0),(2,'corporate training','28-11-2014',0),(3,'college training ','27-11-2014',0),(4,'corporate training With placement','23-11-2014',1),(5,'Industrial btraining','28-11-2014',0),(6,'core concept','28-11-2014',1),(7,'industrial training','10-12-2014',0),(8,'core','14-01-2015',1);

/*Table structure for table `c3p0_con_test` */

DROP TABLE IF EXISTS `c3p0_con_test`;

CREATE TABLE `c3p0_con_test` (
  `a` char(1) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `c3p0_con_test` */

/*Table structure for table `course` */

DROP TABLE IF EXISTS `course`;

CREATE TABLE `course` (
  `COURSE_ID` int(60) NOT NULL auto_increment,
  `COURSE_NAME` varchar(100) default NULL,
  `COURSE_FEE` int(60) default NULL,
  `IS_DELETED` tinyint(4) default NULL,
  PRIMARY KEY  (`COURSE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `course` */

insert  into `course`(`COURSE_ID`,`COURSE_NAME`,`COURSE_FEE`,`IS_DELETED`) values (1,'Corporate Training',35000,1),(2,'Industrial Training',15000,1),(5,'Collage Training ',4500,1),(6,'Orcle10g',10000,0),(7,'java',6000,0),(8,'utyuyu',565665,1),(9,'trtrt',44334,1),(10,'java',20000,1);

/*Table structure for table `currentbatch` */

DROP TABLE IF EXISTS `currentbatch`;

CREATE TABLE `currentbatch` (
  `CURRENT_BATCH_ID` int(60) NOT NULL auto_increment,
  `STATUS` varchar(60) default NULL,
  `NO_OF_STUDENT` int(30) default NULL,
  `BATCH_ID` int(60) default NULL,
  `IS_DELETED` tinyint(3) default NULL,
  `CURRENT_TOPIC` varchar(60) default NULL,
  `BATCH_NAME` varchar(60) default NULL,
  PRIMARY KEY  (`CURRENT_BATCH_ID`),
  KEY `BATCH_ID` (`BATCH_ID`),
  CONSTRAINT `currentbatch_ibfk_1` FOREIGN KEY (`BATCH_ID`) REFERENCES `batch` (`BATCH_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `currentbatch` */

insert  into `currentbatch`(`CURRENT_BATCH_ID`,`STATUS`,`NO_OF_STUDENT`,`BATCH_ID`,`IS_DELETED`,`CURRENT_TOPIC`,`BATCH_NAME`) values (1,'open',123,1,0,NULL,NULL),(2,'open',23,1,0,'Exception handling','Core Java'),(3,'open',20,1,1,'multi threading','Clases And Objects'),(4,'close',55,NULL,1,'thread','Java'),(5,'close',26,NULL,1,'swing','Advance Java'),(6,'open',19,NULL,1,'life cycle','Spring Hibernate'),(7,'open',11,NULL,1,'java','Indrustrial Tarining'),(8,'open',21,NULL,0,'mapping','Hibernate'),(9,'open',10,NULL,1,'thread_domain','Bc00111');

/*Table structure for table `currentstatus` */

DROP TABLE IF EXISTS `currentstatus`;

CREATE TABLE `currentstatus` (
  `CURRENT_STATUS_ID` int(10) NOT NULL auto_increment,
  `CURRENTSTATUS` tinytext,
  `IS_DELETED` int(10) default NULL,
  PRIMARY KEY  (`CURRENT_STATUS_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `currentstatus` */

insert  into `currentstatus`(`CURRENT_STATUS_ID`,`CURRENTSTATUS`,`IS_DELETED`) values (1,'DEMO',1),(2,'CORE JAVA',1),(3,'JSP',1);

/*Table structure for table `dynamic_footer` */

DROP TABLE IF EXISTS `dynamic_footer`;

CREATE TABLE `dynamic_footer` (
  `student_id` int(50) NOT NULL auto_increment,
  `student_name` tinytext,
  `company_name` tinytext,
  `student_comment` text,
  `is_deleted` int(10) default NULL,
  `is_status_active` int(11) default NULL,
  PRIMARY KEY  (`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `dynamic_footer` */

insert  into `dynamic_footer`(`student_id`,`student_name`,`company_name`,`student_comment`,`is_deleted`,`is_status_active`) values (9,'mayankggggg','aartek','hello frnds',0,0),(10,'praveen','google','superb institute',0,0),(11,'sumitrrrrrr','tcs','everything is good',0,0),(12,'sumit','tcs','everything is good',0,0),(13,'ajay sir','yash','goodnite',0,0),(14,'xxxtttt','aaaa','vvv',0,0),(15,'yyy','yyy','yyyy',0,0),(16,'aaa','aaaa','aaa',0,0),(17,'mayankkkk','aartek','hello frnds',0,0),(18,'mayank','aartek','hello frnds',0,0),(19,'mayankkkk','aartek','hello frnds',0,0),(20,'suraj','info tech','fsghghghggdhgh',0,0),(21,'sandeep','wipro','oiioiuuuuoi',0,0),(22,'rtret','rtrt','trtrt',0,0),(23,'klkl','lklkl','klklk',0,0),(24,'rerere','rerer','rerer',0,0),(25,'hjfhjh','jhjhj','hjhj',0,0),(26,'dddd','ddd','ddd',0,0),(27,'ttt','ttt','ttt',0,0),(28,'oooo','oooo','ooo',0,0),(29,'pppp','ppppp','ppppppppppppppp',0,0),(30,'fdsgfdg','fgfgfdg','fgfgfg',0,0),(31,'hghg','hghghgh','hghghg',0,0),(32,'jhjh','hjhjhj','jhjhj',0,0),(33,'aaa','aaaa','aaaa',0,0),(34,'yyy','yyyy','yyy',0,0),(35,'mayank','aartek','hiiiii',1,1),(36,'praveen','google','happy new year',1,1),(37,'sandeep','wipro','i am going',1,1),(38,'jhj','jhjhj','jhjh',0,0),(39,'sumit','aartek','I joined Prestige point in order to get some guidance on my major project which I was required to\r\n                submit in my final year of engineering. Mentors are very friendly and teach through practical code\r\n                snippets which provide us with a real-time scenario of the processing.',0,0),(40,'tttt','tttt','ttttttttt',0,0),(41,'hghh','hgh','ghggh',0,0),(42,'yhgh','hghgh','hghg',0,0),(44,'sandeep','aartek','happy',0,0),(45,'sandeep jariya','xyz','done',0,0),(46,'patidar','aartek','sandeep',0,0),(47,'sandee','k','p',0,0),(48,'mk','mk','km',0,0),(49,'sj','sj','sj',0,0),(50,'sp','sp','sp',0,0),(51,'praveen','aartek','sir',0,0),(52,'sadhu','microsoft','placed',0,0),(53,'hkh','hkh','jh',0,0),(54,'ravi','ravikant','kant',0,0),(55,'mj','mj','mj',0,0),(56,'sandeep','aartek','jariya',0,0),(57,'jariya','aartek','sandeep',1,1),(58,'patidar','sandeep','I give the credit of my success to Prestige point. I completed my engineering from electronics branch; I had no idea about coding, processing or any of the concepts used in software systems. I joined the corporate training program in Prestige point;',1,1);

/*Table structure for table `emi` */

DROP TABLE IF EXISTS `emi`;

CREATE TABLE `emi` (
  `EMI_ID` int(60) NOT NULL auto_increment,
  `AMOUNT` int(60) default NULL,
  `DATE` varchar(60) default NULL,
  `IS_DELETED` tinyint(4) default NULL,
  `REGISTRATION_ID` int(60) default NULL,
  PRIMARY KEY  (`EMI_ID`),
  KEY `REGISTRATION_ID` (`REGISTRATION_ID`),
  CONSTRAINT `emi_ibfk_1` FOREIGN KEY (`REGISTRATION_ID`) REFERENCES `registration` (`REGISTRATION_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `emi` */

insert  into `emi`(`EMI_ID`,`AMOUNT`,`DATE`,`IS_DELETED`,`REGISTRATION_ID`) values (1,0,'2014-10-27',0,NULL),(2,0,'2014-10-27',1,2),(3,0,'2014-10-29',1,3),(4,5000,'2014-11-05',1,NULL),(5,2365,'2014-11-05',1,NULL),(6,0,'2014-11-17',1,NULL),(7,2365,'2014-11-20',1,NULL),(8,1111,'0007-05-26',1,NULL),(9,2365,'2014-11-20',1,NULL),(10,5111,'0007-05-30',1,NULL),(11,5000,'2014-11-20',0,NULL),(12,2200,'2014-11-24',1,5),(13,5000,'2014-11-20',0,5),(14,5000,'2014-11-21',0,NULL),(15,5000,'2014-11-22',0,NULL),(16,5566,'2014-11-21',0,NULL),(17,1000,'2014-11-26',0,NULL),(18,2008,'2014-11-24',0,NULL),(19,3900,'2014-11-25',0,NULL),(20,2031,'2014-11-26',0,NULL),(21,1920,'2014-11-27',1,NULL),(22,1920,'2014-11-25',1,NULL),(23,1010,'0026-05-07',1,NULL),(24,2365,'0026-05-07',1,NULL),(25,2323,'2014-11-24',0,5),(26,20121,'2014-11-24',1,5),(27,3201,'2014-11-23',0,5),(28,10101,'0030-05-07',1,NULL),(29,28345,'2014-11-24',1,NULL),(30,3098,'2014-11-24',0,NULL),(31,28345,'2014-11-18',0,6),(32,1230,'2014-11-23',1,NULL),(33,100,'0007-05-30',0,4),(34,1000,'0030-05-07',0,6),(35,5000,'2014-11-24',0,7),(36,3333,'0024-05-06',1,7),(37,6000,'2014-11-24',1,7),(38,5000,'0007-05-30',0,6),(39,5000,'2014-11-24',0,6),(40,50000,'2014-11-25',0,6),(41,5000,'2014-11-25',0,6),(42,1000,'0030-05-07',0,6),(43,2000,'2014-11-25',0,NULL),(44,5000,'2014-11-25',0,NULL),(45,10000,'0001-06-06',0,NULL),(46,4000,'2014-11-25',0,NULL),(47,2000,'2014-11-25',0,NULL),(48,3000,'0007-05-31',0,NULL),(49,3000,'0031-05-07',0,NULL),(50,5000,'2014-11-25',1,NULL),(51,10000,'0031-05-07',1,NULL),(52,15000,'2014-11-25',1,NULL),(53,15000,'2014-11-25',1,NULL),(54,15000,'2014-11-25',1,NULL),(55,15000,'2014-11-25',1,NULL),(56,2000,'0031-05-07',1,NULL),(57,2000,'2014-11-27',1,NULL),(58,2000,'2014-12-01',1,10),(59,2000,'0007-06-06',1,NULL),(60,5505,'0007-06-06',1,6),(61,0,'2014-12-08',1,11),(62,0,'2014-12-08',1,12),(63,0,'2014-12-23',1,14),(64,0,'2014-12-24',1,15),(65,0,'2014-12-24',1,16),(66,0,'2014-12-24',1,17),(67,1500,'2015-01-20',1,10),(68,14432,'2015-01-06',1,1),(69,2000,'2015-01-06',1,9),(70,15000,'2015-01-06',1,8),(71,15000,'2015-01-06',1,NULL),(72,15000,'2015-01-06',1,NULL),(73,3500,'2015-01-06',1,NULL),(74,15000,'2015-01-06',1,NULL),(75,15000,'2015-01-06',1,NULL),(76,3500,'2015-01-06',1,NULL),(77,15000,'2015-01-06',1,18),(78,10000,'2015-01-14',1,18),(79,3000,'0020-07-07',0,18),(80,50,'0027-07-08',1,10),(81,5,'2015-01-28',1,10),(82,5000,'2015-01-22',1,18),(83,3000,'2015-01-06',1,NULL),(84,3000,'2015-01-06',1,19);

/*Table structure for table `enquiry` */

DROP TABLE IF EXISTS `enquiry`;

CREATE TABLE `enquiry` (
  `ENQUIRY_ID` int(60) NOT NULL auto_increment,
  `MOBILE_NO` varchar(60) default NULL,
  `NAME` varchar(60) default NULL,
  `EMAIL_ID` varchar(100) default NULL,
  `COMMENT` varchar(200) default NULL,
  `IS_DELETED` tinyint(4) default NULL,
  `DATE` varchar(60) default NULL,
  `SUBJECT` varchar(60) default NULL,
  PRIMARY KEY  (`ENQUIRY_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `enquiry` */

insert  into `enquiry`(`ENQUIRY_ID`,`MOBILE_NO`,`NAME`,`EMAIL_ID`,`COMMENT`,`IS_DELETED`,`DATE`,`SUBJECT`) values (1,'1236547896','praveen','praveen@gmail.com','This is message testing by praveen',1,'30-10-2014',NULL),(2,'8602212345','sandeep','patidarsandeep99@gmail.com','i want join your organization but i dont have knowledge of java?',1,'03-12-2014','java'),(3,'9565623562','sandeep','sandeeopatidar@gmail.com','i want join your organization',1,'03-12-2014',NULL),(4,'8871871977','patidar','patidarsandeep991@gmail.com','how to get placed in mnc',1,'06-01-2015',NULL);

/*Table structure for table `forum_answer` */

DROP TABLE IF EXISTS `forum_answer`;

CREATE TABLE `forum_answer` (
  `FORUM_ANSWER_ID` int(60) NOT NULL auto_increment,
  `FORUM_ANSWER` longtext,
  `CREATED_DATE` varchar(60) default NULL,
  `UPDATED_DATE` varchar(60) default NULL,
  `IS_DELETED` tinyint(5) default NULL,
  `FORUM_QUESTION_ID` int(60) default NULL,
  PRIMARY KEY  (`FORUM_ANSWER_ID`),
  KEY `FORUM_QUESTION_ID` (`FORUM_QUESTION_ID`),
  CONSTRAINT `forum_answer_ibfk_1` FOREIGN KEY (`FORUM_QUESTION_ID`) REFERENCES `forum_question` (`FORUM_QUESTION_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `forum_answer` */

insert  into `forum_answer`(`FORUM_ANSWER_ID`,`FORUM_ANSWER`,`CREATED_DATE`,`UPDATED_DATE`,`IS_DELETED`,`FORUM_QUESTION_ID`) values (1,'hfghfhfghf,',NULL,NULL,1,2),(2,'fdgdd,,fdgdd,',NULL,NULL,1,2),(3,',,',NULL,NULL,1,1),(4,'jsp life cycle have three life cycle methods like jsp_init(),jsp_service().,,,',NULL,NULL,1,4),(5,'and one more method called jsp_destroy(),,,,and one more method called jsp_destroy(),,,,and one more method called jsp_destroy(),,,,and one more method called jsp_destroy(),,,',NULL,NULL,1,4),(6,'it we called by container automatically.,,,,it we called by container automatically.,,,,it we called by container automatically.,,,,it we called by container automatically.,,,',NULL,NULL,1,4),(7,',jsp is an technology of java.,,',NULL,NULL,1,3),(8,',it is follow the specification of java,,',NULL,NULL,1,3),(9,',jsp has its own tag,,',NULL,NULL,1,3),(10,',,dfkjhgkhldshg,',NULL,NULL,1,2),(11,',,sdfjhskhfks#\r\n,',NULL,NULL,1,2),(12,',,fdshgfdujhs yggsdfg ,,',NULL,NULL,1,3),(13,',,,,dandeep hdshuj',NULL,NULL,1,1),(14,',,,,ffgdfsb dhjsghk',NULL,NULL,1,1);

/*Table structure for table `forum_question` */

DROP TABLE IF EXISTS `forum_question`;

CREATE TABLE `forum_question` (
  `FORUM_QUESTION_ID` int(60) NOT NULL auto_increment,
  `FORUM_QUESTION` longtext,
  `CREATED_DATE` varchar(60) default NULL,
  `UPDATED_DATE` varchar(60) default NULL,
  `IS_DELETED` tinyint(5) default NULL,
  `SUBJECT_ID` int(60) default NULL,
  PRIMARY KEY  (`FORUM_QUESTION_ID`),
  KEY `SUBJECT_ID` (`SUBJECT_ID`),
  CONSTRAINT `forum_question_ibfk_1` FOREIGN KEY (`SUBJECT_ID`) REFERENCES `subject` (`SUBJECT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `forum_question` */

insert  into `forum_question`(`FORUM_QUESTION_ID`,`FORUM_QUESTION`,`CREATED_DATE`,`UPDATED_DATE`,`IS_DELETED`,`SUBJECT_ID`) values (1,'What is difference between interface and abstract ?',NULL,NULL,1,1),(2,'what is jpa??',NULL,NULL,1,2),(3,'what is jsp',NULL,NULL,1,2),(4,'What is jsp life cyle?',NULL,NULL,1,2),(5,'ffgtrey ghhfg',NULL,NULL,1,2);

/*Table structure for table `question_answer` */

DROP TABLE IF EXISTS `question_answer`;

CREATE TABLE `question_answer` (
  `QUESTION_ID` int(60) NOT NULL auto_increment,
  `QUESTION` mediumtext,
  `ANSWER` mediumtext,
  `IS_DELETED` tinyint(5) default NULL,
  `SUBJECT_ID` int(60) default NULL,
  `ANSWER1` mediumtext,
  PRIMARY KEY  (`QUESTION_ID`),
  KEY `SUBJECT_ID` (`SUBJECT_ID`),
  CONSTRAINT `question_answer_ibfk_1` FOREIGN KEY (`SUBJECT_ID`) REFERENCES `subject` (`SUBJECT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `question_answer` */

insert  into `question_answer`(`QUESTION_ID`,`QUESTION`,`ANSWER`,`IS_DELETED`,`SUBJECT_ID`,`ANSWER1`) values (4,'Explain the impact of private constructor','Private Constructors can\'t be access from any derived classes neither from another class. So you\r\n          have to provide a public function that calls the private constructor if the object has not been initialized,\r\n          or you have to return an instance to the object, if it was initialized. This can be useful for objects that\r\n          can\'t be instantiated.',1,1,NULL),(7,'What are transient and volatile modifiers?','When serializable interface is declared, the compiler knows that the object has to be handled so\r\n          as so be able to serialize it. However, if you declare a variable in an object as transient, then it doesnÃ?Â¢Ã?Â?Ã?Â?t\r\n          get serialized. Volatile Specifying a variable as volatile tells the JVM that any threads using that variable\r\n          are not allowed to cache that value at all. Volatile modifier tells the compiler that the variable modified by\r\n          volatile can be changed unexpectedly by other parts of the program.',1,1,NULL),(8,'What are daemon threads?','Threads that work in the background to support the runtime environment are called daemon threads.\r\n          Eg garbage collector threads. When the only remaining threads in a process are daemon threads, the interpreter\r\n          exits. This makes sense because when only daemon threads remain, there is no other thread for which a daemon\r\n          thread can provide a service. You cannot create a daemon method but you can use public final void\r\n          setDaemon(boolean isDaemon) method to turn it into one.',1,1,NULL),(10,'difference between interface and abstract class','Main difference is methods of a Java interface are implicitly abstract and cannot have implementations. #Variables declared in a Java interface is by default final.#ava interface should be implemented using keyword \"implements\"',1,1,' A Java abstract class can have instance methods that implements a default behavior.#An  abstract class may contain non-final variables.#A Java abstract class should be extended using keyword \"extends\".'),(11,'difference between JSP and Servlet','Servlet#1.Servlet is server side programing#2.Servlet is a private res#',1,2,'Jsp#1.Jsp is client side programing#2.Jsp is a public res#'),(12,'difference between http and https','HTTP#\r\n1. It uses port 80 for communication#\r\n2. Unsecured#\r\n3.Operates at Application Layer',1,2,'HTTPS#\r\n1.It uses port 443 for communication#\r\n2. Secured#\r\n3. Operates at Transport Layer'),(13,'what is difference between abstract and interface','(1) abstract class can not instantiate#\r\n(2) abstract class can not be inharite#',1,1,'(1)inteface cantain only null body methods#\r\n(2) we can implement intrface#'),(14,'what is class in java','Ans-:class is collection of variables and its associate methods',1,1,NULL),(15,'what is class in java','Ans-:class is collection of variables and its associate methods',1,1,NULL),(16,'life cycle method of jsp','(1) init()\r\n(2) service()\r\n(3) destroy()',1,2,NULL),(17,'Diff B/w JDBC & Hibernate','1. JSDB1#\r\n2.kjdfd#\r\n3.kjhffs#',1,3,'1.Hibernate1#\r\n2.sjfhbkjdsf#\r\n3.KJHJ#'),(18,'what is java???','java is a object oriented programming language so we can develope project',1,1,NULL),(19,'what is core  java ????','programming language',1,1,NULL),(20,'Differnce b/w jsp and servlet?','(1) jsp have its own life cycle methods#',1,2,'(1)servlet have its own life cycle methods#'),(21,'what is spring mvc and struts mvc?','(1) spring mvc or frame work is a frame work of frameworks#',1,5,'(2) struts is also an frame work#'),(22,'?','ans',1,6,NULL),(23,'what is thread?','thread is ....',1,1,NULL),(24,'what is collection','ans',1,1,NULL);

/*Table structure for table `registration` */

DROP TABLE IF EXISTS `registration`;

CREATE TABLE `registration` (
  `CURRENT_STATUS_ID` int(60) default NULL,
  `REGISTRATION_ID` int(60) NOT NULL auto_increment,
  `FIRST_NAME` varchar(60) default NULL,
  `LAST_NAME` varchar(60) default NULL,
  `EMAIL_ID` varchar(100) default NULL,
  `DATE_OF_BIRTH` varchar(60) default NULL,
  `CONTACT` varchar(60) default NULL,
  `QUALIFICATION` varchar(60) default NULL,
  `PARENT_CONTACT` varchar(60) default NULL,
  `DISCOUNT` int(60) default NULL,
  `SUBMITTED_FEE` int(60) default NULL,
  `BATCH_ID` int(60) default NULL,
  `YEAR_ID` int(60) default NULL,
  `COURSE_ID` int(60) default NULL,
  `COURSE_FEE` int(60) default NULL,
  `IS_DELETED` tinyint(4) default NULL,
  `TOTAL_FEE` int(60) default NULL,
  `IMAGE_PATH` varchar(100) default NULL,
  `STATUS` varchar(50) default NULL,
  `CITY` varchar(60) default NULL,
  `STATE` varchar(60) default NULL,
  `password` varchar(60) default NULL,
  PRIMARY KEY  (`REGISTRATION_ID`),
  KEY `BATCH_ID` (`BATCH_ID`),
  KEY `YEAR_ID` (`YEAR_ID`),
  KEY `COURSE_ID` (`COURSE_ID`),
  KEY `CURRENT_STATUS_ID` (`CURRENT_STATUS_ID`),
  CONSTRAINT `FK_registration` FOREIGN KEY (`CURRENT_STATUS_ID`) REFERENCES `currentstatus` (`CURRENT_STATUS_ID`),
  CONSTRAINT `registration_ibfk_1` FOREIGN KEY (`BATCH_ID`) REFERENCES `batch` (`BATCH_ID`),
  CONSTRAINT `registration_ibfk_2` FOREIGN KEY (`YEAR_ID`) REFERENCES `year` (`YEAR_ID`),
  CONSTRAINT `registration_ibfk_3` FOREIGN KEY (`COURSE_ID`) REFERENCES `course` (`COURSE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `registration` */

insert  into `registration`(`CURRENT_STATUS_ID`,`REGISTRATION_ID`,`FIRST_NAME`,`LAST_NAME`,`EMAIL_ID`,`DATE_OF_BIRTH`,`CONTACT`,`QUALIFICATION`,`PARENT_CONTACT`,`DISCOUNT`,`SUBMITTED_FEE`,`BATCH_ID`,`YEAR_ID`,`COURSE_ID`,`COURSE_FEE`,`IS_DELETED`,`TOTAL_FEE`,`IMAGE_PATH`,`STATUS`,`CITY`,`STATE`,`password`) values (2,1,'poonam','pareel','mr.deepakahirwal@gmail.com','17-10-1987','1236547896','BE','8602219170',NULL,14432,4,1,2,15000,1,15000,NULL,'paid','indore','mp','Q+9/MH/C'),(2,2,'Praveen kumar','Raghuvanshi','praveen.raghuvanshii@gmail.com','17-10-1987','7804814213','MCA',NULL,NULL,NULL,NULL,1,2,NULL,1,NULL,NULL,'free','indore','mp','123'),(2,3,'Praveen','Raghuvanshi','praveen.raghuvanshii@gmail.com','17-10-1987','7804814213','MCA',NULL,NULL,NULL,NULL,1,2,NULL,1,NULL,NULL,'free','indore','mp','123'),(2,4,'rohan','thakur','praveen.raghuvanshii@gmail.com','11-11-1987','1236985478','dsf','12354698736',20,26961,NULL,1,NULL,35000,1,28000,NULL,'paid','indore','mp','D#gdy7tU'),(2,5,'sandeep','patidar','hjk@gmail.com','05-07-1988','32313123123','mca','42342423423',20,61875,1,3,2,15000,0,28000,NULL,'paid','dewas','madhya','M_Y9+/KF'),(2,6,'Ramkapoor','Kishor','ram@gmail.com','05-11-1981','1236547896','MCA','8602219108',NULL,166195,NULL,1,2,15000,1,15000,NULL,'paid','indore','mp','HzSP_U_4'),(2,7,'sandeep','patidar','patidar@gmail.com','05-11-1988','8066131640','mca','12134656979',2000,130999,NULL,1,NULL,35000,1,33000,NULL,'paid','Indore','madhya pradesh','Er7N^fv+'),(2,8,'Sumit','angrade','sumitgangrade1006@gmail.com','14-11-1989','8103138001','mca','123466',600,15000,4,3,2,15000,1,-75000,NULL,'paid','inore','m','Yfh-VDyM'),(2,9,'sandeep','jariya','jariyasandeep@gmail.com','23-01-1988','8871871977','MCA','9179828400',20000,2000,4,2,1,35000,1,23000,NULL,'paid','Indore','MP','123'),(NULL,10,'sandeep','patidar','patidarsandeep991@gmail.com','05-07-1988','8602219170','mca','5231562350',15,3555,NULL,1,2,15000,1,12750,NULL,'paid','indore','mp','123456'),(NULL,11,'keshav','rathore','rathorekeshav@gmail.com','28-12-1992','8817313112','be',NULL,NULL,NULL,NULL,2,NULL,NULL,NULL,NULL,NULL,'free','indore','mp','1234'),(NULL,12,'ram ','gupta','gupta@gmail.com','26-12-1962','2534567825','be',NULL,NULL,NULL,NULL,3,NULL,NULL,NULL,NULL,NULL,'free','indore','mp','1234'),(NULL,13,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(NULL,14,'qqq','qqq','qqq@gmail.com','14-12-1988','1234567890','ghghg',NULL,NULL,NULL,NULL,5,1,NULL,NULL,NULL,NULL,'free','indore','mp','123'),(NULL,15,'xgxhgh','hgfh','aaa@gmail.com','19-12-1985','1234567890','vbjh',NULL,NULL,NULL,NULL,3,1,NULL,NULL,NULL,NULL,'free','bbnb','bnbn','123'),(NULL,16,'yyyy','yyyyyy','yyy@gmail.com','14-12-1983','1234567890','hghgh',NULL,NULL,NULL,NULL,3,1,NULL,NULL,NULL,NULL,'free','ghhg','hghh','123'),(NULL,17,'ppp','pppppp','111','17-12-1987','0123456789','chgh',NULL,NULL,NULL,NULL,3,1,NULL,NULL,NULL,NULL,'free','vhvhbn','nbnbn','123'),(2,18,'sandeep','jariya','jariyasandeep@gmail.com','23-01-1988','8871871977','MCA','9179828400',50,30000,4,2,1,35000,1,17500,NULL,'paid','indore','mp','3euY5Jx/'),(2,19,'patidar','sandeep','patidarsandeep991@gmail.com','12-01-1988','8871871977','MCA','8871871977',75,3000,4,2,1,35000,1,8750,NULL,'paid','indore','mp','u&YJ@#7c');

/*Table structure for table `scroller` */

DROP TABLE IF EXISTS `scroller`;

CREATE TABLE `scroller` (
  `image_id` int(100) NOT NULL auto_increment,
  `is_deleted` int(5) default NULL,
  `is_status_active` int(5) default NULL,
  PRIMARY KEY  (`image_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `scroller` */

insert  into `scroller`(`image_id`,`is_deleted`,`is_status_active`) values (18,0,0),(19,1,1),(20,0,0),(21,0,0),(22,1,1),(23,0,0),(24,1,1),(25,0,0);

/*Table structure for table `subject` */

DROP TABLE IF EXISTS `subject`;

CREATE TABLE `subject` (
  `SUBJECT_ID` int(60) NOT NULL auto_increment,
  `SUBJECT_NAME` varchar(60) default NULL,
  `CREATED_DATE` varchar(60) default NULL,
  `UPDATED_DATE` varchar(60) default NULL,
  `IS_DELETED` tinyint(5) default NULL,
  PRIMARY KEY  (`SUBJECT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `subject` */

insert  into `subject`(`SUBJECT_ID`,`SUBJECT_NAME`,`CREATED_DATE`,`UPDATED_DATE`,`IS_DELETED`) values (1,'CORE JAVA',NULL,NULL,1),(2,'JSP',NULL,NULL,1),(3,'SERVLET',NULL,NULL,1),(4,'JDBC',NULL,NULL,1),(5,'SPRING',NULL,NULL,1),(6,'HIBERNATE',NULL,NULL,1),(7,'STRUTS',NULL,NULL,1);

/*Table structure for table `upload1` */

DROP TABLE IF EXISTS `upload1`;

CREATE TABLE `upload1` (
  `JAR_ID` int(20) NOT NULL auto_increment,
  `JAR_TYPE` varchar(50) NOT NULL,
  `NAME_OF_JAR` varchar(50) NOT NULL,
  `PATH_OF_JAR` varchar(200) NOT NULL,
  PRIMARY KEY  (`JAR_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `upload1` */

insert  into `upload1`(`JAR_ID`,`JAR_TYPE`,`NAME_OF_JAR`,`PATH_OF_JAR`) values (4,'corejava','antlr-2.7.6.jar','C:/apache-tomcat-7.0.40/webapps/uploadFiles/corejava\\antlr-2.7.6.jar'),(5,'corejava','c3p0-0.9.1.jar','C:/apache-tomcat-7.0.40/webapps/uploadFiles/corejava\\c3p0-0.9.1.jar'),(6,'spring','commons-codec-1.2.jar','C:/apache-tomcat-7.0.40/webapps/uploadFiles/spring\\commons-codec-1.2.jar'),(7,'spring','hsqldb-2.2.8.jar','C:/apache-tomcat-7.0.40/webapps/uploadFiles/spring\\hsqldb-2.2.8.jar'),(8,'struts','','C:/apache-tomcat-7.0.40/webapps/uploadFiles/struts\\');

/*Table structure for table `year` */

DROP TABLE IF EXISTS `year`;

CREATE TABLE `year` (
  `YEAR_ID` int(60) NOT NULL auto_increment,
  `YEAR` varchar(80) default NULL,
  `IS_DELETED` tinyint(4) default NULL,
  PRIMARY KEY  (`YEAR_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `year` */

insert  into `year`(`YEAR_ID`,`YEAR`,`IS_DELETED`) values (1,'2013',1),(2,'2014',1),(3,'2007',1),(5,'2008',1),(6,'2020',1),(7,'2009',1),(8,'2010',1);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;

CREATE DATABASE /*!32312 IF NOT EXISTS*/`aartek14_prestigepoint_db` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `aartek14_prestigepoint_db`;

/*Table structure for table `add_challenge` */

DROP TABLE IF EXISTS `add_challenge`;

CREATE TABLE `add_challenge` (
  `CHALLENGE_ID` int(80) NOT NULL AUTO_INCREMENT,
  `TITLE` varchar(250) DEFAULT NULL,
  `DISCRIPTION` varchar(10000) DEFAULT NULL,
  `PRICE` int(10) DEFAULT NULL,
  `CHALLENGE_CONDITION` varchar(1000) DEFAULT NULL,
  `DURATION` varchar(1000) DEFAULT NULL,
  `TECHNOLOGY` varchar(1000) DEFAULT NULL,
  `IS_DELETED` int(80) DEFAULT NULL,
  `IS_ACTIVE` int(80) DEFAULT NULL,
  PRIMARY KEY (`CHALLENGE_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=latin1;

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
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=latin1;

