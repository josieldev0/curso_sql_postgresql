-- =====================================================
-- UPDATE E DELETE
-- =====================================================
select * from cliente;

update cliente set nome = 'Teste' where idcliente = 1;

update cliente set nome = 'Adriano', genero = 'M', numero = '241' where idcliente = 4;

insert into cliente (idcliente, nome) values(16, 'João');

delete from cliente where idcliente = 16;

update cliente set nome = 'Manoel' where idcliente = 1