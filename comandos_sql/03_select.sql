-- =====================================================
-- SELECT
-- =====================================================
select * from cliente;

select nome, data_nascimento from cliente;

select nome, data_nascimento as "Data de nascimento" from cliente;

select cpf, rg from cliente;

select 'CPF: ' || cpf || 'RG: ' || rg as "CPF e RG" from cliente;

select * from cliente limit 3;

select nome, data_nascimento from cliente where data_nascimento > '2000-01-01';

select nome from cliente where nome like 'C%';

select nome from cliente where nome like '%c%';

select nome, data_nascimento from cliente where data_nascimento between '1990-01-01' and '1998-01-01';

select nome, rg from cliente where rg is null;

select nome from cliente order by nome asc;

select nome from cliente order by nome desc;

select nome from autor order by nome;
select nome from aluno where nome like 'P%';
select nome from livro where idcategoria in (1, 3);
select nome from livro where id editora = 1;
select * from emprestimo where data_emprestimo between '2012-05-05' and '2012-05-10';
select * from emprestimo where data_emprestimo not between '2012-05-05' and '2012-05-10';
select * from emprestimo where devolvido = 'S';

select upper(nome) as alunos from aluno order by aluno desc

select 
	* 
from
	emprestimo
where 
	data_emprestimo between '2012-04-01' and '2012-04-30'

select
	*,
	case devolvido
		when 'S' then 'Devolução completa'
	else 'Em atraso'
	end as Situacao
from 
	emprestimo

select  
	 substring(nome from 5 for 10)
from 
	autor
	
select
	valor,
	case extract(month from data_emprestimo)
		when 1 then 'Janeiro'
		when 2 then 'Fevereiro'
		when 3 then 'Março'
		when 4 then 'Abril'
		when 5 then 'Maio'
		when 6 then 'Junho'
		when 7 then 'Julho'
		when 8 then 'Agosto'
		when 9 then 'Setembro'
		when 10 then 'Outubro'
		when 11 then 'Novembro'
		when 12 then 'Dezembro'
	end as Mes_Emprestimo
from 
	emprestimo