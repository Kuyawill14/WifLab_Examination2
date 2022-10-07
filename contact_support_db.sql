/*
SQLyog Ultimate v12.4.3 (64 bit)
MySQL - 8.0.20 : Database - contact_support_db
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`contact_support_db` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `contact_support_db`;

/*Table structure for table `tbl_support_ticket` */

DROP TABLE IF EXISTS `tbl_support_ticket`;

CREATE TABLE `tbl_support_ticket` (
  `id` int NOT NULL AUTO_INCREMENT,
  `full_name` varchar(64) DEFAULT NULL,
  `email_address` varchar(64) DEFAULT NULL,
  `mobile_number` int DEFAULT NULL,
  `ticket_subject` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `ticket_body` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `tbl_support_ticket` */

insert  into `tbl_support_ticket`(`id`,`full_name`,`email_address`,`mobile_number`,`ticket_subject`,`ticket_body`,`created_at`) values 
(11,'Hilel Mclean','witisylu@mailinator.com',56,'Sit fugiat possimus','Mollitia ea dolor im','2022-10-06 09:14:19'),
(12,'Hilary Ellis','caza@mailinator.com',817,'Quaerat rerum molest','Natus accusantium ut','2022-10-06 09:15:09'),
(13,'Patricia Richards','bowo@mailinator.com',805,'Animi doloribus et ','Quo quis distinctio','2022-10-06 09:23:14'),
(14,'Patricia Richards','bowo@mailinator.com',805,'Animi doloribus et ','Quo quis distinctio','2022-10-06 09:41:52'),
(15,'Patricia Richards','bowo@mailinator.com',805,'Animi doloribus et ','Quo quis distinctio','2022-10-06 09:42:23'),
(16,'Kevyn Hurst','hyryho@mailinator.com',82,'Quo ut cillum molest','Ex in quasi nesciunt','2022-10-06 09:43:26'),
(17,'Hyacinth Albert','magaoaywilson14@gmail.com',922,'Velit obcaecati temp','Aliquid quas laboris','2022-10-06 09:45:44'),
(18,'Kaitlin Church','magaoaywilson14@gmail.com',987,'Quis in et accusamus','Velit quidem eum odi','2022-10-06 09:47:42'),
(19,'Jennifer Kaufman','sodehe@mailinator.com',133,'Et assumenda ea faci','Dignissimos numquam ','2022-10-06 09:53:50'),
(20,'Caleb Riley','byfejuno@mailinator.com',891,'Mollitia non volupta','Accusamus dolor in a','2022-10-06 09:54:46'),
(21,'Lucy Ochoa','vargasjeff27@gmail.com',538,'Corporis irure elige','Exercitation consect','2022-10-06 09:56:09'),
(22,'Driscoll Hughes','vargasjeff27@gmail.com',505,'Sequi officia eaque ','Quisquam eu sequi vo','2022-10-06 10:00:33'),
(23,'Felicia Watson','hida@mailinator.com',197,'Distinctio Aut repr','Dolore aut consectet','2022-10-06 10:01:32'),
(24,'Riley Chavez','voror@mailinator.com',523,'Lorem animi nostrud','Assumenda voluptas e','2022-10-06 10:03:56'),
(25,'Karyn Beasley','rizodysa@mailinator.com',337,'Consequatur non in s','Neque consequatur po','2022-10-06 10:04:47'),
(26,'Constance Peterson','qizo@mailinator.com',103,'Odit quae aperiam qu','Nulla Nam dolorem mi','2022-10-06 10:06:46'),
(27,'Castor Mooney','havo@mailinator.com',514,'Neque sit qui iste o','Excepteur veniam cu','2022-10-06 10:08:34'),
(28,'Randall Peters','quzily@mailinator.com',929,'Similique qui vero i','Nulla do cupiditate ','2022-10-06 10:10:04'),
(29,'Sybill Serrano','necihowuro@mailinator.com',984,'Quas excepturi dolor','Quibusdam eos autem','2022-10-06 10:10:36'),
(30,'Iona Mayo','suvuviri@mailinator.com',588,'Quis tempore repreh','Est possimus qui of','2022-10-06 10:12:32'),
(31,'Iona Mayo','suvuviri@mailinator.com',588,'Quis tempore repreh','Est possimus qui of','2022-10-06 10:20:33'),
(32,'Leigh Espinoza','vargasjeff27@gmail.com',571,'Officia nulla quasi ','Asperiores placeat ','2022-10-06 10:24:12'),
(33,'Bradley Lewis','magaoaywilson14@gmail.com',274,'Veniam velit quam ','Et ducimus ipsum t','2022-10-06 10:26:59'),
(34,'Teegan Woodward','xoluv@mailinator.com',498,'Quasi neque commodi ','Ut dicta nobis eu li','2022-10-06 10:41:47'),
(35,'Clio Rios','fyfug@mailinator.com',276,'Ipsum ipsam eius no','Et cupidatat qui vol','2022-10-06 10:46:53'),
(36,'Eliana Davidson','kyqud@mailinator.com',640,'Sed quas ex architec','Sit dicta quia opti','2022-10-06 10:50:37'),
(37,'Neville Green','judenywuwy@mailinator.com',881,'Distinctio Cum opti','Fugiat pariatur Re','2022-10-06 10:59:38');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
