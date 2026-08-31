-- =====================================================
-- USUÁRIOS E PERMISSÕES	
-- =====================================================
create role gerente;
create role estagiario;

grant select, insert, delete, update on bairro, cliente, complemento, fornecedor, municipio, nacionalidade, pedido, pedido_produto, produto, profissao, transportadora, uf, vendedor to gerente with grant option;
grant all on all sequences in schema public to gerente;
-- revoke - Retirar as permissões

grant select on cliente_dados, dados_pedido to estagiario;

create role maria login password '123' in role gerente;
create role pedro login password '123' in role estagiario;