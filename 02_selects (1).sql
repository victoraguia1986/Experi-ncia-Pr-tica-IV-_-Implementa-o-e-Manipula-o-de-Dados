-- =============================
-- 02_selects.sql
-- CONSULTAS SELECT
-- =============================

-- 1. LISTAR FALecIDOS E SUAS SEPULTURAS
SELECT f.nome AS falecido, s.quadra, s.numero
FROM Falecido f
JOIN Sepultura s ON f.sepultura_id = s.sepultura_id;

-- 2. CONSULTAR CONCESSÕES ATIVAS
SELECT c.concessao_id, con.nome AS concessionario, c.data_fim
FROM Concessao c
JOIN Concessionario con ON c.concessionario_id = con.concessionario_id
WHERE c.status = 'Ativa'
ORDER BY c.data_fim;

-- 3. LISTAR SERVIÇOS AINDA NÃO EXECUTADOS
SELECT o.ordem_id, s.tipo, o.data_agendamento
FROM OrdemManutencao o
JOIN Servico s ON o.servico_id = s.servico_id
WHERE o.data_execucao IS NULL;

-- 4. SEPULTURA COM MAIOR NÚMERO
SELECT * FROM Sepultura
ORDER BY numero DESC
LIMIT 1;

-- 5. DOCUMENTOS RELACIONADOS A FALECIDOS
SELECT d.documento_id, d.tipo, f.nome
FROM Documento d
JOIN Falecido f ON d.relacionado_a_id = f.falecido_id
WHERE d.relacionado_a_tipo = 'Falecido';
