Create database romullus;
use romullus;

CREATE TABLE Usuario (
    ID INT PRIMARY KEY,
    Nome VARCHAR(120),
    Senha NCHAR(32),
    DataHoraCriacao DATETIME,
    DataHoraUltimoAcesso DATETIME,
    Email VARCHAR(120),
    fk_TipoUsuario_ID INT
);

INSERT INTO Usuario (ID, Nome, Senha, DataHoraCriacao, DataHoraUltimoAcesso, Email) VALUES (1, 'Maria', '1234',GETDATE(),GETDATE(), 'maria@gmail');
INSERT INTO Usuario (ID, Nome, Senha, DataHoraCriacao, DataHoraUltimoAcesso, Email) VALUES (2, 'Pedro', '12345',GETDATE(),GETDATE(), 'pedro@gmail');
INSERT INTO Usuario (ID, Nome, Senha, DataHoraCriacao, DataHoraUltimoAcesso, Email) VALUES (3, 'Miguel', '123456',GETDATE(),GETDATE(), 'miguel@gmail');
INSERT INTO Usuario (ID, Nome, Senha, DataHoraCriacao, DataHoraUltimoAcesso, Email) VALUES (4, 'Lucas', '12345678',GETDATE(),GETDATE(), 'lucas@gmail');
INSERT INTO Usuario (ID, Nome, Senha, DataHoraCriacao, DataHoraUltimoAcesso, Email) VALUES (5, 'Luiz', '123456789',GETDATE(),GETDATE(), 'luiz@gmail');
INSERT INTO Usuario (ID, Nome, Senha, DataHoraCriacao, DataHoraUltimoAcesso, Email) VALUES (6, 'Sabrina', '12349',GETDATE(),GETDATE(), 'sabrina@gmail');
INSERT INTO Usuario (ID, Nome, Senha, DataHoraCriacao, DataHoraUltimoAcesso, Email) VALUES (7, 'artur', '123498',GETDATE(),GETDATE(), 'artur@gmail');
INSERT INTO Usuario (ID, Nome, Senha, DataHoraCriacao, DataHoraUltimoAcesso, Email) VALUES (8, 'paulo', '1234987',GETDATE(),GETDATE(), 'paulo@gmail');
INSERT INTO Usuario (ID, Nome, Senha, DataHoraCriacao, DataHoraUltimoAcesso, Email) VALUES (9, 'fernando', '12349876',GETDATE(),GETDATE(), 'fernando@gmail');
INSERT INTO Usuario (ID, Nome, Senha, DataHoraCriacao, DataHoraUltimoAcesso, Email) VALUES (10, 'julia', '123498765',GETDATE(),GETDATE(), 'julia@gmail');

update Usuario SET fk_TipoUsuario_ID = 1 where ID = 1;
update Usuario SET fk_TipoUsuario_ID = 2 where ID = 2;
update Usuario SET fk_TipoUsuario_ID = 3 where ID = 3;
update Usuario SET fk_TipoUsuario_ID = 4 where ID = 4;
update Usuario SET fk_TipoUsuario_ID = 5 where ID = 5;
update Usuario SET fk_TipoUsuario_ID = 6 where ID = 6;
update Usuario SET fk_TipoUsuario_ID = 7 where ID = 7;
update Usuario SET fk_TipoUsuario_ID = 8 where ID = 8;
update Usuario SET fk_TipoUsuario_ID = 9 where ID = 9;
update Usuario SET fk_TipoUsuario_ID = 10 where ID = 10;

Select * from Usuario;

CREATE TABLE TipoUsuario (
    ID INT PRIMARY KEY,
    Tipo VARCHAR(80)
);
truncate table TipoUsuario;

INSERT INTO TipoUsuario (ID, Tipo) VALUES (1, 'Corretor');
INSERT INTO TipoUsuario (ID, Tipo) VALUES (2, 'Cliente');
INSERT INTO TipoUsuario (ID, Tipo) VALUES (3, 'Corretor');
INSERT INTO TipoUsuario (ID, Tipo) VALUES (4, 'Cliente');
INSERT INTO TipoUsuario (ID, Tipo) VALUES (5, 'Corretor');
INSERT INTO TipoUsuario (ID, Tipo) VALUES (6, 'Cliente');
INSERT INTO TipoUsuario (ID, Tipo) VALUES (7, 'Corretor');
INSERT INTO TipoUsuario (ID, Tipo) VALUES (8, 'Cliente');
INSERT INTO TipoUsuario (ID, Tipo) VALUES (9, 'Corretor');
INSERT INTO TipoUsuario (ID, Tipo) VALUES (10, 'Cliente');

