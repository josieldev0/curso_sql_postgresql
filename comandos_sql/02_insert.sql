-- =====================================================
-- INSERT INTO / VALUES
-- =====================================================	
insert into cliente(idcliente, nome, cpf, rg, data_nascimento, genero, profissao, nacionalidade, logradouro, numero, complemento, bairro, municipio, UF)
values (1,'Manoel', '88828383821','32323','2001-01-30','M','Estudante', 'Brasileira', 'Rua Joaquim Nabuco','23','Casa','Cidade Nova','Porto Uniao','SC');

insert into cliente(idcliente, nome, cpf, rg, data_nascimento, genero, profissao, nacionalidade, logradouro, numero, complemento, bairro, municipio, UF)
values (2,'Geraldo', '12343299929','56565','1987-01-04','M','Engenheiro', 'Brasileira', 'Rua das Limas','200','Ap','Centro','Poro Uniao','SC');

insert into cliente(idcliente, nome, cpf, rg, data_nascimento, genero, profissao, nacionalidade, logradouro, numero, complemento, bairro, municipio, UF)
values (3,'Carlos','87732323227','55463','1967-10-01','M','Pedreiro','Brasileira','Rua das Laranjeiras','300','Apart.','Cto.','Canoinhas','SC');

insert into cliente(idcliente, nome, cpf, rg, data_nascimento, genero, profissao, nacionalidade, logradouro, numero, complemento, bairro, municipio, UF)
values (4,'Adriana','12321222122','98777','1989-09-10','F','Jornalista','Brasileira','Rua das Limas','240','Casa','São Pedro','General Carneiro','PR');

insert into cliente(idcliente, nome, cpf, rg, data_nascimento, genero, profissao, nacionalidade, logradouro, numero, complemento, bairro, municipio, UF)
values (5,'Amanda','99982838828','28382','1991-03-04','F','Jorn.','Italiana','Av. Central','100',null, 'São Pedro','General Carneiro','PR');

insert into cliente(idcliente, nome, cpf, rg, data_nascimento, genero, profissao, nacionalidade, logradouro, numero, complemento, bairro, municipio, UF)
values (6, 'Ângelo', '99982828181','12323','2000-01-01','M','Professor','Brasileiro','Av. Beira Mar','300',null, 'Ctr.','São Paulo','SP');

insert into cliente(idcliente, nome, cpf, rg, data_nascimento, genero, profissao, nacionalidade, logradouro, numero, complemento, bairro, municipio, UF)
values (7,'Anderson',null,null,null,'M','Prof.','Italiano', 'Av. Brasil','100','Apartamento','Santa Rosa','Rio de Janeiro','SP');

insert into cliente(idcliente, nome, cpf, rg, data_nascimento, genero, profissao, nacionalidade, logradouro, numero, complemento, bairro, municipio, UF)
values (8,'Camila','9998282828',null,'2001-10-10','F','Professora','Norte-Americana','Rua Central','4333',null,'Centro','Porto Alegre','RS');

insert into cliente(idcliente, nome, cpf, rg, data_nascimento, genero, profissao, nacionalidade, logradouro, numero, complemento, bairro, municipio, UF)
values (9,'Cristiano',null,null,null,'M','Estudante','Alemã','Rua do Centro','877','Casa','Centro','Porto Alegre','RS');

insert into cliente(idcliente, nome, cpf, rg, data_nascimento, genero, profissao, nacionalidade, logradouro, numero, complemento, bairro, municipio, UF)
values (10, 'Fabricio','8828282828','32323',null,'M','Estudante','Brasileiro',null,null,null,null, 'PU','SC');

insert into cliente(idcliente, nome, cpf, rg, data_nascimento, genero, profissao, nacionalidade, logradouro, numero, complemento, bairro, municipio, UF)
values (11,'Fernanda',null,null,null,'F',null,'Brasileira',null,null,null,null,'Porto União','SC');

insert into cliente(idcliente, nome, cpf, rg, data_nascimento, genero, profissao, nacionalidade, logradouro, numero, complemento, bairro, municipio, UF)
values (12,'Gilmar','88881818181','888','2000-02-10','M','Estud.',null,'Rua das Laranjeiras','200',null,'C. Nova','Canoinhas','SC');

insert into cliente(idcliente, nome, cpf, rg, data_nascimento, genero, profissao, nacionalidade, logradouro, numero, complemento, bairro, municipio, UF)
values (13,'Diego','1010191919','111939',null,'M','Professor','Alemão','Rua Central','455','Casa','Cidade N.','São Paulo','SP');

