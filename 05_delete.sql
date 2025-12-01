USE instituto_jujutsu;

-- ============================================
-- 1) Excluir um relatório específico
-- ============================================
-- Exemplo: remover um relatório enviado por Maki Zenin
-- relatorio_id = 5 (do arquivo de INSERT)

DELETE FROM relatorio
WHERE relatorio_id = 5;



-- ============================================
-- 2) Excluir um treino que tenha duração curta
-- ============================================
-- Treinos menores que 40 minutos serão removidos
-- (neste caso o treino_id 3 se aplica)

DELETE FROM treino
WHERE duracao_min < 40;



-- ============================================
-- 3) Excluir recurso que está marcado como "Em Reparos"
-- ============================================
-- No dataset, o amuleto absorvedor está "Em Reparos"

DELETE FROM recurso
WHERE estado_disponibilidade = 'Em Reparos';