Select * from TipoUsuario; 

CREATE TABLE Cidade (
    Nome_cidade VARCHAR(120),
    ID INT PRIMARY KEY,
    fk_UF_ID INT
);
Truncate table Cidade;

INSERT INTO Cidade (ID, Nome_cidade) VALUES (1, 'São Paulo');
INSERT INTO Cidade (ID, Nome_cidade) VALUES (2, 'Rio de Janeiro');
INSERT INTO Cidade (ID, Nome_cidade) VALUES (3, 'Brasília');
INSERT INTO Cidade (ID, Nome_cidade) VALUES (4, 'Manaus');
INSERT INTO Cidade (ID, Nome_cidade) VALUES (5, 'Salvador');
INSERT INTO Cidade (ID, Nome_cidade) VALUES (6, 'Fortaleza');
INSERT INTO Cidade (ID, Nome_cidade) VALUES (7, 'Vitoria');
INSERT INTO Cidade (ID, Nome_cidade) VALUES (8, 'Goiania');
INSERT INTO Cidade (ID, Nome_cidade) VALUES (9, 'Saõ Luis');
INSERT INTO Cidade (ID, Nome_cidade) VALUES (10, 'Cuiaba');

update Cidade SET fk_UF_ID = 1 where ID = 1;
update Cidade SET fk_UF_ID = 2 where ID = 2;
update Cidade SET fk_UF_ID = 3 where ID = 3;
update Cidade SET fk_UF_ID = 4 where ID = 4;
update Cidade SET fk_UF_ID = 5 where ID = 5;
update Cidade SET fk_UF_ID = 6 where ID = 6;
update Cidade SET fk_UF_ID = 7 where ID = 7;
update Cidade SET fk_UF_ID = 8 where ID = 8;
update Cidade SET fk_UF_ID = 9 where ID = 9;
update Cidade SET fk_UF_ID = 10 where ID = 10;

Select * from Cidade;

CREATE TABLE Bairro (
    ID INT PRIMARY KEY,
    Nome_bairro VARCHAR(120),
    fk_Cidade_ID INT
);

INSERT INTO Bairro (ID, Nome_bairro) VALUES (1, 'Copacabana');
INSERT INTO Bairro (ID, Nome_bairro) VALUES (2, 'Ipanema');
INSERT INTO Bairro (ID, Nome_bairro) VALUES (3, 'Leblon');
INSERT INTO Bairro (ID, Nome_bairro) VALUES (4, 'Barra da Tijuca');
INSERT INTO Bairro (ID, Nome_bairro) VALUES (5, 'Botafogo');
INSERT INTO Bairro (ID, Nome_bairro) VALUES (6, 'Tijuca');
INSERT INTO Bairro (ID, Nome_bairro) VALUES (7, 'Flamengo');
INSERT INTO Bairro (ID, Nome_bairro) VALUES (8, 'Lapa');
INSERT INTO Bairro (ID, Nome_bairro) VALUES (9, 'Santa Teresa');
INSERT INTO Bairro (ID, Nome_bairro) VALUES (10, 'Gávea');

update Bairro SET fk_Cidade_ID = 1 where ID = 1;
update Bairro SET fk_Cidade_ID = 2 where ID = 2;
update Bairro SET fk_Cidade_ID = 3 where ID = 3;
update Bairro SET fk_Cidade_ID = 4 where ID = 4;
update Bairro SET fk_Cidade_ID = 5 where ID = 5;
update Bairro SET fk_Cidade_ID = 6 where ID = 6;
update Bairro SET fk_Cidade_ID = 7 where ID = 7;
update Bairro SET fk_Cidade_ID = 8 where ID = 8;
update Bairro SET fk_Cidade_ID = 9 where ID = 9;
update Bairro SET fk_Cidade_ID = 10 where ID = 10;

Select * from Bairro;

CREATE TABLE UF (
    ID INT PRIMARY KEY,
    NomeUF VARCHAR(120),
    SiglaUF CHAR(2)
);
Truncate table UF;

