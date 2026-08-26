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

select
	livro.nome as Livro
from 
	livro_autor
left outer join
	livro on livro_autor.idlivro = livro.idlivro
left outer join 
	autor on livro_autor.idautor = autor.idautor
where autor.nome = 'Ian Graham'

select
	aluno.nome as aluno,
	emprestimo.data_emprestimo,
	emprestimo.data_devolucao
from 
	emprestimo
left outer join
	aluno on emprestimo.idaluno = aluno.idaluno

select 
	distinct(livro.nome) as Livros_emprestado
from 
	emprestimo_livro
left outer join
	livro on emprestimo_livro.idlivro = livro.idlivro
  
select
	editora.nome as Editora,
	count(livro.idlivro) as Quantidade 
from 
	livro
left outer join 
	editora on livro.ideditora = editora.ideditora 
group by 
	editora.nome

select
	categoria.nome as Categoria,
	count(livro.idlivro) as Quantidade
from 
	livro
left outer join
	categoria on livro.idcategoria = categoria.idcategoria
group by
	categoria.nome

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

select 
	aluno.nome as Aluno,
	sum(emprestimo.valor) as Soma_Emprestimo
from
	emprestimo
left outer join 
	aluno on emprestimo.idaluno = aluno.idaluno
group by 
	aluno.nome

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
