USE instituto_jujutsu;

-- ============================================
-- 1) Lista todos os alunos e seus instrutores (JOIN)
-- ============================================

SELECT 
    aluno.nome AS aluno,
    aluno.nivel,
    instrutor.nome AS instrutor_responsavel
FROM aluno
INNER JOIN instrutor ON aluno.instrutor_responsavel_id = instrutor.instrutor_id
ORDER BY aluno.nome ASC;

-- ============================================
-- 2) Missões com detalhes do instrutor responsável
-- ============================================

SELECT 
    missao.titulo,
    missao.local,
    missao.grau_risco,
    missao.status,
    instrutor.nome AS instrutor
FROM missao
INNER JOIN instrutor ON missao.instrutor_id = instrutor.instrutor_id
WHERE missao.status != 'Concluída'
ORDER BY missao.grau_risco DESC;

-- ============================================
-- 3) Quantidade de relatórios por aluno (GROUP BY)
-- ============================================

SELECT 
    aluno.nome AS autor,
    COUNT(relatorio.relatorio_id) AS total_relatorios
FROM relatorio
INNER JOIN aluno ON relatorio.autor_id = aluno.aluno_id
GROUP BY aluno.nome
ORDER BY total_relatorios DESC;

-- ============================================
-- 4) Treinos detalhados com energia inicial e final (JOIN)
-- ============================================

SELECT 
    aluno.nome AS aluno,
    treino.data,
    treino.duracao_min,
    registro_energia.energia_inicial,
    registro_energia.energia_final
FROM treino
INNER JOIN aluno ON treino.aluno_id = aluno.aluno_id
INNER JOIN registro_energia ON registro_energia.treino_id = treino.treino_id
ORDER BY treino.data ASC;

-- ============================================
-- 5) Missões de risco ALTO ou EXTREMO (com filtros e LIMIT)
-- ============================================

SELECT 
    titulo,
    local,
    grau_risco,
    status
FROM missao
WHERE grau_risco IN ('Alto', 'Extremo')
ORDER BY data_inicio DESC
LIMIT 3;