INSERT INTO UF (ID, NomeUF, SiglaUF) VALUES (1, 'São Paulo', 'SP');
INSERT INTO UF (ID, NomeUF, SiglaUF) VALUES (2, 'Rio de Janeiro', 'RJ');
INSERT INTO UF (ID, NomeUF, SiglaUF) VALUES (3, 'Distrito Federal', 'DF');
INSERT INTO UF (ID, NomeUF, SiglaUF) VALUES (4, 'Amazonas', 'AM');
INSERT INTO UF (ID, NomeUF, SiglaUF) VALUES (5, 'Bahia', 'BA');
INSERT INTO UF (ID, NomeUF, SiglaUF) VALUES (6, 'Ceará', 'CE');
INSERT INTO UF (ID, NomeUF, SiglaUF) VALUES (7, 'Espírito Santo', 'ES');
INSERT INTO UF (ID, NomeUF, SiglaUF) VALUES (8, 'Goiás', 'GO');
INSERT INTO UF (ID, NomeUF, SiglaUF) VALUES (9, 'Maranhão', 'MA');
INSERT INTO UF (ID, NomeUF, SiglaUF) VALUES (10, 'Mato Grosso', 'MT');

Select * from UF;

CREATE TABLE Endereco (
    ID INT PRIMARY KEY,
    Logradouro VARCHAR(120),
    Numero INT,
    Complemento VARCHAR(120),
    fk_Bairro_ID INT
);

INSERT INTO Endereco (ID, Logradouro, Numero, Complemento) VALUES (1, 'Rua das Flores', 123, 'Casa 1');
INSERT INTO Endereco (ID, Logradouro, Numero, Complemento) VALUES (2, 'Avenida Principal', 456, 'Apartamento 3B');
INSERT INTO Endereco (ID, Logradouro, Numero, Complemento) VALUES (3, 'Rua dos Pinheiros', 789, 'Sala 2');
INSERT INTO Endereco (ID, Logradouro, Numero, Complemento) VALUES (4, 'Rua das Palmeiras', 1011, 'Casa 5');
INSERT INTO Endereco (ID, Logradouro, Numero, Complemento) VALUES (5, 'Avenida das Acácias', 1315, 'Bloco A, Apt 7');
INSERT INTO Endereco (ID, Logradouro, Numero, Complemento) VALUES (6, 'Rua das Violetas', 1617, 'Casa 8');
INSERT INTO Endereco (ID, Logradouro, Numero, Complemento) VALUES (7, 'Avenida dos Girassóis', 1820, 'Bloco C, Apt 12');
INSERT INTO Endereco (ID, Logradouro, Numero, Complemento) VALUES (8, 'Rua das Margaridas', 2022, 'Sala 4');
INSERT INTO Endereco (ID, Logradouro, Numero, Complemento) VALUES (9, 'Avenida das Hortênsias', 2324, 'Casa 15');
INSERT INTO Endereco (ID, Logradouro, Numero, Complemento) VALUES (10, 'Rua dos Cravos', 2526, 'Apartamento 17');

update Endereco SET fk_Bairro_ID = 1 where ID = 1;
update Endereco SET fk_Bairro_ID = 2 where ID = 2;
update Endereco SET fk_Bairro_ID = 3 where ID = 3;
update Endereco SET fk_Bairro_ID = 4 where ID = 4;
update Endereco SET fk_Bairro_ID = 5 where ID = 5;
update Endereco SET fk_Bairro_ID = 6 where ID = 6;
update Endereco SET fk_Bairro_ID = 7 where ID = 7;
update Endereco SET fk_Bairro_ID = 8 where ID = 8;
update Endereco SET fk_Bairro_ID = 9 where ID = 9;
update Endereco SET fk_Bairro_ID = 10 where ID = 10;

select * from Endereco;

CREATE TABLE TipoAnuncio (
    ID INT PRIMARY KEY,
    NomeTipoAnuncio VARCHAR(120)
);

INSERT INTO TipoAnuncio (ID, NomeTipoAnuncio) VALUES (1, 'Venda');
INSERT INTO TipoAnuncio (ID, NomeTipoAnuncio) VALUES (2, 'Aluguel');
INSERT INTO TipoAnuncio (ID, NomeTipoAnuncio) VALUES (3, 'Troca');
INSERT INTO TipoAnuncio (ID, NomeTipoAnuncio) VALUES (4, 'Doação');
INSERT INTO TipoAnuncio (ID, NomeTipoAnuncio) VALUES (5, 'Emprego');
INSERT INTO TipoAnuncio (ID, NomeTipoAnuncio) VALUES (6, 'Serviços');
INSERT INTO TipoAnuncio (ID, NomeTipoAnuncio) VALUES (7, 'Evento');
INSERT INTO TipoAnuncio (ID, NomeTipoAnuncio) VALUES (8, 'Compra');
INSERT INTO TipoAnuncio (ID, NomeTipoAnuncio) VALUES (9, 'Procura');
INSERT INTO TipoAnuncio (ID, NomeTipoAnuncio) VALUES (10, 'Outro');

