-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:33066
-- Tempo de geração: 01/07/2025 às 23:04
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
-- Banco de dados: `postapp`
--
CREATE DATABASE IF NOT EXISTS `postapp` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `postapp`;

-- --------------------------------------------------------

--
-- Estrutura para tabela `postagens`
--

CREATE TABLE `postagens` (
  `id` int(11) NOT NULL,
  `titulo` varchar(255) DEFAULT NULL,
  `conteudo` text DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `postagens`
--

INSERT INTO `postagens` (`id`, `titulo`, `conteudo`, `createdAt`, `updatedAt`) VALUES
(2, 'php linguagem', 'conteudo conteudo conteudo conteudo conteudo conteudo conteudo conteudo ', '2025-06-28 19:12:04', '2025-06-28 19:12:04'),
(3, 'um titulo novo', 'conteudo conteudo conteudo conteudo conteudo conteudo  aiuhsaiuhusauh conteudo conteudo conteudo conteudo conteudo conteudo  aiuhsaiuhusauh conteudo conteudo conteudo conteudo conteudo conteudo  aiuhsaiuhusauh conteudo conteudo conteudo conteudo conteudo conteudo  aiuhsaiuhusauh conteudo conteudo conteudo conteudo conteudo conteudo  aiuhsaiuhusauh ', '2025-07-01 19:18:41', '2025-07-01 19:18:41');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `postagens`
--
ALTER TABLE `postagens`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `postagens`
--
ALTER TABLE `postagens`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
