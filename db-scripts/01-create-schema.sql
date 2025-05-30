-- MySQL dump 10.13  Distrib 8.0.42, for Linux (x86_64)
--
-- Host: localhost    Database: ems-bd
-- ------------------------------------------------------
-- Server version	8.0.42-0ubuntu0.24.04.1

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
-- Table structure for table `alumno`
--

DROP TABLE IF EXISTS `alumno`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `alumno` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `fecha_creacion` datetime(6) DEFAULT NULL,
  `fecha_modificacion` datetime(6) DEFAULT NULL,
  `apellido1` varchar(255) DEFAULT NULL,
  `apellido2` varchar(255) DEFAULT NULL,
  `direccion` varchar(255) DEFAULT NULL,
  `documento` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `movil` varchar(255) DEFAULT NULL,
  `nombre` varchar(255) DEFAULT NULL,
  `telefono` varchar(255) DEFAULT NULL,
  `tipo_documento` tinyint DEFAULT NULL,
  `idalu` varchar(255) DEFAULT NULL,
  `idea` varchar(255) DEFAULT NULL,
  `ina` varchar(255) DEFAULT NULL,
  `usr_creacion` bigint DEFAULT NULL,
  `grupo_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK9yn50bai0rpbwm3wl5y4y5e1j` (`usr_creacion`),
  KEY `FKd3tkh0ieh0b5cl6a9ee1jxcds` (`grupo_id`),
  CONSTRAINT `FK9yn50bai0rpbwm3wl5y4y5e1j` FOREIGN KEY (`usr_creacion`) REFERENCES `users` (`id`),
  CONSTRAINT `FKd3tkh0ieh0b5cl6a9ee1jxcds` FOREIGN KEY (`grupo_id`) REFERENCES `grupo` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `asignatura`
--