select * from TipoAnuncio;

CREATE TABLE Imovel (
    Qtdvaga INT,
    Qtdquarto INT,
    Qtdsuite INT,
    Qtdbanheiro INT,
    Valorimovel DECIMAL,
    ID INT PRIMARY KEY,
    Observacoes TEXT,
    fk_TipoImovel_ID INT,
    fk_Endereco_ID INT,
    fk_TipoAnuncio_ID INT
);

drop table Imovel;

INSERT INTO Imovel (Qtdvaga, Qtdquarto, Qtdsuite, Qtdbanheiro, Valorimovel, ID, Observacoes) VALUES (2, 3, 1, 2, 250000.00, 1, 'Apartamento bem localizado');
INSERT INTO Imovel (Qtdvaga, Qtdquarto, Qtdsuite, Qtdbanheiro, Valorimovel, ID, Observacoes) VALUES (1, 2, 0, 1, 150000.00, 2, 'Casa com jardim espaçoso');
INSERT INTO Imovel (Qtdvaga, Qtdquarto, Qtdsuite, Qtdbanheiro, Valorimovel, ID, Observacoes) VALUES (3, 4, 2, 3, 400000.00, 3, 'Cobertura com vista panorâmica');
INSERT INTO Imovel (Qtdvaga, Qtdquarto, Qtdsuite, Qtdbanheiro, Valorimovel, ID, Observacoes) VALUES (2, 3, 2, 2, 320000.00, 4, 'Apartamento mobiliado');
INSERT INTO Imovel (Qtdvaga, Qtdquarto, Qtdsuite, Qtdbanheiro, Valorimovel, ID, Observacoes) VALUES (1, 1, 1, 1, 120000.00, 5, 'Studio no centro da cidade');
INSERT INTO Imovel (Qtdvaga, Qtdquarto, Qtdsuite, Qtdbanheiro, Valorimovel, ID, Observacoes) VALUES (2, 2, 1, 1, 180000.00, 6, 'Apartamento com área de lazer');
INSERT INTO Imovel (Qtdvaga, Qtdquarto, Qtdsuite, Qtdbanheiro, Valorimovel, ID, Observacoes) VALUES (2, 3, 1, 2, 210000.00, 7, 'Apartamento bem iluminado');
INSERT INTO Imovel (Qtdvaga, Qtdquarto, Qtdsuite, Qtdbanheiro, Valorimovel, ID, Observacoes) VALUES (0, 5, 4, 3, 600000.00, 8, 'Casa ampla com piscina');
INSERT INTO Imovel (Qtdvaga, Qtdquarto, Qtdsuite, Qtdbanheiro, Valorimovel, ID, Observacoes) VALUES (2, 3, 2, 2, 280000.00, 9, 'Apartamento próximo ao metrô');
INSERT INTO Imovel (Qtdvaga, Qtdquarto, Qtdsuite, Qtdbanheiro, Valorimovel, ID, Observacoes) VALUES (1, 2, 1, 1, 135000.00, 10, 'Casa térrea com quintal');

Select * from Imovel;

update Imovel SET fk_TipoImovel_ID = 1 where ID = 1;
update Imovel SET fk_TipoImovel_ID = 2 where ID = 2;
update Imovel SET fk_TipoImovel_ID = 3 where ID = 3;
update Imovel SET fk_TipoImovel_ID = 4 where ID = 4;
update Imovel SET fk_TipoImovel_ID = 5 where ID = 5;
update Imovel SET fk_TipoImovel_ID = 6 where ID = 6;
update Imovel SET fk_TipoImovel_ID = 7 where ID = 7;
update Imovel SET fk_TipoImovel_ID = 8 where ID = 8;
update Imovel SET fk_TipoImovel_ID = 9 where ID = 9;
update Imovel SET fk_TipoImovel_ID = 10 where ID = 10;

update Imovel SET fk_Endereco_ID = 1 where ID = 1;
update Imovel SET fk_Endereco_ID = 2 where ID = 2;
update Imovel SET fk_Endereco_ID = 3 where ID = 3;
update Imovel SET fk_Endereco_ID = 4 where ID = 4;
update Imovel SET fk_Endereco_ID = 5 where ID = 5;
update Imovel SET fk_Endereco_ID = 6 where ID = 6;
update Imovel SET fk_Endereco_ID = 7 where ID = 7;
update Imovel SET fk_Endereco_ID = 8 where ID = 8;
update Imovel SET fk_Endereco_ID = 9 where ID = 9;
update Imovel SET fk_Endereco_ID = 10 where ID = 10;

