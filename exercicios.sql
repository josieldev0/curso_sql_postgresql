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