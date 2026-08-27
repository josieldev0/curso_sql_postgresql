-- =====================================================
-- FUNÇÕES	
-- =====================================================
create function formata_moeda(valor float) returns varchar(30)  language plpgsql as
$$
begin
	return concat('R$ ', round(cast(valor as numeric), 2));
end;
$$;
select valor, formata_moeda(valor) from pedido;
select valor, formata_moeda(valor) from produto;

create function get_nome_by_id (idcliente integer) returns varchar(50) language plpgsql as
$$
declare r varchar(50);
begin
	select nome into r from cliente where idcliente = idcliente;
	return r;
end;
$$;
select data_pedido, valor, get_nome_by_id(idcliente) from pedido;