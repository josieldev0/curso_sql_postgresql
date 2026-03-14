/* =====================================================
   Arquivo: 00_playground.sql
   Autor: Josiel de Lira Barros
   Descrição:Estudos práticos de SQL com PostgreSQL, desenvolvidos a partir de um curso completo,
   organizados por tópicos e exercícios numerados, abordando desde os fundamentos até conceitos intermediários de banco de dados.
===================================================== */

-- =====================================================
-- CREATE TABLE	
-- =====================================================
create table cliente (
	idcliente integer not null, -- inteiro
	nome varchar(50) not null, -- até 50 caracteres
	cpf char(11), -- obrigatoriamente 11 caracteres
	rg varchar(15),
	data_nascimento date,
	genero char(1),
	profissao varchar(30),
	nacionalidade varchar(30),
	logradouro varchar(30),
	numero varchar(10),
	complemento varchar(30),
	bairro varchar(30),
	municipio varchar(30),
	uf varchar(30),
	observacoes text,

	-- primary key
	constraint pk_cln_idcliente primary key (idcliente)
	 
);

-- =====================================================
-- INSERT INTO / VALUES
-- =====================================================	
insert into cliente(idcliente, nome, cpf, rg, data_nascimento, genero, profissao, nacionalidade, logradouro, numero, complemento, bairro, municipio, UF)
values (1,'Manoel', '88828383821','32323','2001-01-30','M','Estudante', 'Brasileira', 'Rua Joaquim Nabuco','23','Casa','Cidade Nova','Porto Uniao','SC');

insert into cliente(idcliente, nome, cpf, rg, data_nascimento, genero, profissao, nacionalidade, logradouro, numero, complemento, bairro, municipio, UF)
values (2,'Geraldo', '12343299929','56565','1987-01-04','M','Engenheiro', 'Brasileira', 'Rua das Limas','200','Ap','Centro','Poro Uniao','SC');

insert into cliente(idcliente, nome, cpf, rg, data_nascimento, genero, profissao, nacionalidade, logradouro, numero, complemento, bairro, municipio, UF)
values (3,'Carlos','87732323227','55463','1967-10-01','M','Pedreiro','Brasileira','Rua das Laranjeiras','300','Apart.','Cto.','Canoinhas','SC');

insert into cliente(idcliente, nome, cpf, rg, data_nascimento, genero, profissao, nacionalidade, logradouro, numero, complemento, bairro, municipio, UF)
values (4,'Adriana','12321222122','98777','1989-09-10','F','Jornalista','Brasileira','Rua das Limas','240','Casa','São Pedro','General Carneiro','PR');

insert into cliente(idcliente, nome, cpf, rg, data_nascimento, genero, profissao, nacionalidade, logradouro, numero, complemento, bairro, municipio, UF)
values (5,'Amanda','99982838828','28382','1991-03-04','F','Jorn.','Italiana','Av. Central','100',null, 'São Pedro','General Carneiro','PR');

insert into cliente(idcliente, nome, cpf, rg, data_nascimento, genero, profissao, nacionalidade, logradouro, numero, complemento, bairro, municipio, UF)
values (6, 'Ângelo', '99982828181','12323','2000-01-01','M','Professor','Brasileiro','Av. Beira Mar','300',null, 'Ctr.','São Paulo','SP');

insert into cliente(idcliente, nome, cpf, rg, data_nascimento, genero, profissao, nacionalidade, logradouro, numero, complemento, bairro, municipio, UF)
values (7,'Anderson',null,null,null,'M','Prof.','Italiano', 'Av. Brasil','100','Apartamento','Santa Rosa','Rio de Janeiro','SP');

insert into cliente(idcliente, nome, cpf, rg, data_nascimento, genero, profissao, nacionalidade, logradouro, numero, complemento, bairro, municipio, UF)
values (8,'Camila','9998282828',null,'2001-10-10','F','Professora','Norte-Americana','Rua Central','4333',null,'Centro','Porto Alegre','RS');

insert into cliente(idcliente, nome, cpf, rg, data_nascimento, genero, profissao, nacionalidade, logradouro, numero, complemento, bairro, municipio, UF)
values (9,'Cristiano',null,null,null,'M','Estudante','Alemã','Rua do Centro','877','Casa','Centro','Porto Alegre','RS');

insert into cliente(idcliente, nome, cpf, rg, data_nascimento, genero, profissao, nacionalidade, logradouro, numero, complemento, bairro, municipio, UF)
values (10, 'Fabricio','8828282828','32323',null,'M','Estudante','Brasileiro',null,null,null,null, 'PU','SC');

insert into cliente(idcliente, nome, cpf, rg, data_nascimento, genero, profissao, nacionalidade, logradouro, numero, complemento, bairro, municipio, UF)
values (11,'Fernanda',null,null,null,'F',null,'Brasileira',null,null,null,null,'Porto União','SC');

insert into cliente(idcliente, nome, cpf, rg, data_nascimento, genero, profissao, nacionalidade, logradouro, numero, complemento, bairro, municipio, UF)
values (12,'Gilmar','88881818181','888','2000-02-10','M','Estud.',null,'Rua das Laranjeiras','200',null,'C. Nova','Canoinhas','SC');

insert into cliente(idcliente, nome, cpf, rg, data_nascimento, genero, profissao, nacionalidade, logradouro, numero, complemento, bairro, municipio, UF)
values (13,'Diego','1010191919','111939',null,'M','Professor','Alemão','Rua Central','455','Casa','Cidade N.','São Paulo','SP');

