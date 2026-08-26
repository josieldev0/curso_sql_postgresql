create table editora (
	ideditora serial not null,
	nome varchar(30) not null,

	constraint pk_editora_ideditora primary key (ideditora),
	constraint un_editora_nome unique (nome)
);

insert into editora (nome) values ('Bookman');
insert into editora (nome) values ('Edgard Blusher');
insert into editora (nome) values ('Nova Terra');
insert into editora (nome) values ('Brasport');

create table categoria (
	idcategoria serial not null,
	nome varchar(30) not null,

	constraint pk_categoria_idcategoria primary key (idcategoria),
	constraint un_categoria_nome unique (nome)
);

insert into categoria (nome) values('Banco de Dados');
insert into categoria (nome) values('HTML');
insert into categoria (nome) values('Java');
insert into categoria (nome) values('PHP');

create table autor (
	idautor serial not null,
	nome varchar(30) not null,

	constraint pk_autor_idautor primary key (idautor)
);

insert into autor (nome) values ('Waldemar Setzer');
insert into autor (nome) values ('Flávio Soares');
insert into autor (nome) values ('John Watson');
insert into autor (nome) values ('Rui Rossi dos Santos');
insert into autor (nome) values ('Antônio Pereira de Resende');
insert into autor (nome) values ('Claudiney Calixto Lima');
insert into autor (nome) values ('Evandro Carlos Teruel');
insert into autor (nome) values ('Ian Graham');
insert into autor (nome) values ('Fabrício Xavier');
insert into autor (nome) values ('Pablo Dalloglio');

create table livro(
	idlivro serial not null,
	ideditora integer not null,
	idcategoria integer not null,
	nome varchar(60) not null,

	constraint pk_livro_idlivro primary key (idlivro),
	constraint fk_livro_ideditora foreign key (ideditora) references editora (ideditora),
	constraint fk_livro_idcategoria foreign key (idcategoria) references categoria (idcategoria),
	constraint un_livro_nome unique (idlivro)
);

insert into livro(ideditora, idcategoria, nome) values (2, 1, 'Banco de Dados - 1 Edição');
insert into livro(ideditora, idcategoria, nome) values (1, 1, 'Oracle DataBase 11G Administração');
insert into livro(ideditora, idcategoria, nome) values (3, 3, 'Programação de Computadores em Java');
insert into livro(ideditora, idcategoria, nome) values (4, 3, 'Programação Orientada a Aspectos em Java');
insert into livro(ideditora, idcategoria, nome) values (4, 2, 'HTML5 - Guia Prático');
insert into livro(ideditora, idcategoria, nome) values (3, 2, 'HTML - Guia de Referência para Desenvolvimento na Web');
insert into livro(ideditora, idcategoria, nome) values (1, 4, 'PHP para Desenvolvimento Profissional');
insert into livro(ideditora, idcategoria, nome) values (2, 4, 'PHP com Programação Orientada a Objetos');

create table livro_autor (
	idlivro integer not null,
	idautor integer not null,

	constraint pk_livroautor_idlivroautor primary key (idlivro, idautor),
	constraint fk_livroautor_idlivro foreign key (idlivro) references livro (idlivro),
	constraint fk_livroautor_idautor foreign key (idautor) references autor (idautor)
);

insert into livro_autor (idlivro, idautor) values (1, 1);
insert into livro_autor (idlivro, idautor) values (1, 2);
insert into livro_autor (idlivro, idautor) values (2, 3);
insert into livro_autor (idlivro, idautor) values (3, 4);
insert into livro_autor (idlivro, idautor) values (4, 5);
insert into livro_autor (idlivro, idautor) values (4, 6);
insert into livro_autor (idlivro, idautor) values (5, 7);
insert into livro_autor (idlivro, idautor) values (6, 8);
insert into livro_autor (idlivro, idautor) values (7, 9);
insert into livro_autor (idlivro, idautor) values (8, 10);

create table aluno (
	idaluno serial not null,
	nome varchar(50) not null,

	constraint pk_aluno_idaluno primary key(idaluno)
);

insert into aluno (nome) values ('Mario');
insert into aluno (nome) values ('João');
insert into aluno (nome) values ('Paulo');
insert into aluno (nome) values ('Pedro');
insert into aluno (nome) values ('Maria');

create table emprestimo (
	idemprestimo serial not null,
	idaluno integer not null,
	data_emprestimo date not null default current_date,
	data_devolucao date not null,
	valor float not null default 0,
	devolvido char(1) not null,

	constraint pk_emprestimo_idemprestimo primary key (idemprestimo),
	constraint fk_emprestimo_idaluno foreign key (idaluno) references aluno (idaluno)
);

