create database fseletro;

CREATE TABLE `produto` (
  `idproduto` int NOT NULL AUTO_INCREMENT,
  `categoria` varchar(45) NOT NULL,
  `descricao` varchar(120) NOT NULL,
  `preco` decimal(8,2) NOT NULL,
  `preco_final` decimal(8,2) NOT NULL,
  `imagem` varchar(245) DEFAULT NULL,
  PRIMARY KEY (`idproduto`),
  UNIQUE KEY `imagem_UNIQUE` (`imagem`)
);


CREATE TABLE `pedidos` (
  `idpedidos` int NOT NULL AUTO_INCREMENT,
  `nome_cliente` varchar(45) NOT NULL,
  `endereço` varchar(150) NOT NULL,
  `telefone` int NOT NULL,
  `nome_produto` varchar(100) NOT NULL,
  `valor_unitario` decimal(8,2) NOT NULL,
  `quantidade` varchar(45) NOT NULL,
  `valor_total` decimal(8,2) NOT NULL,
  PRIMARY KEY (`idpedidos`)
);



UPDATE `fseletro`.`produto` SET `imagem` = 'imagem/geladeira.jpg' WHERE (`idproduto` = '1');
INSERT INTO `fseletro`.`produto` (`categoria`, `descricao`, `preco`, `preco_final`, `imagem`) VALUES ('geladeira', 'Geladeira Consul Side', '6389.20', '5019.00', 'imagem/geladeira1.jpg');
INSERT INTO `fseletro`.`produto` (`categoria`, `descricao`, `preco`, `preco_final`, `imagem`) VALUES ('geladeira', 'Geladeira Continental Side', '6500.19', '4019.00', 'imagem/geladeira3.jpg');
INSERT INTO `fseletro`.`produto` (`categoria`, `descricao`, `preco`, `preco_final`, `imagem`) VALUES ('cooktop', 'Cooktop Brastemp', '2389.20', '1019.00', 'imagem/cooktop.jpg');
INSERT INTO `fseletro`.`produto` (`categoria`, `descricao`, `preco`, `preco_final`, `imagem`) VALUES ('cooktop', 'Cooktop Brastemp', '700.00', '540.00', 'imagem/cooktop1.jpg');
INSERT INTO `fseletro`.`produto` (`categoria`, `descricao`, `preco`, `preco_final`, `imagem`) VALUES ('cooktop', 'Cooktop Continental 4 bocas', '700.00', '540.00', 'imagem/cooktop3.jpg');
INSERT INTO `fseletro`.`produto` (`categoria`, `descricao`, `preco`, `preco_final`, `imagem`) VALUES ('microondas', 'Microondas Brastemp 240 Litros', '1000.00', '800.00', 'imagem/microondas.jpg');
INSERT INTO `fseletro`.`produto` (`categoria`, `descricao`, `preco`, `preco_final`, `imagem`) VALUES ('microondas', 'Microondas Brastemp 240 Litros', '1500.23', '1000.00', 'imagem/microondas1.jpg');
INSERT INTO `fseletro`.`produto` (`categoria`, `descricao`, `preco`, `preco_final`, `imagem`) VALUES ('microondas', 'Microondas Brastemp 140 Litros', '550.00', '400.00', 'imagem/microondas2.jpg');
INSERT INTO `fseletro`.`produto` (`categoria`, `descricao`, `preco`, `preco_final`, `imagem`) VALUES ('forno eletrico', 'Forno Eletrico Brastemp', '6389.20', '5019.00', 'imagem/fornoeletrico.jpg');
INSERT INTO `fseletro`.`produto` (`categoria`, `descricao`, `preco`, `preco_final`, `imagem`) VALUES ('forno eletrico', 'Forno Eletrico Mueller 140 Litros', '550.00', '400.00', 'imagem/fornoeletrico2.jpg');
INSERT INTO `fseletro`.`produto` (`categoria`, `descricao`, `preco`, `preco_final`, `imagem`) VALUES ('forno eletrico', 'Forno Eletrico Brastemp', '6389.20', '5019.00', 'imagem/fornoeletrico1.jpg');



INSERT INTO `fseletro`.`pedidos` (`nome_cliente`, `endereço`, `telefone`, `nome_produto`, `valor_unitario`, `quantidade`, `valor_total`) VALUES ('Miguel Pedroso', 'Rua Luis Augusto, 45', '98765-2345', 'geladeira', '6500.19', '1', '4019.00');
INSERT INTO `fseletro`.`pedidos` (`nome_cliente`, `endereço`, `telefone`, `nome_produto`, `valor_unitario`, `quantidade`, `valor_total`) VALUES ('Erica Andrade', 'Rua Luis de Oliveira, 620', '98617-6398', 'cooktop', '700.00', '1', '540.00');
INSERT INTO `fseletro`.`pedidos` (`nome_cliente`, `endereço`, `telefone`, `nome_produto`, `valor_unitario`, `quantidade`, `valor_total`) VALUES ('Vera Lucia', 'Rua João Andre, 44', '98734-2345', 'microondas', '1000.00', '2', '1600.00');
INSERT INTO `fseletro`.`pedidos` (`nome_cliente`, `endereço`, `telefone`, `nome_produto`, `valor_unitario`, `quantidade`, `valor_total`) VALUES ('Edson Santana', 'Rua Luis de Oliveira, 54', '98734-3456', 'microondas', '1500.23', '1', '1000.00');
INSERT INTO `fseletro`.`pedidos` (`nome_cliente`, `endereço`, `telefone`, `nome_produto`, `valor_unitario`, `quantidade`, `valor_total`) VALUES ('Ed Carlos', 'Rua Margarida Lemos, 32', '98762-3425', 'geladeira', '6500.19', '1', '4019.00');
INSERT INTO `fseletro`.`pedidos` (`nome_cliente`, `endereço`, `telefone`, `nome_produto`, `valor_unitario`, `quantidade`, `valor_total`) VALUES ('Maria das Dores', 'Rua Emporio, 34', '98765-1234', 'microondas', '550.00', '1', '400.00');
INSERT INTO `fseletro`.`pedidos` (`nome_cliente`, `endereço`, `telefone`, `nome_produto`, `valor_unitario`, `quantidade`, `valor_total`) VALUES ('Eliane Pereira', 'Rua Ancantara Prado, 26', '987654322', 'geladeira', '6500.19', '1', '4019.00');
INSERT INTO `fseletro`.`pedidos` (`nome_cliente`, `endereço`, `telefone`, `nome_produto`, `valor_unitario`, `quantidade`, `valor_total`) VALUES ('Marcia Cristina', 'Rua Miguel Lemos, 44', '987654328', 'forno eletrico', '550.00', '1', '400.00');
INSERT INTO `fseletro`.`pedidos` (`nome_cliente`, `endereço`, `telefone`, `nome_produto`, `valor_unitario`, `quantidade`, `valor_total`) VALUES ('Felipe Santos', 'Rua Tamoios, 345, '987654346', 'forno eletrico', '6389.20', '1', '5019.00');
INSERT INTO `fseletro`.`pedidos` (`nome_cliente`, `endereço`, `telefone`, `nome_produto`, `valor_unitario`, `quantidade`, `valor_total`) VALUES ('Jussura Pereira', 'Rua Emporio, 34', '98765-1234', 'microondas', '550.00', '1', '400.00');
