-- =====================================================
-- VIEWS
-- =====================================================
create view cliente_profissao as 
select 
	cliente.nome as cliente,
	cliente.cpf as cpf,
	profissao.nome as profissao
from 
	cliente
left outer join
	profissao on cliente.idprofissao = profissao.idprofissao

select cliente, profissao from cliente_profissao where profissao = 'Professor'

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