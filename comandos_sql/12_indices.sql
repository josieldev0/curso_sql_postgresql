-- =====================================================
-- ÍNDICES
-- =====================================================
create index idx_cliente_nome on cliente (nome);

create index idx_emprestimo_dataemprestimo on emprestimo (data_emprestimo);
create index idx_emprestimo_datadevolucao on emprestimo (data_devolucao);