-- ============================================
-- BANCO DE DADOS: Instituto Jujutsu de Tokyo
-- CREATE TABLES - MySQL
-- ============================================

DROP DATABASE IF EXISTS instituto_jujutsu;
CREATE DATABASE instituto_jujutsu;
USE instituto_jujutsu;

-- ===============================
-- TABELA: INSTRUTOR
-- ===============================
CREATE TABLE instrutor (
    instrutor_id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(80) NOT NULL,
    especializacao VARCHAR(50) NOT NULL,
    grau_tecnico VARCHAR(30) NOT NULL
);

-- ===============================
-- TABELA: ALUNO
-- ===============================
CREATE TABLE aluno (
    aluno_id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(80) NOT NULL,
    nivel VARCHAR(30) NOT NULL,
    data_nascimento DATE NOT NULL,
    contato VARCHAR(60),
    instrutor_responsavel_id INT NOT NULL,
    FOREIGN KEY (instrutor_responsavel_id) REFERENCES instrutor(instrutor_id)
);

-- ===============================
-- TABELA: MISSAO
-- ===============================
CREATE TABLE missao (
    missao_id INT AUTO_INCREMENT PRIMARY KEY,
    titulo VARCHAR(100) NOT NULL,
    local VARCHAR(80) NOT NULL,
    grau_risco VARCHAR(20) NOT NULL,
    data_inicio DATE NOT NULL,
    data_fim DATE,
    status VARCHAR(30) NOT NULL,
    instrutor_id INT NOT NULL,
    FOREIGN KEY (instrutor_id) REFERENCES instrutor(instrutor_id)
);

-- ===============================
-- TABELA: RECURSO
-- ===============================
CREATE TABLE recurso (
    recurso_id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(80) NOT NULL,
    tipo VARCHAR(40) NOT NULL,
    nivel_risco VARCHAR(20) NOT NULL,
    estado_disponibilidade VARCHAR(20) NOT NULL,
    missao_id INT NOT NULL,
    FOREIGN KEY (missao_id) REFERENCES missao(missao_id)
);

-- ===============================
-- TABELA: RELATORIO
-- ===============================
CREATE TABLE relatorio (
    relatorio_id INT AUTO_INCREMENT PRIMARY KEY,
    missao_id INT NOT NULL,
    autor_id INT NOT NULL,
    data DATE NOT NULL,
    documento_pdf VARCHAR(255) NOT NULL,
    FOREIGN KEY (missao_id) REFERENCES missao(missao_id),
    FOREIGN KEY (autor_id) REFERENCES aluno(aluno_id)
);

-- ===============================
-- TABELA: TREINO
-- ===============================
CREATE TABLE treino (
    treino_id INT AUTO_INCREMENT PRIMARY KEY,
    aluno_id INT NOT NULL,
    instrutor_id INT NOT NULL,
    data DATE NOT NULL,
    duracao_min INT NOT NULL,
    FOREIGN KEY (aluno_id) REFERENCES aluno(aluno_id),
    FOREIGN KEY (instrutor_id) REFERENCES instrutor(instrutor_id)
);

-- ===============================
-- TABELA: REGISTRO_ENERGIA
-- ===============================
CREATE TABLE registro_energia (
    reg_id INT AUTO_INCREMENT PRIMARY KEY,
    treino_id INT NOT NULL,
    energia_inicial INT NOT NULL,
    energia_final INT NOT NULL,
    FOREIGN KEY (treino_id) REFERENCES treino(treino_id)
);