update Imovel SET fk_TipoAnuncio_ID = 1 where ID = 1;
update Imovel SET fk_TipoAnuncio_ID = 2 where ID = 2;
update Imovel SET fk_TipoAnuncio_ID = 3 where ID = 3;
update Imovel SET fk_TipoAnuncio_ID = 4 where ID = 4;
update Imovel SET fk_TipoAnuncio_ID = 5 where ID = 5;
update Imovel SET fk_TipoAnuncio_ID = 6 where ID = 6;
update Imovel SET fk_TipoAnuncio_ID = 7 where ID = 7;
update Imovel SET fk_TipoAnuncio_ID = 8 where ID = 8;
update Imovel SET fk_TipoAnuncio_ID = 9 where ID = 9;
update Imovel SET fk_TipoAnuncio_ID = 10 where ID = 10;

update Imovel set areaUtil = 100  where ID = 1;
update Imovel set areaUtil = 150  where ID = 2;
update Imovel set areaUtil = 200  where ID = 3;
update Imovel set areaUtil = 250  where ID = 4;
update Imovel set areaUtil = 300  where ID = 5;
update Imovel set areaUtil = 100  where ID = 6;
update Imovel set areaUtil = 150  where ID = 7;
update Imovel set areaUtil = 200  where ID = 8;
update Imovel set areaUtil = 250  where ID = 9;
update Imovel set areaUtil = 300  where ID = 10;

alter table Imovel add areaUtil int;  
Select * from Imovel;

CREATE TABLE TipoImovel (
    ID INT PRIMARY KEY,
    NomeTipoImovel VARCHAR(120)
);

INSERT INTO TipoImovel (ID, NomeTipoImovel) VALUES (1, 'Casa');
INSERT INTO TipoImovel (ID, NomeTipoImovel) VALUES (2, 'Apartamento');
INSERT INTO TipoImovel (ID, NomeTipoImovel) VALUES (3, 'Cobertura');
INSERT INTO TipoImovel (ID, NomeTipoImovel) VALUES (4, 'Chácara');
INSERT INTO TipoImovel (ID, NomeTipoImovel) VALUES (5, 'Sobrado');
INSERT INTO TipoImovel (ID, NomeTipoImovel) VALUES (6, 'Kitnet');
INSERT INTO TipoImovel (ID, NomeTipoImovel) VALUES (7, 'Loft');
INSERT INTO TipoImovel (ID, NomeTipoImovel) VALUES (8, 'Terreno');
INSERT INTO TipoImovel (ID, NomeTipoImovel) VALUES (9, 'Fazenda');
INSERT INTO TipoImovel (ID, NomeTipoImovel) VALUES (10, 'Prédio');

Select * from TipoImovel;

CREATE TABLE Imagem (
    ID INT PRIMARY KEY,
    Nome_Imagem VARCHAR(120),
    url VARCHAR(120),
    fk_Imovel_ID INT
);


INSERT INTO Imagem (ID, Nome_Imagem, url) VALUES (1, 'img1', 'C:\Users\ead\Documents\Luiz Eduardo\Img\img1');
INSERT INTO Imagem (ID, Nome_Imagem, url) VALUES (2, 'img2', 'C:\Users\ead\Documents\Luiz Eduardo\Img\img2');
INSERT INTO Imagem (ID, Nome_Imagem, url) VALUES (3, 'img3', 'C:\Users\ead\Documents\Luiz Eduardo\Img\img3');
INSERT INTO Imagem (ID, Nome_Imagem, url) VALUES (4, 'img4', 'C:\Users\ead\Documents\Luiz Eduardo\Img\img4');
INSERT INTO Imagem (ID, Nome_Imagem, url) VALUES (5, 'img5', 'C:\Users\ead\Documents\Luiz Eduardo\Img\img5');
INSERT INTO Imagem (ID, Nome_Imagem, url) VALUES (6, 'img6', 'C:\Users\ead\Documents\Luiz Eduardo\Img\img6');
INSERT INTO Imagem (ID, Nome_Imagem, url) VALUES (7, 'img7', 'C:\Users\ead\Documents\Luiz Eduardo\Img\img7');
INSERT INTO Imagem (ID, Nome_Imagem, url) VALUES (8, 'img8', 'C:\Users\ead\Documents\Luiz Eduardo\Img\img8');
INSERT INTO Imagem (ID, Nome_Imagem, url) VALUES (9, 'img9', 'C:\Users\ead\Documents\Luiz Eduardo\Img\img9');
INSERT INTO Imagem (ID, Nome_Imagem, url) VALUES (10, 'img10', 'C:\Users\ead\Documents\Luiz Eduardo\Img\img10');