insert into cliente(idcliente, nome, cpf, rg, data_nascimento, genero, profissao, nacionalidade, logradouro, numero, complemento, bairro, municipio, UF)
values (14,'Jeferson',null,null,'1983-07-01','M',null,'Brasileiro',null,null, null,null,'União da Vitória','PR');

insert into cliente(idcliente, nome, cpf, rg, data_nascimento, genero, profissao, nacionalidade, logradouro, numero, complemento, bairro, municipio, UF)
values (15,'Jessica',null,null,null,'F','Estudante', null, null, null, null, null, 'União da Vitória','PR');

-- =====================================================
-- INSERT INTO / VALUES
-- =====================================================
insert into profissao (idprofissao, nome) values (1, 'Estudante');
insert into profissao (idprofissao, nome) values (2, 'Engenheiro');
insert into profissao (idprofissao, nome) values (3, 'Pedreiro');
insert into profissao (idprofissao, nome) values (4, 'Jornalista');
insert into profissao (idprofissao, nome) values (5, 'Professor');

insert into nacionalidade (idnacionalidade, nome) values (1, 'Brasileira');
insert into nacionalidade (idnacionalidade, nome) values (2, 'Italiana');
insert into nacionalidade (idnacionalidade, nome) values (3, 'Norte-americana');
insert into nacionalidade (idnacionalidade, nome) values (4, 'Alemã');

insert into complemento (idcomplemento, nome) values (1, 'Casa');
insert into complemento (idcomplemento, nome) values (2, 'Apartamento');

insert into bairro (idbairro, nome) values (1, 'Cidade Nova');
insert into bairro (idbairro, nome) values (2, 'Centro');
insert into bairro (idbairro, nome) values (3, 'São pedro');
insert into bairro (idbairro, nome) values (4, 'Santa Rosa');

insert into uf (iduf, nome, sigla) values (1, 'Santa Catarina', 'SC');
insert into uf (iduf, nome, sigla) values (2, 'Paraná', 'PR');
insert into uf (iduf, nome, sigla) values (3, 'São Paulo', 'SP');
insert into uf (iduf, nome, sigla) values (4, 'Minas Gerais', 'MG');
insert into uf (iduf, nome, sigla) values (5, 'Rio Grande do Sul', 'RS');
insert into uf (iduf, nome, sigla) values (6, 'Rio de Janeiro', 'RJ');

insert into municipio (idmunicipio, nome, iduf) values (1, 'Porto União', 1);
insert into municipio (idmunicipio, nome, iduf) values (2, 'Canoinhas', 1);
insert into municipio (idmunicipio, nome, iduf) values (3, 'Porto Vitória', 2);
insert into municipio (idmunicipio, nome, iduf) values (4, 'General Carneiro', 2);
insert into municipio (idmunicipio, nome, iduf) values (5, 'São Paulo', 3);
insert into municipio (idmunicipio, nome, iduf) values (6, 'Rio de Janeiro', 6);
insert into municipio (idmunicipio, nome, iduf) values (7, 'Uberlândia', 4);
insert into municipio (idmunicipio, nome, iduf) values (8, 'Porto Alegre', 5);
insert into municipio (idmunicipio, nome, iduf) values (9, 'União da Vitória', 2);

