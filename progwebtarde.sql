-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 12/12/2024 às 19:30
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
-- Banco de dados: `progwebtarde`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `clientes`
--

CREATE TABLE `clientes` (
  `id` int(11) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `email` varchar(150) NOT NULL,
  `telefone` varchar(15) NOT NULL,
  `endereco` text NOT NULL,
  `data_nascimento` date NOT NULL,
  `data_atualizacao` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `clientes`
--

INSERT INTO `clientes` (`id`, `nome`, `email`, `telefone`, `endereco`, `data_nascimento`, `data_atualizacao`) VALUES
(5, 'Bruno Oliveir', 'bruno.oliveira@example.co', '343434343', 'Av. Central, 45', '1985-03-27', '2024-12-11 17:34:38'),
(6, 'Carla Souza', 'carla.souza@example.com', '31965432109', 'Travessa Verde, 789', '1992-07-10', '2024-12-11 16:57:18'),
(7, 'Daniel Almeida', 'daniel.almeida@example.com', '41954321098', 'Praça Azul, 10', '1988-09-18', '2024-12-11 16:57:18'),
(8, 'Eduarda Lima', 'eduarda.lima@example.com', '51943210987', 'Rua Bela Vista, 55', '1995-12-05', '2024-12-11 16:57:18'),
(9, 'Felipe Costa', 'felipe.costa@example.com', '61932109876', 'Av. Paulista, 123', '1990-05-30', '2024-12-11 16:57:18'),
(10, 'Gabriela Santos', 'gabriela.santos@example.com', '71921098765', 'Rua do Sol, 456', '1993-04-14', '2024-12-11 16:57:18'),
(11, 'Hugo Rocha', 'hugo.rocha@example.com', '81910987654', 'Av. das Palmeiras, 789', '1987-11-02', '2024-12-11 16:57:18'),
(12, 'Isabela Pereira', 'isabela.pereira@example.com', '91909876543', 'Praça do Centro, 10', '1994-08-21', '2024-12-11 16:57:18'),
(13, 'João Ribeiro', 'joao.ribeiro@example.com', '11987651234', 'Rua Nova, 55', '1989-06-17', '2024-12-11 16:57:18'),
(14, 'Karina Mendes', 'karina.mendes@example.com', '21976542345', 'Travessa da Paz, 88', '1991-02-11', '2024-12-11 16:57:18'),
(15, 'Lucas Martins', 'lucas.martins@example.com', '31965433456', 'Rua Verde, 99', '1996-03-09', '2024-12-11 16:57:18'),
(16, 'Mariana Freitas', 'mariana.freitas@example.com', '41954324567', 'Av. Primavera, 123', '1985-10-28', '2024-12-11 16:57:18'),
(17, 'Nicolas Barreto', 'nicolas.barreto@example.com', '51943215678', 'Rua dos Anjos, 456', '1990-07-07', '2024-12-11 16:57:18'),
(18, 'Olivia Torres', 'olivia.torres@example.com', '61932126789', 'Rua das Pedras, 789', '1993-01-25', '2024-12-11 16:57:18'),
(19, 'Paulo Ferreira', 'paulo.ferreira@example.com', '71921037890', 'Av. Central, 10', '1988-12-19', '2024-12-11 16:57:18'),
(20, 'Quênia Batista', 'quenia.batista@example.com', '81910948901', 'Rua do Campo, 55', '1992-09-03', '2024-12-11 16:57:18'),
(21, 'Rafael Moraes', 'rafael.moraes@example.com', '91909859012', 'Travessa Azul, 88', '1991-06-15', '2024-12-11 16:57:18'),
(22, 'Sofia Duarte', 'sofia.duarte@example.com', '11987660123', 'Praça Rosa, 99', '1994-03-27', '2024-12-11 16:57:18'),
(23, 'Thiago Nunes', 'thiago.nunes@example.com', '21976547890', 'Av. das Árvores, 123', '1989-08-12', '2024-12-11 16:57:18');

-- --------------------------------------------------------

--
-- Estrutura para tabela `login`
--

CREATE TABLE `login` (
  `id` int(11) NOT NULL,
  `nome` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `senha` varchar(32) NOT NULL,
  `data` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `login`
--

INSERT INTO `login` (`id`, `nome`, `email`, `senha`, `data`) VALUES
(2, 'carlos', 'car@.com', '5d78d182fd5f5510588695863d22ac27', '2024-11-29 17:18:50'),
(3, 'joao', 'jv334@.com', '1d72310edc006dadf2190caad5802983', '2024-11-29 17:18:50'),
(8, 'fewfwe', 'fegw', '1d72310edc006dadf2190caad5802983', '2024-12-09 20:16:19');

-- --------------------------------------------------------

--
-- Estrutura para tabela `produtos`
--

CREATE TABLE `produtos` (
  `id` int(11) NOT NULL,
  `nome` varchar(255) NOT NULL,
  `descricao` text NOT NULL,
  `tamanho` enum('PP','P','M','G','GG','X') NOT NULL,
  `categoria` varchar(255) NOT NULL,
  `marca` varchar(255) NOT NULL,
  `cor` varchar(255) NOT NULL,
  `preco` float NOT NULL,
  `imagem` varchar(255) NOT NULL,
  `data` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `produtos`
--

INSERT INTO `produtos` (`id`, `nome`, `descricao`, `tamanho`, `categoria`, `marca`, `cor`, `preco`, `imagem`, `data`) VALUES
(1, 'Camiseta Do Flamengo', 'boa', 'GG', 'camisa', 'adidas', 'vermelho e preto', 450, '', '2024-12-03 17:33:45'),
(2, 'camiseta do internacional', 'Vista sua paixão pelo Colorado com a camiseta oficial do Internacional! Em um vibrante tom de vermelho, acompanhado por detalhes em branco, esta peça reflete a tradição e a garra do clube. Confeccionada em tecido leve e de alta qualidade, oferece conforto e durabilidade, ideal para torcer nas arquibancadas ou no dia a dia. O escudo do Inter, aplicado com precisão no peito, simboliza o orgulho de ser colorado. Seja na vitória ou na luta, carregue o amor pelo clube no peito e mostre ao mundo a força do Gigante!', 'G', 'Camisa de Time', 'adidas', 'Vermelha e Branca', 219.99, '', '2024-12-03 17:33:45'),
(5, 'camisa do brasil', 'boa', 'G', 'camisa', 'Nike', 'amarela', 199.99, '', '2024-12-06 18:05:55');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nome` (`nome`);

--
-- Índices de tabela `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Índices de tabela `produtos`
--
ALTER TABLE `produtos`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nome` (`nome`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `clientes`
--
ALTER TABLE `clientes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT de tabela `login`
--
ALTER TABLE `login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de tabela `produtos`
--
ALTER TABLE `produtos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
