/*CREATE DATABASE COMERCIO_STAGE
GO
*/

USE COMERCIO_STAGE
GO

--TODO "POR" � UM CANDIDATO A SER UMA DIMENS�O
--CLIENTE
--VENDEDOR
--CATEGORIA
--FORNECEDOR
--PRODUTO
--FORMA PAGAMENTO
--REGIAO

-- O QUE FALAMOS ANTES DO "POR" � UM "FATO", O QUE OCORREU
--FATO S�O AS MEDIDAS
		-- EX: TOTAL, QUANTIDADE, CUSTO, LUCRO


CREATE TABLE ST_CLIENTE(
	IDCLIENTE INT DEFAULT NULL,
	NOME VARCHAR(100) DEFAULT NULL,
	SEXO VARCHAR(20) DEFAULT NULL,
	NASCIMENTO DATE DEFAULT NULL,
	CIDADE VARCHAR(100)DEFAULT NULL,
	ESTADO VARCHAR(10) DEFAULT NULL,
	REGIAO VARCHAR(20) DEFAULT NULL
	)
	GO

CREATE TABLE ST_VENDEDOR(
	IDVENDEDOR INT DEFAULT NULL,
	NOME VARCHAR(50) DEFAULT NULL,
	SEXO VARCHAR(20)DEFAULT NULL,
	IDGERENTE INT DEFAULT NULL
	)
	GO

CREATE TABLE ST_CATEGORIA(
	IDCATEGORIA INT DEFAULT NULL,
	NOME VARCHAR(50) DEFAULT NULL
	)
	GO

CREATE TABLE ST_FORNECEDOR(
	IDFORNECEDOR INT DEFAULT NULL,
	NOME VARCHAR(100) DEFAULT NULL
	)
	GO

CREATE TABLE ST_PRODUTO(
	IDPRODUTO INT DEFAULT NULL,
	NOME VARCHAR(50) DEFAULT NULL,
	VALOR_UNITARIO NUMERIC(10,2) DEFAULT NULL,
	CUSTO_MEDIO NUMERIC (10,2) DEFAULT NULL,
	ID_CATEGORIA INT DEFAULT NULL
	)
	GO

CREATE TABLE ST_NOTA(
	IDNOTA INT DEFAULT NULL
)
GO

CREATE TABLE ST_FORMA(
	IDFORMA INT DEFAULT NULL,
	FORMA VARCHAR(50) DEFAULT NULL
)
GO

CREATE TABLE ST_FATO(
	IDCLIENTE INT DEFAULT NULL,
	IDVENDEDOR INT DEFAULT NULL,
	IDPRODUTO INT DEFAULT NULL,
	IDFORNECEDOR INT DEFAULT NULL,
	IDNOTA INT DEFAULT NULL,
	IDFORMA INT DEFAULT NULL,
	QUANTIDADE INT DEFAULT NULL,
	TOTAL_ITEM NUMERIC(10,2) DEFAULT NULL,
	DATA DATE DEFAULT NULL,
	CUSTO_TOTAL NUMERIC(10,2) DEFAULT NULL,
	LUCRO_TOTAL NUMERIC(10,2) DEFAULT NULL
)
GO