insert into emprestimo(idaluno, data_emprestimo, data_devolucao, valor, devolvido) values (1, '2012-05-02', '2012-05-12', 10, 'S');
insert into emprestimo(idaluno, data_emprestimo, data_devolucao, valor, devolvido) values (1, '2012-04-23', '2012-05-03', 5, 'N');
insert into emprestimo(idaluno, data_emprestimo, data_devolucao, valor, devolvido) values (2, '2012-05-10', '2012-05-20', 12, 'N');
insert into emprestimo(idaluno, data_emprestimo, data_devolucao, valor, devolvido) values (3, '2012-05-10', '2012-05-20', 8, 'S');
insert into emprestimo(idaluno, data_emprestimo, data_devolucao, valor, devolvido) values (4, '2012-05-05', '2012-05-15', 15, 'N');
insert into emprestimo(idaluno, data_emprestimo, data_devolucao, valor, devolvido) values (4, '2012-05-07', '2012-05-17', 20, 'S');
insert into emprestimo(idaluno, data_emprestimo, data_devolucao, valor, devolvido) values (4, '2012-05-08', '2012-05-18', 5, 'S');

create table emprestimo_livro(
	idemprestimo integer not null,
	idlivro integer not null,

	constraint pk_emprestimolivro_idemprestimolivro primary key (idemprestimo, idlivro),
	constraint fk_emprestimolivro_idemprestimo foreign key (idemprestimo) references emprestimo (idemprestimo),
	constraint fk_emprestimolivro_idlivro foreign key (idlivro) references livro (idlivro)
);

insert into emprestimo_livro (idemprestimo, idlivro) values (1, 1);
insert into emprestimo_livro (idemprestimo, idlivro) values (2, 4);
insert into emprestimo_livro (idemprestimo, idlivro) values (2, 3);
insert into emprestimo_livro (idemprestimo, idlivro) values (3, 2);
insert into emprestimo_livro (idemprestimo, idlivro) values (3, 7);
insert into emprestimo_livro (idemprestimo, idlivro) values (4, 5);
insert into emprestimo_livro (idemprestimo, idlivro) values (5, 4);
insert into emprestimo_livro (idemprestimo, idlivro) values (6, 6);
insert into emprestimo_livro (idemprestimo, idlivro) values (6, 1);
insert into emprestimo_livro (idemprestimo, idlivro) values (7, 8);

-- Crie os seguintes índices:
-- Tabela		Campo
--
-- Emprestimo	Emprestimo
-- Emprestimo	Devolução
create index idx_emprestimo_dataemprestimo on emprestimo (data_emprestimo);
create index idx_emprestimo_datadevolucao on emprestimo (data_devolucao);

-- O nome dos autores em ordem alfabética.
select nome from autor order by nome;
-- O nome dos alunos que começam com a letra P.
select nome from aluno where nome like 'P%';
-- O nome dos livros da categoria Banco de Dados ou Java.
select nome from livro where idcategoria in (1, 3);
-- O nome dos livros da editora Bookman.
select nome from livro where id editora = 1;
-- Os empréstimos realizados entre 05/05/2012 e 10/05/2012.
select * from emprestimo where data_emprestimo between '2012-05-05' and '2012-05-10';
-- Os empréstimos que não foram feitos entre 05/05/2012 e 10/05/2012
select * from emprestimo where data_emprestimo not between '2012-05-05' and '2012-05-10';
-- Os empréstimos que os livros já foram devolvidos.
select * from emprestimo where devolvido = 'S';

-- A quantidade de livros.
select count(idlivro) as Qntd. Livros from livro;
-- O somatório do valor dos empréstimos.
select sum(valor) from emprestimo;
-- A média do valor dos empréstimos.
select avg(valor) as Media_valor from emprestimo;
-- O maior valor dos empréstimos.
select max(valor) from emprestimo;
-- O menor valor dos empréstimos.
select min(valor) from emprestimo;
-- O somatório do valor do empréstimo que estão entre 05/05/2012 e 10/05/2012.
select sum(valor) from emprestimo where data_emprestimo between '2012-05-05' and '2012-05-10';
-- A quantidade de empréstimos que estão entre 01/05/2012 e 05/05/2012.
select count(idemprestimo) from emprestimo where data_emprestimo between '2012-05-01' and '2012-05-05';

-- O nome do livro, a categoria e a editora (LIVRO) – fazer uma view
create view dodos_livros as
select 
	livro.nome as Livro,
	categoria.nome as Categoria,
	editora.nome as Editora
from 
	livro
left outer join
	categoria on livro.idcategoria = categoria.idcategoria
left outer join
	editora on livro.ideditora = editora.ideditora

-- O nome do livro e o nome do autor (LIVRO_AUTOR) – fazer uma view.
create view livro_autor_view as 
select 
	livro.nome as Livro,
	autor.nome as Autor
from 
	livro_autor
left outer join 
	livro on livro_autor.idlivro = livro.idlivro
left outer join 
	autor on livro_autor.idautor = autor.idautor

-- O nome dos livros do autor Ian Graham (LIVRO_AUTOR).
select
	livro.nome as Livro
from 
	livro_autor
left outer join
	livro on livro_autor.idlivro = livro.idlivro
left outer join 
	autor on livro_autor.idautor = autor.idautor
where autor.nome = 'Ian Graham'