insert into cliente(idcliente, nome, cpf, rg, data_nascimento, genero, profissao, nacionalidade, logradouro, numero, complemento, bairro, municipio, UF)
values (14,'Jeferson',null,null,'1983-07-01','M',null,'Brasileiro',null,null, null,null,'União da Vitória','PR');

insert into cliente(idcliente, nome, cpf, rg, data_nascimento, genero, profissao, nacionalidade, logradouro, numero, complemento, bairro, municipio, UF)
values (15,'Jessica',null,null,null,'F','Estudante', null, null, null, null, null, 'União da Vitória','PR');

-- =====================================================
-- SELECT
-- =====================================================
select * from cliente;

select nome, data_nascimento from cliente;

select nome, data_nascimento as "Data de nascimento" from cliente;

select cpf, rg from cliente;

select 'CPF: ' || cpf || 'RG: ' || rg as "CPF e RG" from cliente;

select * from cliente limit 3;

select nome, data_nascimento from cliente where data_nascimento > '2000-01-01';

select nome from cliente where nome like 'C%';

select nome from cliente where nome like '%c%';

select nome, data_nascimento from cliente where data_nascimento between '1990-01-01' and '1998-01-01';

select nome, rg from cliente where rg is null;

select nome from cliente order by nome asc;

select nome from cliente order by nome desc;

-- =====================================================
-- EXERCÍCIOS SELECT
-- =====================================================
-- 1.	O nome, o gênero e a profissão de todos os clientes, ordenado pelo nome em ordem decrescente
select nome, genero, profissao from cliente order by nome desc;

-- 2.	Os clientes que tenham a letra “R” no nome
select * from cliente where nome like '%a%';

-- 3.	Os clientes que o nome inicia com a letra “C”
select * from cliente where nome like 'C%';

-- 4.	Os clientes que o nome termina com a letra “A”
select * from cliente where nome like '%a';

-- 5.	Os clientes que moram no bairro “Centro”
select * from cliente where bairro = 'Centro' or bairro = 'Cto.' or bairro = 'Ctr.';

-- 6.	Os clientes que moram em complementos que iniciam com a letra “A”
select * from cliente where complemento like 'A%';

-- 7.	Somente os clientes do sexo feminino
select * from cliente where genero like 'F';

-- 8.	Os clientes que não informaram o CPF
select * from cliente where cpf is null;

-- 9.	O nome e a profissão dos clientes, ordenado em ordem crescente pelo nome da profissão
select nome, profissao from cliente order by profissao asc;

-- 10.	Os clientes de nacionalidade “Brasileira”
select * from cliente where nacionalidade like 'Brasil%';

-- 11.	Os clientes que informaram o número da residência
select * from cliente where numero is not null;

-- 12.	Os clientes que moram em Santa Catarina
select * from cliente where uf like 'SC';

-- 13.	Os clientes que nasceram entre 01/01/2000 e 01/01/2002
select * from cliente where data_nascimento between '2000-01-01' and '2002-01-01';

-- 14.	O nome do cliente e o logradouro, número, complemento, bairro, município e UF concatenado de todos os clientes
select 'Nome: ' || nome || ' - ' || 'Logradouro: ' || logradouro || ' - ' || 'Número: ' || numero || ' - ' || 'Complemento: ' || complemento || ' - ' || 'Bairro: ' || bairro || ' - ' || 'Município: ' || municipio || ' - ' || 'UF: ' || uf from cliente;

-- =====================================================
-- UPDATE E DELETE
-- =====================================================
select * from cliente;

update cliente set nome = 'Teste' where idcliente = 1;

update cliente set nome = 'Adriano', genero = 'M', numero = '241' where idcliente = 4;

insert into cliente (idcliente, nome) values(16, 'João');

delete from cliente where idcliente = 16;

-- =====================================================
-- EXERCÍCIOS UPDATE e DELETE
-- =====================================================
-- 1.	Insira os dados abaixo na tabela de clientes

-- IdCliente	Nome	CPF	RG	Data_Nascimento	Sexo	Profissão	Nacionalidade	Logradouro	Numero	Complemento	Bairro	Município	UF
-- 16	Maicon	12349596421	1234	10/10/1965	F		Empresário														Florianópolis	PR
-- 17	Getúlio				4631				F		Estudante	Brasileira		Rua Central	343		Apartamento	Centro	Curitiba	SC
-- 18	Sandra									M		Professor	Italiana					12		Bloco A		

insert into cliente (idcliente, nome, cpf, rg, data_nascimento, genero, profissao, municipio, uf )
values (16, 'Maicon', '12349596421', '1234', '1965-10-10', 'F', 'Empresário', 'Florianópolis', 'PR' );

insert into cliente (idcliente, nome, rg, genero, profissao, nacionalidade, logradouro, numero, complemento, bairro, municipio, uf )
values (17, 'Getúlio', '4631', 'F', 'Estudante', 'Brasileira', 'Rua Central', '343', 'Apartamento', 'Centro', 'Curitiba', 'SC' );

insert into cliente (idcliente, nome, genero, profissao, nacionalidade, numero, complemento )
values (18, 'Sandra', 'M', 'Professor', 'Italiana', '12', 'Bloco A' );


-- 2.	Altere os dados do cliente Maicon

	-- a.	O CPF para 45390569432
update cliente set cpf = '45390569432' where idcliente = 16;

	-- b.	O sexo para M
update cliente set genero = 'M' where idcliente = 16;

	-- c.	A nacionalidade para Brasileira
update cliente set nacionalidade = 'Brasileira' where idcliente = 16;

	-- d.	O UF para SC
update cliente set uf = 'SC' where idcliente = 16;


