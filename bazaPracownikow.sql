-- MySQL dump 10.13  Distrib 8.0.40, for Win64 (x86_64)
--
-- Host: localhost    Database: baza_projektowa
-- ------------------------------------------------------
-- Server version	8.0.40

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
-- Table structure for table `certyfikaty`
--

DROP TABLE IF EXISTS `certyfikaty`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `certyfikaty` (
  `ID_Certyfikatu` int NOT NULL AUTO_INCREMENT,
  `ID_Pracownika` int NOT NULL,
  `Nazwa` varchar(100) NOT NULL,
  `Data_Uzyskania` date DEFAULT NULL,
  PRIMARY KEY (`ID_Certyfikatu`),
  KEY `ID_Pracownika` (`ID_Pracownika`),
  CONSTRAINT `certyfikaty_ibfk_1` FOREIGN KEY (`ID_Pracownika`) REFERENCES `pracownicy` (`ID_Pracownika`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `certyfikaty`
--

LOCK TABLES `certyfikaty` WRITE;
/*!40000 ALTER TABLE `certyfikaty` DISABLE KEYS */;
/*!40000 ALTER TABLE `certyfikaty` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oceny`
--

DROP TABLE IF EXISTS `oceny`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oceny` (
  `ID_Oceny` int NOT NULL AUTO_INCREMENT,
  `ID_Pracownika` int NOT NULL,
  `ID_Szkolenia` int NOT NULL,
  `Ocena` int DEFAULT NULL,
  `Data_Oceny` date DEFAULT NULL,
  PRIMARY KEY (`ID_Oceny`),
  KEY `ID_Pracownika` (`ID_Pracownika`),
  KEY `ID_Szkolenia` (`ID_Szkolenia`),
  CONSTRAINT `oceny_ibfk_1` FOREIGN KEY (`ID_Pracownika`) REFERENCES `pracownicy` (`ID_Pracownika`),
  CONSTRAINT `oceny_ibfk_2` FOREIGN KEY (`ID_Szkolenia`) REFERENCES `szkolenia` (`ID_Szkolenia`),
  CONSTRAINT `oceny_chk_1` CHECK ((`Ocena` between 1 and 10))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oceny`
--

LOCK TABLES `oceny` WRITE;
/*!40000 ALTER TABLE `oceny` DISABLE KEYS */;
/*!40000 ALTER TABLE `oceny` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pracownicy`
--

DROP TABLE IF EXISTS `pracownicy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pracownicy` (
  `ID_Pracownika` int NOT NULL AUTO_INCREMENT,
  `Imie` varchar(50) NOT NULL,
  `Nazwisko` varchar(50) NOT NULL,
  `Stanowisko` varchar(100) DEFAULT NULL,
  `Data_Zatrudnienia` date DEFAULT NULL,
  PRIMARY KEY (`ID_Pracownika`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pracownicy`
--

LOCK TABLES `pracownicy` WRITE;
/*!40000 ALTER TABLE `pracownicy` DISABLE KEYS */;
/*!40000 ALTER TABLE `pracownicy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `szkolenia`
--

DROP TABLE IF EXISTS `szkolenia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `szkolenia` (
  `ID_Szkolenia` int NOT NULL AUTO_INCREMENT,
  `Nazwa` varchar(100) NOT NULL,
  `Data_Rozpoczecia` date DEFAULT NULL,
  `Data_Zakonczenia` date DEFAULT NULL,
  `Opis` text,
  PRIMARY KEY (`ID_Szkolenia`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `szkolenia`
--

LOCK TABLES `szkolenia` WRITE;
/*!40000 ALTER TABLE `szkolenia` DISABLE KEYS */;
/*!40000 ALTER TABLE `szkolenia` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-01-05  8:57:09
