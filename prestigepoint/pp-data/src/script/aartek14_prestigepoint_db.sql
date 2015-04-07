/*
SQLyog Enterprise - MySQL GUI v8.14 
MySQL - 5.1.37-community : Database - aartek14_prestigepoint_db
*********************************************************************
*/
/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`aartek14_prestigepoint_db` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `aartek14_prestigepoint_db`;

/*Table structure for table `adminlogin` */

DROP TABLE IF EXISTS `adminlogin`;

CREATE TABLE `adminlogin` (
  `ADMIN_LOGIN_ID` int(60) NOT NULL AUTO_INCREMENT,
  `EMAIL_ID` varchar(100) DEFAULT NULL,
  `PASSWORD` varchar(60) DEFAULT NULL,
  `IS_DELETED` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`ADMIN_LOGIN_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

/*Data for the table `adminlogin` */

insert  into `adminlogin`(`ADMIN_LOGIN_ID`,`EMAIL_ID`,`PASSWORD`,`IS_DELETED`) values (1,'admin@gmail.com','123',1);

/*Table structure for table `batch` */

DROP TABLE IF EXISTS `batch`;

CREATE TABLE `batch` (
  `BATCH_ID` int(60) NOT NULL AUTO_INCREMENT,
  `BATCH_NAME` varchar(60) DEFAULT NULL,
  `START_DATE` varchar(60) DEFAULT NULL,
  `IS_DELETED` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`BATCH_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

/*Data for the table `batch` */

insert  into `batch`(`BATCH_ID`,`BATCH_NAME`,`START_DATE`,`IS_DELETED`) values (1,'core java','27-10-2014',1);

/*Table structure for table `course` */

DROP TABLE IF EXISTS `course`;

CREATE TABLE `course` (
  `COURSE_ID` int(60) NOT NULL AUTO_INCREMENT,
  `COURSE_NAME` varchar(100) DEFAULT NULL,
  `COURSE_FEE` int(60) DEFAULT NULL,
  `IS_DELETED` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`COURSE_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

/*Data for the table `course` */

insert  into `course`(`COURSE_ID`,`COURSE_NAME`,`COURSE_FEE`,`IS_DELETED`) values (1,'Corporate Training',35000,1),(2,'Industrial Training',15000,1),(5,'Collage Training ',4500,1),(6,'Orcle10g',10000,1);

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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

/*Data for the table `emi` */

insert  into `emi`(`EMI_ID`,`AMOUNT`,`DATE`,`IS_DELETED`,`REGISTRATION_ID`) values (1,0,'2014-10-27',1,1),(2,0,'2014-10-27',1,2),(3,0,'2014-10-29',1,3);

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
  PRIMARY KEY (`ENQUIRY_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

/*Data for the table `enquiry` */

insert  into `enquiry`(`ENQUIRY_ID`,`MOBILE_NO`,`NAME`,`EMAIL_ID`,`COMMENT`,`IS_DELETED`,`DATE`,`SUBJECT`) values (1,'1236547896','praveen','praveen@gmail.com','This is message testing by praveen',1,'30-10-2014',NULL);

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `forum_answer` */

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `forum_question` */

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
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

/*Data for the table `question_answer` */

insert  into `question_answer`(`QUESTION_ID`,`QUESTION`,`ANSWER`,`IS_DELETED`,`SUBJECT_ID`,`ANSWER1`) values (4,'Explain the impact of private constructor','Private Constructors can\'t be access from any derived classes neither from another class. So you\r\n          have to provide a public function that calls the private constructor if the object has not been initialized,\r\n          or you have to return an instance to the object, if it was initialized. This can be useful for objects that\r\n          can\'t be instantiated.',1,1,NULL),(7,'What are transient and volatile modifiers?','When serializable interface is declared, the compiler knows that the object has to be handled so\r\n          as so be able to serialize it. However, if you declare a variable in an object as transient, then it doesnÃÂ¢ÃÂÃÂt\r\n          get serialized. Volatile Specifying a variable as volatile tells the JVM that any threads using that variable\r\n          are not allowed to cache that value at all. Volatile modifier tells the compiler that the variable modified by\r\n          volatile can be changed unexpectedly by other parts of the program.',1,1,NULL),(8,'What are daemon threads?','Threads that work in the background to support the runtime environment are called daemon threads.\r\n          Eg garbage collector threads. When the only remaining threads in a process are daemon threads, the interpreter\r\n          exits. This makes sense because when only daemon threads remain, there is no other thread for which a daemon\r\n          thread can provide a service. You cannot create a daemon method but you can use public final void\r\n          setDaemon(boolean isDaemon) method to turn it into one.',1,1,NULL),(10,'difference between interface and abstract class','Main difference is methods of a Java interface are implicitly abstract and cannot have implementations. #Variables declared in a Java interface is by default final.#ava interface should be implemented using keyword \"implements\"',1,1,' A Java abstract class can have instance methods that implements a default behavior.#An  abstract class may contain non-final variables.#A Java abstract class should be extended using keyword \"extends\".'),(11,'difference between JSP and Servlet','Servlet#1.Servlet is server side programing#2.Servlet is a private res#',1,2,'Jsp#1.Jsp is client side programing#2.Jsp is a public res#'),(12,'difference between http and https','HTTP#\r\n1. It uses port 80 for communication#\r\n2. Unsecured#\r\n3.Operates at Application Layer',1,2,'HTTPS#\r\n1.It uses port 443 for communication#\r\n2. Secured#\r\n3. Operates at Transport Layer');

/*Table structure for table `registration` */

DROP TABLE IF EXISTS `registration`;

CREATE TABLE `registration` (
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
  `TOTAL_FEE` int(60) DEFAULT NULL,
  `IMAGE_PATH` varchar(100) DEFAULT NULL,
  `STATUS` varchar(50) DEFAULT NULL,
  `CITY` varchar(60) DEFAULT NULL,
  `STATE` varchar(60) DEFAULT NULL,
  `password` varchar(60) DEFAULT NULL,
  PRIMARY KEY (`REGISTRATION_ID`),
  KEY `BATCH_ID` (`BATCH_ID`),
  KEY `YEAR_ID` (`YEAR_ID`),
  KEY `COURSE_ID` (`COURSE_ID`),
  CONSTRAINT `registration_ibfk_1` FOREIGN KEY (`BATCH_ID`) REFERENCES `batch` (`BATCH_ID`),
  CONSTRAINT `registration_ibfk_2` FOREIGN KEY (`YEAR_ID`) REFERENCES `year` (`YEAR_ID`),
  CONSTRAINT `registration_ibfk_3` FOREIGN KEY (`COURSE_ID`) REFERENCES `course` (`COURSE_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

/*Data for the table `registration` */

insert  into `registration`(`REGISTRATION_ID`,`FIRST_NAME`,`LAST_NAME`,`EMAIL_ID`,`DATE_OF_BIRTH`,`CONTACT`,`QUALIFICATION`,`PARENT_CONTACT`,`DISCOUNT`,`SUBMITTED_FEE`,`BATCH_ID`,`YEAR_ID`,`COURSE_ID`,`COURSE_FEE`,`IS_DELETED`,`TOTAL_FEE`,`IMAGE_PATH`,`STATUS`,`CITY`,`STATE`,`password`) values (1,'pr','mn','mr.deepakahirwal@gmail.com','17-10-1987','1236547896','BE',NULL,NULL,NULL,NULL,2,2,NULL,1,NULL,NULL,'free','in','mp','123'),(2,'Praveen','Raghuvanshi','praveen.raghuvanshii@gmail.com','17-10-1987','7804814213','MCA',NULL,NULL,NULL,NULL,1,2,NULL,0,NULL,NULL,'free','indore','mp','123'),(3,'Praveen','Raghuvanshi','praveen.raghuvanshii@gmail.com','17-10-1987','7804814213','MCA',NULL,NULL,NULL,NULL,1,2,NULL,1,NULL,NULL,'free','indore','mp','123');

/*Table structure for table `subject` */

DROP TABLE IF EXISTS `subject`;

CREATE TABLE `subject` (
  `SUBJECT_ID` int(60) NOT NULL AUTO_INCREMENT,
  `SUBJECT_NAME` varchar(60) DEFAULT NULL,
  `CREATED_DATE` varchar(60) DEFAULT NULL,
  `UPDATED_DATE` varchar(60) DEFAULT NULL,
  `IS_DELETED` tinyint(5) DEFAULT NULL,
  PRIMARY KEY (`SUBJECT_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

/*Data for the table `subject` */

insert  into `subject`(`SUBJECT_ID`,`SUBJECT_NAME`,`CREATED_DATE`,`UPDATED_DATE`,`IS_DELETED`) values (1,'CORE JAVA',NULL,NULL,1),(2,'JSP',NULL,NULL,1),(3,'SERVLET',NULL,NULL,1),(4,'JDBC',NULL,NULL,1),(5,'SPRING',NULL,NULL,1),(6,'HIBERNATE',NULL,NULL,1),(7,'STRUTS',NULL,NULL,1);

/*Table structure for table `upload1` */

DROP TABLE IF EXISTS `upload1`;

CREATE TABLE `upload1` (
  `JAR_ID` int(20) NOT NULL AUTO_INCREMENT,
  `JAR_TYPE` varchar(50) NOT NULL,
  `NAME_OF_JAR` varchar(50) NOT NULL,
  `PATH_OF_JAR` varchar(200) NOT NULL,
  PRIMARY KEY (`JAR_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `upload1` */

/*Table structure for table `year` */

DROP TABLE IF EXISTS `year`;

CREATE TABLE `year` (
  `YEAR_ID` int(60) NOT NULL AUTO_INCREMENT,
  `YEAR` varchar(80) DEFAULT NULL,
  `IS_DELETED` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`YEAR_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

/*Data for the table `year` */

insert  into `year`(`YEAR_ID`,`YEAR`,`IS_DELETED`) values (1,'2013',1),(2,'2014',1);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!alter query for reference , remark, handled by*/

alter table `aartek14_prestigepoint_db`.`registration` 
   add column `HANDLEDBY` varchar(60) NULL after `password`, 
   add column `REFERENCE` varchar(60) NULL after `HANDLEDBY`, 
   add column `REMARK` varchar(120) NULL after `REFERENCE`

   /*Scirpt for alter status in enquiry table from varchar to int*/
alter table `aartek14_prestigepoint_db`.`enquiry` 
   change `status` `status` int(10) NULL 
   
   --Alter Course table (add new coloumn)  
   alter table `aartek14_prestigepoint_db`.`course` 
   add column `ADMIN_LOGIN_ID` int(60) NULL after `IS_DELETED`
   
--   alter query for enqiury to add more columns in existing table
   
   alter table `aartek14_prestigepoint_db`.`enquiry` 
   add column `QUALIFICATION` varchar(60) NULL after `SUBJECT`, 
    add column `ENQUIRY_BY` varchar(60) NULL after `QUALIFICATION`, 
    add column `LAST_NAME` varchar(60) NULL after `ENQUIRY_BY`, 
   add column `COLLAGE` varchar(60) NULL after `LAST_NAME`, 
   add column `REFERENCE_NAME` varchar(60) NULL after `COLLAGE`, 
   add column `REFERENCER_MOBILE_NO` varchar(60) NULL after `REFERENCE_NAME`, 
   add column `TRAINING_TYPE` varchar(60) NULL after `REFERENCER_MOBILE_NO`, 
   add column `HANDLED_BY` varchar(60) NULL after `TRAINING_TYPE`
   
   
   alter table `aartek14_prestigepoint_db`.`enquiry` 
   add column `Response` int(10) NULL after `HANDLED_BY`,
   add column `status` int(10) NULL after `Response`
   
   
--   alter query for enqiury to change the NAME to FIRST_NAME
   alter table `aartek14_prestigepoint_db`.`enquiry` 
   change `FIRST_NAME` `NAME` varchar(60) character set utf8 collate utf8_general_ci NULL 