-- 3.	Altere os dados do cliente Getúlio

	-- a.	A data de nascimento para 01/04/1978
update cliente set data_nascimento = '1978-04-01' where idcliente = 17;

	-- b.	O sexo para M
updtate cliente set genero = 'M' where idcliente = 17;


-- 4.	Altere os dados da cliente Sandra
	-- a.	O sexo para F
	-- b.	A profissão para Professora
	-- c.	O número para 123
update cliente set genero = 'F', profissao = 'Professora', numero = '123' where idcliente = 18;


-- 5.	Apague o cliente Maicon
delete from cliente where idcliente = 16;


-- 6.	Apague a cliente Sandra
delete from cliente where idcliente = 18;

-- =====================================================
-- CREATE TABLE	e INSERT
-- =====================================================
create table profissao (
	idprofissao integer not null,
	nome varchar(30) not null,

	constraint pk_prf_idprofissao primary key (idprofissao),
	constraint un_prf_nome unique (nome)
);

insert into profissao (idprofissao, nome) values (1, 'Estudante');
insert into profissao (idprofissao, nome) values (2, 'Engenheiro');
insert into profissao (idprofissao, nome) values (3, 'Pedreiro');
insert into profissao (idprofissao, nome) values (4, 'Jornalista');
insert into profissao (idprofissao, nome) values (5, 'Professor');

create table nacionalidade(
	idnacionalidade integer not null,
	nome varchar(30) not null,

	constraint pk_ncn_idnacionalidade primary key (idnacionalidade),
	constraint un_ncn_nome unique (nome)
);

insert into nacionalidade (idnacionalidade, nome) values (1, 'Brasileira');
insert into nacionalidade (idnacionalidade, nome) values (2, 'Italiana');
insert into nacionalidade (idnacionalidade, nome) values (3, 'Norte-americana');
insert into nacionalidade (idnacionalidade, nome) values (4, 'Alemã');

create table complemento(
	idcomplemento integer not null,
	nome varchar(30) not null,

	constraint pk_cpl_idcomplemento primary key (idcomplemento),
	constraint un_cpl_nome unique (nome)
);

insert into complemento (idcomplemento, nome) values (1, 'Casa');
insert into complemento (idcomplemento, nome) values (2, 'Apartamento');

create table bairro(
	idbairro integer not null,
	nome varchar(30) not null,

	constraint pk_brr_idbairro primary key (idbairro),
	constraint un_brr_nome unique (nome)
);

insert into bairro (idbairro, nome) values (1, 'Cidade Nova');
insert into bairro (idbairro, nome) values (2, 'Centro');
insert into bairro (idbairro, nome) values (3, 'São pedro');
insert into bairro (idbairro, nome) values (4, 'Santa Rosa');

-- =====================================================
-- ALTER TABLE
-- =====================================================
-- Estudante -> 1, 9, 10, 12, 15, 17
-- Engenheiro -> 2
-- Pedreiro -> 3
-- Jornalista -> 4, 5
-- Professor -> 6, 7, 8, 13
-- Null -> 11,14
alter table cliente rename column profissao to idprofissao;
alter table cliente alter column idprofissao type integer;
alter table cliente drop idprofissao;
alter table cliente add idprofissao integer;
alter table cliente add constraint fk_cln_idprofissao foreign key (idprofissao) references profissao (idprofissao);

update cliente set idprofissao = 1 where idcliente in (1, 9, 10, 12, 15, 17);
update cliente set idprofissao = 2 where idcliente = 2;
update cliente set idprofissao = 3 where idcliente = 3;
update cliente set idprofissao = 4 where idcliente in (4, 5);
update cliente set idprofissao = 5 where idcliente in (6, 7, 8, 13);

insert into profissao (idprofissao, nome) values (10, 'Teste');
delete from profissao where idprofissao = 10;

alter table cliente drop nacionalidade;
alter table cliente add idnacionalidade integer;
alter table cliente add constraint fk_cln_idnacionalida foreign key (idnacionalidade) references nacionalidade (idnacionalidade);

update cliente set idnacionalidade = 1 where idcliente in (1, 2, 3, 4, 6, 10, 11, 14);
update cliente set idnacionalidade = 2 where idcliente in (5, 7);
update cliente set idnacionalidade = 3 where idcliente = 8;
update cliente set idnacionalidade = 4 where idcliente in (9, 13);

alter table cliente drop complemento;
alter table cliente add idcomplemento integer;
alter table cliente add constraint fk_cln_idcomplemento foreign key (idcomplemento) references complemento (idcomplemento);

update cliente set idcomplemento = 1 where idcliente in (1, 4, 9, 13);
update cliente set idcomplemento = 2 where idcliente in (2, 3, 7);

alter table cliente drop bairro;
alter table cliente add idbairro integer;
alter table cliente add constraint fk_cln_idbairro foreign key (idbairro) references bairro (idbairro);

update cliente set idbairro = 1 where idcliente in (1, 12, 13);
update cliente set idbairro = 2 where idcliente in (2, 3, 6, 8, 9);
update cliente set idbairro = 3 where idcliente in (4, 5);
update cliente set idbairro = 4 where idcliente = 7;

-- =====================================================
-- CREATE TABLE	e INSERT
-- =====================================================
create table uf (
	iduf integer not null,
	nome varchar(30) not null,
	sigla char(2) not null,

	constraint pk_ufd_idunidade_federacao primary key (iduf), 
	constraint pk_ufd_nome unique (nome), 
	constraint pk_ufd_sigla unique (sigla)
)

