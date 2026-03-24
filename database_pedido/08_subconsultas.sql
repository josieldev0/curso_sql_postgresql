-- =====================================================
-- SUBCONSULTAS
-- =====================================================
-- Selecionar a data do pedido e o valor onde o valor seja maior que a média dos 
-- valores de todos os pedidos
select 
	data_pedido,
	valor
from 
	pedido
where 
	valor > (select avg(valor) from pedido)

-- Exemplo com count
select * from pedido_produto
select
	pedido.data_pedido,
	pedido.valor,
	(select sum(quantidade) from pedido_produto where pedido_produto.idpedido = pedido.idpedido) as quantidade
from    
	pedido
	
-- Exemplo com update
select * from pedido

update pedido set valor = valor + ((valor * 5) / 100)
where valor > (select avg(valor) from pedido)