insert into pedido (idpedido, data_pedido, valor, idcliente, idtransportadora, idvendedor)
values (1, '2008-04-01', 1300, 1, 1, 1);
insert into pedido (idpedido, data_pedido, valor, idcliente, idtransportadora, idvendedor)
values (2, '2008-04-01', 500, 1, 1, 1);
insert into pedido (idpedido, data_pedido, valor, idcliente, idtransportadora, idvendedor)
values (3, '2008-04-02', 300, 11, 2, 5);
Insert into pedido (idpedido, data_pedido, valor, idcliente,idtransportadora, idvendedor) values (4, '2008-04-05', 1000, 8, 1, 7);
Insert into pedido (idpedido, data_pedido, valor, idcliente,idtransportadora, idvendedor) values (5, '2008-04-06', 200, 9, 2, 6);
Insert into pedido (idpedido, data_pedido, valor, idcliente,idtransportadora, idvendedor) values (6, '2008-04-06', 1985, 10, 1, 6);
Insert into pedido (idpedido, data_pedido, valor, idcliente,idtransportadora, idvendedor) values (7, '2008-04-06', 800, 3, 1, 7);
Insert into pedido (idpedido, data_pedido, valor, idcliente,idtransportadora, idvendedor) values (8, '2008-04-06', 175, 3, null, 7);
Insert into pedido (idpedido, data_pedido, valor, idcliente,idtransportadora, idvendedor) values (9, '2008-04-07', 1300, 12, null, 8);
Insert into pedido (idpedido, data_pedido, valor, idcliente,idtransportadora, idvendedor) values (10, '2008-04-10', 200, 6, 1, 8);
Insert into pedido (idpedido, data_pedido, valor, idcliente,idtransportadora, idvendedor) values (11, '2008-04-15', 300, 15, 2, 1);
Insert into pedido (idpedido, data_pedido, valor, idcliente,idtransportadora, idvendedor) values (12, '2008-04-20', 300, 15, 2, 5);
Insert into pedido (idpedido, data_pedido, valor, idcliente,idtransportadora, idvendedor) values (13, '2008-04-20', 350, 9, 1, 7);
Insert into pedido (idpedido, data_pedido, valor, idcliente,idtransportadora, idvendedor) values (14, '2008-04-23', 300, 2, 1, 5);
Insert into pedido (idpedido, data_pedido, valor, idcliente,idtransportadora, idvendedor) values (15, '2008-04-25', 200, 11, null, 5);

insert into pedido_produto (idpedido, idproduto, quantidade, valor_unitario) values
(1, 1, 1, 800);
insert into pedido_produto (idpedido, idproduto, quantidade, valor_unitario) values
(1, 2, 1, 500);
insert into pedido_produto (idpedido, idproduto, quantidade, valor_unitario) values
(2, 2, 1, 500);
Insert into pedido_produto (idpedido,idproduto,quantidade,valor_unitario) values (3, 4, 2, 150);
Insert into pedido_produto (idpedido,idproduto,quantidade,valor_unitario) values (4, 1, 1, 800);
Insert into pedido_produto (idpedido,idproduto,quantidade,valor_unitario) values (4, 3, 1, 200);
Insert into pedido_produto (idpedido,idproduto,quantidade,valor_unitario) values (5, 3, 1, 200);
Insert into pedido_produto (idpedido,idproduto,quantidade,valor_unitario) values (6, 1, 2, 800);
Insert into pedido_produto (idpedido,idproduto,quantidade,valor_unitario) values (6, 7, 1, 35);
Insert into pedido_produto (idpedido,idproduto,quantidade,valor_unitario) values (6, 5, 1, 200);
Insert into pedido_produto (idpedido,idproduto,quantidade,valor_unitario) values (6, 4, 1, 150);
Insert into pedido_produto (idpedido,idproduto,quantidade,valor_unitario) values (7, 1, 1, 800);
Insert into pedido_produto (idpedido,idproduto,quantidade,valor_unitario) values (8, 7, 5, 35);
Insert into pedido_produto (idpedido,idproduto,quantidade,valor_unitario) values (9, 1, 1, 800);
Insert into pedido_produto (idpedido,idproduto,quantidade,valor_unitario) values (9, 2, 1, 500);
Insert into pedido_produto (idpedido,idproduto,quantidade,valor_unitario) values (10, 5, 1, 200);
Insert into pedido_produto (idpedido,idproduto,quantidade,valor_unitario) values (11, 5, 1, 200);
Insert into pedido_produto (idpedido,idproduto,quantidade,valor_unitario) values (11, 6, 1, 100);
Insert into pedido_produto (idpedido,idproduto,quantidade,valor_unitario) values (12, 2, 1, 500);
Insert into pedido_produto (idpedido,idproduto,quantidade,valor_unitario) values (13, 3, 1, 200);
Insert into pedido_produto (idpedido,idproduto,quantidade,valor_unitario) values (13, 4, 1, 150);
Insert into pedido_produto (idpedido,idproduto,quantidade,valor_unitario) values (14, 6, 3, 100);
Insert into pedido_produto (idpedido,idproduto,quantidade,valor_unitario) values (15, 3, 1, 200);

insert into editora (nome) values ('Bookman');
insert into editora (nome) values ('Edgard Blusher');
insert into editora (nome) values ('Nova Terra');
insert into editora (nome) values ('Brasport');

insert into categoria (nome) values('Banco de Dados');
insert into categoria (nome) values('HTML');
insert into categoria (nome) values('Java');
insert into categoria (nome) values('PHP');

