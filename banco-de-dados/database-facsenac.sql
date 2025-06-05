-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3307
-- Tempo de geração: 06/06/2025 às 00:22
-- Versão do servidor: 10.4.32-MariaDB
-- Versão do PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `facsenac`
--
CREATE DATABASE IF NOT EXISTS `facsenac` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `facsenac`;

-- --------------------------------------------------------

--
-- Estrutura para tabela `alunos`
--

CREATE TABLE IF NOT EXISTS `alunos` (
  `matricula` int(11) NOT NULL AUTO_INCREMENT,
  `nome` char(30) NOT NULL,
  `tel` char(11) DEFAULT NULL,
  `cidade` char(20) DEFAULT 'Brasilia',
  `UF` char(2) DEFAULT 'DF',
  `data_nasc` date DEFAULT NULL,
  PRIMARY KEY (`matricula`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `alunos`
--

INSERT INTO `alunos` (`matricula`, `nome`, `tel`, `cidade`, `UF`, `data_nasc`) VALUES
(2, 'Maria Alves', '9999-9999', 'Brasilia', 'DF', '2020-01-01'),
(4, 'Joao Paulo', '9999-8887', 'Brasilia', 'DF', '2025-04-11'),
(5, 'Gabriel Pensador', '898989-8989', 'Brasilia', 'DF', '2025-04-11');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
