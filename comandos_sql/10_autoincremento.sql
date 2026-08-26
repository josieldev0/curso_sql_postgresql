-- =====================================================
-- CAMPOS AUTOINCREMENTO
-- =====================================================

create table exemplo(
	idexemplo serial not null,
	nome varchar(50) not null,

	constraint pk_exemplo_idexemplo primary key (idexemplo)
)

insert into exemplo (nome) values ('Exemplo 1');
insert into exemplo (nome) values ('Exemplo 2');
insert into exemplo (nome) values ('Exemplo 3');
insert into exemplo (nome) values ('Exemplo 4');
insert into exemplo (nome) values ('Exemplo 5');

select * from exemplo

select max(idbairro) from bairro

create sequence bairro_id_seq minvalue 5
alter table bairro alter idbairro set default nextval('bairro_id_seq') 
alter sequence bairro_id_seq owned by bairro.idbairro

insert into bairro (nome) values ('Teste 1');
insert into bairro (nome) values ('Teste 2');

select * from bairro