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