insert into uf (iduf, nome, sigla) values (1, 'Santa Catarina', 'SC');
insert into uf (iduf, nome, sigla) values (2, 'Paraná', 'PR');
insert into uf (iduf, nome, sigla) values (3, 'São Paulo', 'SP');
insert into uf (iduf, nome, sigla) values (4, 'Minas Gerais', 'MG');
insert into uf (iduf, nome, sigla) values (5, 'Rio Grande do Sul', 'RS');
insert into uf (iduf, nome, sigla) values (6, 'Rio de Janeiro', 'RJ');

create table municipio(
	idmunicipio integer not null,
	nome varchar(30) not null,
	iduf integer not null,

	constraint pk_mnc_idmunicipio primary key (idmunicipio),
	constraint un_mnc_nome unique (nome),
	constraint fk_mnc_iduf foreign key (iduf) references uf (iduf)
);

insert into municipio (idmunicipio, nome, iduf) values (1, 'Porto União', 1);
insert into municipio (idmunicipio, nome, iduf) values (2, 'Canoinhas', 1);
insert into municipio (idmunicipio, nome, iduf) values (3, 'Porto Vitória', 2);
insert into municipio (idmunicipio, nome, iduf) values (4, 'General Carneiro', 2);
insert into municipio (idmunicipio, nome, iduf) values (5, 'São Paulo', 3);
insert into municipio (idmunicipio, nome, iduf) values (6, 'Rio de Janeiro', 6);
insert into municipio (idmunicipio, nome, iduf) values (7, 'Uberlândia', 4);
insert into municipio (idmunicipio, nome, iduf) values (8, 'Porto Alegre', 5);
insert into municipio (idmunicipio, nome, iduf) values (9, 'União da Vitória', 2);

-- =====================================================
-- ALTER TABLE
-- =====================================================
alter table cliente drop municipio;
alter table cliente drop uf;
alter table cliente add idmunicipio integer;
alter table cliente add constraint fk_cliente_idmunicipio foreign key (idmunicipio) references municipio (idmunicipio);

update cliente set idmunicipio = 1 where idcliente in (1, 2, 10, 11);
update cliente set idmunicipio = 2 where idcliente in (3, 12);
update cliente set idmunicipio = 3 where idcliente = 4;
update cliente set idmunicipio = 4 where idcliente = 5;
update cliente set idmunicipio = 5 where idcliente in (6, 13);
update cliente set idmunicipio = 6 where idcliente = 7;
update cliente set idmunicipio = 7 where idcliente = 8;
update cliente set idmunicipio = 8 where idcliente = 9;
update cliente set idmunicipio = 9 where idcliente in (14, 15);

-- =====================================================
-- EXERCÍCIOS CREATE TABLE	e INSERT
-- =====================================================
create table fornecedor (
	idfornecedor integer not null,
	nome varchar(50) not null,
	
	constraint pk_frn_idforncedor primary key (idfornecedor),
	constraint un_frn_nome unique (nome)
);

create table vendedor (
	idvendedor integer not null,
	nome varchar(50) not null,
	
	constraint pk_vnd_idvendedor primary key (idvendedor),
	constraint un_vnd_nome unique (nome)
);

create table transportadora (
	idtransportadora integer not null,
	idmunicipio integer,
	nome varchar(50) not null, 
	logradouro varchar(50),
	numero varchar(10),
	
	constraint pk_trn_idtransportadora primary key (idtransportadora),
	constraint fk_trn_idmunicipio foreign key (idmunicipio) references municipio (idmunicipio),
	constraint un_trn_nome unique (nome)
);

create table produto (
	idproduto integer not null,
	idfornecedor integer not null,
	nome varchar(50) not null,
	valor float not null,
	
	constraint pk_prd_idproduto primary key (idproduto),
	constraint fk_prd_idfornecedor foreign key (idfornecedor) references fornecedor (idfornecedor)
);

insert into vendedor (idvendedor, nome) values (1, 'André');
insert into vendedor (idvendedor, nome) values (2, 'Alisson');
insert into vendedor (idvendedor, nome) values (3, 'José');
insert into vendedor (idvendedor, nome) values (4, 'Ailton');
insert into vendedor (idvendedor, nome) values (5, 'Maria');
insert into vendedor (idvendedor, nome) values (6, 'Suelem');
insert into vendedor (idvendedor, nome) values (7, 'Aline');
insert into vendedor (idvendedor, nome) values (8, 'Silvana');

insert into fornecedor (idfornecedor, nome) values (1, 'Cap. Computadores');
insert into fornecedor (idfornecedor, nome) values (2, 'AA. Computadores');
insert into fornecedor (idfornecedor, nome) values (3, 'BB. Máquinas');

select * from municipio
insert into transportadora (idtransportadora, idmunicipio, nome, logradouro, numero)
values (1, 9, 'BS. Transportes', 'Rua das Limas', '01');
insert into transportadora (idtransportadora, idmunicipio, nome)
values (2, 5, 'União Transportes');

insert into produto (idproduto, idfornecedor, nome, valor)
values (1, 1, 'Microcomputador', 800);
insert into produto (idproduto, idfornecedor, nome, valor)
values (2, 1, 'Monitor', 500);
insert into produto (idproduto, idfornecedor, nome, valor)
values (3, 2, 'Placa Mãe', 200);
insert into produto (idproduto, idfornecedor, nome, valor)
values (4, 2, 'HD', 150);
insert into produto (idproduto, idfornecedor, nome, valor)
values (5, 2, 'Placa de vídeo', 200);
insert into produto (idproduto, idfornecedor, nome, valor)
values (6, 3, 'Memória RAM', 100);
insert into produto (idproduto, idfornecedor, nome, valor)
values (7, 1, 'Gabinete', 35);