insert into autor (nome) values ('Waldemar Setzer');
insert into autor (nome) values ('Flávio Soares');
insert into autor (nome) values ('John Watson');
insert into autor (nome) values ('Rui Rossi dos Santos');
insert into autor (nome) values ('Antônio Pereira de Resende');
insert into autor (nome) values ('Claudiney Calixto Lima');
insert into autor (nome) values ('Evandro Carlos Teruel');
insert into autor (nome) values ('Ian Graham');
insert into autor (nome) values ('Fabrício Xavier');
insert into autor (nome) values ('Pablo Dalloglio');

insert into livro(ideditora, idcategoria, nome) values (2, 1, 'Banco de Dados - 1 Edição');
insert into livro(ideditora, idcategoria, nome) values (1, 1, 'Oracle DataBase 11G Administração');
insert into livro(ideditora, idcategoria, nome) values (3, 3, 'Programação de Computadores em Java');
insert into livro(ideditora, idcategoria, nome) values (4, 3, 'Programação Orientada a Aspectos em Java');
insert into livro(ideditora, idcategoria, nome) values (4, 2, 'HTML5 - Guia Prático');
insert into livro(ideditora, idcategoria, nome) values (3, 2, 'HTML - Guia de Referência para Desenvolvimento na Web');
insert into livro(ideditora, idcategoria, nome) values (1, 4, 'PHP para Desenvolvimento Profissional');
insert into livro(ideditora, idcategoria, nome) values (2, 4, 'PHP com Programação Orientada a Objetos');

insert into livro_autor (idlivro, idautor) values (1, 1);
insert into livro_autor (idlivro, idautor) values (1, 2);
insert into livro_autor (idlivro, idautor) values (2, 3);
insert into livro_autor (idlivro, idautor) values (3, 4);
insert into livro_autor (idlivro, idautor) values (4, 5);
insert into livro_autor (idlivro, idautor) values (4, 6);
insert into livro_autor (idlivro, idautor) values (5, 7);
insert into livro_autor (idlivro, idautor) values (6, 8);
insert into livro_autor (idlivro, idautor) values (7, 9);
insert into livro_autor (idlivro, idautor) values (8, 10);

insert into aluno (nome) values ('Mario');
insert into aluno (nome) values ('João');
insert into aluno (nome) values ('Paulo');
insert into aluno (nome) values ('Pedro');
insert into aluno (nome) values ('Maria');

insert into emprestimo(idaluno, data_emprestimo, data_devolucao, valor, devolvido) values (1, '2012-05-02', '2012-05-12', 10, 'S');
insert into emprestimo(idaluno, data_emprestimo, data_devolucao, valor, devolvido) values (1, '2012-04-23', '2012-05-03', 5, 'N');
insert into emprestimo(idaluno, data_emprestimo, data_devolucao, valor, devolvido) values (2, '2012-05-10', '2012-05-20', 12, 'N');
insert into emprestimo(idaluno, data_emprestimo, data_devolucao, valor, devolvido) values (3, '2012-05-10', '2012-05-20', 8, 'S');
insert into emprestimo(idaluno, data_emprestimo, data_devolucao, valor, devolvido) values (4, '2012-05-05', '2012-05-15', 15, 'N');
insert into emprestimo(idaluno, data_emprestimo, data_devolucao, valor, devolvido) values (4, '2012-05-07', '2012-05-17', 20, 'S');
insert into emprestimo(idaluno, data_emprestimo, data_devolucao, valor, devolvido) values (4, '2012-05-08', '2012-05-18', 5, 'S');

insert into emprestimo_livro (idemprestimo, idlivro) values (1, 1);
insert into emprestimo_livro (idemprestimo, idlivro) values (2, 4);
insert into emprestimo_livro (idemprestimo, idlivro) values (2, 3);
insert into emprestimo_livro (idemprestimo, idlivro) values (3, 2);
insert into emprestimo_livro (idemprestimo, idlivro) values (3, 7);
insert into emprestimo_livro (idemprestimo, idlivro) values (4, 5);
insert into emprestimo_livro (idemprestimo, idlivro) values (5, 4);
insert into emprestimo_livro (idemprestimo, idlivro) values (6, 6);
insert into emprestimo_livro (idemprestimo, idlivro) values (6, 1);
insert into emprestimo_livro (idemprestimo, idlivro) values (7, 8);