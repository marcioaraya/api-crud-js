
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


--
-- Banco de dados: `facsenac`
--
CREATE DATABASE IF NOT EXISTS `facsenac` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `facsenac`;

-- --------------------------------------------------------

--
-- Estrutura para tabela `alunos`
--

CREATE TABLE IF NOT EXISTS `usuarios` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` char(120) NOT NULL,
  `data_nascimento` date DEFAULT NULL,
  `telefone` char(15) DEFAULT NULL,
  `email` varchar(120) DEFAULT 'DF',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `usuarios`
--

INSERT INTO `usuarios` ( `nome`, `data_nascimento`, `telefone`, `email`) VALUES
('Maria Alves', '2020-01-01', '9999-9999', 'maria.alves@xxx.yyy'),
('Joao Paulo', '2025-04-11', '9999-8887', 'jp@xxx.zzz'),
('Gabriel Pensador', '2025-04-11', '898989-8989', 'gab@xxx.ccc');
COMMIT;
