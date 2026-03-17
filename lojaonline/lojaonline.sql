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






