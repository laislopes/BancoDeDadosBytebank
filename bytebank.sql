-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: 16-Nov-2018 às 02:35
-- Versão do servidor: 5.7.23
-- versão do PHP: 7.2.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bytebank`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `clientes`
--

DROP TABLE IF EXISTS `clientes`;
CREATE TABLE IF NOT EXISTS `clientes` (
  `ClienteID` int(11) NOT NULL AUTO_INCREMENT,
  `Endereco` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `Numero` int(11) NOT NULL,
  `Cidade` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `Bairro` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `Estado` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `CEP` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `Telefone` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `Email` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `DataDoCadastro` datetime NOT NULL,
  PRIMARY KEY (`ClienteID`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Extraindo dados da tabela `clientes`
--

INSERT INTO `clientes` (`ClienteID`, `Endereco`, `Numero`, `Cidade`, `Bairro`, `Estado`, `CEP`, `Telefone`, `Email`, `DataDoCadastro`) VALUES
(1, 'regergerg', 787, 'fhfhfh', 'hfhfhfhfhf', 'dfg', '34.534-534', '(34) 5345-3453', 'hkjkhkhh@hkhkhh', '2018-11-13 00:39:11');

-- --------------------------------------------------------

--
-- Estrutura da tabela `pessoasfisicas`
--

DROP TABLE IF EXISTS `pessoasfisicas`;
CREATE TABLE IF NOT EXISTS `pessoasfisicas` (
  `ClienteID` int(11) NOT NULL,
  `Nome` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `CPF` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `Celular` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `Sexo` binary(1) NOT NULL,
  PRIMARY KEY (`ClienteID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Extraindo dados da tabela `pessoasfisicas`
--

INSERT INTO `pessoasfisicas` (`ClienteID`, `Nome`, `CPF`, `Celular`, `Sexo`) VALUES
(0, 'Lais', '345345345', '787977897897', 0x31);

-- --------------------------------------------------------

--
-- Estrutura da tabela `pessoasjuridicas`
--

DROP TABLE IF EXISTS `pessoasjuridicas`;
CREATE TABLE IF NOT EXISTS `pessoasjuridicas` (
  `ClienteID` int(11) NOT NULL,
  `RazaoSocial` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `CNPJ` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `NomeFantasia` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `InscricaoEstadual` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `Site` varchar(100) COLLATE latin1_general_ci NOT NULL,
  PRIMARY KEY (`ClienteID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
