-- =====================================================
-- CREATE TABLE	
-- =====================================================
create table cliente (
	idcliente integer not null, -- inteiro
	nome varchar(50) not null, -- até 50 caracteres
	cpf char(11), -- obrigatoriamente 11 caracteres
	rg varchar(15),
	data_nascimento date,
	genero char(1),
	profissao varchar(30),
	nacionalidade varchar(30),
	logradouro varchar(30),
	numero varchar(10),
	complemento varchar(30),
	bairro varchar(30),
	municipio varchar(30),
	uf varchar(30),
	observacoes text,

	-- primary key
	constraint pk_cln_idcliente primary key (idcliente)
	 
);

create table profissao (
	idprofissao integer not null,
	nome varchar(30) not null,

	constraint pk_prf_idprofissao primary key (idprofissao),
	constraint un_prf_nome unique (nome)
);

create table nacionalidade(
	idnacionalidade integer not null,
	nome varchar(30) not null,

	constraint pk_ncn_idnacionalidade primary key (idnacionalidade),
	constraint un_ncn_nome unique (nome)
);

create table complemento(
	idcomplemento integer not null,
	nome varchar(30) not null,

	constraint pk_cpl_idcomplemento primary key (idcomplemento),
	constraint un_cpl_nome unique (nome)
);

create table bairro(
	idbairro integer not null,
	nome varchar(30) not null,

	constraint pk_brr_idbairro primary key (idbairro),
	constraint un_brr_nome unique (nome)
);

create table uf (
	iduf integer not null,
	nome varchar(30) not null,
	sigla char(2) not null,

	constraint pk_ufd_idunidade_federacao primary key (iduf), 
	constraint pk_ufd_nome unique (nome), 
	constraint pk_ufd_sigla unique (sigla)
)

create table municipio(
	idmunicipio integer not null,
	nome varchar(30) not null,
	iduf integer not null,

	constraint pk_mnc_idmunicipio primary key (idmunicipio),
	constraint un_mnc_nome unique (nome),
	constraint fk_mnc_iduf foreign key (iduf) references uf (iduf)
);

create table pedido (
	idpedido integer not null,
	idcliente integer not null,
	idtransportadora integer,
	idvendedor integer not null,
	data_pedido date not null,
	valor float not null,

	constraint pk_pdd_idpedido primary key (idpedido),
	constraint fk_pdd_idcliente foreign key (idcliente) references cliente (idcliente),
	constraint fk_pdd_idtransportadora foreign key (idtransportadora) references transportadora(idtransportadora),
	constraint fk_pdd_idvendedor foreign key (idvendedor) references vendedor (idvendedor)
);

create table pedido_produto (
	idpedido integer not null,
	idproduto integer not null,
	quantidade integer not null,
	valor_unitario float not null,

	constraint pk_pdp_idpedidoproduto primary key (idpedido, idproduto),
	constraint fk_pdp_idpedido foreign key (idpedido) references pedido (idpedido),
	constraint fk_pdp_idproduto foreign key (idproduto) references produto (idproduto)
);

create table editora (
	ideditora serial not null,
	nome varchar(30) not null,

	constraint pk_editora_ideditora primary key (ideditora),
	constraint un_editora_nome unique (nome)
);

create table categoria (
	idcategoria serial not null,
	nome varchar(30) not null,

	constraint pk_categoria_idcategoria primary key (idcategoria),
	constraint un_categoria_nome unique (nome)
);

create table autor (
	idautor serial not null,
	nome varchar(30) not null,

	constraint pk_autor_idautor primary key (idautor)
);

create table livro(
	idlivro serial not null,
	ideditora integer not null,
	idcategoria integer not null,
	nome varchar(60) not null,

	constraint pk_livro_idlivro primary key (idlivro),
	constraint fk_livro_ideditora foreign key (ideditora) references editora (ideditora),
	constraint fk_livro_idcategoria foreign key (idcategoria) references categoria (idcategoria),
	constraint un_livro_nome unique (idlivro)
);

create table livro_autor (
	idlivro integer not null,
	idautor integer not null,

	constraint pk_livroautor_idlivroautor primary key (idlivro, idautor),
	constraint fk_livroautor_idlivro foreign key (idlivro) references livro (idlivro),
	constraint fk_livroautor_idautor foreign key (idautor) references autor (idautor)
);

create table aluno (
	idaluno serial not null,
	nome varchar(50) not null,

	constraint pk_aluno_idaluno primary key(idaluno)
);

create table emprestimo (
	idemprestimo serial not null,
	idaluno integer not null,
	data_emprestimo date not null default current_date,
	data_devolucao date not null,
	valor float not null default 0,
	devolvido char(1) not null,

	constraint pk_emprestimo_idemprestimo primary key (idemprestimo),
	constraint fk_emprestimo_idaluno foreign key (idaluno) references aluno (idaluno)
);

create table emprestimo_livro(
	idemprestimo integer not null,
	idlivro integer not null,

	constraint pk_emprestimolivro_idemprestimolivro primary key (idemprestimo, idlivro),
	constraint fk_emprestimolivro_idemprestimo foreign key (idemprestimo) references emprestimo (idemprestimo),
	constraint fk_emprestimolivro_idlivro foreign key (idlivro) references livro (idlivro)
);