DROP DATABASE desafioJava;

CREATE DATABASE desafioJava;
USE desafioJava;

CREATE TABLE equipamento(
	idEquipamento INT PRIMARY KEY AUTO_INCREMENT,
    macAddress CHAR(17)

);

CREATE TABLE tipoComponente(
	idtipoComponente INT PRIMARY KEY AUTO_INCREMENT,
    tipo VARCHAR(45)

);

CREATE TABLE tipoValor(
	idTipoValor INT  PRIMARY KEY AUTO_INCREMENT,
	tipoValor VARCHAR(45),
    simbolo VARCHAR(5)

);


CREATE TABLE componente(
	idComponente INT PRIMARY KEY AUTO_INCREMENT,
	fkTipoComponente INT,
		FOREIGN KEY (fkTipoComponente) REFERENCES tipoComponente(idTipoComponente)

);

CREATE TABLE metrica(
	idMetrica INT PRIMARY KEY AUTO_INCREMENT,
    valor VARCHAR(7),
    fkTipoValor INT,
		FOREIGN KEY (fkTipoValor) REFERENCES tipoValor(idTipoValor),
	fkComponente INT,
		FOREIGN KEY (fkComponente) REFERENCES componente(idComponente)

);
