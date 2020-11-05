-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 05-Nov-2020 às 12:48
-- Versão do servidor: 10.4.14-MariaDB
-- versão do PHP: 7.4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `fseletro`
CREATE DATABASE 'fseletro'
-- --------------------------------------------------------

--
-- Estrutura da tabela `comentarios`
--

CREATE TABLE `comentarios` (
  `id` int(30) NOT NULL,
  `nome` varchar(30) NOT NULL,
  `msg` varchar(50) NOT NULL,
  `data` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `comentarios`
--

INSERT INTO `comentarios` (`id`, `nome`, `msg`, `data`) VALUES
(17, 'Vera', 'pergunta', '2020-10-31 20:47:56'),
(21, '', '', '2020-10-31 20:49:49'),
(27, 'Maria Pereira', 'Comprou um fogão', '2020-10-31 20:54:38'),
(28, 'Luiz Henrique', 'Comprou um forno', '2020-10-31 20:55:02'),
(29, 'Lucas Santos', 'Comprou um microondas', '2020-10-31 20:55:35'),
(47, 'Verivaldo Santana', 'Comprou uma geladeira', '2020-10-31 21:11:45');

-- --------------------------------------------------------

--
-- Estrutura da tabela `pedidos`
--

CREATE TABLE `pedidos` (
  `idpedidos` int(11) NOT NULL,
  `nome_cliente` varchar(45) NOT NULL,
  `endereço` varchar(150) NOT NULL,
  `telefone` int(11) NOT NULL,
  `nome_produto` varchar(100) NOT NULL,
  `valor_unitario` decimal(8,2) NOT NULL,
  `quantidade` varchar(45) NOT NULL,
  `valor_total` decimal(8,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `pedidos`
--

INSERT INTO `pedidos` (`idpedidos`, `nome_cliente`, `endereço`, `telefone`, `nome_produto`, `valor_unitario`, `quantidade`, `valor_total`) VALUES
(1, 'Miguel Pedroso', 'Rua Luis Augusto, 45', 987652345, 'geladeira', '6500.19', '1', '4019.00'),
(2, 'Erica Andrade', 'Rua Luis de Oliveira, 620', 986176398, 'cooktop', '700.00', '1', '540.00'),
(3, 'Miguel Pedroso', 'Rua Luis Augusto, 45', 987652345, 'geladeira', '6500.19', '1', '4019.00'),
(4, 'Erica Andrade', 'Rua Luis de Oliveira, 620', 986176398, 'cooktop', '700.00', '1', '540.00'),
(5, 'Vera Lucia', 'Rua João Andre, 44', 98734, 'microondas', '1000.00', '2', '1600.00'),
(6, 'Edson Santana', 'Rua Luis de Oliveira, 54', 98734, 'microondas', '1500.23', '1', '1000.00'),
(7, 'Ed Carlos', 'Rua Margarida Lemos, 32', 98762, 'geladeira', '6500.19', '1', '4019.00'),
(9, 'Eliane Pereira', 'Rua Ancantara Prado, 26', 987654322, 'geladeira', '6500.19', '1', '4019.00'),
(10, 'Marcia Cristina', 'Rua Miguel Lemos, 44', 987654328, 'forno eletrico', '550.00', '1', '400.00'),
(11, 'Mario Loureiro', 'Avenida Paulista, 12345', 32120987, 'microondas', '1000.00', '1', '800.00');

-- --------------------------------------------------------

--
-- Estrutura da tabela `produtos`
--

CREATE TABLE `produtos` (
  `idproduto` int(11) NOT NULL,
  `categoria` varchar(45) NOT NULL,
  `descricao` varchar(120) NOT NULL,
  `preco` decimal(8,2) NOT NULL,
  `preco_final` decimal(8,2) NOT NULL,
  `imagem` varchar(245) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `produtos`
--

INSERT INTO `produtos` (`idproduto`, `categoria`, `descricao`, `preco`, `preco_final`, `imagem`) VALUES
(1, 'geladeira', 'Geladeira Consul Side', '6389.20', '5019.00', 'imagem/geladeira1.jpg'),
(2, 'geladeira', 'Geladeira Continental Side', '6500.19', '4019.00', 'imagem/geladeira3.jpg'),
(3, 'cooktop', 'Cooktop Brastemp', '2389.20', '1019.00', 'imagem/cooktop.jpg'),
(4, 'cooktop', 'Cooktop Brastemp', '700.00', '540.00', 'imagem/cooktop1.jpg'),
(5, 'cooktop', 'Cooktop Continental 4 bocas', '700.00', '540.00', 'imagem/cooktop3.jpg'),
(6, 'microondas', 'Microondas Brastemp 240 Litros', '1000.00', '800.00', 'imagem/microondas.jpg'),
(7, 'microondas', 'Microondas Brastemp 240 Litros', '1500.23', '1000.00', 'imagem/microondas1.jpg'),
(8, 'microondas', 'Microondas Brastemp 140 Litros', '550.00', '400.00', 'imagem/microondas2.jpg'),
(9, 'forno eletrico', 'Forno Eletrico Brastemp', '6389.20', '5019.00', 'imagem/fornoeletrico.jpg'),
(10, 'forno eletrico', 'Forno Eletrico Mueller 140 Litros', '550.00', '400.00', 'imagem/fornoeletrico2.jpg'),
(11, 'forno eletrico', 'Forno Eletrico Brastemp', '6389.20', '5019.00', 'imagem/fornoeletrico1.jpg'),
(12, 'geladeira', 'Geladeira Brastemp', '6389.20', '5019.00', 'imagem/geladeira.jpg');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `comentarios`
--
ALTER TABLE `comentarios`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nome` (`nome`);

--
-- Índices para tabela `pedidos`
--
ALTER TABLE `pedidos`
  ADD PRIMARY KEY (`idpedidos`);

--
-- Índices para tabela `produtos`
--
ALTER TABLE `produtos`
  ADD PRIMARY KEY (`idproduto`),
  ADD UNIQUE KEY `imagem_UNIQUE` (`imagem`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `comentarios`
--
ALTER TABLE `comentarios`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT de tabela `pedidos`
--
ALTER TABLE `pedidos`
  MODIFY `idpedidos` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de tabela `produtos`
--
ALTER TABLE `produtos`
  MODIFY `idproduto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
