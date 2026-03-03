-- MariaDB dump 10.19  Distrib 10.4.32-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: loja_online
-- ------------------------------------------------------
-- Server version	10.4.32-MariaDB

-- CREATE DATABASE lojaonline;
-- USE lojaonline;
--
-- Table structure for table `endereco`
--

DROP TABLE IF EXISTS `endereco`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `endereco` (
  `Codigo` int(11) DEFAULT NULL,
  `Cidade` varchar(100) DEFAULT NULL,
  `bairro` varchar(100) DEFAULT NULL,
  `rua` varchar(100) DEFAULT NULL,
  `Numero` int(11) DEFAULT NULL,
  `complemento` varchar(45) DEFAULT NULL,
  `cep` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `endereco`
--

LOCK TABLES `endereco` WRITE;

UNLOCK TABLES;

--
-- Table structure for table `estoque`
--

DROP TABLE IF EXISTS `estoque`;

CREATE TABLE `estoque` (
  `codigo` int(11) DEFAULT NULL,
  `preco` decimal(8,2) DEFAULT NULL,
  `descricao` varchar(200) DEFAULT NULL,
  `nome` varchar(100) DEFAULT NULL,
  `quantidade` int(11) DEFAULT NULL,
  `categoria` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


--
-- Dumping data for table `estoque`
--

LOCK TABLES `estoque` WRITE;

UNLOCK TABLES;

--
-- Table structure for table `itens`
--

DROP TABLE IF EXISTS `itens`;

CREATE TABLE `itens` (
  `Codigo` int(11) DEFAULT NULL,
  `qntde` int(11) DEFAULT NULL,
  `descricao` varchar(100) DEFAULT NULL,
  `preco` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


--
-- Dumping data for table `itens`
--

LOCK TABLES `itens` WRITE;

UNLOCK TABLES;

--
-- Table structure for table `pedidos`
--

DROP TABLE IF EXISTS `pedidos`;

CREATE TABLE `pedidos` (
  `NotaFiscal` int(11) DEFAULT NULL,
  `Total` decimal(10,2) DEFAULT NULL,
  `DataHora` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `qntidade` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


--
-- Dumping data for table `pedidos`
--

LOCK TABLES `pedidos` WRITE;

UNLOCK TABLES;

--
-- Table structure for table `usuario`
--

DROP TABLE IF EXISTS `usuario`;

CREATE TABLE `usuario` (
  `codigo` int(11) DEFAULT NULL,
  `cpf` varchar(45) DEFAULT NULL,
  `nome` varchar(100) DEFAULT NULL,
  `sobrenome` varchar(100) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `dataDeNascimento` varchar(100) DEFAULT NULL,
  `perfil` int(11) DEFAULT NULL,
  `senha` varchar(250) DEFAULT NULL,
  
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


--
-- Dumping data for table `usuario`
--

LOCK TABLES `usuario` WRITE;

UNLOCK TABLES;


-- Dump completed on 2026-02-24 17:45:32
