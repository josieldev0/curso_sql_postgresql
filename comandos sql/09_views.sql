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