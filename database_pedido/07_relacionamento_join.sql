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