DROP TABLE IF EXISTS `asignatura`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `asignatura` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `fecha_creacion` datetime(6) DEFAULT NULL,
  `fecha_modificacion` datetime(6) DEFAULT NULL,
  `alias` varchar(255) DEFAULT NULL,
  `nombre` varchar(255) DEFAULT NULL,
  `usr_creacion` bigint DEFAULT NULL,
  `estudio_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKcbne28xda673wkjosnispwhe4` (`usr_creacion`),
  KEY `FKanfqvqfsgcgof7r8xbkplaull` (`estudio_id`),
  CONSTRAINT `FKanfqvqfsgcgof7r8xbkplaull` FOREIGN KEY (`estudio_id`) REFERENCES `estudio` (`id`),
  CONSTRAINT `FKcbne28xda673wkjosnispwhe4` FOREIGN KEY (`usr_creacion`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `asistencia`
--

DROP TABLE IF EXISTS `asistencia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `asistencia` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `fecha_creacion` datetime(6) DEFAULT NULL,
  `fecha_modificacion` datetime(6) DEFAULT NULL,
  `comentario` varchar(255) DEFAULT NULL,
  `estado` tinyint NOT NULL,
  `usr_creacion` bigint DEFAULT NULL,
  `alumno_id` bigint DEFAULT NULL,
  `clase_id` bigint DEFAULT NULL,
  `profesor_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKmapdi8h0uppt13lwy4v46i8q2` (`usr_creacion`),
  KEY `FKaicrd55fb0funm7we07unjac1` (`alumno_id`),
  KEY `FKeb207oilwbxq7nniv556885vu` (`clase_id`),
  KEY `FKkl9fh0no39dg7dkiug2089kmb` (`profesor_id`),
  CONSTRAINT `FKaicrd55fb0funm7we07unjac1` FOREIGN KEY (`alumno_id`) REFERENCES `alumno` (`id`),
  CONSTRAINT `FKeb207oilwbxq7nniv556885vu` FOREIGN KEY (`clase_id`) REFERENCES `clase` (`id`),
  CONSTRAINT `FKkl9fh0no39dg7dkiug2089kmb` FOREIGN KEY (`profesor_id`) REFERENCES `profesor` (`id`),
  CONSTRAINT `FKmapdi8h0uppt13lwy4v46i8q2` FOREIGN KEY (`usr_creacion`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=110 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `aula`
--

DROP TABLE IF EXISTS `aula`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `aula` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `fecha_creacion` datetime(6) DEFAULT NULL,
  `fecha_modificacion` datetime(6) DEFAULT NULL,
  `alias` varchar(255) DEFAULT NULL,
  `nombre` varchar(255) DEFAULT NULL,
  `referencia` varchar(255) DEFAULT NULL,
  `usr_creacion` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKkw54vaol1kwolxyg0kjw4u7nu` (`usr_creacion`),
  CONSTRAINT `FKkw54vaol1kwolxyg0kjw4u7nu` FOREIGN KEY (`usr_creacion`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `clase`
--

DROP TABLE IF EXISTS `clase`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `clase` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `fecha_creacion` datetime(6) DEFAULT NULL,
  `fecha_modificacion` datetime(6) DEFAULT NULL,
  `comentario` varchar(255) DEFAULT NULL,
  `fecha_fin` datetime(6) DEFAULT NULL,
  `fecha_inicio` datetime(6) DEFAULT NULL,
  `resumen` varchar(255) DEFAULT NULL,
  `usr_creacion` bigint DEFAULT NULL,
  `asignatura_id` bigint DEFAULT NULL,
  `aula_id` bigint DEFAULT NULL,
  `grupo_id` bigint DEFAULT NULL,
  `horario_id` bigint DEFAULT NULL,
  `profesor_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKa6bxb0k6yyuv56ralo1yxkckg` (`usr_creacion`),
  KEY `FKmxljvlnpkrxlbyle741ot5awr` (`asignatura_id`),
  KEY `FKq8cwpth59uog5lwctvm0mqwum` (`aula_id`),
  KEY `FKcloy3nnm7ehuopt3rkr9mprqt` (`grupo_id`),
  KEY `FKakr9x86irqgk29amlpp8ko327` (`horario_id`),
  KEY `FKrnidyd3wy1bwxphs65tqvxe2i` (`profesor_id`),
  CONSTRAINT `FKa6bxb0k6yyuv56ralo1yxkckg` FOREIGN KEY (`usr_creacion`) REFERENCES `users` (`id`),
  CONSTRAINT `FKakr9x86irqgk29amlpp8ko327` FOREIGN KEY (`horario_id`) REFERENCES `horario` (`id`),
  CONSTRAINT `FKcloy3nnm7ehuopt3rkr9mprqt` FOREIGN KEY (`grupo_id`) REFERENCES `grupo` (`id`),
  CONSTRAINT `FKmxljvlnpkrxlbyle741ot5awr` FOREIGN KEY (`asignatura_id`) REFERENCES `asignatura` (`id`),
  CONSTRAINT `FKq8cwpth59uog5lwctvm0mqwum` FOREIGN KEY (`aula_id`) REFERENCES `aula` (`id`),
  CONSTRAINT `FKrnidyd3wy1bwxphs65tqvxe2i` FOREIGN KEY (`profesor_id`) REFERENCES `profesor` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `contacto`
--

DROP TABLE IF EXISTS `contacto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contacto` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `fecha_creacion` datetime(6) DEFAULT NULL,
  `fecha_modificacion` datetime(6) DEFAULT NULL,
  `apellido1` varchar(255) DEFAULT NULL,
  `apellido2` varchar(255) DEFAULT NULL,
  `direccion` varchar(255) DEFAULT NULL,
  `documento` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `movil` varchar(255) DEFAULT NULL,
  `nombre` varchar(255) DEFAULT NULL,
  `telefono` varchar(255) DEFAULT NULL,
  `tipo_documento` tinyint DEFAULT NULL,
  `num_contacto` int NOT NULL,
  `usr_creacion` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK6hautcmagocpj9jw29s310qv1` (`usr_creacion`),
  CONSTRAINT `FK6hautcmagocpj9jw29s310qv1` FOREIGN KEY (`usr_creacion`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `estudio`
--

DROP TABLE IF EXISTS `estudio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `estudio` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `fecha_creacion` datetime(6) DEFAULT NULL,
  `fecha_modificacion` datetime(6) DEFAULT NULL,
  `alias` varchar(255) DEFAULT NULL,
  `nivel` varchar(255) DEFAULT NULL,
  `nombre` varchar(255) DEFAULT NULL,
  `usr_creacion` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKjgf1ca7ugti4ly9f92pkl5sss` (`usr_creacion`),
  CONSTRAINT `FKjgf1ca7ugti4ly9f92pkl5sss` FOREIGN KEY (`usr_creacion`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `grupo`
--

DROP TABLE IF EXISTS `grupo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `grupo` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `fecha_creacion` datetime(6) DEFAULT NULL,
  `fecha_modificacion` datetime(6) DEFAULT NULL,
  `alias` varchar(255) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `tipo` tinyint NOT NULL,
  `usr_creacion` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKkwslnludwepoe7c48nwqhb0vu` (`usr_creacion`),
  CONSTRAINT `FKkwslnludwepoe7c48nwqhb0vu` FOREIGN KEY (`usr_creacion`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `horario`
--

DROP TABLE IF EXISTS `horario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `horario` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `fecha_creacion` datetime(6) DEFAULT NULL,
  `fecha_modificacion` datetime(6) DEFAULT NULL,
  `dia` tinyint DEFAULT NULL,
  `duracion` int NOT NULL,
  `hora` time(6) DEFAULT NULL,
  `usr_creacion` bigint DEFAULT NULL,
  `asignatura_id` bigint DEFAULT NULL,
  `aula_id` bigint DEFAULT NULL,
  `grupo_id` bigint DEFAULT NULL,
  `profesor_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK7d4vsvpbkqp3bqr5ugus9yg4a` (`usr_creacion`),
  KEY `FKiixhl5fc4h2tpw49q53lifdcj` (`asignatura_id`),
  KEY `FKghkj6jodww6qs0oe0mjn0vxtu` (`aula_id`),
  KEY `FK6v8sh1wt2wfhshjo8i2tft9co` (`grupo_id`),
  KEY `FKrmsqqo0sk3vxedg7wgakdglae` (`profesor_id`),
  CONSTRAINT `FK6v8sh1wt2wfhshjo8i2tft9co` FOREIGN KEY (`grupo_id`) REFERENCES `grupo` (`id`),
  CONSTRAINT `FK7d4vsvpbkqp3bqr5ugus9yg4a` FOREIGN KEY (`usr_creacion`) REFERENCES `users` (`id`),
  CONSTRAINT `FKghkj6jodww6qs0oe0mjn0vxtu` FOREIGN KEY (`aula_id`) REFERENCES `aula` (`id`),
  CONSTRAINT `FKiixhl5fc4h2tpw49q53lifdcj` FOREIGN KEY (`asignatura_id`) REFERENCES `asignatura` (`id`),
  CONSTRAINT `FKrmsqqo0sk3vxedg7wgakdglae` FOREIGN KEY (`profesor_id`) REFERENCES `profesor` (`id`),
  CONSTRAINT `horario_chk_1` CHECK ((`dia` between 0 and 6))
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `profesor`
--

DROP TABLE IF EXISTS `profesor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `profesor` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `fecha_creacion` datetime(6) DEFAULT NULL,
  `fecha_modificacion` datetime(6) DEFAULT NULL,
  `apellido1` varchar(255) DEFAULT NULL,
  `apellido2` varchar(255) DEFAULT NULL,
  `direccion` varchar(255) DEFAULT NULL,
  `documento` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `movil` varchar(255) DEFAULT NULL,
  `nombre` varchar(255) DEFAULT NULL,
  `telefono` varchar(255) DEFAULT NULL,
  `tipo_documento` tinyint DEFAULT NULL,
  `cargo` varchar(255) DEFAULT NULL,
  `usr_creacion` bigint DEFAULT NULL,
  `grupo_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKi7smw2udvj8cf80w5s0vgxqsb` (`usr_creacion`),
  KEY `FK6tcl5q0yf2a20jy8mq68w36li` (`grupo_id`),
  CONSTRAINT `FK6tcl5q0yf2a20jy8mq68w36li` FOREIGN KEY (`grupo_id`) REFERENCES `grupo` (`id`),
  CONSTRAINT `FKi7smw2udvj8cf80w5s0vgxqsb` FOREIGN KEY (`usr_creacion`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `roles` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UKofx66keruapi6vyqpv6f2or37` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `username` varchar(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK6dotkott2kjsp8vw4d0m25fb7` (`email`),
  UNIQUE KEY `UKr43af9ap4edm43mmtq01oddj6` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `users_roles`
--

DROP TABLE IF EXISTS `users_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users_roles` (
  `user_id` bigint NOT NULL,
  `role_id` bigint NOT NULL,
  UNIQUE KEY `UKq3r1u8cne2rw2hkr899xuh7vj` (`user_id`,`role_id`),
  KEY `FKj6m8fwv7oqv74fcehir1a9ffy` (`role_id`),
  CONSTRAINT `FK2o0jvgh89lemvvo17cbqvdxaa` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  CONSTRAINT `FKj6m8fwv7oqv74fcehir1a9ffy` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping routines for database 'ems-bd'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-05-28 15:10:15
