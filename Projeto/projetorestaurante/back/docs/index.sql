DROP DATABASE IF EXISTS restaurante;
CREATE DATABASE restaurante;
USE restaurante;

CREATE TABLE cliente(
    idcliente int PRIMARY KEY AUTO_INCREMENT,
    nome varchar(255) not null,
    endereco varchar(255) not null,
    telefone VARCHAR(30) not null,
);
CREATE TABLE cardapio(
    produtoid int not null AUTO_INCREMENT,
    produto varchar(50) not null, 
    descricao varchar(255),
    preco decimal(5,2) not null, 
);
CREATE TABLE pedidos(
    idpedido int PRIMARY KEY AUTO_INCREMENT,
    idcliente int not null,
    nomepedido varchar(255) not null,
    horapedido time not null,
    datapedido DATE not null,
    statuspedido varchar (255) not null,
    obs varchar(255),
    FOREIGN KEY (idcliente) REFERENCES cliente (idpedido),
);
CREATE TABLE itempedido(
    iditem int not null,
    idcardapio int not null,
    valortotal decimal(6,2) not null,
    descricao varchar(255) not null,
    FOREIGN KEY (iditem) REFERENCES pedidos (idpedido),
    FOREIGN KEY (idcardapio) REFERENCES carapio (produtoid),
);