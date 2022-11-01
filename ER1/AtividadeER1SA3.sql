--  comando para criar um banco de dados
-- iniciar nome do banco de dados com letra minuscula (boas praticas)
CREATE DATABASE uc9SA3 

-- comando para usar o bando de dados criado
USE uc9SA3

-- comando para criar uma tabela
CREATE TABLE Usuarios(
Id	INT	PRIMARY KEY IDENTITY,
Email VARCHAR(87) UNIQUE NOT NULL,
Senha VARCHAR(87) NOT NULL
)


-- comando para inserir usuarios em uma tabela
INSERT INTO Usuarios VALUES('gustavo@gmail.com', 'alu%senaiGustavo')
INSERT INTO Usuarios VALUES('carlos@gmail.com', 'pro!senai')
INSERT INTO Usuarios VALUES('adriano@gmail.com', 'alu$senai')
INSERT INTO Usuarios VALUES('marlon@gmail.com', 'alu$senai')


-- comando para consultar dados de uma tabela
SELECT * FROM Usuarios

-- comando para consultar dados de uma tabela usando a função de HASHBYTES
-- neste exemplo vamos fazer um hash da senha cadastrada

--								   tipos de hash
SELECT Email AS [Login], HASHBYTES('MD2', Senha) AS  Senha FROM Usuarios
SELECT Email AS [Login], HASHBYTES('MD4', Senha) AS  Senha FROM Usuarios
SELECT Email AS [Login], HASHBYTES('MD5', Senha) AS  Senha FROM Usuarios
SELECT Email AS [Login], HASHBYTES('SHA', Senha) AS  Senha FROM Usuarios
SELECT Email AS [Login], HASHBYTES('SHA2_256', Senha) AS  Senha FROM Usuarios
SELECT Email AS [Login], HASHBYTES('SHA2_512', Senha) AS  Senha FROM Usuarios

--											pegar apenas o usuario pelo Id usando condicional WHERE
SELECT Email AS [Login], HASHBYTES('SHA2_512', Senha) AS  Senha FROM Usuarios WHERE Id = 1
-- comando para consulta usando a funcao PWDENCRYPT (pega as senhas iguais e geram hashs diferentes para mais segurança)
SELECT Email AS [Login], PWDENCRYPT(Senha) AS Senha FROM Usuarios

