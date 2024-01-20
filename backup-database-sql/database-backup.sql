-- MySQL dump 10.13  Distrib 8.0.35, for Linux (x86_64)
--
-- Host: localhost    Database: staffstrive_app
-- ------------------------------------------------------
-- Server version	8.0.35-0ubuntu0.22.04.1

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
-- Table structure for table `departments`
--

DROP TABLE IF EXISTS `departments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `departments` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `departments`
--

LOCK TABLES `departments` WRITE;
/*!40000 ALTER TABLE `departments` DISABLE KEYS */;
INSERT INTO `departments` VALUES (1,'coba - edit','2024-01-20 03:45:54','2024-01-19 23:26:23','2024-01-20 03:45:54'),(2,'coba-2','2024-01-20 03:45:56','2024-01-19 23:26:30','2024-01-20 03:45:56'),(3,'coba-3','2024-01-20 03:45:59','2024-01-19 23:26:38','2024-01-20 03:45:59'),(4,'coba-4','2024-01-20 03:46:02','2024-01-19 23:26:43','2024-01-20 03:46:02'),(5,'Pengembangan  Produk',NULL,'2024-01-20 03:49:48','2024-01-20 03:49:48'),(6,'Penelitian dan Pengembangan',NULL,'2024-01-20 03:50:22','2024-01-20 03:50:22'),(7,'Analisis Bisnis',NULL,'2024-01-20 03:50:48','2024-01-20 03:50:48'),(8,'Infrastruktur dan Operasi',NULL,'2024-01-20 03:51:06','2024-01-20 03:51:06'),(9,'Penjualan dan Pemasaran',NULL,'2024-01-20 03:51:22','2024-01-20 03:51:22'),(10,'Layanan Pelanggan',NULL,'2024-01-20 03:51:35','2024-01-20 03:51:35'),(11,'Keuangan dan Administrasi',NULL,'2024-01-20 03:51:56','2024-01-20 03:51:56'),(12,'Sumber Daya Manusia',NULL,'2024-01-20 03:52:11','2024-01-20 03:52:11'),(13,'Hukum dan Kepatuhan',NULL,'2024-01-20 03:52:30','2024-01-20 03:52:30');
/*!40000 ALTER TABLE `departments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employees`
--

DROP TABLE IF EXISTS `employees`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employees` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `position_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gender` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `age` int DEFAULT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `employees_position_id_foreign` (`position_id`),
  CONSTRAINT `employees_position_id_foreign` FOREIGN KEY (`position_id`) REFERENCES `positions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=109 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employees`
--

