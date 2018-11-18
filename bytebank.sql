-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: 18-Nov-2018 às 19:57
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
) ENGINE=MyISAM AUTO_INCREMENT=23 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Extraindo dados da tabela `clientes`
--

INSERT INTO `clientes` (`ClienteID`, `Endereco`, `Numero`, `Cidade`, `Bairro`, `Estado`, `CEP`, `Telefone`, `Email`, `DataDoCadastro`) VALUES
(13, 'refjudosdfio', 78, 'sdjhksjdh', 'asjdhsjkf', 'so', '90.328-529', '(87) 5443-4534', 'dsjskjd', '2018-11-17 15:47:20'),
(10, 'Rua dos Melros', 83, 'Hortolândia', 'Chácara Recreio Alvorada', 'SP', '13.183-761', '(19) 3887-5307', 'daniel@hotmail.com', '2018-11-17 14:57:25'),
(15, 'Rua dos Melros', 83, 'Hortolândia', 'Chácara Recreio Alvorada', 'SP', '13.183-761', '(19) 3887-5307', 'daniel@hotmail.com', '2018-11-17 16:27:34'),
(11, 'Rua dos Melros', 83, 'Hortolândia', 'Chácara Recreio Alvorada', 'SP', '13.183-761', '(19) 3887-5307', 'daniel@hotmail.com', '2018-11-17 15:23:17'),
(14, 'Rua dos Melros', 83, 'Hortolândia', 'Chácara Recreio Alvorada', 'SP', '13.183-761', '(19) 3887-5307', 'daniel@hotmail.com', '2018-11-17 16:18:54'),
(16, 'Rua dos Melros', 83, 'Hortolândia', 'Chácara Recreio Alvorada', 'SP', '13.183-761', '(19) 3887-5307', 'daniel@hotmail.com', '2018-11-17 16:28:19'),
(17, 'Rua dos Melros', 83, 'Hortolândia', 'Chácara Recreio Alvorada', 'SP', '13.183-761', '(19) 3887-5307', 'daniel@hotmail.com', '2018-11-17 16:28:48'),
(18, 'Rua dos Melros', 83, 'Hortolândia', 'Chácara Recreio Alvorada', 'SP', '13.183-761', '(19) 3887-5307', 'daniel@hotmail.com', '2018-11-17 16:29:15'),
(20, 'asdas', 23, 'asd', 'asd', 'we', '22.222-222', '(66) 6666-6666', 'asdasd.com', '2018-11-17 17:10:08');

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
(11, 'A', '415.609.358-12', '(19) 98326-8980', 0x30),
(14, 'B', '315.609.358-12', '(19) 98326-8980', 0x30),
(13, 'C', '313.354.646-64', '(34) 89435-8934', 0x30),
(15, 'D', '215.609.358-12', '(19) 98326-8980', 0x31),
(16, 'E', '115.609.358-12', '(19) 98326-8980', 0x30),
(17, 'F', '015.609.358-12', '(19) 98326-8980', 0x31),
(18, 'Gup', '615.609.358-12', '(19) 98326-8980', 0x31);

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

--
-- Extraindo dados da tabela `pessoasjuridicas`
--

INSERT INTO `pessoasjuridicas` (`ClienteID`, `RazaoSocial`, `CNPJ`, `NomeFantasia`, `InscricaoEstadual`, `Site`) VALUES
(20, 'CTDIup123', '222.222.222-22', 'CTDIup', '22.222.2222-22', '');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
