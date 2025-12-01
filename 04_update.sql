USE instituto_jujutsu;

-- ============================================
-- 1) Atualizar o status de uma missão que foi concluída
-- ============================================
-- Antes: Missão em andamento
-- Depois: Concluída

UPDATE missao
SET status = 'Concluída', data_fim = '2024-02-20'
WHERE missao_id = 2;   -- Investigação no Bairro Shibuya



-- ============================================
-- 2) Trocar o instrutor responsável por um aluno
-- ============================================
-- Exemplo: Trocar o instrutor do aluno Megumi Fushiguro para Kento Nanami (ID 2)

UPDATE aluno
SET instrutor_responsavel_id = (
    SELECT instrutor_id FROM instrutor WHERE nome = 'Kento Nanami'
)
WHERE nome = 'Megumi Fushiguro';




-- ============================================
-- 3) Aumentar a duração de um treino com base em uma condição
-- ============================================
-- Exemplo: Treinos com menos de 50 minutos recebem +10 minutos

UPDATE treino
SET duracao_min = duracao_min + 10
WHERE duracao_min < 50;