LOCK TABLES `employees` WRITE;
/*!40000 ALTER TABLE `employees` DISABLE KEYS */;
INSERT INTO `employees` VALUES (5,1,'karyawan - coba 1','karyawancoba@mail.com','081111111111','female',29,'assets/employees/pA4LrjZ3twDQDxIv6dfpRMqc5rrkUHbMepsPu2Uy.png',1,'2024-01-20 03:45:53','2024-01-20 02:08:02','2024-01-20 03:45:53'),(6,3,'karyawan - coba 2','karyawancoba_2@mail.com','089000000000','female',30,'assets/employees/j3p7MWzklSIjnZCVpe1WoUHQKAsYviME43GPCd1T.jpg',1,'2024-01-20 03:45:53','2024-01-20 02:08:31','2024-01-20 03:45:53'),(7,5,'karyawan - coba 3','karyawancoba_3@mail.com','089662512388','female',35,'assets/employees/01cUQ2dyb9Ra0adaD8inSalu2SM0VdL7YuM45JSU.png',1,'2024-01-20 03:45:59','2024-01-20 02:13:54','2024-01-20 03:45:59'),(8,3,'karyawan - coba 4','karyawan_5@mail.com','082514789612','male',30,'assets/employees/C5iQFJ0K37K379ZYoYg2XaaNFw2tTaLZLeT3SRl2.jpg',1,'2024-01-20 03:45:53','2024-01-20 03:18:12','2024-01-20 03:45:53'),(9,27,'Neil Thiel Sr.','summer33@example.org','986-591-1931','male',24,'https://via.placeholder.com/640x480.png/008888?text=animals+rem',1,NULL,'2024-01-20 04:27:01','2024-01-20 04:27:01'),(10,8,'Laney Howell','yherzog@example.org','803-995-2815','female',51,'https://via.placeholder.com/640x480.png/003300?text=animals+voluptas',1,NULL,'2024-01-20 04:27:01','2024-01-20 04:27:01'),(11,21,'Dr. Junius Mayer','xwilderman@example.org','901-761-9287','male',53,'https://via.placeholder.com/640x480.png/00ff66?text=animals+est',1,NULL,'2024-01-20 04:27:01','2024-01-20 04:27:01'),(12,28,'Mr. Jordan Wilderman','douglas.mercedes@example.net','754-922-5967','female',31,'https://via.placeholder.com/640x480.png/002200?text=animals+inventore',1,NULL,'2024-01-20 04:27:01','2024-01-20 04:27:01'),(13,12,'Dr. Jacey Boehm IV','jett.kub@example.org','+1 (315) 807-5956','male',34,'https://via.placeholder.com/640x480.png/006622?text=animals+voluptate',1,NULL,'2024-01-20 04:27:01','2024-01-20 04:27:01'),(14,15,'Rosemary Wilkinson','iebert@example.net','(360) 471-4045','female',43,'https://via.placeholder.com/640x480.png/0000cc?text=animals+optio',1,NULL,'2024-01-20 04:27:02','2024-01-20 04:27:02'),(15,10,'Mrs. Tess Pollich MD','oruecker@example.net','+1.220.855.5605','female',19,'https://via.placeholder.com/640x480.png/00dd33?text=animals+illum',1,NULL,'2024-01-20 04:27:03','2024-01-20 04:27:03'),(16,6,'Mr. Art Goodwin','armstrong.celine@example.com','(360) 375-4110','female',53,'https://via.placeholder.com/640x480.png/0000aa?text=animals+hic',1,NULL,'2024-01-20 04:27:03','2024-01-20 04:27:03'),(17,12,'Ayden Deckow','boehm.marcos@example.net','689.753.5169','female',34,'https://via.placeholder.com/640x480.png/0033bb?text=animals+nobis',1,NULL,'2024-01-20 04:27:03','2024-01-20 04:27:03'),(18,32,'Landen Fadel','jacobi.melody@example.org','445-244-5290','male',57,'https://via.placeholder.com/640x480.png/00aa22?text=animals+qui',1,NULL,'2024-01-20 04:27:03','2024-01-20 04:27:03'),(19,30,'Dr. Carmelo Padberg','rubye41@example.com','1-503-758-2883','male',51,'https://via.placeholder.com/640x480.png/00ee00?text=animals+est',1,NULL,'2024-01-20 04:27:04','2024-01-20 04:27:04'),(20,31,'Schuyler Turcotte Sr.','jewel.huels@example.org','+1.586.931.7314','male',49,'https://via.placeholder.com/640x480.png/0022aa?text=animals+vero',1,NULL,'2024-01-20 04:27:04','2024-01-20 04:27:04'),(21,7,'Hilbert Ritchie','jordon26@example.org','478.604.0097','male',34,'https://via.placeholder.com/640x480.png/003333?text=animals+debitis',1,NULL,'2024-01-20 04:27:04','2024-01-20 04:27:04'),(22,22,'Prof. Granville Fadel III','hudson.amiya@example.org','+1.341.366.7688','female',24,'https://via.placeholder.com/640x480.png/00bbaa?text=animals+sequi',1,NULL,'2024-01-20 04:27:04','2024-01-20 04:27:04'),(23,21,'Corine Schneider','effertz.evangeline@example.com','442.344.3711','female',56,'https://via.placeholder.com/640x480.png/009900?text=animals+excepturi',1,NULL,'2024-01-20 04:27:04','2024-01-20 04:27:04'),(24,9,'Dorris Reichert','waelchi.amelia@example.net','(341) 482-8112','female',60,'https://via.placeholder.com/640x480.png/00ffee?text=animals+quibusdam',1,NULL,'2024-01-20 04:27:04','2024-01-20 04:27:04'),(25,12,'Miss Janet Casper II','jimmy12@example.com','(770) 663-7994','male',36,'https://via.placeholder.com/640x480.png/00dd00?text=animals+ipsam',1,NULL,'2024-01-20 04:27:04','2024-01-20 04:27:04'),(26,15,'Pierre Gleichner','lrunolfsson@example.com','(316) 629-1039','female',31,'https://via.placeholder.com/640x480.png/001166?text=animals+ipsam',1,NULL,'2024-01-20 04:27:04','2024-01-20 04:27:04'),(27,7,'Mrs. Ivy Kuhn II','yorn@example.net','(424) 958-1565','male',33,'https://via.placeholder.com/640x480.png/003377?text=animals+voluptas',1,NULL,'2024-01-20 04:27:04','2024-01-20 04:27:04'),(28,31,'Coy Lehner','bailey.vada@example.com','1-321-536-6556','female',44,'https://via.placeholder.com/640x480.png/00dd99?text=animals+sit',1,NULL,'2024-01-20 04:27:04','2024-01-20 04:27:04'),(29,15,'Earlene Funk','gutmann.federico@example.net','(814) 756-6659','female',36,'https://via.placeholder.com/640x480.png/00dd77?text=animals+molestiae',1,NULL,'2024-01-20 04:27:05','2024-01-20 04:27:05'),(30,18,'Buford Breitenberg Sr.','lennie.jaskolski@example.com','+18319627311','female',33,'https://via.placeholder.com/640x480.png/003300?text=animals+ut',1,NULL,'2024-01-20 04:27:05','2024-01-20 04:27:05'),(31,16,'Lester Boyle','johnathan95@example.com','248-673-7067','female',60,'https://via.placeholder.com/640x480.png/008866?text=animals+ipsam',1,NULL,'2024-01-20 04:27:05','2024-01-20 04:27:05'),(32,23,'Kasey Mueller','roxane62@example.com','1-305-440-8009','female',27,'https://via.placeholder.com/640x480.png/005533?text=animals+et',1,NULL,'2024-01-20 04:27:05','2024-01-20 04:27:05'),(33,17,'Demetris Kshlerin','fadel.america@example.net','(863) 441-9129','female',33,'https://via.placeholder.com/640x480.png/0022aa?text=animals+ab',1,NULL,'2024-01-20 04:27:05','2024-01-20 04:27:05'),(34,11,'Devin Windler','nader.leo@example.com','740-304-8056','female',34,'https://via.placeholder.com/640x480.png/00ee44?text=animals+minus',1,NULL,'2024-01-20 04:27:05','2024-01-20 04:27:05'),(35,8,'Tavares Cormier','gward@example.net','+1 (276) 723-7760','male',48,'https://via.placeholder.com/640x480.png/004499?text=animals+nihil',1,NULL,'2024-01-20 04:27:05','2024-01-20 04:27:05'),(36,31,'Mrs. Heaven Vandervort PhD','parker.liliana@example.com','+1-571-606-4615','male',24,'https://via.placeholder.com/640x480.png/00dd66?text=animals+sapiente',1,NULL,'2024-01-20 04:27:05','2024-01-20 04:27:05'),(37,18,'Hallie Bahringer PhD','xschaden@example.com','(413) 466-6413','female',46,'https://via.placeholder.com/640x480.png/008800?text=animals+voluptatum',1,NULL,'2024-01-20 04:27:06','2024-01-20 04:27:06'),(38,14,'Dr. Hallie Douglas Sr.','kacie.hahn@example.com','+1-951-856-7173','male',36,'https://via.placeholder.com/640x480.png/00aaee?text=animals+autem',1,NULL,'2024-01-20 04:27:06','2024-01-20 04:27:06'),(39,29,'Shawna Haley DVM','sage63@example.com','561.767.3703','female',33,'https://via.placeholder.com/640x480.png/00ee66?text=animals+molestiae',1,NULL,'2024-01-20 04:27:06','2024-01-20 04:27:06'),(40,28,'Blake Purdy I','bergnaum.wilfred@example.net','+1-334-836-0066','male',35,'https://via.placeholder.com/640x480.png/00eebb?text=animals+commodi',1,NULL,'2024-01-20 04:27:06','2024-01-20 04:27:06'),(41,23,'Prof. Odie Johns','cremin.jacklyn@example.com','+1.480.588.1997','female',55,'https://via.placeholder.com/640x480.png/0066cc?text=animals+nesciunt',1,NULL,'2024-01-20 04:27:06','2024-01-20 04:27:06'),(42,15,'Prof. Arnold Zboncak V','lindgren.marilie@example.org','1-715-271-1154','female',55,'https://via.placeholder.com/640x480.png/001133?text=animals+assumenda',1,NULL,'2024-01-20 04:27:06','2024-01-20 04:27:06'),(43,25,'Rowland Torp','reynolds.reina@example.net','+1.208.306.5677','female',22,'https://via.placeholder.com/640x480.png/00dd11?text=animals+enim',1,NULL,'2024-01-20 04:27:07','2024-01-20 04:27:07'),(44,30,'Leif Conn','keven.blick@example.com','629.266.7247','male',38,'https://via.placeholder.com/640x480.png/005555?text=animals+dicta',1,NULL,'2024-01-20 04:27:07','2024-01-20 04:27:07'),(45,8,'Nicole Balistreri','aufderhar.heber@example.org','1-234-800-7761','female',34,'https://via.placeholder.com/640x480.png/0077aa?text=animals+velit',1,NULL,'2024-01-20 04:27:07','2024-01-20 04:27:07'),(46,16,'Clarabelle Buckridge III','sdeckow@example.com','+1-681-666-4702','female',21,'https://via.placeholder.com/640x480.png/00cccc?text=animals+quos',1,NULL,'2024-01-20 04:27:07','2024-01-20 04:27:07'),(47,16,'Zander Bode','npagac@example.net','+1-551-479-6338','female',52,'https://via.placeholder.com/640x480.png/00cc77?text=animals+occaecati',1,NULL,'2024-01-20 04:27:07','2024-01-20 04:27:07'),(48,23,'Walker Bruen','wanda10@example.net','+1.401.243.6677','female',55,'https://via.placeholder.com/640x480.png/003366?text=animals+qui',1,NULL,'2024-01-20 04:27:07','2024-01-20 04:27:07'),(49,30,'Laura Waelchi','citlalli.swaniawski@example.org','(916) 734-3886','female',37,'https://via.placeholder.com/640x480.png/0066bb?text=animals+quae',1,NULL,'2024-01-20 04:27:07','2024-01-20 04:27:07'),(50,20,'Ms. Adrianna Durgan','pmacejkovic@example.com','(216) 957-6068','male',26,'https://via.placeholder.com/640x480.png/005522?text=animals+modi',1,NULL,'2024-01-20 04:27:07','2024-01-20 04:27:07'),(51,23,'Prof. Thurman Kunze DVM','howe.rowena@example.net','+1-231-523-8747','female',40,'https://via.placeholder.com/640x480.png/009955?text=animals+et',1,NULL,'2024-01-20 04:27:08','2024-01-20 04:27:08'),(52,27,'Tamia Kassulke','angelita37@example.net','681-604-0831','male',52,'https://via.placeholder.com/640x480.png/0011bb?text=animals+aut',1,NULL,'2024-01-20 04:27:08','2024-01-20 04:27:08'),(53,14,'Orion Boyle','torp.wilton@example.com','831-534-7150','male',41,'https://via.placeholder.com/640x480.png/001166?text=animals+dolorem',1,NULL,'2024-01-20 04:27:08','2024-01-20 04:27:08'),(54,20,'Verdie Morar','mmarvin@example.org','929.579.8114','female',51,'https://via.placeholder.com/640x480.png/00ee77?text=animals+sint',1,NULL,'2024-01-20 04:27:08','2024-01-20 04:27:08'),(55,32,'Ms. Alexandrine Dare','carlie22@example.net','+1 (732) 414-3542','female',20,'https://via.placeholder.com/640x480.png/00dd77?text=animals+optio',1,NULL,'2024-01-20 04:27:08','2024-01-20 04:27:08'),(56,26,'Chyna Wisoky','rae.wolf@example.com','1-680-641-0714','female',23,'https://via.placeholder.com/640x480.png/00bb55?text=animals+quis',1,NULL,'2024-01-20 04:27:09','2024-01-20 04:27:09'),(57,26,'Kamille Kunze','ftorphy@example.com','732.996.1898','male',23,'https://via.placeholder.com/640x480.png/00ccbb?text=animals+voluptatem',1,NULL,'2024-01-20 04:27:09','2024-01-20 04:27:09'),(58,12,'Johnny Dach','zconnelly@example.com','(952) 355-7692','male',58,'https://via.placeholder.com/640x480.png/00dd99?text=animals+perspiciatis',1,NULL,'2024-01-20 04:27:09','2024-01-20 04:27:09'),(59,31,'Prof. Ashly Parisian DVM','gennaro03@example.com','+1-863-367-3560','male',57,'https://via.placeholder.com/640x480.png/0088ee?text=animals+incidunt',1,NULL,'2024-01-20 05:50:40','2024-01-20 05:50:40'),(60,15,'Nestor Cruickshank','shanie88@example.net','724-408-4578','female',49,'https://via.placeholder.com/640x480.png/002233?text=animals+et',1,NULL,'2024-01-20 05:50:41','2024-01-20 05:50:41'),(61,7,'Dr. Jared Blanda','lernser@example.net','+1.912.472.4719','female',49,'https://via.placeholder.com/640x480.png/00ee00?text=animals+quidem',1,NULL,'2024-01-20 05:50:41','2024-01-20 05:50:41'),(62,7,'Dr. Brandyn Moen','opaucek@example.com','470-498-0117','male',44,'https://via.placeholder.com/640x480.png/000044?text=animals+voluptates',1,NULL,'2024-01-20 05:50:41','2024-01-20 05:50:41'),(63,28,'Miss Abbigail Schneider','benedict26@example.net','+1 (941) 970-5730','male',38,'https://via.placeholder.com/640x480.png/00bbbb?text=animals+et',1,NULL,'2024-01-20 05:50:41','2024-01-20 05:50:41'),(64,22,'Ethyl Murray PhD','ethelyn62@example.org','+1.223.530.1159','male',52,'https://via.placeholder.com/640x480.png/001144?text=animals+dignissimos',1,NULL,'2024-01-20 05:50:41','2024-01-20 05:50:41'),(65,23,'Prof. Braden Marquardt','schmitt.ayana@example.com','+1-830-752-8431','male',49,'https://via.placeholder.com/640x480.png/00dd88?text=animals+explicabo',1,NULL,'2024-01-20 05:50:41','2024-01-20 05:50:41'),(66,9,'Garnett Shanahan','nick.streich@example.net','+14304642097','male',33,'https://via.placeholder.com/640x480.png/005588?text=animals+possimus',1,NULL,'2024-01-20 05:50:41','2024-01-20 05:50:41'),(67,6,'Ms. Dakota Collins Sr.','chanelle.fisher@example.com','+1-270-726-3406','male',32,'https://via.placeholder.com/640x480.png/00aa55?text=animals+distinctio',1,NULL,'2024-01-20 05:50:41','2024-01-20 05:50:41'),(68,29,'Nathanael Schimmel','igulgowski@example.net','1-573-467-3189','female',52,'https://via.placeholder.com/640x480.png/0033bb?text=animals+quia',1,NULL,'2024-01-20 05:50:41','2024-01-20 05:50:41'),(69,23,'Unique Goldner','stiedemann.sanford@example.net','+1-702-357-0546','female',46,'https://via.placeholder.com/640x480.png/00aa66?text=animals+voluptas',1,NULL,'2024-01-20 05:50:42','2024-01-20 05:50:42'),(70,20,'Mitchell Veum','frederick87@example.org','724.988.8272','female',57,'https://via.placeholder.com/640x480.png/008811?text=animals+et',1,NULL,'2024-01-20 05:50:42','2024-01-20 05:50:42'),(71,9,'Jeanette Glover MD','sammy39@example.net','240.339.5492','male',54,'https://via.placeholder.com/640x480.png/00aaee?text=animals+enim',1,NULL,'2024-01-20 05:50:42','2024-01-20 05:50:42'),(72,14,'Anika Russel','xzavier02@example.org','+1-520-302-6090','male',43,'https://via.placeholder.com/640x480.png/00cc33?text=animals+modi',1,NULL,'2024-01-20 05:50:42','2024-01-20 05:50:42'),(73,8,'Paris Lind','michaela20@example.net','484-571-0670','male',38,'https://via.placeholder.com/640x480.png/0066aa?text=animals+eaque',1,NULL,'2024-01-20 05:50:42','2024-01-20 05:50:42'),(74,14,'Mr. Deon Wehner','price.brakus@example.net','+1-934-227-4367','female',28,'https://via.placeholder.com/640x480.png/00cc77?text=animals+dolores',1,NULL,'2024-01-20 05:50:42','2024-01-20 05:50:42'),(75,27,'Prof. Avis Murray','pmarks@example.com','+1-938-229-0608','female',25,'https://via.placeholder.com/640x480.png/00cc22?text=animals+iure',1,NULL,'2024-01-20 05:50:42','2024-01-20 05:50:42'),(76,7,'Ms. Arlie Cummings I','jerry.ratke@example.com','806.324.7109','female',31,'https://via.placeholder.com/640x480.png/0077cc?text=animals+recusandae',1,NULL,'2024-01-20 05:50:43','2024-01-20 05:50:43'),(77,16,'Dr. Conner Schimmel','adelbert07@example.org','478-501-0313','female',43,'https://via.placeholder.com/640x480.png/005588?text=animals+nobis',1,NULL,'2024-01-20 05:50:43','2024-01-20 05:50:43'),(78,20,'Enid Roberts','mohr.tamara@example.org','+14802621463','female',54,'https://via.placeholder.com/640x480.png/009988?text=animals+error',1,NULL,'2024-01-20 05:50:43','2024-01-20 05:50:43'),(79,16,'Ewald Hoppe','helmer21@example.com','1-351-591-5652','female',22,'https://via.placeholder.com/640x480.png/00eebb?text=animals+et',1,NULL,'2024-01-20 05:50:43','2024-01-20 05:50:43'),(80,14,'Marcella Nicolas','grimes.adrain@example.com','+1.520.417.1923','female',27,'https://via.placeholder.com/640x480.png/00eedd?text=animals+doloremque',1,NULL,'2024-01-20 05:50:43','2024-01-20 05:50:43'),(81,24,'Prof. Ike Sporer','lueilwitz.andres@example.net','678.631.2548','male',58,'https://via.placeholder.com/640x480.png/007799?text=animals+nihil',1,NULL,'2024-01-20 05:50:43','2024-01-20 05:50:43'),(82,19,'Arlo O\'Connell','donna.moore@example.com','805-579-9176','female',38,'https://via.placeholder.com/640x480.png/002222?text=animals+impedit',1,NULL,'2024-01-20 05:50:43','2024-01-20 05:50:43'),(83,17,'Meagan Goldner','fay.mohammad@example.org','+1-346-282-6442','male',23,'https://via.placeholder.com/640x480.png/00ff66?text=animals+ad',1,NULL,'2024-01-20 05:50:43','2024-01-20 05:50:43'),(84,13,'Ms. Muriel O\'Keefe','mckenzie.cullen@example.org','+12766489649','female',47,'https://via.placeholder.com/640x480.png/001199?text=animals+culpa',1,NULL,'2024-01-20 05:50:43','2024-01-20 05:50:43'),(85,29,'Ezekiel Towne','vlynch@example.org','+19493476483','male',44,'https://via.placeholder.com/640x480.png/00bbee?text=animals+reiciendis',1,NULL,'2024-01-20 05:50:44','2024-01-20 05:50:44'),(86,21,'Geovany Stamm IV','rleannon@example.com','256.938.4568','female',30,'https://via.placeholder.com/640x480.png/00bbcc?text=animals+autem',1,NULL,'2024-01-20 05:50:44','2024-01-20 05:50:44'),(87,26,'Cathryn Schuster','bschmidt@example.com','573-418-8942','female',45,'https://via.placeholder.com/640x480.png/000011?text=animals+sit',1,NULL,'2024-01-20 05:50:44','2024-01-20 05:50:44'),(88,11,'Ken Krajcik','von.ferne@example.net','(352) 329-1205','female',56,'https://via.placeholder.com/640x480.png/00ffbb?text=animals+dolores',1,NULL,'2024-01-20 05:50:45','2024-01-20 05:50:45'),(89,12,'Jerel O\'Reilly V','price.maryam@example.com','253-287-7193','female',28,'https://via.placeholder.com/640x480.png/00ddaa?text=animals+ipsum',1,NULL,'2024-01-20 05:50:46','2024-01-20 05:50:46'),(90,30,'Meta Kuhic','bradtke.samantha@example.com','726-674-9635','male',32,'https://via.placeholder.com/640x480.png/004411?text=animals+optio',1,NULL,'2024-01-20 05:50:46','2024-01-20 05:50:46'),(91,26,'Flavie Pfeffer Sr.','zleannon@example.com','1-929-679-7911','female',27,'https://via.placeholder.com/640x480.png/00bb66?text=animals+velit',1,NULL,'2024-01-20 05:50:48','2024-01-20 05:50:48'),(92,12,'Jamison Weber','brown.cornelius@example.net','351.841.7659','male',28,'https://via.placeholder.com/640x480.png/00ff44?text=animals+earum',1,NULL,'2024-01-20 05:50:48','2024-01-20 05:50:48'),(93,30,'Ms. Blanche Terry','macejkovic.hank@example.com','934-540-7502','female',30,'https://via.placeholder.com/640x480.png/0022cc?text=animals+et',1,NULL,'2024-01-20 05:50:48','2024-01-20 05:50:48'),(94,11,'Cielo Ebert','lois51@example.net','954-761-9100','male',42,'https://via.placeholder.com/640x480.png/007711?text=animals+fuga',1,NULL,'2024-01-20 05:50:48','2024-01-20 05:50:48'),(95,14,'Mrs. Eulalia Bailey IV','anastasia86@example.net','703.461.4953','female',31,'https://via.placeholder.com/640x480.png/00ee55?text=animals+ut',1,NULL,'2024-01-20 05:50:48','2024-01-20 05:50:48'),(96,23,'Mrs. Amber Mosciski DDS','cwilliamson@example.com','(754) 422-8239','male',45,'https://via.placeholder.com/640x480.png/00ddff?text=animals+accusamus',1,NULL,'2024-01-20 05:50:48','2024-01-20 05:50:48'),(97,27,'Timothy Boyle','gibson.alva@example.net','(310) 313-6053','female',44,'https://via.placeholder.com/640x480.png/008866?text=animals+veniam',1,NULL,'2024-01-20 05:50:48','2024-01-20 05:50:48'),(98,13,'Prof. Adeline Yundt','allie.sanford@example.net','267.587.9633','female',26,'https://via.placeholder.com/640x480.png/00ffee?text=animals+illum',1,NULL,'2024-01-20 05:50:48','2024-01-20 05:50:48'),(99,10,'Dr. Leif Homenick','dreynolds@example.net','1-831-422-0037','female',24,'https://via.placeholder.com/640x480.png/0000dd?text=animals+qui',1,NULL,'2024-01-20 05:50:49','2024-01-20 05:50:49'),(100,31,'Abbey Rosenbaum II','cecile.west@example.org','+1-352-486-7322','male',36,'https://via.placeholder.com/640x480.png/0033aa?text=animals+laudantium',1,NULL,'2024-01-20 05:50:49','2024-01-20 05:50:49'),(101,15,'Lorena Yundt','shields.walter@example.com','(360) 816-2206','male',49,'https://via.placeholder.com/640x480.png/005511?text=animals+non',1,NULL,'2024-01-20 05:50:49','2024-01-20 05:50:49'),(102,25,'Josefa Harvey III','leann84@example.org','913-381-8107','male',27,'https://via.placeholder.com/640x480.png/0000bb?text=animals+distinctio',1,NULL,'2024-01-20 05:50:49','2024-01-20 05:50:49'),(103,26,'Johnny Hagenes','iadams@example.com','+1.972.408.3336','female',38,'https://via.placeholder.com/640x480.png/0044dd?text=animals+occaecati',1,NULL,'2024-01-20 05:50:49','2024-01-20 05:50:49'),(104,11,'Mrs. Kiara Pfeffer','kiel.koch@example.org','1-734-879-6807','female',54,'https://via.placeholder.com/640x480.png/009966?text=animals+voluptatibus',1,NULL,'2024-01-20 05:50:50','2024-01-20 05:50:50'),(105,28,'Beulah Friesen','autumn62@example.org','1-769-314-0013','male',21,'https://via.placeholder.com/640x480.png/006622?text=animals+debitis',1,NULL,'2024-01-20 05:50:50','2024-01-20 05:50:50'),(106,32,'Prof. Deshaun Sawayn','thauck@example.com','727.298.9480','female',28,'https://via.placeholder.com/640x480.png/00aa33?text=animals+enim',1,NULL,'2024-01-20 05:50:50','2024-01-20 05:50:50'),(107,9,'Mrs. Jessyca Lind','roger.bashirian@example.net','+1-208-258-9514','male',47,'https://via.placeholder.com/640x480.png/00cc55?text=animals+alias',1,NULL,'2024-01-20 05:50:50','2024-01-20 05:50:50'),(108,11,'Gracie Hills','block.litzy@example.net','+1-689-418-2941','female',24,'https://via.placeholder.com/640x480.png/007711?text=animals+amet',1,NULL,'2024-01-20 05:50:51','2024-01-20 05:50:51');
/*!40000 ALTER TABLE `employees` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `failed_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `failed_jobs`
--

LOCK TABLES `failed_jobs` WRITE;
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2014_10_12_000000_create_users_table',1),(2,'2014_10_12_100000_create_password_reset_tokens_table',1),(3,'2014_10_12_100000_create_password_resets_table',1),(4,'2019_08_19_000000_create_failed_jobs_table',1),(5,'2019_12_14_000001_create_personal_access_tokens_table',1),(6,'2024_01_18_154058_create_departments_table',1),(7,'2024_01_18_154408_create_positions_table',1),(8,'2024_01_18_154420_create_employees_table',1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_reset_tokens`
--

DROP TABLE IF EXISTS `password_reset_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_reset_tokens`
--

LOCK TABLES `password_reset_tokens` WRITE;
/*!40000 ALTER TABLE `password_reset_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_reset_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_resets`
--

LOCK TABLES `password_resets` WRITE;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `personal_access_tokens` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personal_access_tokens`
--

LOCK TABLES `personal_access_tokens` WRITE;
/*!40000 ALTER TABLE `personal_access_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `personal_access_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `positions`
--

DROP TABLE IF EXISTS `positions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `positions` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `department_id` bigint unsigned NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `positions_department_id_foreign` (`department_id`),
  CONSTRAINT `positions_department_id_foreign` FOREIGN KEY (`department_id`) REFERENCES `departments` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `positions`
--

LOCK TABLES `positions` WRITE;
/*!40000 ALTER TABLE `positions` DISABLE KEYS */;
INSERT INTO `positions` VALUES (1,1,'position_input_user','2024-01-20 03:45:53','2024-01-19 23:26:50','2024-01-20 03:45:53'),(2,1,'position_input_user_2','2024-01-20 03:45:53','2024-01-19 23:26:58','2024-01-20 03:45:53'),(3,1,'position_input_user_3','2024-01-20 03:45:53','2024-01-19 23:27:07','2024-01-20 03:45:53'),(4,2,'position_input_user--coba_2-1','2024-01-20 03:45:56','2024-01-19 23:27:17','2024-01-20 03:45:56'),(5,3,'position_input_user--coba_3-1','2024-01-20 03:45:59','2024-01-19 23:27:34','2024-01-20 03:45:59'),(6,5,'Analisis Big Data',NULL,'2024-01-20 03:53:08','2024-01-20 03:55:16'),(7,5,'Pengembangan Perangkat Lunak Big Data',NULL,'2024-01-20 03:53:35','2024-01-20 03:55:06'),(8,5,'Pengembangan UI / UX',NULL,'2024-01-20 03:54:00','2024-01-20 03:54:00'),(9,6,'Peneliti Big Data',NULL,'2024-01-20 03:54:24','2024-01-20 03:54:24'),(10,6,'Insinyur Data',NULL,'2024-01-20 03:54:37','2024-01-20 03:55:27'),(11,6,'Stastikian',NULL,'2024-01-20 03:55:52','2024-01-20 03:55:52'),(12,7,'Spesialis Business Intelligence',NULL,'2024-01-20 03:56:45','2024-01-20 03:56:45'),(13,7,'Konsultan Strategi Bisnis',NULL,'2024-01-20 03:57:01','2024-01-20 03:57:01'),(14,7,'Analis Kinerja Bisnis',NULL,'2024-01-20 03:57:30','2024-01-20 03:57:30'),(15,8,'Administrator Database',NULL,'2024-01-20 03:57:57','2024-01-20 03:57:57'),(16,8,'Enginerer Jaringan',NULL,'2024-01-20 03:58:11','2024-01-20 03:58:11'),(17,8,'Teknisi Keamanan Informasi',NULL,'2024-01-20 03:58:25','2024-01-20 03:58:25'),(18,9,'Manajer Penjualan',NULL,'2024-01-20 03:58:49','2024-01-20 03:58:49'),(19,9,'Spesialis Penjualan Solusi Big Data',NULL,'2024-01-20 03:59:19','2024-01-20 03:59:19'),(20,9,'Koordinator Pemasaran Digital',NULL,'2024-01-20 03:59:43','2024-01-20 03:59:43'),(21,10,'Spesialis Implementasi',NULL,'2024-01-20 04:00:04','2024-01-20 04:00:04'),(22,10,'Analis Dukungan Teknis',NULL,'2024-01-20 04:00:21','2024-01-20 04:00:21'),(23,10,'Ahli Pelatihan Pengguna',NULL,'2024-01-20 04:00:36','2024-01-20 04:00:36'),(24,11,'Akuntan',NULL,'2024-01-20 04:00:53','2024-01-20 04:00:53'),(25,11,'Spesialis Pajak',NULL,'2024-01-20 04:01:08','2024-01-20 04:01:08'),(26,11,'Manajer Keuangan',NULL,'2024-01-20 04:01:21','2024-01-20 04:01:21'),(27,12,'Manajer Pengembangan SDM',NULL,'2024-01-20 04:02:11','2024-01-20 04:02:11'),(28,12,'Rekrutmen dan Seleksi',NULL,'2024-01-20 04:02:24','2024-01-20 04:02:24'),(29,12,'Spesialis Pengembangan Karyawan',NULL,'2024-01-20 04:02:38','2024-01-20 04:02:38'),(30,13,'Pengacara Perusahaan',NULL,'2024-01-20 04:02:54','2024-01-20 04:02:54'),(31,13,'Spesialis Kepatuhan',NULL,'2024-01-20 04:03:08','2024-01-20 04:03:08'),(32,13,'Auditor Internal',NULL,'2024-01-20 04:03:27','2024-01-20 04:03:27');
/*!40000 ALTER TABLE `positions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'admin','admin@mail.com',NULL,'$2y$12$kIzBSHvIkz838hKUTtc2xeu.c8lRvhc61e24a4.5ZpIkooI2G9CPq',NULL,'2024-01-19 23:26:01','2024-01-19 23:26:01');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-01-20 19:52:41