update Imagem SET fk_Imovel_ID = 1 where ID = 1;
update Imagem SET fk_Imovel_ID = 2 where ID = 2;
update Imagem SET fk_Imovel_ID = 3 where ID = 3;
update Imagem SET fk_Imovel_ID = 4 where ID = 4;
update Imagem SET fk_Imovel_ID = 5 where ID = 5;
update Imagem SET fk_Imovel_ID = 6 where ID = 6;
update Imagem SET fk_Imovel_ID = 7 where ID = 7;
update Imagem SET fk_Imovel_ID = 8 where ID = 8;
update Imagem SET fk_Imovel_ID = 9 where ID = 9;
update Imagem SET fk_Imovel_ID = 10 where ID = 10;

select * from Imagem;

CREATE TABLE Logins (
    Id INT PRIMARY KEY,
    Email VARCHAR(120),
    Senha NCHAR(32),
    Fk_Usuario_Id INT
);
 
INSERT INTO Logins (id,Email,Senha) VALUES (1,'luizGustavo@gmail.com','Ksdf#2dps');
INSERT INTO Logins (id,Email,Senha) VALUES (2,'maria@hotmail.com','HjD7&j2P');
INSERT INTO Logins (id,Email,Senha) VALUES (3,'joao@gmail.com','5Gw$PqY!');
INSERT INTO Logins (id,Email,Senha) VALUES (4,'ana@yahoo.com','R1lM#8x@');
INSERT INTO Logins (id,Email,Senha) VALUES (5,'carlos@gmail.com','9hT$zNp2');
INSERT INTO Logins (id,Email,Senha) VALUES (6,'sophia@gmail.com','Lp@7r3qA');
INSERT INTO Logins (id,Email,Senha) VALUES (7,'pedro@yahoo.com','6sK#Pv9j');
INSERT INTO Logins (id,Email,Senha) VALUES (8,'julia@hotmail.com','4hD%oLp8');
INSERT INTO Logins (id,Email,Senha) VALUES (9,'gabriel@gmail.com','G2j#4LpM');
INSERT INTO Logins (id,Email,Senha) VALUES (10,'laura@yahoo.com','Y6k@9qSd');

update Logins SET Fk_Usuario_Id = 1 where ID = 1;
update Logins SET Fk_Usuario_Id = 2 where ID = 2;
update Logins SET Fk_Usuario_Id = 3 where ID = 3;
update Logins SET Fk_Usuario_Id = 4 where ID = 4;
update Logins SET Fk_Usuario_Id = 5 where ID = 5;
update Logins SET Fk_Usuario_Id = 6 where ID = 6;
update Logins SET Fk_Usuario_Id = 7 where ID = 7;
update Logins SET Fk_Usuario_Id = 8 where ID = 8;
update Logins SET Fk_Usuario_Id = 9 where ID = 9;
update Logins SET Fk_Usuario_Id = 10 where ID = 10;

select * from Logins;

-- Procedure consulta cidade --
GO
CREATE PROCEDURE ConsultaPorCidade
@ID Int
As
Begin
	Select Logradouro, Numero, Complemento, Nome_Bairro, Nome_Cidade, SiglaUF
	FROM Endereco
	Inner Join Bairro
	On Endereco.fk_Bairro_ID = Bairro.ID
	INNER JOIN Cidade
	On Bairro.fk_Cidade_ID = Cidade.ID
	INNER JOIN UF
	ON Cidade.ID = UF.ID
	WHERE CIDADE.ID = @ID
end;

EXEC ConsultaPorCidade @ID = 9;

-- ************************************** -- 

-- Procedure imagens --
GO
Create procedure ImagensPorImovel
@imovelID int
as 
begin
Select * from Imagem
where fk_Imovel_ID = @imovelID
end;

exec ImagensPorImovel @imovelID = 10;

-- ************************************** --

-- Procedure inserir Login --
GO
CREATE PROCEDURE InserirLog
@id int,
@email varchar(120),
@senha nchar(32),
@fkUsuario int
as
begin
	insert into Logins(Id, Email, Senha, Fk_Usuario_Id)
	values (@id, @email, @senha, @fkUsuario);
end;

exec InserirLog @id = 11, @email = 'luiz@brgs', @senha = '123456', @fkUsuario = '11';

-- ************************************* --

