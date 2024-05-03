CREATE DATABASE IF NOT EXISTS `potm` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `potm`;

CREATE TABLE IF NOT EXISTS `tag` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


CREATE TABLE IF NOT EXISTS `user` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


CREATE TABLE IF NOT EXISTS `task` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `location` varchar(255) DEFAULT NULL,
  `end_time` datetime(6) DEFAULT NULL,
  `estimated_time` varchar(255) DEFAULT NULL,
  `list` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `priority` varchar(255) DEFAULT NULL,
  `start_time` datetime(6) DEFAULT NULL,
  `tag_id` bigint DEFAULT NULL,
  `user_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKnhftjpbnkxgpgqpiyvf4p1k3m` (`tag_id`),
  KEY `FK2hsytmxysatfvt0p1992cw449` (`user_id`),
  CONSTRAINT `FK2hsytmxysatfvt0p1992cw449` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`),
  CONSTRAINT `FKnhftjpbnkxgpgqpiyvf4p1k3m` FOREIGN KEY (`tag_id`) REFERENCES `tag` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

INSERT INTO `task` (`id`, `location`, `end_time`, `estimated_time`, `list`, `name`, `priority`, `start_time`, `tag_id`, `user_id`) VALUES
	(1, NULL, '2024-04-24 20:35:48.000000', '30', NULL, '2', NULL, '2024-04-24 19:35:45.000000', NULL, NULL),
	(2, NULL, '2024-04-24 09:36:26.000000', '20', NULL, '1', NULL, '2024-04-24 07:36:42.000000', NULL, NULL),
	(3, NULL, '2024-04-26 18:00:36.000000', '10', NULL, '3', NULL, '2024-04-26 17:00:39.000000', NULL, NULL);

