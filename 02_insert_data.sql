USE instituto_jujutsu;

-- ============================================
-- INSERÇÃO DE INSTRUTORES
-- ============================================

INSERT INTO instrutor (nome, especializacao, grau_tecnico) VALUES
('Satoru Gojo', 'Manipulação de Energia Amaldiçoada', 'Grau Especial'),
('Kento Nanami', 'Combate Estratégico', 'Grau 1'),
('Maki Zenin', 'Armas Amaldiçoadas', 'Grau 2'),
('Utahime Iori', 'Suporte Tático', 'Grau 1'),
('Aoi Todo', 'Combate Corpo-a-Corpo', 'Grau 1');

-- ============================================
-- INSERÇÃO DE ALUNOS
-- ============================================

INSERT INTO aluno (nome, nivel, data_nascimento, contato, instrutor_responsavel_id) VALUES
('Yuji Itadori', '1º Ano', '2003-03-20', 'yuji@jujutsu.jp', 1),
('Megumi Fushiguro', '1º Ano', '2002-12-22', 'megumi@jujutsu.jp', 1),
('Nobara Kugisaki', '1º Ano', '2003-08-07', 'nobara@jujutsu.jp', 4),
('Panda', '2º Ano', '2000-05-02', 'panda@jujutsu.jp', 3),
('Toge Inumaki', '2º Ano', '2001-10-23', 'toge@jujutsu.jp', 3),
('Maki Zenin', '2º Ano', '2001-01-18', 'makialuna@jujutsu.jp', 3),
('Yuta Okkotsu', 'Especial', '2001-03-07', 'yuta@jujutsu.jp', 2),
('Mai Zenin', '2º Ano', '2001-07-02', 'mai@jujutsu.jp', 4),
('Kinji Hakari', '3º Ano', '2000-09-10', 'hakari@jujutsu.jp', 5),
('Kirara Hoshi', '3º Ano', '2000-11-25', 'kirara@jujutsu.jp', 5);

-- ============================================
-- INSERÇÃO DE MISSÕES
-- ============================================

INSERT INTO missao (titulo, local, grau_risco, data_inicio, data_fim, status, instrutor_id) VALUES
('Exorcismo na Escola Sugisawa', 'Sugisawa', 'Alto', '2024-01-05', '2024-01-05', 'Concluída', 1),
('Investigação no Bairro Shibuya', 'Shibuya', 'Extremo', '2024-02-10', NULL, 'Em andamento', 2),
('Controle de Maldição Classe 2', 'Kyoto', 'Médio', '2024-03-18', '2024-03-19', 'Concluída', 3),
('Proteção de Civil em Kyoto', 'Kyoto', 'Alto', '2024-04-01', NULL, 'Pendente', 4),
('Localização de Espírito Menor', 'Osaka', 'Baixo', '2024-04-22', '2024-04-22', 'Concluída', 5),
('Análise de Energia Concentrada', 'Tokyo', 'Médio', '2024-05-01', NULL, 'Em andamento', 1);

-- ============================================
-- INSERÇÃO DE RECURSOS
-- ============================================

INSERT INTO recurso (nome, tipo, nivel_risco, estado_disponibilidade, missao_id) VALUES
('Katana Amaldiçoada', 'Arma', 'Alto', 'Disponível', 1),
('Pergaminho de Selamento', 'Artefato', 'Médio', 'Em Uso', 2),
('Lança Cerimonial', 'Arma', 'Baixo', 'Disponível', 3),
('Amuleto Absorvedor', 'Artefato', 'Alto', 'Em Reparos', 2),
('Arco Espiritual', 'Arma', 'Médio', 'Disponível', 5);

-- ============================================
-- INSERÇÃO DE RELATÓRIOS
-- ============================================

INSERT INTO relatorio (missao_id, autor_id, data, documento_pdf) VALUES
(1, 1, '2024-01-05', 'relatorio_sugisawa.pdf'),
(3, 4, '2024-03-19', 'relatorio_kyoto.pdf'),
(5, 3, '2024-04-22', 'relatorio_osaka.pdf'),
(1, 2, '2024-01-05', 'relatorio_itadori.pdf'),
(3, 6, '2024-03-19', 'relatorio_maki.pdf');

-- ============================================
-- INSERÇÃO DE TREINOS
-- ============================================

INSERT INTO treino (aluno_id, instrutor_id, data, duracao_min) VALUES
(1, 1, '2024-01-10', 60),
(2, 1, '2024-01-10', 45),
(3, 4, '2024-01-11', 30),
(4, 3, '2024-01-12', 50),
(7, 2, '2024-01-15', 70),
(9, 5, '2024-01-17', 40);

-- ============================================
-- INSERÇÃO DE REGISTROS DE ENERGIA
-- ============================================

INSERT INTO registro_energia (treino_id, energia_inicial, energia_final) VALUES
(1, 300, 150),
(2, 280, 120),
(3, 200, 80),
(4, 350, 250),
(5, 500, 300),
(6, 420, 200);