-- Procedure Delete login --
GO
CREATE PROCEDURE deleteLog
@ID int
as 
begin
	Delete Logins where Id = @ID
end;

exec deleteLog @ID = 11;

-- ************************************** -- 

// Go
Create procedure ImoveisTipoAnuncio
@idTipo int
as 
begin//
-- select * from Imovel where --

-- ************************* --
Go
Create procedure Aumento
@FatorAumento decimal
as 
begin
	update Imovel
	set Valorimovel = Valorimovel * @FatorAumento;
end;
go

exec Aumento @FatorAumento = 1.5;
select * from Imovel;
-- *************************** -- 

Go
Create Procedure inserirUsuario
@ID int,
@nome varchar(80),
@senha NCHAR(32),
@email varchar(50),
@fk_tipoUsuario_ID int
as 
begin
	Insert into Usuario(ID, Nome, Senha, DataHoraCriacao, DataHoraUltimoAcesso, Email, fk_TipoUsuario_ID)
	values (@ID, @nome, @senha, GETDATE(), GETDATE(), @email, @fk_tipoUsuario_ID);
end;

exec inserirUsuario @ID = 11, @nome = 'Luiz', @senha = '123456', @email = 'LUIZ@BRGS', @fk_tipoUsuario_ID = '11';

select * from Usuario;

-- ************************* --
GO
Create view vw_MostrarDetalhesDoImovel as
select
	i.ID,
	i.ValorImovel,
	e.Logradouro,
	e.Numero,
	b.Nome_bairro,
	c.Nome_cidade,
	u.NomeUF
from Imovel i
join Endereco e
on i.fk_Endereco_ID = e.ID
join Bairro b
on e.fk_Bairro_ID = b.ID
join Cidade c
on b.fk_Cidade_ID = c.ID
join UF u
on c.fk_UF_ID = u.ID
drop view vw_MostrarDetalhesDoImovel;
select * from vw_MostrarDetalhesDoImovel where Nome_cidade = 'São Paulo';
-- **************************************** --
go
CREATE VIEW QuantidadeImoveisPorCidade AS
SELECT
    C.Nome_cidade AS Cidade,
    COUNT(I.ID) AS QuantidadeImoveis
FROM
    Cidade C
    LEFT JOIN Bairro B ON C.ID = B.fk_Cidade_ID
    LEFT JOIN Endereco E ON B.ID = E.fk_Bairro_ID
    LEFT JOIN Imovel I ON E.ID = I.fk_Endereco_ID
GROUP BY
    C.Nome_cidade;

SELECT * FROM QuantidadeImoveisPorCidade;
select * from Imovel;
-- *************************************** --

CREATE VIEW QuantidadeImoveisPorTipoAnuncio AS
SELECT
    TA.NomeTipoAnuncio AS TipoAnuncio,
    COUNT(I.ID) AS QuantidadeImoveis
FROM
    TipoAnuncio TA
    LEFT JOIN Imovel I ON TA.ID = I.fk_TipoAnuncio_ID
GROUP BY
    TA.NomeTipoAnuncio;

SELECT * FROM QuantidadeImoveisPorTipoAnuncio;

-- ************************************** --
CREATE VIEW SomaValoresImoveisPorTipo as
Select
	Ti.NomeTipoImovel as TipoImovel,
	Sum (I.ValorImovel) as SomaValores
From
	TipoImovel Ti
	Left join Imovel I On Ti.ID = I.fk_TipoImovel_ID
GROUP BY Ti.NomeTipoImovel

Select * from SomaValoresImoveisPorTipo
select * from Imovel;
-- ************************************ --
Go
CREATE PROCEDURE DeletarImoveisPorCidade 
@cidade_id INT,
@cidade_nome VARCHAR(120)
AS
BEGIN
    -- Obtém o ID da cidade pelo nome
    SELECT @cidade_id = ID FROM Cidade WHERE Nome_cidade = @cidade_nome;

    -- Deleta os imóveis relacionados à cidade
    DELETE I
    FROM Imovel I
    JOIN Endereco E ON I.fk_Endereco_ID = E.ID
    JOIN Bairro B ON E.fk_Bairro_ID = B.ID
    WHERE B.fk_Cidade_ID = @cidade_id;
END; 

Exec DeletarImoveisPorCidade @cidade_id = 4, @cidade_nome = 'Salvador';

