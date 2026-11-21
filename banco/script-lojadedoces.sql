DROP DATABASE IF EXISTS loja_doces;
CREATE DATABASE loja_doces;
USE loja_doces;

CREATE TABLE loja (
    id  INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    endereco VARCHAR(150),
    telefone VARCHAR(20)
);

CREATE TABLE doce (
    id_doce INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100)  NOT NULL,
    preco DECIMAL(10,2) NOT NULL,
    peso_gramas DECIMAL(10,2),
    calorias INT,
    quantidade_estoque INT DEFAULT 0,
    tipo VARCHAR(20) NOT NULL,
    id_loja INT NOT NULL,
    FOREIGN KEY (id_loja) REFERENCES loja(id)
);

CREATE TABLE brigadeiro (
    id_doce INT PRIMARY KEY,
	granulado BOOLEAN,
    tipo_chocolate VARCHAR(50),
    gourmet BOOLEAN,
    FOREIGN KEY (id_doce) REFERENCES doce(id) 
);

CREATE TABLE bolo (
    id_doce INT PRIMARY KEY,
    sabor_massa VARCHAR(50),
    recheio VARCHAR(50),
    numero_fatias  INT,
    FOREIGN KEY (id_doce) REFERENCES doce(id) 
);

CREATE TABLE pudim (
    id_doce INT PRIMARY KEY,
    sabor VARCHAR(50),
    tipo_calda VARCHAR(50),
    percentual_acucar DECIMAL(5,2),
    FOREIGN KEY (id_doce) REFERENCES doce(id) 
);
