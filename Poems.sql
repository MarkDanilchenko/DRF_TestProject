-- MySQL dump 10.13  Distrib 8.0.33, for macos13.3 (arm64)
--
-- Host: localhost    Database: Poems
-- ------------------------------------------------------
-- Server version	8.0.33

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
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
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add content type',4,'add_contenttype'),(14,'Can change content type',4,'change_contenttype'),(15,'Can delete content type',4,'delete_contenttype'),(16,'Can view content type',4,'view_contenttype'),(17,'Can add session',5,'add_session'),(18,'Can change session',5,'change_session'),(19,'Can delete session',5,'delete_session'),(20,'Can view session',5,'view_session'),(21,'Can add fortune cookies',6,'add_fortunecookies'),(22,'Can change fortune cookies',6,'change_fortunecookies'),(23,'Can delete fortune cookies',6,'delete_fortunecookies'),(24,'Can view fortune cookies',6,'view_fortunecookies'),(25,'Can add user',7,'add_user'),(26,'Can change user',7,'change_user'),(27,'Can delete user',7,'delete_user'),(28,'Can view user',7,'view_user'),(29,'Can add theme',8,'add_theme'),(30,'Can change theme',8,'change_theme'),(31,'Can delete theme',8,'delete_theme'),(32,'Can view theme',8,'view_theme'),(33,'Can add poem',9,'add_poem'),(34,'Can change poem',9,'change_poem'),(35,'Can delete poem',9,'delete_poem'),(36,'Can view poem',9,'view_poem'),(37,'Can add author',10,'add_author'),(38,'Can change author',10,'change_author'),(39,'Can delete author',10,'delete_author'),(40,'Can view author',10,'view_author');
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
  KEY `django_admin_log_user_id_c564eba6_fk_DRFAPI_test__main_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_DRFAPI_test__main_user_id` FOREIGN KEY (`user_id`) REFERENCES `DRFAPI_test__main_user` (`id`),
  CONSTRAINT `django_admin_log_chk_1` CHECK ((`action_flag` >= 0))
) ENGINE=InnoDB AUTO_INCREMENT=117 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2023-11-03 10:27:32.384789','1','Романтическое настроение направит в...',1,'[{\"added\": {}}]',6,1),(2,'2023-11-03 10:27:38.930089','2','Не стоит кормить басней соловья....',1,'[{\"added\": {}}]',6,1),(3,'2023-11-03 10:27:44.178466','3','Обратите внимание на старых друзей....',1,'[{\"added\": {}}]',6,1),(4,'2023-11-03 10:27:50.511071','4','Самое время для движения вперед и п...',1,'[{\"added\": {}}]',6,1),(5,'2023-11-03 10:27:57.251869','5','Вам сделают заманчивое и весьма нео...',1,'[{\"added\": {}}]',6,1),(6,'2023-11-03 10:44:22.140919','6','Делайте все, чего душа пожелает....',1,'[{\"added\": {}}]',6,1),(7,'2023-11-03 10:44:29.025212','7','Не сдавайтесь и продолжайте прилага...',1,'[{\"added\": {}}]',6,1),(8,'2023-11-03 10:44:35.981542','8','Кому-то очень нужна ваша поддержка....',1,'[{\"added\": {}}]',6,1),(9,'2023-11-03 10:44:42.266967','9','Главные враги не снаружи, а внутри....',1,'[{\"added\": {}}]',6,1),(10,'2023-11-03 10:44:50.014906','10','Настоящими партнерами могут стать т...',1,'[{\"added\": {}}]',6,1),(11,'2023-11-03 10:44:58.354063','11','Прислушивайтесь к намекам, которые ...',1,'[{\"added\": {}}]',6,1),(12,'2023-11-03 10:45:04.216066','12','Пришло время очищать колодец....',1,'[{\"added\": {}}]',6,1),(13,'2023-11-03 10:45:10.310584','13','Чтобы выиграть в большом, нужно пот...',1,'[{\"added\": {}}]',6,1),(14,'2023-11-03 10:45:15.945898','14','Опирайтесь не на авторитеты, а на с...',1,'[{\"added\": {}}]',6,1),(15,'2023-11-03 10:45:21.848187','15','Пора покончить со старым для того, ...',1,'[{\"added\": {}}]',6,1),(16,'2023-11-03 10:45:28.347231','16','Загляните в себя – и вы избежите по...',1,'[{\"added\": {}}]',6,1),(17,'2023-11-03 10:45:34.312131','17','Не ждите слишком многого....',1,'[{\"added\": {}}]',6,1),(18,'2023-11-03 10:45:39.806008','18','Необходимо завершить начатое....',1,'[{\"added\": {}}]',6,1),(19,'2023-11-03 10:45:45.333725','19','Не давайте эмоциям захватить себя....',1,'[{\"added\": {}}]',6,1),(20,'2023-11-03 10:45:51.314442','20','Разделите свою удачу с друзьями....',1,'[{\"added\": {}}]',6,1),(21,'2023-11-03 10:45:57.531074','21','Боритесь с проявлениями эгоизма....',1,'[{\"added\": {}}]',6,1),(22,'2023-11-03 10:46:03.513512','22','Положитесь на течение событий и не ...',1,'[{\"added\": {}}]',6,1),(23,'2023-11-03 10:46:09.231940','23','Реально оценивайте свои возможности...',1,'[{\"added\": {}}]',6,1),(24,'2023-11-03 10:46:15.758094','24','Действуйте по зрелом размышлении....',1,'[{\"added\": {}}]',6,1),(25,'2023-11-03 10:46:24.483999','25','Удача нагрянет к вам неожиданно....',1,'[{\"added\": {}}]',6,1),(26,'2023-11-03 10:46:45.363721','26','Вам отдадут старый долг....',1,'[{\"added\": {}}]',6,1),(27,'2023-11-03 10:46:52.079480','27','Впереди – неожиданные финансовые по...',1,'[{\"added\": {}}]',6,1),(28,'2023-11-03 10:46:58.444770','28','Самое время отправляться в путешест...',1,'[{\"added\": {}}]',6,1),(29,'2023-11-03 10:47:04.004079','29','Настало время делиться опытом....',1,'[{\"added\": {}}]',6,1),(30,'2023-11-03 10:47:10.346608','30','Вам удастся открыть нужную дверь и ...',1,'[{\"added\": {}}]',6,1),(31,'2023-11-03 13:04:03.700316','30','Вам удастся открыть нужную дверь и ...',3,'',6,1),(32,'2023-11-03 13:04:03.705391','29','Настало время делиться опытом....',3,'',6,1),(33,'2023-11-03 13:04:03.706966','28','Самое время отправляться в путешест...',3,'',6,1),(34,'2023-11-03 13:04:03.708156','27','Впереди – неожиданные финансовые по...',3,'',6,1),(35,'2023-11-03 13:04:03.709253','26','Вам отдадут старый долг....',3,'',6,1),(36,'2023-11-03 13:04:03.710349','25','Удача нагрянет к вам неожиданно....',3,'',6,1),(37,'2023-11-03 13:04:03.711395','24','Действуйте по зрелом размышлении....',3,'',6,1),(38,'2023-11-03 13:04:03.712349','23','Реально оценивайте свои возможности...',3,'',6,1),(39,'2023-11-03 13:04:03.713639','22','Положитесь на течение событий и не ...',3,'',6,1),(40,'2023-11-03 13:04:03.714836','21','Боритесь с проявлениями эгоизма....',3,'',6,1),(41,'2023-11-03 13:04:03.715815','20','Разделите свою удачу с друзьями....',3,'',6,1),(42,'2023-11-03 13:04:03.716428','19','Не давайте эмоциям захватить себя....',3,'',6,1),(43,'2023-11-03 13:04:03.717018','18','Необходимо завершить начатое....',3,'',6,1),(44,'2023-11-03 13:04:03.717755','17','Не ждите слишком многого....',3,'',6,1),(45,'2023-11-03 13:04:03.718570','16','Загляните в себя – и вы избежите по...',3,'',6,1),(46,'2023-11-03 13:04:03.720413','15','Пора покончить со старым для того, ...',3,'',6,1),(47,'2023-11-03 13:04:03.722053','14','Опирайтесь не на авторитеты, а на с...',3,'',6,1),(48,'2023-11-03 13:04:03.724145','13','Чтобы выиграть в большом, нужно пот...',3,'',6,1),(49,'2023-11-03 13:04:03.725775','12','Пришло время очищать колодец....',3,'',6,1),(50,'2023-11-03 13:04:03.727372','11','Прислушивайтесь к намекам, которые ...',3,'',6,1),(51,'2023-11-03 13:04:03.728771','10','Настоящими партнерами могут стать т...',3,'',6,1),(52,'2023-11-03 13:04:03.730098','9','Главные враги не снаружи, а внутри....',3,'',6,1),(53,'2023-11-03 13:04:03.731390','8','Кому-то очень нужна ваша поддержка....',3,'',6,1),(54,'2023-11-03 13:04:03.732745','7','Не сдавайтесь и продолжайте прилага...',3,'',6,1),(55,'2023-11-03 13:04:03.734138','6','Делайте все, чего душа пожелает....',3,'',6,1),(56,'2023-11-03 13:04:03.736046','5','Вам сделают заманчивое и весьма нео...',3,'',6,1),(57,'2023-11-03 13:04:03.737510','4','Самое время для движения вперед и п...',3,'',6,1),(58,'2023-11-03 13:04:03.738895','3','Обратите внимание на старых друзей....',3,'',6,1),(59,'2023-11-03 13:04:03.740585','2','Не стоит кормить басней соловья....',3,'',6,1),(60,'2023-11-03 13:04:03.742027','1','Романтическое настроение направит в...',3,'',6,1),(61,'2023-11-03 13:04:07.679586','31','Get your rest, and eat your soup an...',1,'[{\"added\": {}}]',6,1),(62,'2023-11-03 13:04:14.118369','32','Hope you go from resting and cozy t...',1,'[{\"added\": {}}]',6,1),(63,'2023-11-03 13:04:20.526300','33','You\'re being thought about and wish...',1,'[{\"added\": {}}]',6,1),(64,'2023-11-03 13:04:30.685601','34','Roses are red, Violets are neat, ju...',1,'[{\"added\": {}}]',6,1),(65,'2023-11-03 13:04:36.602894','35','A happy note of sunshine especially...',1,'[{\"added\": {}}]',6,1),(66,'2023-11-03 13:04:44.643025','36','Happy healing. Get well soon....',1,'[{\"added\": {}}]',6,1),(67,'2023-11-03 13:04:50.492142','37','Hurry up and feel better soon....',1,'[{\"added\": {}}]',6,1),(68,'2023-11-03 13:04:56.691274','38','Hope you\'re on the mend. Get Well S...',1,'[{\"added\": {}}]',6,1),(69,'2023-11-03 13:05:03.271756','39','I hate to think of you lying in bed...',1,'[{\"added\": {}}]',6,1),(70,'2023-11-03 13:05:16.210261','40','Warm wishes and healing thoughts ar...',1,'[{\"added\": {}}]',6,1),(71,'2023-11-03 13:05:22.517062','41','Hoping you feel better and better e...',1,'[{\"added\": {}}]',6,1),(72,'2023-11-03 13:05:31.803891','42','Take two of these and call me in th...',1,'[{\"added\": {}}]',6,1),(73,'2023-11-03 13:05:37.987998','43','Get some rest and drink plenty of w...',1,'[{\"added\": {}}]',6,1),(74,'2023-11-03 13:05:43.887701','44','Get well soon....',1,'[{\"added\": {}}]',6,1),(75,'2023-11-03 13:05:49.649086','45','Wishing you a speedy recovery....',1,'[{\"added\": {}}]',6,1),(76,'2023-11-03 13:05:57.150514','46','Friends are like medicine; they mak...',1,'[{\"added\": {}}]',6,1),(77,'2023-11-03 13:06:04.457516','47','Sounds like you got a pretty nasty ...',1,'[{\"added\": {}}]',6,1),(78,'2023-11-03 13:06:12.457021','48','Sorry you haven\'t been feeling well...',1,'[{\"added\": {}}]',6,1),(79,'2023-11-03 13:07:19.650707','49','Romance moves you in a new directio...',1,'[{\"added\": {}}]',6,1),(80,'2023-11-03 13:07:29.479897','50','Say hello to others. You will have ...',1,'[{\"added\": {}}]',6,1),(81,'2023-11-04 21:41:27.952845','1','About daytime',1,'[{\"added\": {}}]',8,1),(82,'2023-11-04 21:41:30.441028','2','About Countries and towns',1,'[{\"added\": {}}]',8,1),(83,'2023-11-04 21:41:32.796854','3','About Seasons',1,'[{\"added\": {}}]',8,1),(84,'2023-11-04 21:41:35.424454','4','About Hollydays',1,'[{\"added\": {}}]',8,1),(85,'2023-11-04 21:41:37.869241','5','About Nature',1,'[{\"added\": {}}]',8,1),(86,'2023-11-04 21:42:26.179505','1','About daytime',3,'',8,1),(87,'2023-11-04 21:42:31.516269','6','About Daytime',1,'[{\"added\": {}}]',8,1),(88,'2023-11-04 21:57:35.328217','1','Archibald Lampman',1,'[{\"added\": {}}]',10,1),(89,'2023-11-04 21:57:39.529542','1','\"A Summer Evening\" by Archibald Lampman',1,'[{\"added\": {}}]',9,1),(90,'2023-11-04 22:02:28.637462','2','\"April in the Hills\" by Archibald Lampman',1,'[{\"added\": {}}]',9,1),(91,'2023-11-04 22:03:36.250754','3','\"Winter Evening\" by Archibald Lampman',1,'[{\"added\": {}}]',9,1),(92,'2023-11-05 09:25:59.388363','2','Thomas Gent',1,'[{\"added\": {}}]',10,1),(93,'2023-11-05 09:26:07.092519','4','\"Morning\" by Thomas Gent',1,'[{\"added\": {}}]',9,1),(94,'2023-11-05 09:27:10.378745','3','Jones Very',1,'[{\"added\": {}}]',10,1),(95,'2023-11-05 09:27:16.992454','5','\"Morning\" by Jones Very',1,'[{\"added\": {}}]',9,1),(96,'2023-11-05 09:28:19.513364','4','Matthew Arnold',1,'[{\"added\": {}}]',10,1),(97,'2023-11-05 09:28:24.008331','6','\"Matthew Arnold\" by Matthew Arnold',1,'[{\"added\": {}}]',9,1),(98,'2023-11-05 09:28:50.224614','5','Dora Sigerson Shorter',1,'[{\"added\": {}}]',10,1),(99,'2023-11-05 09:29:12.977714','7','\"Ireland\" by Dora Sigerson Shorter',1,'[{\"added\": {}}]',9,1),(100,'2023-11-05 09:29:45.731141','6','Оскар Уайльд',1,'[{\"added\": {}}]',10,1),(101,'2023-11-05 09:30:14.667388','6','Oscar Wilde',2,'[{\"changed\": {\"fields\": [\"Name of the Author\"]}}]',10,1),(102,'2023-11-05 09:30:35.733037','8','\"Sonnet on Approaching Italy\" by Oscar Wilde',1,'[{\"added\": {}}]',9,1),(103,'2023-11-05 09:33:35.315684','7','John Keats',1,'[{\"added\": {}}]',10,1),(104,'2023-11-05 09:33:40.039349','9','\"The Human Seasons\" by John Keats',1,'[{\"added\": {}}]',9,1),(105,'2023-11-05 09:34:29.940072','8','Thomas Edward Brown',1,'[{\"added\": {}}]',10,1),(106,'2023-11-05 09:34:56.189810','10','\"Carol\" by Thomas Edward Brown',1,'[{\"added\": {}}]',9,1),(107,'2023-11-05 09:41:36.137849','9','James McIntyre',1,'[{\"added\": {}}]',10,1),(108,'2023-11-05 09:41:59.094419','11','\"Halloween\" by James McIntyre',1,'[{\"added\": {}}]',9,1),(109,'2023-11-05 09:42:55.139229','10','Madison Julius Cawein',1,'[{\"added\": {}}]',10,1),(110,'2023-11-05 09:43:16.863092','12','\"Halloween\" by Madison Julius Cawein',1,'[{\"added\": {}}]',9,1),(111,'2023-11-05 09:44:16.317377','11','James Thomson',1,'[{\"added\": {}}]',10,1),(112,'2023-11-05 09:44:42.843273','13','\"Waterfall\" by James Thomson',1,'[{\"added\": {}}]',9,1),(113,'2023-11-05 09:45:53.837971','12','Robert Burns',1,'[{\"added\": {}}]',10,1),(114,'2023-11-05 09:46:15.910441','14','\"My Heart\'s in the Highlands\" by Robert Burns',1,'[{\"added\": {}}]',9,1),(115,'2023-11-05 09:46:33.914478','13','Bessie Rayner Parkes',1,'[{\"added\": {}}]',10,1),(116,'2023-11-05 09:46:54.194394','15','\"The Highlands\" by Bessie Rayner Parkes',1,'[{\"added\": {}}]',9,1);
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
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'contenttypes','contenttype'),(10,'DRFAPI_test__main','author'),(6,'DRFAPI_test__main','fortunecookies'),(9,'DRFAPI_test__main','poem'),(8,'DRFAPI_test__main','theme'),(7,'DRFAPI_test__main','user'),(5,'sessions','session');
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
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2023-11-03 09:59:47.253889'),(2,'contenttypes','0002_remove_content_type_name','2023-11-03 09:59:47.267366'),(3,'auth','0001_initial','2023-11-03 09:59:47.306656'),(4,'auth','0002_alter_permission_name_max_length','2023-11-03 09:59:47.316461'),(5,'auth','0003_alter_user_email_max_length','2023-11-03 09:59:47.318833'),(6,'auth','0004_alter_user_username_opts','2023-11-03 09:59:47.321042'),(7,'auth','0005_alter_user_last_login_null','2023-11-03 09:59:47.323380'),(8,'auth','0006_require_contenttypes_0002','2023-11-03 09:59:47.324202'),(9,'auth','0007_alter_validators_add_error_messages','2023-11-03 09:59:47.326398'),(10,'auth','0008_alter_user_username_max_length','2023-11-03 09:59:47.328583'),(11,'auth','0009_alter_user_last_name_max_length','2023-11-03 09:59:47.330787'),(12,'auth','0010_alter_group_name_max_length','2023-11-03 09:59:47.335222'),(13,'auth','0011_update_proxy_permissions','2023-11-03 09:59:47.337710'),(14,'auth','0012_alter_user_first_name_max_length','2023-11-03 09:59:47.340767'),(15,'DRFAPI_test__main','0001_initial','2023-11-03 09:59:47.387050'),(16,'admin','0001_initial','2023-11-03 09:59:47.410068'),(17,'admin','0002_logentry_remove_auto_add','2023-11-03 09:59:47.413696'),(18,'admin','0003_logentry_add_action_flag_choices','2023-11-03 09:59:47.416821'),(19,'sessions','0001_initial','2023-11-03 09:59:47.422767'),(20,'DRFAPI_test__main','0002_author_theme_poem','2023-11-04 13:27:32.508202'),(21,'DRFAPI_test__main','0003_alter_theme_theme','2023-11-04 21:40:41.032693'),(22,'DRFAPI_test__main','0004_alter_theme_theme','2023-11-04 21:42:13.558619'),(23,'DRFAPI_test__main','0005_alter_theme_theme','2023-11-04 21:42:55.981200'),(24,'DRFAPI_test__main','0006_poem_text','2023-11-04 21:54:19.087150');
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
INSERT INTO `django_session` VALUES ('6yd86rcdmz9oqfav1asgsp9yqobz4yh7','.eJxVjDsOwjAQBe_iGln-ZGOHkj5nsHbXCwkgW4qTCnF3iJQC2jcz76USbuuUtiZLmrM6K6tOvxshP6TsIN-x3KrmWtZlJr0r-qBNjzXL83K4fwcTtulbuxBjJhNYjIdB0BA4C54dku37LL1gF6w1YDpioSuDDJC94ejAdWTV-wPbxDez:1qyqyn:EZnjeVm6HHJ_zjFNGuQdTSz-YsvBcQRxwKQTco2GNKU','2023-11-17 10:00:41.231202'),('gt9sn6ny846m7nqf04pd3eem69vstktn','.eJxVjDsOwjAQBe_iGln-ZGOHkj5nsHbXCwkgW4qTCnF3iJQC2jcz76USbuuUtiZLmrM6K6tOvxshP6TsIN-x3KrmWtZlJr0r-qBNjzXL83K4fwcTtulbuxBjJhNYjIdB0BA4C54dku37LL1gF6w1YDpioSuDDJC94ejAdWTV-wPbxDez:1qzdAj:15ZaJF3gAfT-pymtKOsaCC6i2jFMkYlLNUiluF0JmCU','2023-11-19 13:28:13.075850'),('uaq0bnnofi17ey1w5b1bk83hswu0pipk','.eJxVjDsOwjAQBe_iGln-ZGOHkj5nsHbXCwkgW4qTCnF3iJQC2jcz76USbuuUtiZLmrM6K6tOvxshP6TsIN-x3KrmWtZlJr0r-qBNjzXL83K4fwcTtulbuxBjJhNYjIdB0BA4C54dku37LL1gF6w1YDpioSuDDJC94ejAdWTV-wPbxDez:1qytLV:5dprpUzcyw0YtOlD5Bz9kAZL5azOMda-V4Dq22iyUDs','2023-11-17 12:32:17.570897'),('yuh63jpes2miu7hrqg3cyvtpgh5igdxe','.eJxVjDsOwjAQBe_iGln-ZGOHkj5nsHbXCwkgW4qTCnF3iJQC2jcz76USbuuUtiZLmrM6K6tOvxshP6TsIN-x3KrmWtZlJr0r-qBNjzXL83K4fwcTtulbuxBjJhNYjIdB0BA4C54dku37LL1gF6w1YDpioSuDDJC94ejAdWTV-wPbxDez:1qyrCm:ZIqYWbolSGmZ5sya80VFQurBy2dK_3FCD730JOZ5lm0','2023-11-17 10:15:08.976509');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `DRFAPI_test__main_author`
--

DROP TABLE IF EXISTS `DRFAPI_test__main_author`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `DRFAPI_test__main_author` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `DRFAPI_test__main_author`
--

LOCK TABLES `DRFAPI_test__main_author` WRITE;
/*!40000 ALTER TABLE `DRFAPI_test__main_author` DISABLE KEYS */;
INSERT INTO `DRFAPI_test__main_author` VALUES (1,'Archibald Lampman'),(2,'Thomas Gent'),(3,'Jones Very'),(4,'Matthew Arnold'),(5,'Dora Sigerson Shorter'),(6,'Oscar Wilde'),(7,'John Keats'),(8,'Thomas Edward Brown'),(9,'James McIntyre'),(10,'Madison Julius Cawein'),(11,'James Thomson'),(12,'Robert Burns'),(13,'Bessie Rayner Parkes');
/*!40000 ALTER TABLE `DRFAPI_test__main_author` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `DRFAPI_test__main_fortunecookies`
--

DROP TABLE IF EXISTS `DRFAPI_test__main_fortunecookies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `DRFAPI_test__main_fortunecookies` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `description` varchar(350) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `DRFAPI_test__main_fortunecookies`
--

LOCK TABLES `DRFAPI_test__main_fortunecookies` WRITE;
/*!40000 ALTER TABLE `DRFAPI_test__main_fortunecookies` DISABLE KEYS */;
INSERT INTO `DRFAPI_test__main_fortunecookies` VALUES (31,'Get your rest, and eat your soup and let your little self recoup!'),(32,'Hope you go from resting and cozy to perky and rosy! Feel Better Soon!'),(33,'You\'re being thought about and wished the very best of health.'),(34,'Roses are red, Violets are neat, just can\'t wait till You\'re back on your feet! Get Well Soon!'),(35,'A happy note of sunshine especially for you... May you feel as good as new very soon.'),(36,'Happy healing. Get well soon.'),(37,'Hurry up and feel better soon.'),(38,'Hope you\'re on the mend. Get Well Soon!'),(39,'I hate to think of you lying in bed all day with nothing to do. Why couldn\'t it be me instead?!'),(40,'Warm wishes and healing thoughts are being sent your way. Get well soon.'),(41,'Hoping you feel better and better each day...'),(42,'Take two of these and call me in the morning.'),(43,'Get some rest and drink plenty of water.'),(44,'Get well soon.'),(45,'Wishing you a speedy recovery.'),(46,'Friends are like medicine; they make you feel better when you\'re down. Here\'s a dose of friendship to speed up your recovery!'),(47,'Sounds like you got a pretty nasty bug... sure hope you get well SOON!'),(48,'Sorry you haven\'t been feeling well lately, sure hope you get well soon!'),(49,'Romance moves you in a new direction.'),(50,'Say hello to others. You will have a happier day.');
/*!40000 ALTER TABLE `DRFAPI_test__main_fortunecookies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `DRFAPI_test__main_poem`
--

DROP TABLE IF EXISTS `DRFAPI_test__main_poem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `DRFAPI_test__main_poem` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `author_id` bigint NOT NULL,
  `theme_id` bigint NOT NULL,
  `text` longtext NOT NULL DEFAULT (_utf8mb3'1'),
  PRIMARY KEY (`id`),
  KEY `DRFAPI_test__main_po_author_id_fa773f38_fk_DRFAPI_te` (`author_id`),
  KEY `DRFAPI_test__main_po_theme_id_e05f8fb3_fk_DRFAPI_te` (`theme_id`),
  CONSTRAINT `DRFAPI_test__main_po_author_id_fa773f38_fk_DRFAPI_te` FOREIGN KEY (`author_id`) REFERENCES `DRFAPI_test__main_author` (`id`),
  CONSTRAINT `DRFAPI_test__main_po_theme_id_e05f8fb3_fk_DRFAPI_te` FOREIGN KEY (`theme_id`) REFERENCES `DRFAPI_test__main_theme` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `DRFAPI_test__main_poem`
--

LOCK TABLES `DRFAPI_test__main_poem` WRITE;
/*!40000 ALTER TABLE `DRFAPI_test__main_poem` DISABLE KEYS */;
INSERT INTO `DRFAPI_test__main_poem` VALUES (1,'A Summer Evening',1,6,'The clouds grow clear, the pine-wood glooms and stills\r\nWith brown reflections in the silent bay,\r\nAnd far beyond the pale blue-misted hills\r\nThe rose and purple evening dreams away.\r\nThe thrush, the veery, from the mysterious dales\r\nRings his last round; and outward like a sea\r\nThe shining, shadowy heart of heaven unveils\r\nThe starry legend of eternity.\r\nThe day\'s long troubles lose their sting and pass.\r\nPeaceful the world, and peaceful grows my heart.\r\nThe gossip cricket from the friendly grass\r\nTalks of old joys and takes the dreamer\'s part.\r\nThen night, the healer, with unnoticed breath,\r\nAnd sleep, dark sleep, so near, so like to death.'),(2,'April in the Hills',1,3,'To-day the world is wide and fair\r\nWith sunny fields of lucid air,\r\nAnd waters dancing everywhere;\r\n  The snow is almost gone;\r\nThe noon is builded high with light,\r\nAnd over heaven\'s liquid height,\r\nIn steady fleets serene and white,\r\n  The happy clouds go on.\r\n\r\nThe channels run, the bare earth steams,\r\nAnd every hollow rings and gleams\r\nWith jetting falls and dashing streams;\r\n  The rivers burst and fill;\r\nThe fields are full of little lakes,\r\nAnd when the romping wind awakes\r\nThe water ruffles blue and shakes,\r\n  And the pines roar on the hill.\r\n\r\nThe crows go by, a noisy throng;\r\nAbout the meadows all day long\r\nThe shore-lark drops his brittle song;\r\n  And up the leafless tree\r\nThe nut-hatch runs, and nods, and clings;\r\nThe bluebird dips with flashing wings,\r\nThe robin flutes, the sparrow sings,\r\n  And the swallows float and flee.\r\n\r\nI break the spirit\'s cloudy bands,\r\nA wanderer in enchanted lands,\r\nI feel the sun upon my hands;\r\n  And far from care and strife\r\nThe broad earth bids me forth. I rise\r\nWith lifted brow and upward eyes.\r\nI bathe my spirit in blue skies,\r\n  And taste the springs of life.\r\n\r\nI feel the tumult of new birth;\r\nI waken with the wakening earth;\r\nI match the bluebird in her mirth;\r\n  And wild with wind and sun,\r\nA treasurer of immortal days,\r\nI roam the glorious world with praise,\r\nThe hillsides and the woodland ways,\r\n  Till earth and I are one.'),(3,'Winter Evening',1,3,'TO-NIGHT the very horses springing by\r\nToss gold from whitened nostrils. In a dream\r\nThe streets that narrow to the westward gleam\r\nLike rows of golden palaces; and high\r\nFrom all the crowded chimneys tower and die\r\nA thousand aureoles. Down in the west\r\nThe brimming plains beneath the sunset rest,\r\nOne burning sea of gold. Soon, soon shall fly\r\nThe glorious vision, and the hours shall feel\r\nA mightier master; soon from height to height,\r\nWith silence and the sharp unpitying stars,\r\nStern creeping frosts, and winds that touch like steel,\r\nOut of the depth beyond the eastern bars,\r\nGlittering and still shall come the awful night.'),(4,'Morning',2,6,'Light as the breeze that hails the infant morn\r\n  The Milkmaid trips, as o\'er her arm she slings\r\n  Her cleanly pail, some fav\'rite lay she sings\r\nAs sweetly wild and cheerful as the horn.\r\nO! happy girl I may never faithless love,\r\n  Or fancied splendour, lead thy steps astray;\r\n  No cares becloud the sunshine of thy day,\r\nNor want e\'er urge thee from thy cot to rove.\r\nWhat though thy station dooms thee to be poor,\r\n  And by the hard-earn\'d morsel thou art fed;\r\n  Yet sweet content bedecks thy lowly bed,\r\nAnd health and peace sit smiling at thy door:\r\nOf these possess\'d—thou hast a gracious meed,\r\nWhich Heaven\'s high wisdom gives, to make thee rich indeed!'),(5,'Morning',3,6,'The light will never open sightless eyes,\r\nIt comes to those who willingly would see;\r\nAnd every object,—hill, and stream, and skies,—\r\nRejoice within th\' encircling line to be;\r\n\'Tis day,—the field is filled with busy hands,\r\nThe shop resounds with noisy workmen\'s din,\r\nThe traveller with his staff already stands\r\nHis yet unmeasured journey to begin;\r\nThe light breaks gently too within the breast,—\r\nYet there no eye awaits the crimson morn,\r\nThe forge and noisy anvil are at rest,\r\nNor men nor oxen tread the fields of corn,\r\nNor pilgrim lifts his staff,—it is no day\r\nTo those who find on earth their place to stay.'),(6,'Matthew Arnold',4,2,'\'Twas August, and the fierce sun overhead\r\nSmote on the squalid streets of Bethnal Green,\r\nAnd the pale weaver, through his windows seen\r\nIn Spitalfields, looked thrice dispirited.\r\nI met a preacher there I knew, and said:\r\n\"Ill and o\'erworked, how fare you in this scene?\" -\r\n\"Bravely!\" said he; \"for I of late have been\r\nMuch cheered with thoughts of Christ, the living bread.\"\r\nO human soul! as long as thou canst so\r\nSet up a mark of everlasting light,\r\nAbove the howling senses\' ebb and flow,\r\nTo cheer thee, and to right thee if thou roam -\r\nNot with lost toil thou labourest through the night!\r\nThou mak\'st the heaven thou hop\'st indeed thy home.'),(7,'Ireland',5,2,'\'Twas the dream of a God,\r\nAnd the mould of His hand,\r\nThat you shook \'neath His stroke,\r\nThat you trembled and broke\r\n\r\nTo this beautiful land.\r\nHere He loosed from His hold\r\nA brown tumult of wings,\r\nTill the wind on the sea\r\n\r\nBore the strange melody\r\nOf an island that sings.\r\nHe made you all fair,\r\nYou in purple and gold,\r\n\r\nYou in silver and green,\r\nTill no eye that has seen\r\nWithout love can behold.\r\nI have left you behind\r\n\r\nIn the path of the past,\r\nWith the white breath of flowers,\r\nWith the best of God\'s hours,\r\nI have left you at last.'),(8,'Sonnet on Approaching Italy',6,2,'I REACHED the Alps: the soul within me burned\r\nItalia, my Italia, at thy name:\r\nAnd when from out the mountain\'s heart I came\r\nAnd saw the land for which my life had yearned,\r\nI laughed as one who some great prize had earned:\r\nAnd musing on the story of thy fame\r\nI watched the day, till marked with wounds of flame\r\nThe turquoise sky to burnished gold was turned,\r\nThe pine-trees waved as waves a woman\'s hair,\r\nAnd in the orchards every twining spray\r\nWas breaking into flakes of blossoming foam:\r\nBut when I knew that far away at Rome\r\nIn evil bonds a second Peter lay,\r\nI wept to see the land so very fair.'),(9,'The Human Seasons',7,3,'Four Seasons fill the measure of the year;\r\n     There are four seasons in the mind of man:\r\nHe has his lusty Spring, when fancy clear\r\n     Takes in all beauty with an easy span:\r\nHe has his Summer, when luxuriously\r\n     Spring\'s honied cud of youthful thought he loves\r\nTo ruminate, and by such dreaming high\r\n     Is nearest unto heaven: quiet coves\r\nHis soul has in its Autumn, when his wings\r\n     He furleth close; contented so to look\r\nOn mists in idleness—to let fair things\r\n     Pass by unheeded as a threshold brook.\r\nHe has his Winter too of pale misfeature,\r\nOr else he would forego his mortal nature.'),(10,'Carol',8,4,'THREE kings from out the Orient \r\nFor Judah\'s land were fairly bent, \r\nTo find the Lord of grace; \r\nAnd as they journeyed pleasantlie, \r\nA star kept shining in the sky, \r\nTo guide them to the place. \r\n“O Star,” they cried, “by all confest \r\nWithouten dreed, the loveliest!” \r\n \r\nThe first was Melchior to see, \r\nThe emperour hight of Arabye, \r\nAn aged man, I trow \r\nHe sat upon a rouncy bold, \r\nHad taken of the red red gold, \r\nThe babe for to endow.  \r\n“O Star,” they cried, “by all confest \r\nWithouten dreed, the loveliest!” \r\n \r\nThe next was Gaspar, young and gay, \r\nThat held the realm of far Cathay — \r\nOur Jesus drew him thence — \r\nYclad in silk from head to heel, \r\nHe rode upon a high tameel, \r\nAnd bare the frankincense. \r\n“O Star,” they cried, “by all confest \r\nWithouten dreed, the loveliest!” \r\n \r\nThe last was dusky Balthasar, \r\nThat rode upon a dromedary — \r\nHis coat was of the fur. \r\nDark-browed he came from Samarkand, \r\nThe Christ to seek, and in his hand \r\nUpheld the bleeding myrrh. \r\n“O Star,” they cried, “by all confest \r\nWithouten dreed, the loveliest!”'),(11,'Halloween',9,4,'A tale we\'ll tell of what hath been\r\nWhen maids and youths kept Halloween.\r\nIt is a tale of old world lore\r\nWhat happened in the days of yore,\r\nWhen fairies danced upon the green\r\nSo merrily on Halloween,\r\nAnd witches did play many a trick\r\nAssisted by their auld friend Nick,\r\nAnd lovers meet around the fire\r\nNear to the one their hearts desire,\r\nFor to burn nuts for to discover\r\nThe truthfulness of their lover.\r\nThey first did give each nut a name,\r\nThis was Sandy, that was Jane,\r\nIf they did blaze side by side,\r\nShe knew her husband, he his bride,\r\nBut if one up the chimney flew,\r\nOne knew the other was not true.\r\nAnd one sure test did never fail,\r\nBlindfold to find good stock of kale,\r\nTo pull the first comes to the hand\r\nWith heavy roots of earth and sand,\r\nFor the very weight of mould\r\nDoes denote weight of lovers gold.\r\nIn tubs children love to splatter,\r\nDucking for apples in the water,\r\nFor such were the delights of yore,\r\nWhich soon will cease forevermore;\r\nAt Balmoral Castle Britain\'s Queen\r\nOft\' celebrated Halloween,\r\nBut Highland landlords now do clear\r\nLand of men to make room for deer,\r\nBut here upon Canadian soil\r\nA man may own where he doth toil.'),(12,'Halloween',10,4,'It was down in the woodland on last Hallowe\'en,\r\nWhere silence and darkness had built them a lair,\r\nThat I felt the dim presence of her, the unseen,\r\nAnd heard her still step on the ghost-haunted air.\r\n\r\nIt was last Hallowe\'en in the glimmer and swoon\r\nOf mist and of moonlight that thickened and thinned,\r\nThat I saw the gray gleam of her eyes in the moon,\r\nAnd hair, like a raven, blown wild in the wind.\r\n\r\nIt was last Hallowe\'en where starlight and dew\r\nMade mystical marriage on flower and leaf,\r\nThat she led me with looks of a love that I knew,\r\nAnd lured with the voice of a heart-buried grief.\r\n\r\nIt was last Hallowe\'en in the forest of dreams,\r\nWhere trees are eidolons and shadows have eyes,\r\nThat I saw her pale face like the foam of far streams,\r\nAnd heard, like the leaf-lisp, her tears and her sighs.\r\n\r\nIt was last Hallowe\'en, the haunted, the dread,\r\nIn the wind-tattered wood by the storm-twisted pine,\r\nThat I, who am living, kept tryst with the dead,\r\nAnd clasped her a moment and dreamed she was mine.'),(13,'Waterfall',11,5,'Smooth to the shelving brink a copious flood\r\nRolls fair and placid: where collected all,\r\nIn one impetuous torrent down the steep\r\nIt thundering shoots, and shakes the country round.\r\nAt first, an azure sheet, it rushes broad;\r\nThen whitening by degrees, as prone it falls,\r\nAnd from the loud-resounding rocks below,\r\nDash\'d in a cloud of foam, it sends aloft\r\nA hoary mist, and forms a ceaseless shower.\r\nNor can the tortured wave here find repose:\r\nBut, raging still amid the shaggy rocks,\r\nNow flashes o\'er the scatter\'d fragments, now\r\nAslant the hollow channel rapid darts;\r\nAnd falling fast from gradual slope to slope,\r\nWith wild infracted course, and lessen\'d roar,\r\nIt gains a safer bed, and steals, at last,\r\nAlong the mazes of a quiet vale.'),(14,'My Heart\'s in the Highlands',12,5,'Farewell to the Highlands, farewell to the North,\r\nThe birth-place of Valour, the country of Worth;\r\nWherever I wander, wherever I rove,\r\nThe hills of the Highlands for ever I love.\r\n\r\nMy heart\'s in the Highlands, my heart is not here;\r\nMy heart\'s in the Highlands a-chasing the deer;\r\nA-chasing the wild-deer, and following the roe,\r\nMy heart\'s in the Highlands wherever I go.\r\n\r\nFarewell to the mountains high covered with snow;\r\nFarewell to the straths and green valleys below;\r\nFarewell to the forests and wild-hanging woods;\r\nFarewell to the torrents and loud-pouring floods.\r\n\r\nMy heart\'s in the Highlands, my heart is not here;\r\nMy heart\'s in the Highlands a-chasing the deer;\r\nA-chasing the wild-deer, and following the roe,\r\nMy heart\'s in the Highlands wherever I go.'),(15,'The Highlands',13,5,'HILLS that were born of ages,\r\nHeaving slowly from the deep,\r\nAre shaking down their tresses,\r\nSilver-threaded from the steep;\r\nCurling shining tresses\r\nStreaming ever down the steep.\r\n\r\nHills! prophets of the future,\r\nHills! teachers of the past,\r\nLike monuments to mighty gods\r\nUpon the broad earth cast.\r\nRob\'d in the purple heather,\r\nCrown\'d with the snow-white mist,\r\nKings sit they all together,\r\nVouchsafing to be kiss\'d\r\nBy the tender sunlight\r\nOnly when they list.\r\n\r\nThe unfathom\'d lakes lie meekly\r\nLooking upwards to the sky,\r\nAnd image forth the monarchs\r\nAs a dream or fantasy;\r\nAnd the hill-wind runneth o\'er them,\r\nSinging in Æolian strains,\r\nSinging of the earth\'s divineness\r\nTo the dwellers in the plains.');
/*!40000 ALTER TABLE `DRFAPI_test__main_poem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `DRFAPI_test__main_theme`
--

DROP TABLE IF EXISTS `DRFAPI_test__main_theme`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `DRFAPI_test__main_theme` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `theme` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `DRFAPI_test__main_theme`
--

LOCK TABLES `DRFAPI_test__main_theme` WRITE;
/*!40000 ALTER TABLE `DRFAPI_test__main_theme` DISABLE KEYS */;
INSERT INTO `DRFAPI_test__main_theme` VALUES (2,'About Countries and towns'),(3,'About Seasons'),(4,'About Hollydays'),(5,'About Nature'),(6,'About Daytime');
/*!40000 ALTER TABLE `DRFAPI_test__main_theme` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `DRFAPI_test__main_user`
--

DROP TABLE IF EXISTS `DRFAPI_test__main_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `DRFAPI_test__main_user` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  `phone` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`),
  UNIQUE KEY `phone` (`phone`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `DRFAPI_test__main_user`
--

LOCK TABLES `DRFAPI_test__main_user` WRITE;
/*!40000 ALTER TABLE `DRFAPI_test__main_user` DISABLE KEYS */;
INSERT INTO `DRFAPI_test__main_user` VALUES (1,'pbkdf2_sha256$600000$ThZoemKzuncDG6ZqphmmMO$m3YnPLWaTZDzUgRqSoUbJn8ynZo+bzm/rG105hNEjv8=','2023-11-05 21:15:03.462475',1,'admin','','','',1,1,'2023-11-03 10:00:05.137792',NULL);
/*!40000 ALTER TABLE `DRFAPI_test__main_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `DRFAPI_test__main_user_groups`
--

DROP TABLE IF EXISTS `DRFAPI_test__main_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `DRFAPI_test__main_user_groups` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` bigint NOT NULL,
  `group_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `DRFAPI_test__main_user_groups_user_id_group_id_fa201049_uniq` (`user_id`,`group_id`),
  KEY `DRFAPI_test__main_user_groups_group_id_2f535e11_fk_auth_group_id` (`group_id`),
  CONSTRAINT `DRFAPI_test__main_us_user_id_98fd1f56_fk_DRFAPI_te` FOREIGN KEY (`user_id`) REFERENCES `DRFAPI_test__main_user` (`id`),
  CONSTRAINT `DRFAPI_test__main_user_groups_group_id_2f535e11_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `DRFAPI_test__main_user_groups`
--

LOCK TABLES `DRFAPI_test__main_user_groups` WRITE;
/*!40000 ALTER TABLE `DRFAPI_test__main_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `DRFAPI_test__main_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `DRFAPI_test__main_user_user_permissions`
--

DROP TABLE IF EXISTS `DRFAPI_test__main_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `DRFAPI_test__main_user_user_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` bigint NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `DRFAPI_test__main_user_u_user_id_permission_id_49ebb512_uniq` (`user_id`,`permission_id`),
  KEY `DRFAPI_test__main_us_permission_id_b9f05346_fk_auth_perm` (`permission_id`),
  CONSTRAINT `DRFAPI_test__main_us_permission_id_b9f05346_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `DRFAPI_test__main_us_user_id_a2630491_fk_DRFAPI_te` FOREIGN KEY (`user_id`) REFERENCES `DRFAPI_test__main_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `DRFAPI_test__main_user_user_permissions`
--

LOCK TABLES `DRFAPI_test__main_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `DRFAPI_test__main_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `DRFAPI_test__main_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-11-06 22:30:54