Select * from Imovel;
-- ******************************************************* --
with mediaMetroEstado as 
(select u.NomeUF, 
avg(i.valorImovel/i.areaUtil) as mediaPorEstado 
from Imovel i
join Endereco e
on i.fk_Endereco_ID = e.ID
join Bairro b
on e.fk_Bairro_ID = b.ID
join Cidade c
on b.fk_Cidade_ID = c.ID
join UF u
on c.fk_UF_ID = u.ID
group by u.NomeUF)

Select  
format(min(mme.mediaPorEstado), 'C', 'pt-br') as minimoEstado,
format(max(mme.mediaPorEstado), 'C', 'pt-br') as maximoEstado
from mediaMetroEstado mme
-- *********************************** ****************** --
Go
create view vw_MediaMetroCidade as 
with mediaMetroCidade as 
(select c.Nome_cidade, 
avg(i.valorImovel/i.areaUtil) as mediaPorCidade 
from Imovel i
join Endereco e
on i.fk_Endereco_ID = e.ID
join Bairro b
on e.fk_Bairro_ID = b.ID
join Cidade c
on b.fk_Cidade_ID = c.ID
group by c.Nome_cidade)

Select Nome_Cidade,
format (mmc.mediaPorCidade, 'C', 'pt-br') as mediaPorCidade
from mediaMetroCidade mmc
Go

-- ******************************************************** -- 
go
create view vw_TopCincoCidades as
WITH mediaMetroCidade AS 
(
    SELECT
        c.Nome_cidade,
        AVG(i.valorImovel / i.areaUtil) AS mediaPorCidade
    FROM
        Imovel i
        JOIN Endereco e ON i.fk_Endereco_ID = e.ID
        JOIN Bairro b ON e.fk_Bairro_ID = b.ID
        JOIN Cidade c ON b.fk_Cidade_ID = c.ID
    GROUP BY
        c.Nome_cidade
)

SELECT TOP 5
    Nome_Cidade,
    FORMAT(mediaPorCidade, 'C', 'pt-br') AS mediaPorMetroQuadrado
FROM
    mediaMetroCidade
ORDER BY
    mediaPorCidade DESC;
go
-- **************************************************************** --
SELECT
    i.*,
    i.valorImovel * 0.7 AS valorComDesconto
FROM
    Imovel i
    JOIN Endereco e ON i.fk_Endereco_ID = e.ID
    JOIN Bairro b ON e.fk_Bairro_ID = b.ID
    JOIN Cidade c ON b.fk_Cidade_ID = c.ID
WHERE
    i.areaUtil BETWEEN 110 AND 330;
-- ******************************************************************** --








ALTER TABLE Usuario ADD CONSTRAINT FK_Usuario_2
    FOREIGN KEY (fk_TipoUsuario_ID)
    REFERENCES TipoUsuario (ID)
    ON DELETE CASCADE;
 
ALTER TABLE Cidade ADD CONSTRAINT FK_Cidade_2
    FOREIGN KEY (fk_UF_ID)
    REFERENCES UF (ID)
    ON DELETE CASCADE;
 
ALTER TABLE Bairro ADD CONSTRAINT FK_Bairro_2
    FOREIGN KEY (fk_Cidade_ID)
    REFERENCES Cidade (ID)
    ON DELETE CASCADE;
 
ALTER TABLE Endereco ADD CONSTRAINT FK_Endereco_2
    FOREIGN KEY (fk_Bairro_ID)
    REFERENCES Bairro (ID)
    ON DELETE CASCADE;
 
ALTER TABLE Imovel ADD CONSTRAINT FK_Imovel_2
    FOREIGN KEY (fk_TipoImovel_ID)
    REFERENCES TipoImovel (ID)
    ON DELETE CASCADE;
 
ALTER TABLE Imovel ADD CONSTRAINT FK_Imovel_3
    FOREIGN KEY (fk_Endereco_ID)
    REFERENCES Endereco (ID)
    ON DELETE CASCADE;
 
ALTER TABLE Imovel ADD CONSTRAINT FK_Imovel_4
    FOREIGN KEY (fk_TipoAnuncio_ID)
    REFERENCES TipoAnuncio (ID)
    ON DELETE CASCADE;
 
ALTER TABLE Imovel ADD CONSTRAINT FK_Imovel_5
    FOREIGN KEY (Imagem???)
    REFERENCES ??? (???);
 
ALTER TABLE Imagem ADD CONSTRAINT FK_Imagem_2
    FOREIGN KEY (fk_Imovel_ID)
    REFERENCES Imovel (ID)
    ON DELETE CASCADE;
 
ALTER TABLE Login ADD CONSTRAINT FK_Login_2
    FOREIGN KEY (Fk_Usuario_Id)
    REFERENCES Usuario (ID);