-- O nome do aluno, a data do empréstimo e a data de devolução (EMPRESTIMO).
select
	aluno.nome as aluno,
	emprestimo.data_emprestimo,
	emprestimo.data_devolucao
from 
	emprestimo
left outer join
	aluno on emprestimo.idaluno = aluno.idaluno

-- O nome de todos os livros que foram emprestados (EMPRESTIMO_LIVRO).
select 
	distinct(livro.nome) as Livros_emprestado
from 
	emprestimo_livro
left outer join
	livro on emprestimo_livro.idlivro = livro.idlivro
	


-- O nome da editora e a quantidade de livros de cada editora (LIVRO).
select
	editora.nome as Editora,
	count(livro.idlivro) as Quantidade 
from 
	livro
left outer join 
	editora on livro.ideditora = editora.ideditora 
group by 
	editora.nome

-- O nome da categoria e a quantidade de livros de cada categoria (LIVRO).
select
	categoria.nome as Categoria,
	count(livro.idlivro) as Quantidade
from 
	livro
left outer join
	categoria on livro.idcategoria = categoria.idcategoria
group by
	categoria.nome

-- O nome do autor e a quantidade de livros de cada autor (LIVRO_AUTOR).
select
	autor.nome as Autor,
	count(livro.idlivro) as Quantidade
from 
	livro_autor
left outer join
	autor on livro_autor.idautor = autor.idautor
left outer join
	livro on livro_autor.idlivro = livro.idlivro
group by
	autor.nome

-- O nome do aluno e a quantidade de empréstimo de cada aluno (EMPRESTIMO_LIVRO).
select
	aluno.nome as Aluno,
	count(emprestimo.idemprestimo) as Quantidade_emprestimo
from 
	emprestimo_livro
left outer join 
	emprestimo on emprestimo_livro.idemprestimo = emprestimo.idemprestimo
left outer join 
	aluno on emprestimo.idaluno = aluno.idaluno
group by
	aluno.nome

-- O nome do aluno e o somatório do valor total dos empréstimos de cada aluno (EMPRESTIMO).
select 
	aluno.nome as Aluno,
	sum(emprestimo.valor) as Soma_Emprestimo
from
	emprestimo
left outer join 
	aluno on emprestimo.idaluno = aluno.idaluno
group by 
	aluno.nome

-- O nome do aluno e o somatório do valor total dos empréstimos de cada aluno somente daqueles que o somatório for maior do que 7,00 (EMPRESTIMO).
select 
	aluno.nome as Aluno,
	sum(emprestimo.valor) as Soma_Emprestimo
from
	emprestimo
left outer join 
	aluno on emprestimo.idaluno = aluno.idaluno
group by 
	aluno.nome
having 
	sum(emprestimo.valor) > 7

-- O nome de todos os alunos em ordem decrescente e em letra maiúscula.
select upper(nome) as alunos from aluno order by aluno desc

-- Os empréstimos que foram feitos no mês 04 de 2012.
select 
	* 
from
	emprestimo
where 
	data_emprestimo between '2012-04-01' and '2012-04-30'
--  or
--  extract(year from data_emprestimo) = 2012 and extract(month from data_emprestimo) = 4

-- Todos os campos do empréstimo. Caso já tenha sido devolvido, mostrar a mensagem “Devolução completa”, senão “Em atraso”.
select 
	*,
	case devolvido
		when 'S' then 'Devolução completa'
	else 'Em atraso'
	end as Situacao
from 
	emprestimo

-- Somente o caractere 5 até o caractere 10 do nome dos autores.
select  
	 substring(nome from 5 for 10)
from 
	autor
	
-- O valor do empréstimo e somente o mês da data de empréstimo. Escreva “Janeiro”, “Fevereiro”, etc
select
	valor,
	case extract(month from data_emprestimo)
		when 1 then 'Janeiro'
		when 2 then 'Fevereiro'
		when 3 then 'Março'
		when 4 then 'Abril'
		when 5 then 'Maio'
		when 6 then 'Junho'
		when 7 then 'Julho'
		when 8 then 'Agosto'
		when 9 then 'Setembro'
		when 10 then 'Outubro'
		when 11 then 'Novembro'
		when 12 then 'Dezembro'
	end as Mes_Emprestimo
from 
	emprestimo

-- A data do empréstimo e o valor dos empréstimos que o valor seja maior que a média de todos os empréstimos.
select 
	data_emprestimo,
	valor
from 
	emprestimo
where 
	valor > (select avg(valor) from emprestimo)

-- A data do empréstimo e o valor dos empréstimos que possuem mais de um livro.
select
	data_emprestimo,
	valor, 
from 
	emprestimo 
where 
	(select 
		count(idemprestimo) 
	from 
		emprestimo_livro 
	where 
		emprestimo_livro.idemprestimo = emprestimo.idemprestimo) > 1
		
-- A data do empréstimo e o valor dos empréstimos que o valor seja menor que a soma de todos os empréstimos.
select 
	data_emprestimo,
	valor
from 
	emprestimo
where 
	valor < (select sum(valor) from emprestimo)