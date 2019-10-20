CREATE DATABASE CONSULTA;
	CREATE TABLE POSSIVEL(
		Dia_possivel INT NOT NULL,
		Mes_possivel INT NOT NULL,
	);
	USE CONSULTA;
CREATE TABLE M�dicos(
	ID_M�dico int not null identity,
	Nome_M�dico nvarchar(50) not null,
	CRM int not null,
	Especialidade nvarchar(20) not null,
	Telefone int,
	CONSTRAINT M�dicos_PK
	PRIMARY KEY (ID_M�dico,CRM)
);
CREATE TABLE Clientes(
	Nome_usu�rio nvarchar(20) not null,
	Senha nvarchar(10) not null,
	E_mail nvarchar(20) not null,
	CPF nvarchar(14) not null,
	ID_Seguro nvarchar(20) not null,
	CONSTRAINT Clientes_PK
	PRIMARY KEY (CPF,Nome_usu�rio)
);

ALTER TABLE M�dicos
ADD Cidade nvarchar(20);

ALTER TABLE M�dicos
ALTER COLUMN Especialidade nvarchar(20);

CREATE TABLE Problema(
	Problema nvarchar(70) not null,
	CONSTRAINT Problema_PK
	PRIMARY KEY(Problema)
);

INSERT INTO M�dicos(Nome_M�dico,CRM,Especialidade,Telefone)
VALUES ('Jo�o',12345,'Pediatra',26530656);

SELECT * FROM M�dicos;