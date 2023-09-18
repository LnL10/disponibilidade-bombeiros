-- MariaDB dump 10.19  Distrib 10.4.27-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: laravel
-- ------------------------------------------------------
-- Server version	10.4.27-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `disponibilidades`
--

DROP TABLE IF EXISTS `disponibilidades`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `disponibilidades` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `DiaX` date DEFAULT NULL,
  `DisponibilidadeDeDia` tinyint(1) NOT NULL DEFAULT 0,
  `DisponibilidadeDeNoite` tinyint(1) NOT NULL DEFAULT 0,
  `user_id` bigint(20) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `disponibilidades_user_id_foreign` (`user_id`),
  CONSTRAINT `disponibilidades_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=72 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `disponibilidades`
--

LOCK TABLES `disponibilidades` WRITE;
/*!40000 ALTER TABLE `disponibilidades` DISABLE KEYS */;
INSERT INTO `disponibilidades` VALUES (25,'2002-05-10',1,0,1,'2023-08-05 23:49:51','2023-08-05 23:51:55'),(31,'2023-08-06',1,1,1,'2023-08-08 23:45:06','2023-08-13 12:32:08'),(38,'2023-08-31',1,1,1,'2023-08-08 23:48:03','2023-08-08 23:48:03'),(39,'2023-08-16',0,1,1,'2023-08-09 00:36:50','2023-08-16 21:51:51'),(40,'2023-08-21',0,1,1,'2023-08-10 08:41:58','2023-08-13 12:36:43'),(42,'2023-08-22',1,0,1,'2023-08-12 11:37:05','2023-08-13 12:36:32'),(43,'2023-08-20',1,1,1,'2023-08-12 11:37:24','2023-08-15 16:08:28'),(44,'2023-08-29',1,0,1,'2023-08-12 12:21:15','2023-08-12 12:21:15'),(45,'2023-08-24',1,0,1,'2023-08-12 12:39:14','2023-08-12 12:39:14'),(46,'2023-08-25',1,0,1,'2023-08-13 12:31:02','2023-08-13 12:31:02'),(47,'2023-08-10',0,1,1,'2023-08-13 12:31:09','2023-08-13 12:31:09'),(48,'2023-08-08',1,0,1,'2023-08-13 12:31:18','2023-08-13 12:31:24'),(49,'2023-08-19',1,1,1,'2023-08-13 12:36:19','2023-08-15 16:08:04'),(50,'2023-08-15',1,1,2,'2023-08-14 12:29:41','2023-08-14 12:29:41'),(51,'2023-08-17',1,1,2,'2023-08-14 12:29:45','2023-08-15 15:59:35'),(52,'2023-08-18',1,1,2,'2023-08-14 12:29:50','2023-08-14 12:29:50'),(53,'2023-08-10',1,1,3,'2023-08-15 15:54:53','2023-08-15 15:54:53'),(54,'2023-08-14',1,1,3,'2023-08-15 15:54:59','2023-08-15 15:54:59'),(55,'2023-08-16',1,1,3,'2023-08-15 15:55:03','2023-08-15 15:55:03'),(56,'2023-08-15',1,1,3,'2023-08-15 15:55:09','2023-08-15 15:55:09'),(57,'2023-08-17',1,1,3,'2023-08-15 15:57:47','2023-08-15 15:57:47'),(58,'2023-08-18',1,1,3,'2023-08-15 15:57:51','2023-08-15 15:57:51'),(59,'2023-08-19',1,1,3,'2023-08-15 15:57:57','2023-08-15 15:57:57'),(60,'2023-08-20',1,1,3,'2023-08-15 15:58:01','2023-08-15 15:58:01'),(61,'2023-08-16',1,1,2,'2023-08-15 15:59:14','2023-08-15 15:59:31'),(62,'2023-08-19',1,1,2,'2023-08-15 15:59:19','2023-08-15 15:59:19'),(63,'2023-08-20',1,1,2,'2023-08-15 15:59:25','2023-08-15 15:59:25'),(64,'2023-08-21',1,1,2,'2023-08-15 15:59:41','2023-08-15 15:59:41'),(65,'2023-08-22',1,1,2,'2023-08-15 15:59:47','2023-08-15 15:59:47'),(66,'2023-08-23',1,1,1,'2023-08-15 16:07:48','2023-08-15 16:07:48'),(67,'2023-08-17',1,1,1,'2023-08-15 16:07:56','2023-08-15 16:07:56'),(68,'2023-08-18',1,1,1,'2023-08-15 16:08:00','2023-08-15 16:08:00'),(69,'2023-08-26',1,1,1,'2023-08-16 13:18:53','2023-08-16 13:18:53'),(70,'2023-08-27',1,1,1,'2023-08-16 14:06:24','2023-08-16 14:06:24'),(71,'2023-09-01',1,1,1,'2023-08-16 17:25:57','2023-08-16 17:25:57');
/*!40000 ALTER TABLE `disponibilidades` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp(),
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
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (8,'2014_10_12_000000_create_users_table',1),(9,'2014_10_12_100000_create_password_reset_tokens_table',1),(10,'2014_10_12_200000_add_two_factor_columns_to_users_table',1),(11,'2019_08_19_000000_create_failed_jobs_table',1),(12,'2019_12_14_000001_create_personal_access_tokens_table',1),(13,'2023_08_05_233619_create_sessions_table',1),(14,'2023_08_05_235839_create_disponibilidades_table',1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_reset_tokens`
--

