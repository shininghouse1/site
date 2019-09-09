-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 09-Set-2019 às 00:45
-- Versão do servidor: 10.4.6-MariaDB
-- versão do PHP: 7.3.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `loja`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `carrinho`
--

CREATE TABLE `carrinho` (
  `idcarrinho` int(11) NOT NULL,
  `email` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `idproduto` int(11) NOT NULL,
  `qtd` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `carrinho`
--

INSERT INTO `carrinho` (`idcarrinho`, `email`, `idproduto`, `qtd`) VALUES
(3, 'willian.santos064@gmail.com', 0, 1),
(4, 'willian.santos064@gmail.com', 0, 1),
(5, 'willian.santos064@gmail.com', 0, 1),
(6, 'willian.santos064@gmail.com', 10, 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `comments`
--

CREATE TABLE `comments` (
  `id` int(5) NOT NULL,
  `nome` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `data` date NOT NULL,
  `comentario` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `comments`
--

INSERT INTO `comments` (`id`, `nome`, `email`, `data`, `comentario`) VALUES
(1, 'Wagner', 'wagnercandido10123@gmail.com', '2019-09-09', ''),
(2, 'wagner', 'wagnercandido10123@gmail.com', '2019-09-09', ''),
(3, 'wada', 'adqaw', '2019-09-09', ''),
(4, 'qsqs', 'qsqS', '2019-09-09', ''),
(5, 'wagdasbd', 'adawdasd', '2019-09-09', ''),
(6, 'asdasd', 'asdasd', '2019-09-09', 'asdasdasd');

-- --------------------------------------------------------

--
-- Estrutura da tabela `produto`
--

CREATE TABLE `produto` (
  `idproduto` int(11) NOT NULL,
  `titulo` varchar(50) NOT NULL,
  `descricao` longtext NOT NULL,
  `preco` float NOT NULL,
  `totalavaliacao` int(11) NOT NULL,
  `somaavaliacao` int(11) NOT NULL,
  `imagem` varchar(50) NOT NULL,
  `estoque` int(11) NOT NULL,
  `categoria` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `produto`
--

INSERT INTO `produto` (`idproduto`, `titulo`, `descricao`, `preco`, `totalavaliacao`, `somaavaliacao`, `imagem`, `estoque`, `categoria`) VALUES
(5, 'Camisa Nerd', 'Special Edition', 40, 0, 0, '0.281804001539172359.jpg', 10, 'camiseta'),
(6, 'Camisa Nerd', 'Superman', 42, 0, 0, '0.577804001539172423.jpg', 15, 'camiseta'),
(7, 'Caneca Nerd', 'Alta qualidade', 25, 0, 0, '0.586804001539172590.jpg', 20, 'Canecas'),
(8, 'Caneca Nerd', 'Alta qualidade', 25, 0, 0, '0.258804001539172652.jpg', 10, 'Canecas'),
(9, 'BonÃ© Mario', 'Alta qualidade', 30, 0, 0, '0.705804001539172724.jpg', 20, 'Bone	'),
(10, 'BonÃ© Ash Ketchum', 'Alta qualidade', 35, 0, 0, '0.669804001539172777.jpg', 15, 'Bone	');

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuario`
--

CREATE TABLE `usuario` (
  `id` int(11) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `senha` varchar(100) NOT NULL,
  `nivel` int(11) NOT NULL,
  `endereco` varchar(100) NOT NULL,
  `bairro` varchar(50) NOT NULL,
  `cidade` varchar(50) NOT NULL,
  `estado` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `usuario`
--

INSERT INTO `usuario` (`id`, `nome`, `email`, `senha`, `nivel`, `endereco`, `bairro`, `cidade`, `estado`) VALUES
(5, 'Willian', 'willian.santos064@gmail.com', '202cb962ac59075b964b07152d234b70', 2, 'A', 'A', 'A', 'RJ'),
(6, 'wagner', 'wc@gmail.com', 'f5bb0c8de146c67b44babbf4e6584cc0', 1, 'a', 'b', 'c', 'AC');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `carrinho`
--
ALTER TABLE `carrinho`
  ADD PRIMARY KEY (`idcarrinho`,`idproduto`);

--
-- Índices para tabela `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `produto`
--
ALTER TABLE `produto`
  ADD PRIMARY KEY (`idproduto`);

--
-- Índices para tabela `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `carrinho`
--
ALTER TABLE `carrinho`
  MODIFY `idcarrinho` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de tabela `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de tabela `produto`
--
ALTER TABLE `produto`
  MODIFY `idproduto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de tabela `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
