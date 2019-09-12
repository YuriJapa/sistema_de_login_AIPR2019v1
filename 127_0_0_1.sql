-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 12-Set-2019 às 16:36
-- Versão do servidor: 10.3.16-MariaDB
-- versão do PHP: 7.3.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `sistemadelogin`
--
DROP DATABASE IF EXISTS `sistemadelogin`;
CREATE DATABASE IF NOT EXISTS `sistemadelogin` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_bin;
USE `sistemadelogin`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuario`
--

CREATE TABLE `usuario` (
  `idUsuario` int(10) UNSIGNED NOT NULL,
  `nome` varchar(100) COLLATE utf8mb4_bin NOT NULL,
  `nomeUsuario` varchar(100) COLLATE utf8mb4_bin NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_bin NOT NULL,
  `senha` char(40) COLLATE utf8mb4_bin NOT NULL,
  `dataCriacao` datetime NOT NULL,
  `avatar_url` varchar(220) COLLATE utf8mb4_bin DEFAULT NULL,
  `token` char(10) COLLATE utf8mb4_bin NOT NULL,
  `tempo_de_vida` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Extraindo dados da tabela `usuario`
--

INSERT INTO `usuario` (`idUsuario`, `nome`, `nomeUsuario`, `email`, `senha`, `dataCriacao`, `avatar_url`, `token`, `tempo_de_vida`) VALUES
(6, 'Yuri G', 'JaponÃªs', 'yuriMoraes@gmail.com', 'e663519c6aab03dc03de527b0b17db9430a115e8', '2019-09-06 16:19:45', 'https://avatarfiles.alphacoders.com/151/151950.jpg', '', '2019-09-12 19:32:32'),
(7, 'Yuri G.', 'JaponÃªsDudi', 'yuri_g_moraes66@gmail.com', 'e663519c6aab03dc03de527b0b17db9430a115e8', '2019-09-06 16:24:24', 'https://scontent.fbnu1-1.fna.fbcdn.net/v/t1.0-9/69710446_2501791616723439_952914558488412160_n.jpg?_nc_cat=109&amp;_nc_oc=AQlQ_W4_Ey8ye4Q7etSeS0N7HB5OxlQu03egj-OvX49iwJeH0HMSVgZZCDEk5j1vwPk&amp;_nc_ht=scontent.fbnu1-1.fn', '', '2019-09-12 19:32:32'),
(8, 'Yuri GonÃ§alves De Moraes', 'YuriJapa', 'yuri_g_moraes@estudante.sc.senai.br', '7c4a8d09ca3762af61e59520943dc26494f8941b', '2019-09-12 13:17:46', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ2U-zFeaxSbX4y4gpP6En9dqE9rG2WeaF5Bsn5evkBulGI7pX9', '', '2019-09-12 19:32:32'),
(9, 'TetaNega', 'tetinha', 'tetinha123@gmail.com', '7c4a8d09ca3762af61e59520943dc26494f8941b', '2019-09-12 13:20:03', 'https://i0.wp.com/images.uncyc.org/pt/d/d8/Goenitzsuper1.gif', '', '2019-09-12 19:32:32'),
(10, 'Carinnha novo', 'carinha doido', 'carinha123@gmail.com', '7c4a8d09ca3762af61e59520943dc26494f8941b', '2019-09-12 16:35:20', 'https://http2.mlstatic.com/50-personagens-turma-do-chaves-para-latinha-3d-75cm-D_NQ_NP_922182-MLB25550994292_042017-F.jpg', '', '2019-09-12 19:35:20');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`idUsuario`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `usuario`
--
ALTER TABLE `usuario`
  MODIFY `idUsuario` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