-- =====================================================
-- CREATE TABLE	e INSERT
-- =====================================================
create table pedido (
	idpedido integer not null,
	idcliente integer not null,
	idtransportadora integer,
	idvendedor integer not null,
	data_pedido date not null,
	valor float not null,

	constraint pk_pdd_idpedido primary key (idpedido),
	constraint fk_pdd_idcliente foreign key (idcliente) references cliente (idcliente),
	constraint fk_pdd_idtransportadora foreign key (idtransportadora) references transportadora(idtransportadora),
	constraint fk_pdd_idvendedor foreign key (idvendedor) references vendedor (idvendedor)
);

select * from cliente
select * from transportadora
select * from vendedor

update cliente set nome = 'Manoel' where idcliente = 1

insert into pedido (idpedido, data_pedido, valor, idcliente, idtransportadora, idvendedor)
values (1, '2008-04-01', 1300, 1, 1, 1);
insert into pedido (idpedido, data_pedido, valor, idcliente, idtransportadora, idvendedor)
values (2, '2008-04-01', 500, 1, 1, 1);
insert into pedido (idpedido, data_pedido, valor, idcliente, idtransportadora, idvendedor)
values (3, '2008-04-02', 300, 11, 2, 5);
Insert into pedido (idpedido, data_pedido, valor, idcliente,idtransportadora, idvendedor) values (4, '2008-04-05', 1000, 8, 1, 7);
Insert into pedido (idpedido, data_pedido, valor, idcliente,idtransportadora, idvendedor) values (5, '2008-04-06', 200, 9, 2, 6);
Insert into pedido (idpedido, data_pedido, valor, idcliente,idtransportadora, idvendedor) values (6, '2008-04-06', 1985, 10, 1, 6);
Insert into pedido (idpedido, data_pedido, valor, idcliente,idtransportadora, idvendedor) values (7, '2008-04-06', 800, 3, 1, 7);
Insert into pedido (idpedido, data_pedido, valor, idcliente,idtransportadora, idvendedor) values (8, '2008-04-06', 175, 3, null, 7);
Insert into pedido (idpedido, data_pedido, valor, idcliente,idtransportadora, idvendedor) values (9, '2008-04-07', 1300, 12, null, 8);
Insert into pedido (idpedido, data_pedido, valor, idcliente,idtransportadora, idvendedor) values (10, '2008-04-10', 200, 6, 1, 8);
Insert into pedido (idpedido, data_pedido, valor, idcliente,idtransportadora, idvendedor) values (11, '2008-04-15', 300, 15, 2, 1);
Insert into pedido (idpedido, data_pedido, valor, idcliente,idtransportadora, idvendedor) values (12, '2008-04-20', 300, 15, 2, 5);
Insert into pedido (idpedido, data_pedido, valor, idcliente,idtransportadora, idvendedor) values (13, '2008-04-20', 350, 9, 1, 7);
Insert into pedido (idpedido, data_pedido, valor, idcliente,idtransportadora, idvendedor) values (14, '2008-04-23', 300, 2, 1, 5);
Insert into pedido (idpedido, data_pedido, valor, idcliente,idtransportadora, idvendedor) values (15, '2008-04-25', 200, 11, null, 5);

select * from pedido

create table pedido_produto (
	idpedido integer not null,
	idproduto integer not null,
	quantidade integer not null,
	valor_unitario float not null,

	constraint pk_pdp_idpedidoproduto primary key (idpedido, idproduto),
	constraint fk_pdp_idpedido foreign key (idpedido) references pedido (idpedido),
	constraint fk_pdp_idproduto foreign key (idproduto) references produto (idproduto)
);

select * from produto
select * from pedido_produto

insert into pedido_produto (idpedido, idproduto, quantidade, valor_unitario) values
(1, 1, 1, 800);
insert into pedido_produto (idpedido, idproduto, quantidade, valor_unitario) values
(1, 2, 1, 500);
insert into pedido_produto (idpedido, idproduto, quantidade, valor_unitario) values
(2, 2, 1, 500);
Insert into pedido_produto (idpedido,idproduto,quantidade,valor_unitario) values (3, 4, 2, 150);
Insert into pedido_produto (idpedido,idproduto,quantidade,valor_unitario) values (4, 1, 1, 800);
Insert into pedido_produto (idpedido,idproduto,quantidade,valor_unitario) values (4, 3, 1, 200);
Insert into pedido_produto (idpedido,idproduto,quantidade,valor_unitario) values (5, 3, 1, 200);
Insert into pedido_produto (idpedido,idproduto,quantidade,valor_unitario) values (6, 1, 2, 800);
Insert into pedido_produto (idpedido,idproduto,quantidade,valor_unitario) values (6, 7, 1, 35);
Insert into pedido_produto (idpedido,idproduto,quantidade,valor_unitario) values (6, 5, 1, 200);
Insert into pedido_produto (idpedido,idproduto,quantidade,valor_unitario) values (6, 4, 1, 150);
Insert into pedido_produto (idpedido,idproduto,quantidade,valor_unitario) values (7, 1, 1, 800);
Insert into pedido_produto (idpedido,idproduto,quantidade,valor_unitario) values (8, 7, 5, 35);
Insert into pedido_produto (idpedido,idproduto,quantidade,valor_unitario) values (9, 1, 1, 800);
Insert into pedido_produto (idpedido,idproduto,quantidade,valor_unitario) values (9, 2, 1, 500);
Insert into pedido_produto (idpedido,idproduto,quantidade,valor_unitario) values (10, 5, 1, 200);
Insert into pedido_produto (idpedido,idproduto,quantidade,valor_unitario) values (11, 5, 1, 200);
Insert into pedido_produto (idpedido,idproduto,quantidade,valor_unitario) values (11, 6, 1, 100);
Insert into pedido_produto (idpedido,idproduto,quantidade,valor_unitario) values (12, 2, 1, 500);
Insert into pedido_produto (idpedido,idproduto,quantidade,valor_unitario) values (13, 3, 1, 200);
Insert into pedido_produto (idpedido,idproduto,quantidade,valor_unitario) values (13, 4, 1, 150);
Insert into pedido_produto (idpedido,idproduto,quantidade,valor_unitario) values (14, 6, 3, 100);
Insert into pedido_produto (idpedido,idproduto,quantidade,valor_unitario) values (15, 3, 1, 200);

