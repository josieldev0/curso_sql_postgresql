-- =====================================================
-- TRIGGERS	
-- =====================================================
create table bairro_auditoria(
	idbairro integer not null,
	data_criacao timestamp not null
)

create function bairro_log() returns trigger language plpgsql as 
$$
begin
	insert into bairro_auditoria(idbairro, data_criacao) values(new.idbairro, current_timestamp);
	return new;
end;
$$;
create trigger log_bairro_trigger after insert on bairro for each row execute function bairro_log();

call insere_bairro('Teste 10');
call insere_bairro('Teste 20');
call insere_bairro('Teste 30');
select * from bairro_auditoria;