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