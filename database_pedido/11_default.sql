-- =====================================================
-- CAMPOS DEFAULT
-- =====================================================
alter table pedido alter column data_pedido set default current_date;
alter table pedido alter column valor set default 0;

insert into pedido (idcliente, idvendedor) values(1, 1)

insert into pedido (idcliente, idvendedor, data_pedido, valor)
values (1, 1, '2022-10-10', 234)

select * from pedido