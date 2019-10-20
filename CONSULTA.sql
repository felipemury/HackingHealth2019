CREATE DATABASE CONSULTA;
	CREATE TABLE POSSIVEL(
		Dia_possivel INT NOT NULL,
		Mes_possivel INT NOT NULL,
	);
	USE CONSULTA;
CREATE TABLE Médicos(
	ID_Médico int not null identity,
	Nome_Médico nvarchar(50) not null,
	CRM int not null,
	Especialidade nvarchar(20) not null,
	Telefone int,
	CONSTRAINT Médicos_PK
	PRIMARY KEY (ID_Médico,CRM)
);
CREATE TABLE Clientes(
	Nome_usuário nvarchar(20) not null,
	Senha nvarchar(10) not null,
	E_mail nvarchar(20) not null,
	CPF nvarchar(14) not null,
	ID_Seguro nvarchar(20) not null,
	CONSTRAINT Clientes_PK
	PRIMARY KEY (CPF,Nome_usuário)
);

ALTER TABLE Médicos
ADD Cidade nvarchar(20);

ALTER TABLE Médicos
ALTER COLUMN Especialidade nvarchar(20);

CREATE TABLE Problema(
	Problema nvarchar(70) not null,
	CONSTRAINT Problema_PK
	PRIMARY KEY(Problema)
);

INSERT INTO Médicos(Nome_Médico,CRM,Especialidade,Telefone)
VALUES ('João',12345,'Pediatra',26530656);

SELECT * FROM Médicos;