-- =====================================================
-- EXERCÍCIOS SELECT
-- =====================================================
-- 1. Somente o nome de todos os vendedores em ordem alfabética.
select nome from vendedor order by nome asc;

--2. Os produtos que o preço seja maior que R$200,00, em ordem crescente pelo preço.
select nome, valor from produto where valor > '200' order by valor; 

--3. O nome do produto, o preço e o preço reajustado em 10%, ordenado pelo nome do produto.
select nome, valor, (valor * 10) / 100 as Reajuste from produto order by nome;

--4. Os municípios do Rio Grande do Sul.
select nome from municipio where iduf = 5;

--5. Os pedidos feitos entre 10/04/2008 e 25/04/2008 ordenado pelo valor.
select * from pedido where data_pedido between '2008-04-10' and '2008-04-25';

--6. Os pedidos que o valor esteja entre R$1.000,00 e R$1.500,00.
select * from pedido where valor between '1000' and '1500';

--7. Os pedidos que o valor não esteja entre R$100,00 e R$500,00.
select * from pedido where valor not between '100' and '150';

--8. Os pedidos do vendedor André ordenado pelo valor em ordem decrescente.
select * from pedido where idvendedor = 1 order by valor desc;

--9. Os pedidos do cliente Manoel ordenado pelo valor em ordem crescente.
select * from pedido where idcliente = 1 order by valor;

--10. Os pedidos da cliente Jéssica que foram feitos pelo vendedor André.
select * from pedido where idcliente = 15 and idvendedor = 1;

--11. Os pedidos que foram transportados pela transportadora União Transportes.
select * from pedido where idtransportadora = 2 ;

--12. Os pedidos feitos pela vendedora Maria ou pela vendedora Aline.
select * from pedido where idvendedor in (5, 7);

--13. Os clientes que moram em União da Vitória ou Porto União.
select * from cliente where idmunicipio in (9, 1);

--14. Os clientes que não moram em União da Vitória e nem em Porto União.
select * from cliente where idmunicipio not in (9, 1);
select * from cliente where idmunicipio <> 9 and idmunicipio <> 1;

--15. Os clientes que não informaram o logradouro.
select * from cliente where logradouro is null;

--16. Os clientes que moram em avenidas.
select * from cliente where logradouro like 'Av%';

--17. Os vendedores que o nome começa com a letra S.
select * from vendedor where nome like 'S%';

--18. Os vendedores que o nome termina com a letra A.
select * from vendedor where nome like 'S%a';

--19. Os vendedores que o nome não começa com a letra A.
select * from vendedor where nome not like 'A%';

--20. Os municípios que começam com a letra P e são de Santa Catarina.
select * from municipio where nome like 'P%' and iduf = 1;

--21. As transportadoras que informaram o endereço.
select * from transportadora where logradouro is not null;

--22. Os itens do pedido 01.
select * from pedido_produto where idpedido = 1;

--23. Os itens do pedido 06 ou do pedido 10.
select * from pedido_produto where idpedido = 6 or idpedido = 10;

-- =====================================================
-- FUNÇÕES AGREGADAS
-- =====================================================
select avg(valor) from pedido -- avg = media;

select count(idmunicipio) from municipio; -- count = contagem
select count(*) from municipio; -- seleciona todos, nulos e não nulos
select count(logradouro) from transportadora;
select count(idtransportadora) from transportadora;
select count(idmunicipio) from municipio where iduf = 2;

select max(valor) from pedido; -- max = valor máximo
select min(valor) from pedido; -- min = valor mínimo

select sum(valor) from pedido; -- sum -- soma tudo

select idcliente, sum(valor) from pedido group by idcliente; -- group by = junção de algo(valor) com o msm vínculo(id)
select idcliente, sum(valor) from pedido group by idcliente order by sum(valor) desc;
select idcliente, sum(valor) from pedido group by idcliente having sum(valor) > 500; -- having = usado quando aplicado condições + group by

-- =====================================================
-- EXERCÍCIOS FUNÇÕES AGREGADAS
-- =====================================================
-- 1. A média dos valores de vendas dos vendedores que venderam mais que R$ 200,00. 
select idvendedor, avg(valor) from pedido group by idvendedor having avg(valor) > 200;

-- 2. Os vendedores que venderam mais que R$ 1500,00
select idvendedor, sum(valor) from pedido group by idvendedor having sum(valor) > 1500;

-- 3. O somatório das vendas de cada vendedor.
select idvendedor, sum(valor) from pedido group by idvendedor;

-- 4. A quantidade de municípios.
select count(idmunicipio) from municipio ;

-- 5. A quantidade de municípios que são do Paraná ou de Santa Catarina.
select count(idmunicipio) from municipio where iduf in (1, 2);

