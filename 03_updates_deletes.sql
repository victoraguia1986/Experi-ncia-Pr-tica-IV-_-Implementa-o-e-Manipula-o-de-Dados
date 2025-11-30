-- =============================
-- 03_updates_deletes.sql
-- UPDATES E DELETES
-- =============================

-- UPDATES --------------------------

-- 1. Atualizar estado da sepultura
UPDATE Sepultura
SET estado = 'Ocupado'
WHERE sepultura_id = 2;

-- 2. Atualizar status da ordem de manutenção
UPDATE OrdemManutencao
SET status = 'Concluído', data_execucao = CURRENT_DATE
WHERE ordem_id = 1;

-- 3. Atualizar email do concessionário
UPDATE Concessionario
SET email = 'novo_email@email.com'
WHERE concessionario_id = 2;

-- DELETES --------------------------

-- 1. Apagar documento
DELETE FROM Documento
WHERE documento_id = 1;

-- 2. Apagar serviço sem ordens
DELETE FROM Servico
WHERE servico_id = 2
AND servico_id NOT IN (SELECT servico_id FROM OrdemManutencao);

-- 3. Apagar funcionário sem ordens
DELETE FROM Funcionario
WHERE funcionario_id = 1
AND funcionario_id NOT IN (SELECT funcionario_responsavel_id FROM OrdemManutencao);
