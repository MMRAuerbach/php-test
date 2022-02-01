# ************************************************************
# Sequel Pro SQL dump
# Version 4541
#
# http://www.sequelpro.com/
# https://github.com/sequelpro/sequelpro
#
# Host: 127.0.0.1 (MySQL 5.7.32)
# Database: student
# Generation Time: 2021-11-21 14:14:07 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table houses
# ------------------------------------------------------------

DROP TABLE IF EXISTS `houses`;

CREATE TABLE `houses` (
                          `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
                          `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
                          `colour` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
                          `created_at` timestamp NULL DEFAULT NULL,
                          `updated_at` timestamp NULL DEFAULT NULL,
                          PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `houses` WRITE;
/*!40000 ALTER TABLE `houses` DISABLE KEYS */;

INSERT INTO `houses` (`id`, `name`, `colour`, `created_at`, `updated_at`)
VALUES
    (1,'Griffoendor','#000','2021-07-05 11:50:12','2021-07-05 11:50:12'),
    (2,'Zwadderig','#111','2021-07-05 11:50:12','2021-07-05 11:50:12'),
    (3,'Huffelpuf','#222','2021-07-05 11:50:12','2021-07-05 11:50:12'),
    (4,'Ravenklauw','#333','2021-07-05 11:50:12','2021-07-05 11:50:12');

/*!40000 ALTER TABLE `houses` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table points
# ------------------------------------------------------------

DROP TABLE IF EXISTS `points`;

CREATE TABLE `points` (
                          `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
                          `amount` int(11) NOT NULL,
                          `user_id` bigint(20) unsigned NOT NULL,
                          `house_id` int(10) unsigned NOT NULL,
                          `student_id` int(10) unsigned DEFAULT NULL,
                          `created_at` timestamp NULL DEFAULT NULL,
                          `updated_at` timestamp NULL DEFAULT NULL,
                          PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table roles
# ------------------------------------------------------------

DROP TABLE IF EXISTS `roles`;

CREATE TABLE `roles` (
                         `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
                         `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
                         `created_at` timestamp NULL DEFAULT NULL,
                         `updated_at` timestamp NULL DEFAULT NULL,
                         PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;

INSERT INTO `roles` (`id`, `name`, `created_at`, `updated_at`)
VALUES
    (1,'Professor','2021-07-05 11:50:12','2021-07-05 11:50:12'),
    (2,'Afdelingshoofd','2021-07-05 11:50:12','2021-07-05 11:50:12');

/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table students
# ------------------------------------------------------------

DROP TABLE IF EXISTS `students`;

CREATE TABLE `students` (
                            `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
                            `house_id` int(10) unsigned NOT NULL,
                            `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
                            `dob` date NOT NULL,
                            `created_at` timestamp NULL DEFAULT NULL,
                            `updated_at` timestamp NULL DEFAULT NULL,
                            PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `students` WRITE;
/*!40000 ALTER TABLE `students` DISABLE KEYS */;

INSERT INTO `students` (`id`, `house_id`, `name`, `dob`, `created_at`, `updated_at`)
VALUES
    (1,1,'Marnix de Student11','2010-03-04','2021-07-05 11:50:12','2021-07-05 11:50:12'),
    (2,1,'Marnix de Student22','2010-03-04','2021-07-05 11:50:12','2021-07-05 11:50:12'),
    (3,2,'Marnix de Student33','2010-03-04','2021-07-05 11:50:12','2021-07-05 11:50:12'),
    (4,3,'Marnix de Student44','2010-03-04','2021-07-05 11:50:12','2021-07-05 11:50:12'),
    (5,2,'Marnix de Student15','2010-03-04','2021-07-05 11:50:12','2021-07-05 11:50:12'),
    (6,3,'Marnix de Student26','2010-03-04','2021-07-05 11:50:12','2021-07-05 11:50:12'),
    (7,2,'Marnix de Student37','2010-03-04','2021-07-05 11:50:12','2021-07-05 11:50:12'),
    (8,4,'Marnix de Student48','2010-03-04','2021-07-05 11:50:12','2021-07-05 11:50:12'),
    (9,4,'Marnix de Student19','2010-03-04','2021-07-05 11:50:12','2021-07-05 11:50:12'),
    (10,4,'Marnix de Student210','2010-03-04','2021-07-05 11:50:12','2021-07-05 11:50:12'),
    (11,2,'Marnix de Student311','2010-03-04','2021-07-05 11:50:12','2021-07-05 11:50:12'),
    (12,1,'Marnix de Student412','2010-03-04','2021-07-05 11:50:12','2021-07-05 11:50:12');

/*!40000 ALTER TABLE `students` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table users
# ------------------------------------------------------------

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
                         `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
                         `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
                         `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
                         `email_verified_at` timestamp NULL DEFAULT NULL,
                         `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
                         `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
                         `created_at` timestamp NULL DEFAULT NULL,
                         `updated_at` timestamp NULL DEFAULT NULL,
                         `role_id` int(10) unsigned NOT NULL DEFAULT '1',
                         `house_id` int(10) unsigned NOT NULL DEFAULT '1',
                         `is_admin` tinyint(1) NOT NULL DEFAULT '0',
                         PRIMARY KEY (`id`),
                         UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `role_id`, `house_id`, `is_admin`)
VALUES
    (1,'Prof. Snape','michiel@auerbach.nl',NULL,'$2y$10$6iYcxv070oUaLzPYrOF7s.1qKjGYpay/g.KfxPJ/1PrKKFScc9wQW',NULL,'2021-07-05 11:50:12','2021-07-05 11:50:12',1,2,0),
    (2,'Head. Boy','head@mncr.nl',NULL,'$2y$10$ul2XC.yi36r1Peqzr6kw4u6OO5t6PTbLgObXOVyYrztdEt9KzmvZW',NULL,'2021-07-05 11:50:12','2021-07-05 11:50:12',2,1,0),
    (3,'Test Prof','prof@mncr.nl',NULL,'$2y$10$BFdnnb8eB3zpkfcHypogaO68Kyw3Rstcylz95kTKS.4eWA2ax8x2G',NULL,'2021-07-05 11:50:12','2021-07-05 11:50:12',1,3,0);

/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;