-- 6. A quantidade de municípios por estado.
select * from uf;
select iduf, count(idmunicipio) from municipio group by iduf;

-- 7. A quantidade de clientes que informaram o logradouro.
select * from cliente;
select count(logradouro) from cliente where logradouro is not null;

-- 8. A quantidade de clientes por município.
select * from municipio;
select idmunicipio, count(cliente) from cliente group by idmunicipio; 

-- 9. A quantidade de fornecedores.
select count(idfornecedor) from fornecedor;

-- 10. A quantidade de produtos por fornecedor.
select idfornecedor, count(produto) from produto group by idfornecedor;

-- 11. A média de preços dos produtos do fornecedor Cap. Computadores.
select * from produto;
select avg(valor) from produto where idfornecedor = 1 ;

-- 12. O somatório dos preços de todos os produtos.
select * from produto;
select sum(valor) from produto;

-- 13. O nome do produto e o preço somente do produto mais caro.
select * from produto;
select nome, valor from produto order by valor desc limit 1;

-- 14. O nome do produto e o preço somente do produto mais barato.
select nome, valor from produto order by valor asc limit 1;

-- 15. A média de preço de todos os produtos.
select * from produto;
select avg(valor) from produto;

-- 16. A quantidade de transportadoras.
select count(idtransportadora) from transportadora;

-- 17. A média do valor de todos os pedidos.
select * from pedido;
select avg(valor) from pedido;

-- 18. O somatório do valor do pedido agrupado por cliente.
select idcliente, sum(valor) from pedido group by idcliente;

-- 19. O somatório do valor do pedido agrupado por vendedor.
select idvendedor, sum(valor) from pedido group by idvendedor;

-- 20. O somatório do valor do pedido agrupado por transportadora.
select idtransportadora, sum(valor) from pedido group by idtransportadora;

-- 21. O somatório do valor do pedido agrupado pela data.
select * from pedido;
select data_pedido, sum(valor) from pedido group by data_pedido;

-- 22. O somatório do valor do pedido agrupado por cliente, vendedor e transportadora.
select idcliente, idvendedor, idtransportadora, sum(valor) from pedido group by idcliente, idvendedor, idtransportadora;

-- 23. O somatório do valor do pedido que esteja entre 01/04/2008 e 10/12/2009 e que seja maior que R$ 200,00. 
select sum(valor) from pedido where data_pedido between '2008-04-01' and '2009-12-10' and valor > 200;

-- 24. A média do valor do pedido do vendedor André.
select * from vendedor;
select avg(valor) from pedido where idvendedor = 1;

-- 25. A média do valor do pedido da cliente Jéssica.
select * from cliente;
select avg(valor) from pedido where idcliente = 15;

-- 26. A quantidade de pedidos transportados pela transportadora BS. Transportes.
select * from transportadora;
select count(idpedido) from pedido where idtransportadora = 1;

-- 27. A quantidade de pedidos agrupados por vendedor.
select idvendedor, count(idpedido) from pedido group by idvendedor;

-- 28. A quantidade de pedidos agrupados por cliente.
select idcliente, count(idpedido) from pedido group by idcliente;

-- 29. A quantidade de pedidos entre 15/04/2008 e 25/04/2008.
select count(idpedido) from pedido where data_pedido between '2008-04-15' and '2008-04-25';

-- 30. A quantidade de pedidos que o valor seja maior que R$ 1.000,00.
select count(idpedido) from pedido where valor > 1000;

-- 31. A quantidade de microcomputadores vendida.
select * from produto;
select sum(quantidade) from pedido_produto where idproduto = 1;

-- 32. A quantidade de produtos vendida agrupado por produto.
select * from pedido_produto;
select idproduto, count(quantidade) from pedido_produto group by idproduto;

-- 33. O somatório do valor dos produtos dos pedidos, agrupado por pedido.
select idpedido, sum(valor_unitario) from pedido_produto group by idpedido;

-- 34. A quantidade de produtos agrupados por pedido.
select idpedido, sum(quantidade) from pedido_produto group by idpedido;

-- 35. O somatório do valor total de todos os produtos do pedido. 
select sum(valor_unitario) from pedido_produto;

-- 36. A média dos produtos do pedido 6.
select avg(valor_unitario) from pedido_produto where idpedido = 6;

-- 37. O valor do maior produto do pedido.
select max(valor_unitario) from pedido_produto;

-- 38. O valor do menor produto do pedido.
select min(valor_unitario) from pedido_produto;

-- 39. O somatório da quantidade de produtos por pedido.
select idpedido, sum(quantidade) from pedido_produto group by idpedido;

-- 40. O somatório da quantidade de todos os produtos do pedido.
select sum(quantidade) from pedido_produto;

-- =====================================================
-- RELACIONAMENTO COM JOINS
-- =====================================================
select
	cliente.nome,
	profissao.nome
from 
	cliente
left outer join -- mostra nulos diferente do inner join
-- inner join / obriga o relacionamento entre os dois ids
-- right outer join / consiera o select base na tabelada da direita
	profissao on cliente.idprofissao = profissao.idprofissao

-- =====================================================
-- EXERCÍCIOS COM JOINS
-- =====================================================
-- 1. O nome do cliente, a profissão, a nacionalidade, o logradouro, o número, o complemento, o bairro, o município e a unidade de federação. 
select
	cliente.nome as cliente,
	profissao.nome as profissao,
	nacionalidade.nome as nacionalidade,
	cliente.logradouro,
	cliente.numero,
	complemento.nome as complemento,
	bairro.nome as bairro,
	municipio.nome as municipio,
	uf.nome as estado,
	uf.sigla as uf
