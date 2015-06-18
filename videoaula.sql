-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 16-Jun-2015 às 04:55
-- Versão do servidor: 5.6.17
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `videoaula`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `mensagens`
--

CREATE TABLE IF NOT EXISTS `mensagens` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_de` int(11) NOT NULL,
  `id_para` int(11) NOT NULL,
  `mensagem` varchar(255) NOT NULL,
  `time` int(11) NOT NULL,
  `lido` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=23 ;

--
-- Extraindo dados da tabela `mensagens`
--

INSERT INTO `mensagens` (`id`, `id_de`, `id_para`, `mensagem`, `time`, `lido`) VALUES
(1, 3, 1, 'Oi Lucas', 1433864460, 1),
(2, 3, 1, 'Outra mensagem da maria pro lucas', 1433864490, 1),
(3, 1, 3, 'Oi maria tudo bem, sou lucas', 1433864649, 1),
(4, 3, 1, 'Oi lucas, blz? é a maria denovo', 1433865949, 1),
(5, 1, 3, 'Tudo beleza sim :) até mais 8)', 1433866082, 1),
(6, 3, 1, 'Teste em aula 1', 1434405824, 1),
(7, 3, 1, 'Test', 1434406351, 1),
(8, 1, 3, 'Test em aula, maria!', 1434406472, 1),
(9, 3, 1, 'Certo, lucas!', 1434406480, 1),
(10, 3, 1, 'Olá lucas, tudo bem? este é um teste de som', 1434407254, 1),
(11, 3, 1, 'Este é outro teste de som', 1434407269, 1),
(12, 1, 3, 'Olá maria, recebi sua mensagem!', 1434407279, 1),
(13, 1, 3, 'Outra mensagem do lugas para a maria no firefox', 1434407306, 1),
(14, 3, 1, 'Mensagem da maria pro lugas denovo', 1434407323, 1),
(15, 1, 3, 'Teste de nova mensagem do lucas', 1434407441, 1),
(17, 1, 3, 'test', 1434407589, 1),
(18, 3, 1, 'Esta é uma mensagem de teste', 1434407664, 1),
(19, 2, 1, 'Oi lucas', 1434413216, 1),
(20, 1, 2, 'Fala ae joão', 1434413223, 1),
(21, 2, 1, 'Tudo de boa?', 1434413257, 1),
(22, 1, 2, 'Aham!', 1434413263, 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuarios`
--

CREATE TABLE IF NOT EXISTS `usuarios` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `foto` varchar(200) NOT NULL,
  `nome` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `horario` datetime NOT NULL,
  `limite` datetime NOT NULL,
  `blocks` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Extraindo dados da tabela `usuarios`
--

INSERT INTO `usuarios` (`id`, `foto`, `nome`, `email`, `horario`, `limite`, `blocks`) VALUES
(1, 'lucas.jpg', 'Lucas Silva', 'lucas.designer@hotmail.com.br', '2015-06-15 23:51:53', '2015-06-16 02:21:00', ''),
(2, '', 'João Souza', 'joao@hotmail.com', '2015-06-16 02:06:47', '2015-06-16 02:08:45', ''),
(3, '', 'Maria da Silva', 'mariasilva@gmail.com', '2015-06-15 23:52:10', '2015-06-16 00:39:04', '2');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
