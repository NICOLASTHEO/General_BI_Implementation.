/*ser� criado:REALCIONAL -> STAGE AREA -> DW
*/
/* MODELO RELACIONAL*/

CREATE DATABASE COMERCIO_OLPT
GO

USE COMERCIO_OLPT
GO

CREATE TABLE ENDERECO(
	IDENDERECO INT PRIMARY KEY IDENTITY,
	RUA VARCHAR(100) NOT NULL,
	CIDADE VARCHAR(100) NOT NULL,
	ESTADO CHAR(2) NOT NULL,
	REGIAO VARCHAR(20) NOT NULL,
	ID_CLIENTE INT UNIQUE
)
GO

CREATE TABLE VENDEDOR(
	IDVENDEDOR INT PRIMARY KEY IDENTITY,
	NOME VARCHAR(30) NOT NULL,
	SEXO CHAR(1) NOT NULL,
	EMAIL VARCHAR(30) NOT NULL
	ID_VENDEDOR
)
GO

CREATE TABLE CATEGORIA(
	IDCATEGORIA INT PRIMARY KEY IDENTITY,
	NOME VARCHAR(50) NOT NULL
)
GO

CREATE TABLE FORNECEDOR(
	IDFORNECEDOR INT PRIMARY KEY IDENTITY,
	NOME VARCHAR(50) NOT NULL
)
GO

CREATE TABLE PRODUTO(
	IDPRODUTO INT PRIMARY KEY IDENTITY,
	PRODUTO VARCHAR(100) NOT NULL,
	VALOR NUMERIC(10,2) NOT NULL,
	CUSTO_M�DIO NUMERIC(10,2) NOT NULL,
	ID_CATEGORIA INT,
	ID_FORNCEDOR INT
)
GO

CREATE TABLE FORMA_PAGAMENTO(
	IDFORMA INT PRIMARY KEY IDENTITY,
	FORMA VARCHAR(40) NOT NULL,
	QUANTIDADE_VEZES NUMERIC(2)
)
GO

CREATE TABLE ITEM_NOTA(
	IDITEMNOTA INT PRIMARY KEY IDENTITY,
	ID_PRODUTO INT,
	ID_NOTA_FISCAL INT,
	QUANTIDADE INT,
	TOTAL NUMERIC(10,2)
)
GO

CREATE TABLE NOTA_FISCAL(
	IDNOTA INT PRIMARY KEY IDENTITY(1000,10),
	DATA DATE,
	TOTAL NUMERIC(10,2),
	ID_CLIENTE INT,
	ID_VENDEDOR INT,
	ID_FORMA INT
)
GO

CREATE TABLE CLIENTE(
	IDCLIENTE INT PRIMARY KEY IDENTITY,
	NOME VARCHAR(30),
	SOBRENOME VARCHAR(30),
	EMAIL VARCHAR(60) UNIQUE,
	SEXO CHAR(1),
	NASCIMENTO DATE
)
GO

