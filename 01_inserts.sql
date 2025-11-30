-- =============================
-- 01_inserts.sql
-- POVOAMENTO DAS TABELAS
-- =============================

-- INSERIR CONCESSIONÁRIOS
INSERT INTO Concessionario (concessionario_id, nome, cpf_cnpj, telefone, endereco, email) VALUES
(1, 'Maria de Lourdes', '12345678901', '91234-5678', 'Rua das Flores, 45', 'maria@email.com'),
(2, 'João Pereira', '98765432100', '93456-7890', 'Av. Central, 200', 'joao@email.com');

-- INSERIR JAZIGOS
INSERT INTO Jazigo (jazigo_id, identificador, tipo, concessionario_id) VALUES
(1, 'JZ-A1', 'Familiar', 1),
(2, 'JZ-B2', 'Individual', 2);

-- INSERIR SEPULTURAS
INSERT INTO Sepultura (sepultura_id, quadra, numero, tipo, estado, jazigo_id) VALUES
(1, 'Quadra A', 12, 'Simples', 'Ocupado', 1),
(2, 'Quadra B', 18, 'Dupla', 'Disponível', 2);

-- INSERIR DOCUMENTOS
INSERT INTO Documento (documento_id, tipo, arquivo_path, data_emissao, relacionado_a_tipo, relacionado_a_id) VALUES
(1, 'Certidão de Óbito', '/docs/certidao1.pdf', '2023-01-10', 'Falecido', 1);

-- INSERIR FALECIDOS
INSERT INTO Falecido (falecido_id, nome, data_nascimento, data_obito, sexo, sepultura_id, documento_obito_id, observacoes) VALUES
(1, 'José da Silva', '1950-05-08', '2023-01-05', 'M', 1, 1, 'Nenhuma observação');

-- INSERIR CONCESSÕES
INSERT INTO Concessao (concessao_id, sepultura_id, concessionario_id, data_inicio, data_fim, status, valor_pago) VALUES
(1, 1, 1, '2020-01-01', '2030-01-01', 'Ativa', 1500.00);

-- INSERIR FUNCIONÁRIOS
INSERT INTO Funcionario (funcionario_id, nome, cargo, cpf, telefone, data_contratacao) VALUES
(1, 'Carlos Mendes', 'Administrador', '11122233344', '99999-8888', '2020-05-05');

-- INSERIR SERVIÇOS
INSERT INTO Servico (servico_id, tipo, descricao, custo_base) VALUES
(1, 'Limpeza', 'Limpeza completa do jazigo', 120.00),
(2, 'Exumação', 'Procedimento de exumação', 500.00);

-- INSERIR ORDEM DE MANUTENÇÃO
INSERT INTO OrdemManutencao (ordem_id, servico_id, sepultura_id, funcionario_responsavel_id,
data_agendamento, data_execucao, status, observacoes) VALUES
(1, 1, 1, 1, '2023-02-01', NULL, 'Agendado', 'Aguardando execução');
