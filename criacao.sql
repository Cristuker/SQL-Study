create database IMOVEIS
go

use IMOVEIS
go

create table Vendedor(
	cd_Vendedor int not null,
	nm_Vendedor varchar(40),
	ds_Endereço varchar(40),
	cd_CPF varchar(40),
	nm_Cidade varchar(40),
	nm_Bairro varchar(40),
	sg_Estado char(02),
	cd_Telefone varchar(20),
	ds_Email varchar(60)
)


create table Produto(

	cd_Produto int not null,
	cd_Vendedor int not null,
	cd_Comprador int,
	cd_Cidade int,
	sg_Estado char(02),
	ds_Endereço varchar(40),
	vl_Imovel money,
	
)

create table Comprador(

	cd_Comprador int not null,
	ds_Endereco varchar(40),
	cd_CPF varchar(40),
	nm_Cidade varchar(40),
	nm_Bairro varchar(40),
	sg_Estado char(02),
	cd_Telefone varchar(20),
	ds_Email varchar(60)
)

create table Oferta(
	cd_Comprador int not null,
	cd_Imovel int,
	vl_Oferta money,
	dt_Oferta datetime,
)

create table Imovel(
	cd_Imovel int not null,
	cd_Vendedor int not null,
	cd_Bairro int,
	cd_Cidade int,
	sg_Estado char(02),
	ds_Endereço varchar(40),
	qt_AreaUtil Decimal(10,2),
	qt_AreaTotal decimal(10,2),
	ds_Imovel varchar(300),
	vl_Imovel money,
	qt_Oferta int,
	ic_Vendido Char(1),
	dt_Lancto datetime,
	qt_ImovelIndicado int,
)


create table Bairro(
	cd_Bairro int not null,
	cd_Cidade int,
	cd_CPF varchar(40),
	sg_Estado char(02),
	nm_Bairro Varchar(40),
)

create table Estado(
	sg_Estado char(02) not null,
	nm_Estado Varchar(40),
)

create table Faixa_Imovel(
	cd_Faixa int not null,
	nm_Faixa Varchar(20),
	vl_Maximo money,
	vl_Minimo money,
)


create table Cidade(
	cd_Cidade int not null,
	sg_Estado char(02),
	nm_Cidade Varchar(40),
)


ALTER TABLE Vendedor
	ADD PRIMARY KEY(cd_Vendedor)

ALTER TABLE	Comprador
	ADD PRIMARY KEY(cd_Comprador)

ALTER TABLE Imovel
	ADD PRIMARY KEY(cd_Imovel)


ALTER TABLE Estado
	ADD PRIMARY KEY(sg_Estado)


ALTER TABLE Cidade
	ADD PRIMARY KEY(cd_Cidade)


ALTER TABLE Bairro
	ADD PRIMARY KEY(cd_Bairro)


ALTER TABLE Faixa_Imovel
	ADD PRIMARY KEY(cd_Faixa)



ALTER TABLE Imovel
	ADD FOREIGN KEY (cd_Vendedor) 
	REFERENCES Vendedor

ALTER TABLE Oferta
	ADD FOREIGN KEY (cd_Comprador)
	REFERENCES Comprador

ALTER TABLE Oferta
	ADD FOREIGN KEY (cd_Imovel) 
	REFERENCES Imovel

ALTER TABLE Bairro
	ADD FOREIGN KEY (cd_Cidade) 
	REFERENCES Cidade

ALTER TABLE Bairro
	ADD FOREIGN KEY (sg_Estado) 
	REFERENCES Estado

ALTER TABLE Cidade
	ADD FOREIGN KEY (sg_Estado)
	REFERENCES Estado


drop table produto


