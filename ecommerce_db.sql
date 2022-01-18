-- MySQL dump 10.13  Distrib 8.0.27, for Win64 (x86_64)
--
-- Host: localhost    Database: ecommerce_db
-- ------------------------------------------------------
-- Server version	8.0.27

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `group_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_permission` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=73 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add content type',4,'add_contenttype'),(14,'Can change content type',4,'change_contenttype'),(15,'Can delete content type',4,'delete_contenttype'),(16,'Can view content type',4,'view_contenttype'),(17,'Can add session',5,'add_session'),(18,'Can change session',5,'change_session'),(19,'Can delete session',5,'delete_session'),(20,'Can view session',5,'view_session'),(21,'Can add category',6,'add_category'),(22,'Can change category',6,'change_category'),(23,'Can delete category',6,'delete_category'),(24,'Can view category',6,'view_category'),(25,'Can add category list',7,'add_categorylist'),(26,'Can change category list',7,'change_categorylist'),(27,'Can delete category list',7,'delete_categorylist'),(28,'Can view category list',7,'view_categorylist'),(29,'Can add order',8,'add_order'),(30,'Can change order',8,'change_order'),(31,'Can delete order',8,'delete_order'),(32,'Can view order',8,'view_order'),(33,'Can add product',9,'add_product'),(34,'Can change product',9,'change_product'),(35,'Can delete product',9,'delete_product'),(36,'Can view product',9,'view_product'),(37,'Can add user',10,'add_customers'),(38,'Can change user',10,'change_customers'),(39,'Can delete user',10,'delete_customers'),(40,'Can view user',10,'view_customers'),(41,'Can add productdetail',11,'add_productdetail'),(42,'Can change productdetail',11,'change_productdetail'),(43,'Can delete productdetail',11,'delete_productdetail'),(44,'Can view productdetail',11,'view_productdetail'),(45,'Can add payment',12,'add_payment'),(46,'Can change payment',12,'change_payment'),(47,'Can delete payment',12,'delete_payment'),(48,'Can view payment',12,'view_payment'),(49,'Can add order detail',13,'add_orderdetail'),(50,'Can change order detail',13,'change_orderdetail'),(51,'Can delete order detail',13,'delete_orderdetail'),(52,'Can view order detail',13,'view_orderdetail'),(53,'Can add application',14,'add_application'),(54,'Can change application',14,'change_application'),(55,'Can delete application',14,'delete_application'),(56,'Can view application',14,'view_application'),(57,'Can add access token',15,'add_accesstoken'),(58,'Can change access token',15,'change_accesstoken'),(59,'Can delete access token',15,'delete_accesstoken'),(60,'Can view access token',15,'view_accesstoken'),(61,'Can add grant',16,'add_grant'),(62,'Can change grant',16,'change_grant'),(63,'Can delete grant',16,'delete_grant'),(64,'Can view grant',16,'view_grant'),(65,'Can add refresh token',17,'add_refreshtoken'),(66,'Can change refresh token',17,'change_refreshtoken'),(67,'Can delete refresh token',17,'delete_refreshtoken'),(68,'Can view refresh token',17,'view_refreshtoken'),(69,'Can add id token',18,'add_idtoken'),(70,'Can change id token',18,'change_idtoken'),(71,'Can delete id token',18,'delete_idtoken'),(72,'Can view id token',18,'view_idtoken');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_admin_log` (
  `id` int NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int DEFAULT NULL,
  `user_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_EcommerceApp_customers_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_EcommerceApp_customers_id` FOREIGN KEY (`user_id`) REFERENCES `ecommerceapp_customers` (`id`),
  CONSTRAINT `django_admin_log_chk_1` CHECK ((`action_flag` >= 0))
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2021-12-09 04:55:06.571493','1','CategoryList object (1)',1,'[{\"added\": {}}]',7,1),(2,'2021-12-09 04:55:16.272865','1','Áo thun',1,'[{\"added\": {}}]',6,1),(3,'2021-12-09 04:58:10.816597','1','áo thun đen',1,'[{\"added\": {}}, {\"added\": {\"name\": \"productdetail\", \"object\": \"Productdetail object (1)\"}}, {\"added\": {\"name\": \"productdetail\", \"object\": \"Productdetail object (2)\"}}]',9,1),(4,'2021-12-09 05:00:09.081962','2','áo thun xanh',1,'[{\"added\": {}}, {\"added\": {\"name\": \"productdetail\", \"object\": \"Productdetail object (3)\"}}, {\"added\": {\"name\": \"productdetail\", \"object\": \"Productdetail object (4)\"}}]',9,1),(5,'2021-12-09 05:13:50.639920','1','áo thun đen',2,'[{\"changed\": {\"name\": \"productdetail\", \"object\": \"Productdetail object (1)\", \"fields\": [\"Quantity\"]}}, {\"changed\": {\"name\": \"productdetail\", \"object\": \"Productdetail object (2)\", \"fields\": [\"Quantity\"]}}]',9,1),(6,'2021-12-09 05:23:05.999063','1','longloc',2,'[{\"changed\": {\"fields\": [\"First name\", \"Last name\", \"Customers/\", \"Address\"]}}]',10,1),(7,'2021-12-09 05:23:23.079961','1','longloc',2,'[{\"changed\": {\"fields\": [\"Customers/\"]}}]',10,1),(8,'2021-12-11 04:26:20.647700','2','CategoryList object (2)',1,'[{\"added\": {}}]',7,1),(9,'2021-12-11 04:26:30.331466','2','Quần jean',1,'[{\"added\": {}}]',6,1),(10,'2021-12-11 04:28:25.973847','3','Quan jean dung samsung z flip3',1,'[{\"added\": {}}, {\"added\": {\"name\": \"productdetail\", \"object\": \"Productdetail object (5)\"}}, {\"added\": {\"name\": \"productdetail\", \"object\": \"Productdetail object (6)\"}}, {\"added\": {\"name\": \"productdetail\", \"object\": \"Productdetail object (7)\"}}]',9,1),(11,'2021-12-11 04:29:44.386747','3','Quan jean dung samsung z flip3',2,'[{\"changed\": {\"fields\": [\"Image\"]}}]',9,1),(12,'2021-12-11 04:30:11.081682','3','Quan jean dung samsung z flip3',2,'[{\"added\": {\"name\": \"productdetail\", \"object\": \"Productdetail object (8)\"}}]',9,1),(13,'2021-12-11 04:33:22.016260','3','Quan jean dung samsung z flip3',2,'[]',9,1),(14,'2021-12-11 04:35:18.673187','3','Ao hoodie',1,'[{\"added\": {}}]',6,1),(15,'2021-12-11 04:36:10.297611','4','Ao hoodie hong canh sen',1,'[{\"added\": {}}, {\"added\": {\"name\": \"productdetail\", \"object\": \"Productdetail object (9)\"}}, {\"added\": {\"name\": \"productdetail\", \"object\": \"Productdetail object (10)\"}}]',9,1),(16,'2021-12-11 04:37:09.380823','4','Ao hoodie hong canh sen',2,'[{\"changed\": {\"fields\": [\"Image\"]}}]',9,1),(17,'2021-12-11 04:39:31.558704','1','Ao thun',2,'[{\"changed\": {\"fields\": [\"Name\"]}}]',6,1),(18,'2021-12-11 05:06:33.684245','1','Aothun',2,'[{\"changed\": {\"fields\": [\"Name\"]}}]',6,1),(19,'2021-12-11 05:06:39.086336','3','Aohoodie',2,'[{\"changed\": {\"fields\": [\"Name\"]}}]',6,1),(20,'2021-12-12 10:57:26.836488','4','Ao hoodie hong canh sen',3,'',9,1),(21,'2021-12-12 10:57:26.890483','3','Quan jean dung samsung z flip3',3,'',9,1),(22,'2021-12-12 11:06:10.019151','5','Quan jean',1,'[{\"added\": {}}, {\"added\": {\"name\": \"productdetail\", \"object\": \"Productdetail object (11)\"}}]',9,1),(23,'2021-12-12 11:06:44.172959','5','Quan jean',2,'[{\"changed\": {\"fields\": [\"Image\"]}}]',9,1),(24,'2022-01-03 04:57:49.543132','6','ao hoodie xam1',1,'[{\"added\": {}}, {\"added\": {\"name\": \"productdetail\", \"object\": \"Productdetail object (12)\"}}]',9,1),(25,'2022-01-04 05:03:53.351202','5','Quan jean',2,'[{\"changed\": {\"fields\": [\"Price\"]}}]',9,1),(26,'2022-01-04 05:16:54.993154','7','ao do',1,'[{\"added\": {}}, {\"added\": {\"name\": \"productdetail\", \"object\": \"Productdetail object (13)\"}}, {\"added\": {\"name\": \"productdetail\", \"object\": \"Productdetail object (14)\"}}, {\"added\": {\"name\": \"productdetail\", \"object\": \"Productdetail object (15)\"}}]',9,1),(27,'2022-01-04 05:17:43.983517','8','Ao hoodie den',1,'[{\"added\": {}}, {\"added\": {\"name\": \"productdetail\", \"object\": \"Productdetail object (16)\"}}]',9,1),(28,'2022-01-04 05:18:45.177563','4','quan ngan',1,'[{\"added\": {}}]',6,1),(29,'2022-01-04 05:23:17.491321','9','quan ngan den',1,'[{\"added\": {}}, {\"added\": {\"name\": \"productdetail\", \"object\": \"Productdetail object (17)\"}}]',9,1),(30,'2022-01-04 05:24:50.154812','5','quan thun dai',1,'[{\"added\": {}}]',6,1),(31,'2022-01-04 05:25:08.826554','10','quan thun den',1,'[{\"added\": {}}, {\"added\": {\"name\": \"productdetail\", \"object\": \"Productdetail object (18)\"}}]',9,1),(32,'2022-01-04 05:25:35.739127','3','vo',1,'[{\"added\": {}}]',7,1),(33,'2022-01-04 05:25:45.946732','6','vo dai',1,'[{\"added\": {}}]',6,1),(34,'2022-01-04 05:26:10.367668','11','vo den',1,'[{\"added\": {}}, {\"added\": {\"name\": \"productdetail\", \"object\": \"Productdetail object (19)\"}}]',9,1),(35,'2022-01-04 05:26:38.108745','7','vo ngan',1,'[{\"added\": {}}]',6,1),(36,'2022-01-04 05:26:51.315857','12','vo do',1,'[{\"added\": {}}, {\"added\": {\"name\": \"productdetail\", \"object\": \"Productdetail object (20)\"}}]',9,1),(37,'2022-01-04 05:32:32.196011','9','quan ngan den',2,'[{\"changed\": {\"fields\": [\"Image\"]}}]',9,1),(38,'2022-01-04 05:38:48.841595','4','quan ngan',2,'[{\"changed\": {\"fields\": [\"CategoryList\"]}}]',6,1),(39,'2022-01-04 05:38:52.059737','9','quan ngan den',2,'[]',9,1),(40,'2022-01-04 05:39:39.743554','9','quan ngan den',2,'[{\"changed\": {\"fields\": [\"Image\"]}}]',9,1),(41,'2022-01-04 05:39:49.930531','4','quan ngan',2,'[]',6,1),(42,'2022-01-04 05:39:52.873391','9','quan ngan den',2,'[]',9,1),(43,'2022-01-08 10:51:54.900225','5','Quan jean',2,'[{\"changed\": {\"fields\": [\"Price\"]}}]',9,1),(44,'2022-01-08 11:01:17.773948','5','Quan jean xanh sieu ben',2,'[{\"changed\": {\"fields\": [\"Image\", \"Name\"]}}]',9,1);
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_content_type` (
  `id` int NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'contenttypes','contenttype'),(6,'EcommerceApp','category'),(7,'EcommerceApp','categorylist'),(10,'EcommerceApp','customers'),(8,'EcommerceApp','order'),(13,'EcommerceApp','orderdetail'),(12,'EcommerceApp','payment'),(9,'EcommerceApp','product'),(11,'EcommerceApp','productdetail'),(15,'oauth2_provider','accesstoken'),(14,'oauth2_provider','application'),(16,'oauth2_provider','grant'),(18,'oauth2_provider','idtoken'),(17,'oauth2_provider','refreshtoken'),(5,'sessions','session');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_migrations` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2021-12-06 10:28:34.663659'),(2,'contenttypes','0002_remove_content_type_name','2021-12-06 10:28:34.840647'),(3,'auth','0001_initial','2021-12-06 10:28:35.410612'),(4,'auth','0002_alter_permission_name_max_length','2021-12-06 10:28:35.527606'),(5,'auth','0003_alter_user_email_max_length','2021-12-06 10:28:35.542604'),(6,'auth','0004_alter_user_username_opts','2021-12-06 10:28:35.557605'),(7,'auth','0005_alter_user_last_login_null','2021-12-06 10:28:35.570605'),(8,'auth','0006_require_contenttypes_0002','2021-12-06 10:28:35.575603'),(9,'auth','0007_alter_validators_add_error_messages','2021-12-06 10:28:35.589603'),(10,'auth','0008_alter_user_username_max_length','2021-12-06 10:28:35.605600'),(11,'auth','0009_alter_user_last_name_max_length','2021-12-06 10:28:35.618599'),(12,'auth','0010_alter_group_name_max_length','2021-12-06 10:28:35.654598'),(13,'auth','0011_update_proxy_permissions','2021-12-06 10:28:35.669600'),(14,'auth','0012_alter_user_first_name_max_length','2021-12-06 10:28:35.685595'),(15,'EcommerceApp','0001_initial','2021-12-06 10:28:37.669472'),(16,'admin','0001_initial','2021-12-06 10:28:37.934454'),(17,'admin','0002_logentry_remove_auto_add','2021-12-06 10:28:37.953453'),(18,'admin','0003_logentry_add_action_flag_choices','2021-12-06 10:28:37.973452'),(19,'sessions','0001_initial','2021-12-06 10:28:38.058453'),(20,'EcommerceApp','0002_auto_20211207_1357','2021-12-07 06:59:09.949239'),(21,'oauth2_provider','0001_initial','2021-12-07 06:59:11.538140'),(22,'oauth2_provider','0002_auto_20190406_1805','2021-12-07 06:59:11.735127'),(23,'oauth2_provider','0003_auto_20201211_1314','2021-12-07 06:59:11.924116'),(24,'oauth2_provider','0004_auto_20200902_2022','2021-12-07 06:59:12.866059'),(25,'EcommerceApp','0003_auto_20211207_1404','2021-12-07 07:05:33.869202'),(26,'EcommerceApp','0004_auto_20211209_1148','2021-12-09 04:48:32.463939'),(27,'EcommerceApp','0005_auto_20211209_1156','2021-12-09 04:56:13.246188');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('s2h0z7439xakx3km0qmonjqsf7i7ni0x','.eJxVjL0OwyAQg9-FuUKBhL-O3fMMCO6OkrYCKSRT1XcvkTK0i2X5s_1mPuxb9nuj1S_Irkywy28WAzypHAAfodwrh1q2dYn8qPCTNj5XpNft7P4d5NByXyfjJkswiGCsACMHhDTqLjpKisaMyk5Cuu6iQIcASVkrrFZGkyKX2OcL6FM3-w:1n4FOQ:4EdtgMD5B5wkjkCc_-k5z1RAwEJvEY_NzVNwwoyGiIs','2022-01-17 04:56:22.962759'),('tpu4k3t1rwfuezpfgjcelajukqyujxr1','.eJxVjL0OwyAQg9-FuUKBhL-O3fMMCO6OkrYCKSRT1XcvkTK0i2X5s_1mPuxb9nuj1S_Irkywy28WAzypHAAfodwrh1q2dYn8qPCTNj5XpNft7P4d5NByXyfjJkswiGCsACMHhDTqLjpKisaMyk5Cuu6iQIcASVkrrFZGkyKX2OcL6FM3-w:1n65oK:L1778zLQlzW8gH-EmWr6qcnmMBkc5Jkr0yToPeGVmpI','2022-01-22 07:06:44.122405'),('w41x3u9f0agcup1qgerbyfm8ionbj511','.eJxVjL0OwyAQg9-FuUKBhL-O3fMMCO6OkrYCKSRT1XcvkTK0i2X5s_1mPuxb9nuj1S_Irkywy28WAzypHAAfodwrh1q2dYn8qPCTNj5XpNft7P4d5NByXyfjJkswiGCsACMHhDTqLjpKisaMyk5Cuu6iQIcASVkrrFZGkyKX2OcL6FM3-w:1mvBsP:eO1Rwx2ejlJeKKZCxugskeqWpnTJDJcRxM9KDgKcFhE','2021-12-23 05:21:53.371752');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ecommerceapp_category`
--

DROP TABLE IF EXISTS `ecommerceapp_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ecommerceapp_category` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `categoryList_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `EcommerceApp_categor_categoryList_id_a852e9b4_fk_Ecommerce` (`categoryList_id`),
  CONSTRAINT `EcommerceApp_categor_categoryList_id_a852e9b4_fk_Ecommerce` FOREIGN KEY (`categoryList_id`) REFERENCES `ecommerceapp_categorylist` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ecommerceapp_category`
--

LOCK TABLES `ecommerceapp_category` WRITE;
/*!40000 ALTER TABLE `ecommerceapp_category` DISABLE KEYS */;
INSERT INTO `ecommerceapp_category` VALUES (1,'Aothun',1),(2,'Quần jean',2),(3,'Aohoodie',1),(4,'quan ngan',2),(5,'quan thun dai',2),(6,'vo dai',3),(7,'vo ngan',3);
/*!40000 ALTER TABLE `ecommerceapp_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ecommerceapp_categorylist`
--

DROP TABLE IF EXISTS `ecommerceapp_categorylist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ecommerceapp_categorylist` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(1000) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ecommerceapp_categorylist`
--

LOCK TABLES `ecommerceapp_categorylist` WRITE;
/*!40000 ALTER TABLE `ecommerceapp_categorylist` DISABLE KEYS */;
INSERT INTO `ecommerceapp_categorylist` VALUES (1,'Áo'),(2,'Quần'),(3,'vo');
/*!40000 ALTER TABLE `ecommerceapp_categorylist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ecommerceapp_customers`
--

DROP TABLE IF EXISTS `ecommerceapp_customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ecommerceapp_customers` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  `avatar` varchar(100) NOT NULL,
  `address` varchar(100) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone` varchar(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`),
  UNIQUE KEY `phone` (`phone`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ecommerceapp_customers`
--

LOCK TABLES `ecommerceapp_customers` WRITE;
/*!40000 ALTER TABLE `ecommerceapp_customers` DISABLE KEYS */;
INSERT INTO `ecommerceapp_customers` VALUES (1,'pbkdf2_sha256$260000$jVBVzdiyFq1dFwtnl4iTZr$lOu9075IUbYMu3MasmgQXwRcXxzNxqXLGYJnloWrnNg=','2022-01-08 07:06:44.105381',1,'longloc','long','tran',1,1,'2021-12-07 07:01:16.876293','','dsadas','a@gmail.com',''),(2,'pbkdf2_sha256$260000$cQXf3xOZCqJM0noCrRN5jU$kkqVtqXP+56+A7so+d4aet4NTaBlH1ci/fqJsN9BaRA=',NULL,0,'haichien','','',0,1,'2021-12-09 05:20:40.616450','','khongco','hai123@gmail.com','03254812'),(3,'pbkdf2_sha256$260000$8rV49ZsxK3BsIAIzQGMoVm$JPZJMfqbwHbeb7Zv+r3KfWSIIOIiNF/4RRAi1VLP6lg=',NULL,0,'dsadsa','dsadsa','dasd',0,1,'2022-01-08 10:46:12.585274','','dsadas','anhtuan@gmail.com','321321');
/*!40000 ALTER TABLE `ecommerceapp_customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ecommerceapp_customers_groups`
--

DROP TABLE IF EXISTS `ecommerceapp_customers_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ecommerceapp_customers_groups` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `customers_id` bigint NOT NULL,
  `group_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `EcommerceApp_customers_g_customers_id_group_id_ce6feec7_uniq` (`customers_id`,`group_id`),
  KEY `EcommerceApp_customers_groups_group_id_3df89fab_fk_auth_group_id` (`group_id`),
  CONSTRAINT `EcommerceApp_custome_customers_id_03f8987b_fk_Ecommerce` FOREIGN KEY (`customers_id`) REFERENCES `ecommerceapp_customers` (`id`),
  CONSTRAINT `EcommerceApp_customers_groups_group_id_3df89fab_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ecommerceapp_customers_groups`
--

LOCK TABLES `ecommerceapp_customers_groups` WRITE;
/*!40000 ALTER TABLE `ecommerceapp_customers_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `ecommerceapp_customers_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ecommerceapp_customers_user_permissions`
--

DROP TABLE IF EXISTS `ecommerceapp_customers_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ecommerceapp_customers_user_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `customers_id` bigint NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `EcommerceApp_customers_u_customers_id_permission__04e4a1ac_uniq` (`customers_id`,`permission_id`),
  KEY `EcommerceApp_custome_permission_id_49cb2b17_fk_auth_perm` (`permission_id`),
  CONSTRAINT `EcommerceApp_custome_customers_id_681f754d_fk_Ecommerce` FOREIGN KEY (`customers_id`) REFERENCES `ecommerceapp_customers` (`id`),
  CONSTRAINT `EcommerceApp_custome_permission_id_49cb2b17_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ecommerceapp_customers_user_permissions`
--

LOCK TABLES `ecommerceapp_customers_user_permissions` WRITE;
/*!40000 ALTER TABLE `ecommerceapp_customers_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `ecommerceapp_customers_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ecommerceapp_order`
--

DROP TABLE IF EXISTS `ecommerceapp_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ecommerceapp_order` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `total` bigint NOT NULL,
  `created_date` datetime(6) NOT NULL,
  `status` int NOT NULL,
  `payment_type` int NOT NULL,
  `customers_id` bigint NOT NULL,
  `shipped_date` datetime(6) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `EcommerceApp_order_customers_id_412b9ffe_fk_Ecommerce` (`customers_id`),
  CONSTRAINT `EcommerceApp_order_customers_id_412b9ffe_fk_Ecommerce` FOREIGN KEY (`customers_id`) REFERENCES `ecommerceapp_customers` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ecommerceapp_order`
--

LOCK TABLES `ecommerceapp_order` WRITE;
/*!40000 ALTER TABLE `ecommerceapp_order` DISABLE KEYS */;
INSERT INTO `ecommerceapp_order` VALUES (1,20000,'2021-12-09 04:48:39.830461',1,1,1,NULL),(2,20000,'2021-12-09 05:00:24.978935',1,1,1,NULL),(3,20000,'2021-12-09 05:01:25.327039',1,1,1,NULL),(4,20000,'2021-12-09 05:04:29.010179',1,1,1,NULL),(5,20000,'2021-12-09 05:04:57.733325',1,1,1,NULL),(6,20000,'2021-12-09 05:05:49.147007',1,1,1,NULL),(7,20000,'2021-12-09 05:06:19.684034',1,1,1,NULL),(8,20000,'2021-12-09 05:08:22.196124',1,1,1,NULL),(10,20000,'2021-12-09 05:10:00.126801',1,1,1,NULL),(11,20000,'2021-12-09 05:13:01.617084',1,1,1,NULL),(13,0,'2021-12-27 11:01:46.441923',1,1,1,NULL),(14,0,'2021-12-27 11:02:35.263859',1,1,1,NULL),(15,0,'2021-12-27 11:03:10.537642',1,1,1,NULL),(16,0,'2021-12-27 11:04:23.104085',1,1,1,NULL),(17,0,'2021-12-27 11:05:11.900021',1,1,1,NULL),(18,0,'2021-12-27 11:06:06.970562',1,1,1,NULL),(19,0,'2021-12-27 11:06:13.598147',1,1,1,NULL),(20,0,'2021-12-27 11:06:34.622827',1,1,1,NULL),(21,0,'2021-12-27 11:06:37.105670',1,1,1,NULL),(22,0,'2021-12-27 11:07:51.861977',1,1,1,NULL),(23,0,'2022-01-03 03:40:34.496847',1,1,1,NULL),(24,0,'2022-01-03 03:42:49.219384',1,1,1,NULL),(25,2200000,'2022-01-03 03:51:27.290853',1,1,1,NULL),(26,2200000,'2022-01-03 03:52:29.686934',1,1,1,NULL),(27,2200000,'2022-01-03 03:52:39.882294',1,1,1,NULL),(28,2200000,'2022-01-03 03:56:51.756480',1,1,1,NULL),(29,2200000,'2022-01-03 03:59:40.278896',1,1,1,NULL),(30,2200000,'2022-01-03 04:05:41.232230',1,1,1,NULL),(31,2200000,'2022-01-03 04:06:03.683823',1,1,1,NULL),(32,2200000,'2022-01-04 04:50:19.128569',1,1,1,NULL),(33,2200000,'2022-01-04 05:02:21.904459',1,1,1,NULL),(34,2000,'2022-01-04 05:04:10.537320',1,1,1,NULL),(35,2000,'2022-01-04 05:05:00.522593',1,1,1,NULL),(36,2000000,'2022-01-08 10:46:27.453821',1,1,3,NULL),(37,6004000,'2022-01-08 10:50:01.512346',1,1,3,NULL),(38,2000000,'2022-01-08 10:50:12.680574',1,1,3,NULL),(39,1000,'2022-01-08 10:52:08.281815',1,1,3,NULL);
/*!40000 ALTER TABLE `ecommerceapp_order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ecommerceapp_orderdetail`
--

DROP TABLE IF EXISTS `ecommerceapp_orderdetail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ecommerceapp_orderdetail` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `quantity` int NOT NULL,
  `order_id` bigint NOT NULL,
  `product_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `EcommerceApp_orderde_order_id_6899fc2c_fk_Ecommerce` (`order_id`),
  KEY `EcommerceApp_orderde_product_id_46227200_fk_Ecommerce` (`product_id`),
  CONSTRAINT `EcommerceApp_orderde_order_id_6899fc2c_fk_Ecommerce` FOREIGN KEY (`order_id`) REFERENCES `ecommerceapp_order` (`id`),
  CONSTRAINT `EcommerceApp_orderde_product_id_46227200_fk_Ecommerce` FOREIGN KEY (`product_id`) REFERENCES `ecommerceapp_productdetail` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=66 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ecommerceapp_orderdetail`
--

LOCK TABLES `ecommerceapp_orderdetail` WRITE;
/*!40000 ALTER TABLE `ecommerceapp_orderdetail` DISABLE KEYS */;
INSERT INTO `ecommerceapp_orderdetail` VALUES (1,2,2,1),(2,3,2,2),(3,2,3,1),(4,3,3,2),(5,2,4,1),(6,3,4,2),(7,2,5,1),(8,3,5,2),(9,2,6,1),(10,3,6,2),(11,2,7,1),(12,3,7,2),(13,2,8,1),(14,3,8,2),(16,2,10,1),(17,2,10,2),(18,2,11,1),(19,1,13,1),(20,1,13,3),(21,1,14,1),(22,1,14,3),(23,1,15,1),(24,1,15,3),(25,1,16,1),(26,1,16,3),(27,1,17,1),(28,1,17,3),(29,1,18,1),(30,1,18,3),(31,1,19,1),(32,1,19,3),(33,1,20,1),(34,1,20,3),(35,1,21,1),(36,1,21,3),(37,1,22,1),(38,1,22,3),(39,1,23,11),(40,1,23,3),(41,1,24,11),(42,1,24,3),(43,1,25,11),(44,1,25,3),(45,1,26,11),(46,1,26,3),(47,1,27,11),(48,1,27,3),(49,1,28,11),(50,1,28,3),(51,1,29,11),(52,1,29,3),(53,1,30,11),(54,1,30,3),(55,1,31,11),(56,1,31,3),(57,1,32,3),(58,1,32,11),(59,1,33,3),(60,1,33,11),(61,1,34,11),(62,1,35,11),(63,1,36,3),(64,1,38,1),(65,1,39,11);
/*!40000 ALTER TABLE `ecommerceapp_orderdetail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ecommerceapp_payment`
--

DROP TABLE IF EXISTS `ecommerceapp_payment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ecommerceapp_payment` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `momo_id` bigint NOT NULL,
  `order_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `order_id` (`order_id`),
  CONSTRAINT `EcommerceApp_payment_order_id_6c6e05fd_fk_EcommerceApp_order_id` FOREIGN KEY (`order_id`) REFERENCES `ecommerceapp_order` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ecommerceapp_payment`
--

LOCK TABLES `ecommerceapp_payment` WRITE;
/*!40000 ALTER TABLE `ecommerceapp_payment` DISABLE KEYS */;
/*!40000 ALTER TABLE `ecommerceapp_payment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ecommerceapp_product`
--

DROP TABLE IF EXISTS `ecommerceapp_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ecommerceapp_product` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `image` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` bigint NOT NULL,
  `description` varchar(200) NOT NULL,
  `category_id` bigint NOT NULL,
  `created_date` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `EcommerceApp_product_category_id_147a20d2_fk_Ecommerce` (`category_id`),
  CONSTRAINT `EcommerceApp_product_category_id_147a20d2_fk_Ecommerce` FOREIGN KEY (`category_id`) REFERENCES `ecommerceapp_category` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ecommerceapp_product`
--

LOCK TABLES `ecommerceapp_product` WRITE;
/*!40000 ALTER TABLE `ecommerceapp_product` DISABLE KEYS */;
INSERT INTO `ecommerceapp_product` VALUES (1,'product/áo_đen.jpg','áo thun đen',2000000,'Cotton 100%',1,'2021-12-09 04:58:10.804597'),(2,'product/áo_xanh.jpg','áo thun xanh',2000000,'Cotton 100%',1,'2021-12-09 05:00:09.071961'),(5,'product/dép_đen.jpg','Quan jean xanh sieu ben',1000,'quan jean xanh',2,'2021-12-12 11:06:09.963271'),(6,'product/Áo_hoodie_xám.jpg','ao hoodie xam1',300000,'Cotton 100%',3,'2022-01-03 04:57:49.524133'),(7,'product/áo_đỏ.jpg','ao do',2000,'Cotton 100%',1,'2022-01-04 05:16:54.986155'),(8,'product/Áo_hoodie_đen_2.jpg','Ao hoodie den',1000,'Cotton 100%',3,'2022-01-04 05:17:43.976937'),(9,'product/quần_ngắn_đen_tr26Ywc.jpg','quan ngan den',1000,'Cotton 100%',4,'2022-01-04 05:23:17.484323'),(10,'product/quần_thun_đen_DUhRHUx.jpg','quan thun den',500,'Cotton 100%',5,'2022-01-04 05:25:08.817552'),(11,'product/vớ_đen.jpg','vo den',500,'Cotton 100%',6,'2022-01-04 05:26:10.360668'),(12,'product/Vớ_đỏ.jpg','vo do',500,'Cotton 100%',7,'2022-01-04 05:26:51.311858');
/*!40000 ALTER TABLE `ecommerceapp_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ecommerceapp_productdetail`
--

DROP TABLE IF EXISTS `ecommerceapp_productdetail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ecommerceapp_productdetail` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `size` varchar(2) NOT NULL,
  `color` varchar(50) NOT NULL,
  `quantity` int NOT NULL,
  `product_id` bigint NOT NULL,
  `sold_quantity` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `EcommerceApp_product_product_id_7ebdf077_fk_Ecommerce` (`product_id`),
  CONSTRAINT `EcommerceApp_product_product_id_7ebdf077_fk_Ecommerce` FOREIGN KEY (`product_id`) REFERENCES `ecommerceapp_product` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ecommerceapp_productdetail`
--

LOCK TABLES `ecommerceapp_productdetail` WRITE;
/*!40000 ALTER TABLE `ecommerceapp_productdetail` DISABLE KEYS */;
INSERT INTO `ecommerceapp_productdetail` VALUES (1,'S','Black',9,1,31),(2,'L','Black',30,1,23),(3,'S','Green',8,2,22),(4,'M','Green',255,2,0),(11,'S','Black',16,5,14),(12,'S','Grey',100,6,0),(13,'S','red',30,7,20),(14,'L','red',30,7,10),(15,'XL','red',10,7,10),(16,'S','Black',50,8,40),(17,'S','Black',50,9,10),(18,'S','Black',45,10,4),(19,'S','Black',40,11,30),(20,'S','red',20,12,10);
/*!40000 ALTER TABLE `ecommerceapp_productdetail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth2_provider_accesstoken`
--

DROP TABLE IF EXISTS `oauth2_provider_accesstoken`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oauth2_provider_accesstoken` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `token` varchar(255) NOT NULL,
  `expires` datetime(6) NOT NULL,
  `scope` longtext NOT NULL,
  `application_id` bigint DEFAULT NULL,
  `user_id` bigint DEFAULT NULL,
  `created` datetime(6) NOT NULL,
  `updated` datetime(6) NOT NULL,
  `source_refresh_token_id` bigint DEFAULT NULL,
  `id_token_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `token` (`token`),
  UNIQUE KEY `source_refresh_token_id` (`source_refresh_token_id`),
  UNIQUE KEY `id_token_id` (`id_token_id`),
  KEY `oauth2_provider_acce_application_id_b22886e1_fk_oauth2_pr` (`application_id`),
  KEY `oauth2_provider_acce_user_id_6e4c9a65_fk_Ecommerce` (`user_id`),
  CONSTRAINT `oauth2_provider_acce_application_id_b22886e1_fk_oauth2_pr` FOREIGN KEY (`application_id`) REFERENCES `oauth2_provider_application` (`id`),
  CONSTRAINT `oauth2_provider_acce_id_token_id_85db651b_fk_oauth2_pr` FOREIGN KEY (`id_token_id`) REFERENCES `oauth2_provider_idtoken` (`id`),
  CONSTRAINT `oauth2_provider_acce_source_refresh_token_e66fbc72_fk_oauth2_pr` FOREIGN KEY (`source_refresh_token_id`) REFERENCES `oauth2_provider_refreshtoken` (`id`),
  CONSTRAINT `oauth2_provider_acce_user_id_6e4c9a65_fk_Ecommerce` FOREIGN KEY (`user_id`) REFERENCES `ecommerceapp_customers` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth2_provider_accesstoken`
--

LOCK TABLES `oauth2_provider_accesstoken` WRITE;
/*!40000 ALTER TABLE `oauth2_provider_accesstoken` DISABLE KEYS */;
INSERT INTO `oauth2_provider_accesstoken` VALUES (1,'cJoo9fk8NprZvl2q3uxNI5sqpo0j4U','2021-12-09 14:28:56.276876','read write',1,1,'2021-12-09 04:28:56.277876','2021-12-09 04:28:56.278876',NULL,NULL),(2,'fivdnXQwwQiNpTGPzX7lpiQkCgCfTd','2021-12-09 14:43:36.667034','read write',1,1,'2021-12-09 04:43:36.669034','2021-12-09 04:43:36.669034',NULL,NULL),(3,'qDfs7wIaRHJxM16KvoH3sVIxCHlV9U','2021-12-27 20:56:50.300517','read write',1,1,'2021-12-27 10:56:50.308518','2021-12-27 10:56:50.308518',NULL,NULL),(4,'97mFxtgp7YPUdOYNokbtBd0evLOfsB','2021-12-27 20:57:03.085717','read write',1,1,'2021-12-27 10:57:03.085717','2021-12-27 10:57:03.085717',NULL,NULL),(5,'hnzYPIM9yz2BD7FzsNyi64sBDB980b','2022-01-03 13:40:24.912445','read write',1,1,'2022-01-03 03:40:24.913446','2022-01-03 03:40:24.914447',NULL,NULL),(6,'CeOPApBWyWmysWKIYafBIlZQy9KnMP','2022-01-03 15:49:22.662187','read write',1,1,'2022-01-03 05:49:22.670186','2022-01-03 05:49:22.670186',NULL,NULL),(7,'gACseNQvGII6thd2J6FlRxffTZGW7O','2022-01-03 15:58:27.591655','read write',1,1,'2022-01-03 05:58:27.593654','2022-01-03 05:58:27.593654',NULL,NULL),(8,'xVi1LelKCbOXSp6R7G3I14Ihuiw6C9','2022-01-03 16:00:51.673575','read write',1,1,'2022-01-03 06:00:51.674576','2022-01-03 06:00:51.674576',NULL,NULL),(9,'Qd7loqn90AU7p4du4rThGF3Y3k4Aqr','2022-01-04 14:16:45.457022','read write',1,1,'2022-01-04 04:16:45.457022','2022-01-04 04:16:45.457022',NULL,NULL),(10,'QwnkTE5AfwO9jE0DbJ7Qjd8LoWHkk2','2022-01-04 14:18:11.530086','read write',1,1,'2022-01-04 04:18:11.530086','2022-01-04 04:18:11.530086',NULL,NULL),(11,'ckyT3RSYHLvvaF8snzPo0UJURQYk2q','2022-01-04 14:49:55.564904','read write',1,1,'2022-01-04 04:49:55.564904','2022-01-04 04:49:55.564904',NULL,NULL),(12,'3DDpts8SsCrTvn1VM9uTkAASZDxt2n','2022-01-04 14:49:56.685360','read write',1,1,'2022-01-04 04:49:56.686359','2022-01-04 04:49:56.686359',NULL,NULL),(13,'MdJS0skloDPwH5cTRWBOrw5dC3rWzj','2022-01-08 19:43:39.056694','read write',1,1,'2022-01-08 09:43:39.057694','2022-01-08 09:43:39.057694',NULL,NULL),(14,'aZ2l8ozPssQg2FXssjJgcZvLnyIARr','2022-01-08 19:44:01.493166','read write',1,1,'2022-01-08 09:44:01.494166','2022-01-08 09:44:01.494166',NULL,NULL),(15,'FDqpxmZsYOFbQlTZV2Vx1ACS51WQlx','2022-01-08 20:46:17.081770','read write',1,3,'2022-01-08 10:46:17.092792','2022-01-08 10:46:17.092792',NULL,NULL);
/*!40000 ALTER TABLE `oauth2_provider_accesstoken` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth2_provider_application`
--

DROP TABLE IF EXISTS `oauth2_provider_application`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oauth2_provider_application` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `client_id` varchar(100) NOT NULL,
  `redirect_uris` longtext NOT NULL,
  `client_type` varchar(32) NOT NULL,
  `authorization_grant_type` varchar(32) NOT NULL,
  `client_secret` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `user_id` bigint DEFAULT NULL,
  `skip_authorization` tinyint(1) NOT NULL,
  `created` datetime(6) NOT NULL,
  `updated` datetime(6) NOT NULL,
  `algorithm` varchar(5) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `client_id` (`client_id`),
  KEY `oauth2_provider_appl_user_id_79829054_fk_Ecommerce` (`user_id`),
  KEY `oauth2_provider_application_client_secret_53133678` (`client_secret`),
  CONSTRAINT `oauth2_provider_appl_user_id_79829054_fk_Ecommerce` FOREIGN KEY (`user_id`) REFERENCES `ecommerceapp_customers` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth2_provider_application`
--

LOCK TABLES `oauth2_provider_application` WRITE;
/*!40000 ALTER TABLE `oauth2_provider_application` DISABLE KEYS */;
INSERT INTO `oauth2_provider_application` VALUES (1,'V6RjEwVYBF2crl11EaYuzkOn2mJdLCXtAdMEDtRS','','confidential','password','JDdM6KfyObHXHxktICJjRpqvIBveu2hKojNKPNMPKGYEkXtoK7PDpv1pfbpgBWPLHEAybmTXaSRMgF9X6H49L44hOcqgIoon4KYY3FYpKFF8jVbQq0vzShZtsr1hVjHl','EcommerceApp',1,0,'2021-12-07 07:06:37.118291','2021-12-07 07:06:37.118291','');
/*!40000 ALTER TABLE `oauth2_provider_application` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth2_provider_grant`
--

DROP TABLE IF EXISTS `oauth2_provider_grant`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oauth2_provider_grant` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `code` varchar(255) NOT NULL,
  `expires` datetime(6) NOT NULL,
  `redirect_uri` longtext NOT NULL,
  `scope` longtext NOT NULL,
  `application_id` bigint NOT NULL,
  `user_id` bigint NOT NULL,
  `created` datetime(6) NOT NULL,
  `updated` datetime(6) NOT NULL,
  `code_challenge` varchar(128) NOT NULL,
  `code_challenge_method` varchar(10) NOT NULL,
  `nonce` varchar(255) NOT NULL,
  `claims` longtext NOT NULL DEFAULT (_utf8mb3''),
  PRIMARY KEY (`id`),
  UNIQUE KEY `code` (`code`),
  KEY `oauth2_provider_gran_application_id_81923564_fk_oauth2_pr` (`application_id`),
  KEY `oauth2_provider_gran_user_id_e8f62af8_fk_Ecommerce` (`user_id`),
  CONSTRAINT `oauth2_provider_gran_application_id_81923564_fk_oauth2_pr` FOREIGN KEY (`application_id`) REFERENCES `oauth2_provider_application` (`id`),
  CONSTRAINT `oauth2_provider_gran_user_id_e8f62af8_fk_Ecommerce` FOREIGN KEY (`user_id`) REFERENCES `ecommerceapp_customers` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth2_provider_grant`
--

LOCK TABLES `oauth2_provider_grant` WRITE;
/*!40000 ALTER TABLE `oauth2_provider_grant` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth2_provider_grant` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth2_provider_idtoken`
--

DROP TABLE IF EXISTS `oauth2_provider_idtoken`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oauth2_provider_idtoken` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `jti` char(32) NOT NULL,
  `expires` datetime(6) NOT NULL,
  `scope` longtext NOT NULL,
  `created` datetime(6) NOT NULL,
  `updated` datetime(6) NOT NULL,
  `application_id` bigint DEFAULT NULL,
  `user_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `jti` (`jti`),
  KEY `oauth2_provider_idto_application_id_08c5ff4f_fk_oauth2_pr` (`application_id`),
  KEY `oauth2_provider_idto_user_id_dd512b59_fk_Ecommerce` (`user_id`),
  CONSTRAINT `oauth2_provider_idto_application_id_08c5ff4f_fk_oauth2_pr` FOREIGN KEY (`application_id`) REFERENCES `oauth2_provider_application` (`id`),
  CONSTRAINT `oauth2_provider_idto_user_id_dd512b59_fk_Ecommerce` FOREIGN KEY (`user_id`) REFERENCES `ecommerceapp_customers` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth2_provider_idtoken`
--

LOCK TABLES `oauth2_provider_idtoken` WRITE;
/*!40000 ALTER TABLE `oauth2_provider_idtoken` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth2_provider_idtoken` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth2_provider_refreshtoken`
--

DROP TABLE IF EXISTS `oauth2_provider_refreshtoken`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oauth2_provider_refreshtoken` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `token` varchar(255) NOT NULL,
  `access_token_id` bigint DEFAULT NULL,
  `application_id` bigint NOT NULL,
  `user_id` bigint NOT NULL,
  `created` datetime(6) NOT NULL,
  `updated` datetime(6) NOT NULL,
  `revoked` datetime(6) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `access_token_id` (`access_token_id`),
  UNIQUE KEY `oauth2_provider_refreshtoken_token_revoked_af8a5134_uniq` (`token`,`revoked`),
  KEY `oauth2_provider_refr_application_id_2d1c311b_fk_oauth2_pr` (`application_id`),
  KEY `oauth2_provider_refr_user_id_da837fce_fk_Ecommerce` (`user_id`),
  CONSTRAINT `oauth2_provider_refr_access_token_id_775e84e8_fk_oauth2_pr` FOREIGN KEY (`access_token_id`) REFERENCES `oauth2_provider_accesstoken` (`id`),
  CONSTRAINT `oauth2_provider_refr_application_id_2d1c311b_fk_oauth2_pr` FOREIGN KEY (`application_id`) REFERENCES `oauth2_provider_application` (`id`),
  CONSTRAINT `oauth2_provider_refr_user_id_da837fce_fk_Ecommerce` FOREIGN KEY (`user_id`) REFERENCES `ecommerceapp_customers` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth2_provider_refreshtoken`
--

LOCK TABLES `oauth2_provider_refreshtoken` WRITE;
/*!40000 ALTER TABLE `oauth2_provider_refreshtoken` DISABLE KEYS */;
INSERT INTO `oauth2_provider_refreshtoken` VALUES (1,'om8slnI41e4hCWCqOc5mQbKpT7GoFv',1,1,1,'2021-12-09 04:28:56.336872','2021-12-09 04:28:56.336872',NULL),(2,'DpGIM7o00aBVJaH6uxXBJDtpRT4aYj',2,1,1,'2021-12-09 04:43:36.677033','2021-12-09 04:43:36.677033',NULL),(3,'A0Qa6ruOedBOoOQmAbbFsgxGM9OzRx',3,1,1,'2021-12-27 10:56:50.376513','2021-12-27 10:56:50.376513',NULL),(4,'qniokN6aWd0bYQ5HB1I8AExiroSE5R',4,1,1,'2021-12-27 10:57:03.089748','2021-12-27 10:57:03.089748',NULL),(5,'2wZidlJ7hJwAQ35hOymoyPaTVHlZMf',5,1,1,'2022-01-03 03:40:24.970442','2022-01-03 03:40:24.970442',NULL),(6,'ohGucKeCtGbZbEEr1VnUAMmjjWCnIa',6,1,1,'2022-01-03 05:49:22.744181','2022-01-03 05:49:22.744181',NULL),(7,'3pKs0iifmWmoJSPdUkTD50T3qReP2O',7,1,1,'2022-01-03 05:58:27.620751','2022-01-03 05:58:27.620751',NULL),(8,'thqZZZvjMD2R9bZ01iSn7dAox5MAJU',8,1,1,'2022-01-03 06:00:51.679573','2022-01-03 06:00:51.679573',NULL),(9,'PyiGGYhHOBXHshCrmCV7unkA89ec39',9,1,1,'2022-01-04 04:16:45.508866','2022-01-04 04:16:45.508866',NULL),(10,'5enr6EWbGZnBOtBcf4gBYwYWSZ6quq',10,1,1,'2022-01-04 04:18:11.533085','2022-01-04 04:18:11.533085',NULL),(11,'auZNzG9EjVuCNfWJ9BSVp9Q4YblFCB',11,1,1,'2022-01-04 04:49:55.572905','2022-01-04 04:49:55.572905',NULL),(12,'hQaRDIAafjpr2EB2XHqBRMQB66aWg3',12,1,1,'2022-01-04 04:49:56.688360','2022-01-04 04:49:56.688360',NULL),(13,'IKDXRlVloVeWKGigpFdM7ix1m2UmOU',13,1,1,'2022-01-08 09:43:39.114689','2022-01-08 09:43:39.114689',NULL),(14,'g1SPQcOAQFJ1SmDwZaY55ZCzjXYr3B',14,1,1,'2022-01-08 09:44:01.496164','2022-01-08 09:44:01.496164',NULL),(15,'WJ8LeLUr8QAeUB542tvuJvWGzvzlyb',15,1,3,'2022-01-08 10:46:17.112772','2022-01-08 10:46:17.112772',NULL);
/*!40000 ALTER TABLE `oauth2_provider_refreshtoken` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-01-18 13:40:33
