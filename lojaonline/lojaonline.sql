CREATE DATABASE LOJAONLINE;
USE LOJAONLINE;

CREATE TABLE produto(
	codigo INT PRIMARY KEY,
	nome VARCHAR(255) NULL,
	descricao VARCHAR(255) NULL,
	preco DECIMAL(10,2) NULL,
	tipo ENUM('Novo', 'Usado', 'Liquidacao', 'Promocao', 'Outros'),
	categoria SET('Eletronico', 'Telefonia', 'Informatica', 'Eletrodomesticos', 'Acessorios', 'Outro'),
	datalancamento TIMESTAMP NULL,
	decontousado DECIMAL(10,2)
);

CREATE TABLE LOJA(
	codigo INT PRIMARY KEY,
	nome VARCHAR(255) NULL,
	endereco VARCHAR(255) NULL,
	telefone VARCHAR(255) NULL
);

CREATE TABLE caracteristica(
	codigo INT PRIMARY KEY,
	nome VARCHAR(255),
	descricao VARCHAR(255)
	
);


CREATE TABLE produtoCaracteristica(
	produto INT,
	caracteristica INT,
	FOREIGN KEY(produto) REFERENCES produto(codigo),
	FOREIGN KEY(caracteristica) REFERENCES caracteristica(codigo),
	PRIMARY KEY(produto,caracteristica)
);

CREATE TABLE estoque(
	loja INT,
	produto INT,
	quantidade INT,
	FOREIGN KEY(loja) REFERENCES loja(codigo),
	FOREIGN KEY(produto) REFERENCES produto (codigo),
	PRIMARY KEY(loja,produto)
);

INSERT INTO loja(codigo, nome, endereco,telefone) VALUES
(1,'matriz','marechal deodoro da fonsec, 755 sala 01','47 995 280019');

INSERT INTO loja(codigo, nome, endereco,telefone) VALUES
(2,'filial1','marechal deodoro da fonsec, 755 sala 01','47 995 280019');

INSERT INTO produto(codigo, nome, descricao,preco,tipo,categoria,datalancamento,decontousado) VALUES
(1,'caderno','caderno 24 materias',24.99,'novo','Acessorios,Eletrodomesticos','2026-03-17 16:51:25',0);

INSERT INTO produto(codigo, nome, descricao,preco,tipo,categoria,datalancamento,decontousado) VALUES
(2,'caneta','azul',0.55,'novo','Acessorios','2026-03-17 16:51:25',0);


INSERT INTO produto(codigo, nome, descricao,preco,tipo,categoria,datalancamento,decontousado) VALUES
(3,'borracha','divertida',6,'novo','Acessorios','2026-03-17 16:51:25',0);


INSERT INTO produto(codigo, nome, descricao,preco,tipo,categoria,datalancamento,decontousado) VALUES
(4,'regua','30 cm',2.65,'novo','Acessorios','2026-03-17 16:51:25',0);


INSERT INTO produto(codigo, nome, descricao,preco,tipo,categoria,datalancamento,decontousado) VALUES
(5,'caneca','canecao',14,'novo','Acessorios','2026-03-17 16:51:25',0);

INSERT INTO estoque(loja,produto,quantidade) values(1,4,50);





