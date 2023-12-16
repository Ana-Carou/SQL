/*TABELAS:
Paciente, medico, turno, ficha_do_paciente, medicamentos, exames, diagnostico, especialidade*/


-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: consultorio
-- ------------------------------------------------------
-- Server version	8.0.34

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
-- Dumping data for table `diagnostico`
--

LOCK TABLES `diagnostico` WRITE;
/*!40000 ALTER TABLE `diagnostico` DISABLE KEYS */;
INSERT INTO `diagnostico` VALUES (1,'Anemia Ferropriva'),(2,'Infecção de ouvido'),(3,'Pneumonia Bacteriana'),(4,'Desvio de Septo'),(5,'Diabetes Mellitus Tipo 2'),(6,'Enxaqueca Crônica'),(7,'Gravidez Confirmada'),(8,'Insuficiência Cardíaca Congestiva'),(9,'Pólipo Nasal');
/*!40000 ALTER TABLE `diagnostico` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `especialidade`
--

LOCK TABLES `especialidade` WRITE;
/*!40000 ALTER TABLE `especialidade` DISABLE KEYS */;
INSERT INTO `especialidade` VALUES (1,'Clínica Geral'),(2,'Otorrinolaringologia'),(3,'Neurologia'),(4,'Cardiologia');
/*!40000 ALTER TABLE `especialidade` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `exames`
--

LOCK TABLES `exames` WRITE;
/*!40000 ALTER TABLE `exames` DISABLE KEYS */;
INSERT INTO `exames` VALUES (1,'Hemograma Completo'),(2,'Otoscopia'),(3,'Radiografia de Tórax'),(4,'Endoscopia Nasal'),(5,'Glicemia em Jejum'),(6,'Ressonância Magnética Cerebral'),(7,'Beta-hCG'),(8,'Ecocardiograma'),(9,'Nasofibrolaringoscopia');
/*!40000 ALTER TABLE `exames` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `ficha_do_paciente`
--

LOCK TABLES `ficha_do_paciente` WRITE;
/*!40000 ALTER TABLE `ficha_do_paciente` DISABLE KEYS */;
INSERT INTO `ficha_do_paciente` VALUES (1,9,1,1,1),(2,2,2,2,2),(3,6,2,2,2),(4,1,3,2,3),(5,3,4,3,4),(6,10,5,4,5),(7,8,6,5,6),(8,4,7,1,7),(9,7,8,6,8),(10,5,9,3,9);
/*!40000 ALTER TABLE `ficha_do_paciente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `medicamentos`
--

LOCK TABLES `medicamentos` WRITE;
/*!40000 ALTER TABLE `medicamentos` DISABLE KEYS */;
INSERT INTO `medicamentos` VALUES (1,'Ácido Fólico'),(2,'Antibiótico'),(3,'Descongestionante Nasal'),(4,'Metformina'),(5,'Analgésico'),(6,'Inibidor da ECA');
/*!40000 ALTER TABLE `medicamentos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `medico`
--

LOCK TABLES `medico` WRITE;
/*!40000 ALTER TABLE `medico` DISABLE KEYS */;
INSERT INTO `medico` VALUES (1,'Vanessa','Rodrigues',1,'CRM-SP 90123',1),(2,'Rogério','Dutra',1,'CRM-SP 34567',2),(3,'Gustavo','Vargas',2,'CRM-SP 67891',1),(4,'Juliana','Gomes',2,'CRM-MG 54321',2),(5,'Vitor','Andrade',3,'CRM-SP 12345',2),(6,'Patrícia','Almeida',4,'CRM-RJ 23456',1);
/*!40000 ALTER TABLE `medico` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `medico_paciente_update`
--

LOCK TABLES `medico_paciente_update` WRITE;
/*!40000 ALTER TABLE `medico_paciente_update` DISABLE KEYS */;
INSERT INTO `medico_paciente_update` VALUES (1,'3','2',1,'João','Silva');
/*!40000 ALTER TABLE `medico_paciente_update` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `paciente`
--

LOCK TABLES `paciente` WRITE;
/*!40000 ALTER TABLE `paciente` DISABLE KEYS */;
INSERT INTO `paciente` VALUES (1,'João','Silva','12345678910','São Paulo','Pinheiros','Rua dos Pinheiros','5422000','456','11912345678','1985-04-15',2),(2,'Sofia','Almeida','89012345689','São Paulo','Higienópolis','Rua Bahia','1244000','678','11321098765','1993-03-12',3),(3,'Pedro','Oliveira','45678901230','São Paulo','Vila Mariana','Rua Vergueiro','4101000','321','11876543210','1978-12-03',4),(4,'Isabela','Ribeiro','1234567891','São Paulo','Vila Madalena','Rua Aspicuelta','5433011','234','11109876543','1997-10-22',1),(5,'Carlos','Ferreira','34567890156','São Paulo','Jardins','Alameda Santos','1419001','567','11654321098','1964-02-20',1),(6,'Maria','Santos','98765432100','São Paulo','Moema','Alameda dos Anapurus','4087000','789','11987654321','1990-08-25',4),(7,'Lucas','Costa','90123456790','São Paulo','Itaim Bibi','Rua Joaquim Floriano','4534010','901','11210987654','1954-10-30',6),(8,'Laura','Lima','67890123467','São Paulo','Bela Vista','Rua Treze de Maio','1327000','890','11543210987','1989-09-05',5),(9,'Gabriel','Rodrigues','78901234578','São Paulo','Consolação','Rua da Consolação','1301000','345','11432109876','1987-07-18',2),(10,'Ana','Pereira','23456789045','São Paulo','Perdizes','Rua Cardoso de Almeida','5013001','234','11765432109','1975-06-10',2),(11,'Márcio','Duarte','85624165302','São Paulo','Pinheiros','Rua dos Pinheiros','25661-050','22','963251221','1984-10-31',3);
/*!40000 ALTER TABLE `paciente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `turno`
--

LOCK TABLES `turno` WRITE;
/*!40000 ALTER TABLE `turno` DISABLE KEYS */;
INSERT INTO `turno` VALUES (1,'Manhã'),(2,'Tarde');
/*!40000 ALTER TABLE `turno` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-12-05 19:34:55
