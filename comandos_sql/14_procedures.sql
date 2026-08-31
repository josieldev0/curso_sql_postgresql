-- =====================================================
-- STORED PROCEDURES 	
-- =====================================================
create procedure insere_bairro(nome_bairro varchar(40)) language sql as 
$$
	insert into bairro (nome) values (nome_bairro);
$$;

call insere_bairro('Teste Procedure');
select * from bairro;