from 
	cliente
left outer join
	profissao on cliente.idprofissao = profissao.idprofissao
left outer join
	nacionalidade on cliente.idnacionalidade = nacionalidade.idnacionalidade
left outer join
	complemento on cliente.idcomplemento = complemento.idcomplemento
left outer join
	bairro on cliente.idbairro = bairro.idbairro
left outer join
	municipio on cliente.idmunicipio = municipio.idmunicipio
left outer join
	uf on municipio.iduf = uf.iduf

-- 2. O nome do produto, o valor e o nome do fornecedor.
select * from produto

select 
	produto.nome as produto,
	produto.valor,
	fornecedor.nome as fornecedor
from
	produto
left outer join
	fornecedor on produto.idfornecedor = fornecedor.idfornecedor
	
-- 3. O nome da transportadora e o município.
select * from transportadora

select
	transportadora.nome as transportadora,
	municipio.nome as municipio
from 
	transportadora
left outer join
	municipio on transportadora.idmunicipio = municipio.idmunicipio

-- 4. A data do pedido, o valor, o nome do cliente, o nome da transportadora e o nome do vendedor.
select * from pedido

select
	pedido.data_pedido,
	pedido.valor,
	cliente.nome as nome,
	transportadora.nome as transportadora,
	vendedor.nome as vendedor
from 
	pedido
left outer join 
	cliente on pedido.idcliente = cliente.idcliente 
left outer join 
	transportadora on pedido.idtransportadora = transportadora.idtransportadora 
left outer join 
	vendedor on pedido.idvendedor = vendedor.idvendedor 

-- 5. O nome do produto, a quantidade e o valor unitário dos produtos do pedido.
select * from pedido_produto

select 
	produto.nome as produto,
	pedido_produto.quantidade,
	pedido_produto.valor_unitario
from 
	pedido_produto
left outer join
	produto on pedido_produto.idproduto = produto.idproduto
	
-- 6. O nome dos clientes e a data do pedido dos clientes que fizeram algum pedido (ordenado pelo nome do cliente).
select * from cliente

select 
	cliente.nome,
	pedido.data_pedido
from 
	cliente
inner join
	pedido on cliente.idcliente = pedido.idcliente
order by
	nome 

-- 7. O nome dos clientes e a data do pedido de todos os clientes, independente se tenham feito pedido (ordenado pelo nome do cliente). 
select 
	cliente.nome,
	pedido.data_pedido
from 
	cliente
left outer join
	pedido on cliente.idcliente = pedido.idcliente
order by
	nome
	
-- 8. O nome da cidade e a quantidade de clientes que moram naquela cidade.
select * from municipio

select 
	municipio.nome as cidade,
	count(cliente.idcliente) as quantidade_clientes
from 
	cliente
left outer join
	municipio on cliente.idmunicipio = municipio.idmunicipio
group by
	municipio.nome

-- 9. O nome do fornecedor e a quantidade de produtos de cada fornecedor.
select * from produto

select	
	fornecedor.nome as fornecedor,
	count(produto.idproduto) as quantidade_produto
from 
	fornecedor
left outer join
	produto on fornecedor.idfornecedor = produto.idfornecedor
group by
	fornecedor.nome

-- 10.O nome do cliente e o somatório do valor do pedido (agrupado por cliente).
select * from pedido

select
	cliente.nome as cliente,
	sum(pedido.valor) as valor_total
from
	cliente
left outer join
	pedido on cliente.idcliente = pedido.idcliente
group by
	cliente.nome
	
-- 11.O nome do vendedor e o somatório do valor do pedido (agrupado por vendedor).
select * from pedido

select
	vendedor.nome as vendedor,
	sum(pedido.valor) as total
from
	pedido
left outer join
	vendedor on pedido.idvendedor = vendedor.idvendedor
group by
	vendedor.nome
	
-- 12.O nome da transportadora e o somatório do valor do pedido (agrupado por transportadora).
select * from pedido

select 
	transportadora.nome as transportadora,
	sum(pedido.valor) as total
from
	pedido
left outer join
	transportadora on pedido.idtransportadora = transportadora.idtransportadora 
group by
	transportadora.nome
	
-- 13.O nome do cliente e a quantidade de pedidos de cada um (agrupado por cliente).
select * from pedido

select
	cliente.nome as cliente,
	count(pedido.idpedido) as total_pedidos
from 
	pedido
left outer join
	cliente on pedido.idcliente= cliente.idcliente
group by
	cliente.nome

-- 14.O nome do produto e a quantidade vendida (agrupado por produto).
select * from pedido_produto

select 
	produto.nome as produto,
	sum(pedido_produto.quantidade) as total_vendas
from 
	pedido_produto
left outer join
	produto on pedido_produto.idproduto = produto.idproduto
group by
	produto.nome

-- 15.A data do pedido e o somatório do valor dos produtos do pedido (agrupado pela data do pedido).
select * from pedido_produto

select 
	pedido.data_pedido,
	sum(pedido_produto.valor_unitario) as total
from 
	pedido_produto
left outer join 
	pedido on pedido_produto.idpedido = pedido.idpedido
group by
	pedido.data_pedido
	
-- 16.A data do pedido e a quantidade de produtos do pedido (agrupado pela data do pedido).
select * from pedido
select * from pedido_produto

select 
	pedido.data_pedido,
	sum(pedido_produto.quantidade) as quantidade
from 
	pedido_produto
left outer join 
	 pedido on pedido_produto.idpedido = pedido.idpedido
group by 
	pedido.data_pedido