DROP TABLE IF EXISTS `password_reset_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
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
-- Table structure for table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) unsigned NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
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
-- Table structure for table `sessions`
--

DROP TABLE IF EXISTS `sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) unsigned DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `sessions_user_id_index` (`user_id`),
  KEY `sessions_last_activity_index` (`last_activity`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sessions`
--

LOCK TABLES `sessions` WRITE;
/*!40000 ALTER TABLE `sessions` DISABLE KEYS */;
INSERT INTO `sessions` VALUES ('aqAZKxiyaMAGkCrZNV5F3I0X0WX1jiugLYA0ThTD',NULL,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Code/1.81.1 Chrome/108.0.5359.215 Electron/22.3.18 Safari/537.36','YTozOntzOjY6Il90b2tlbiI7czo0MDoiQWloT0RsZ1lrbDQ1NHFOdDlIc3FMNlFBRm10UjJnWXZ4ckREY0JpaSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjc6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9sb2dpbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',1692224790),('AysppDFsIL5yi4zBVCImK6X9meiNZk93JfVRLDNT',NULL,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Code/1.81.1 Chrome/108.0.5359.215 Electron/22.3.18 Safari/537.36','YTo0OntzOjY6Il90b2tlbiI7czo0MDoieEVtcExKZzVSamRjdGZnaThEOWdoczk5NEFBSktoMzc4SjVaTWFwUSI7czozOiJ1cmwiO2E6MTp7czo4OiJpbnRlbmRlZCI7czo0MjoiaHR0cDovLzEyNy4wLjAuMTo4MDAwL2Rpc3BvbmliaWxpZGFkZS9tYWluIjt9czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDI6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9kaXNwb25pYmlsaWRhZGUvbWFpbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',1692224740),('Bvovl8THwt3twoyV9kjdd3J3zerD3u2W4phArnHl',NULL,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Code/1.81.1 Chrome/108.0.5359.215 Electron/22.3.18 Safari/537.36','YTo0OntzOjY6Il90b2tlbiI7czo0MDoicXBhdmFPa243bzU5QlJ2cjhkR1U2SE9WUGRpRFd2QkVHRVp3WmF6QSI7czozOiJ1cmwiO2E6MTp7czo4OiJpbnRlbmRlZCI7czo0MjoiaHR0cDovLzEyNy4wLjAuMTo4MDAwL2Rpc3BvbmliaWxpZGFkZS9tYWluIjt9czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDI6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9kaXNwb25pYmlsaWRhZGUvbWFpbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',1692224763),('liorkHCz3ifxKALWKWTyBvQ1fSkfxkqBN0YPdUMG',NULL,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Code/1.81.1 Chrome/108.0.5359.215 Electron/22.3.18 Safari/537.36','YTozOntzOjY6Il90b2tlbiI7czo0MDoibWxkMTNqcXNQczNKSmpYTEw2dWlhNGJDVVRWS2trOHpqdEJIMmFjdyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',1692224790),('NVYKnHSVrUZT8wAkX87t5JmOq13J3OuJFSGNyFU2',NULL,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Code/1.81.1 Chrome/108.0.5359.215 Electron/22.3.18 Safari/537.36','YToyOntzOjY6Il90b2tlbiI7czo0MDoiNUFwWXNZdUxrNDE4NlVZRWYzdUx1b2djTDNWZWd5b29XcURXbDJxUiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==',1692224798),('onGb49wjW8TaGXRhsmere3iyNBKSYPnXMZhvz1mJ',NULL,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Code/1.81.1 Chrome/108.0.5359.215 Electron/22.3.18 Safari/537.36','YTozOntzOjY6Il90b2tlbiI7czo0MDoianBza1ZYR3BkWVBGRGM5MGdXN0FZR1BJUHlGVk05ajQycVFjNXROQSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjc6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9sb2dpbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',1692224740),('r9MNkIBKtnY3W3IDnPccd9LIsf3mQ64kJWjyY5wh',NULL,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Code/1.81.1 Chrome/108.0.5359.215 Electron/22.3.18 Safari/537.36','YToyOntzOjY6Il90b2tlbiI7czo0MDoiVExOTk9wbjJTejAzalp2aHBtOGtydXRQa3AwUUdPcHdqWk9XeEdwdiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==',1692224757),('sdK0DO8eHCH5UzBnL3BYYzmiLCPb6b12b79wj5nC',1,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0','YTo0OntzOjY6Il90b2tlbiI7czo0MDoiSFM0YkhHU2pXRmtzcnNHaVNlV0tqTTB0eWszb29ncThqdlNIdUF3WCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9kaXNwb25pYmlsaWRhZGUvYWxsIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6MTt9',1692228151),('uGjWGjTlkJYXSx5jP4OKJyJFaMjjrQ7W9Yyihq6M',NULL,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Code/1.81.1 Chrome/108.0.5359.215 Electron/22.3.18 Safari/537.36','YTozOntzOjY6Il90b2tlbiI7czo0MDoiakhTNnhYQVNzb0FIU3dZc2lwN1MzWXNYaVhVWENMdVQybXRGWURybiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjc6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9sb2dpbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',1692224763),('zbbg2vDkQi4HCuG9dKhgHaI3mvGof3JblmKfd6kA',NULL,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Code/1.81.1 Chrome/108.0.5359.215 Electron/22.3.18 Safari/537.36','YToyOntzOjY6Il90b2tlbiI7czo0MDoiYVE1VE1xQ1dLWkhlaFVBQzJlakJCS3FUYmN6VzlQTkdhdHlMOXpHSiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==',1692224772);
/*!40000 ALTER TABLE `sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `two_factor_secret` text DEFAULT NULL,
  `two_factor_recovery_codes` text DEFAULT NULL,
  `two_factor_confirmed_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `current_team_id` bigint(20) unsigned DEFAULT NULL,
  `profile_photo_path` varchar(2048) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Leonel','lalt2002@gmail.com',NULL,'$2y$10$lagX3SZ27fHihvwkUt2UueCoe5j4kztLTAWV8Ys5QIzJsr7pU7huC',NULL,NULL,NULL,NULL,NULL,NULL,'2023-08-05 23:22:37','2023-08-05 23:22:37'),(2,'Isabel','imglt1972@gmail.com',NULL,'$2y$10$veehSF4rFctA8zsxcCrq.OM5Kv.uaxcC6Hpg5XDDKHuC43Tycw4ry',NULL,NULL,NULL,NULL,NULL,NULL,'2023-08-14 12:29:34','2023-08-14 12:29:34'),(3,'Beatriz','correiabea434@hotmail.com',NULL,'$2y$10$C2H9pn6vtCIwJ6XSTZ/ko.rtGHoUxFeSSL4dv8QR5TNLKvJYRChoW',NULL,NULL,NULL,NULL,NULL,NULL,'2023-08-15 15:54:38','2023-08-15 15:54:38');
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

-- Dump completed on 2023-08-17 14:28:29
