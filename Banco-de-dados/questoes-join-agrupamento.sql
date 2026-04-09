-- ============================================
-- EXERCÍCIO DE SQL - JOINS E AGRUPAMENTO
-- ============================================
-- Contexto:
-- Este código foi feito como atividade do curso técnico.
-- Na época, eu não utilizei um banco de dados real, mas sim
-- uma estrutura de tabelas proposta pelo professor para praticar consultas.
--
-- O foco do exercício era treinar:
-- - INNER JOIN
-- - RIGHT JOIN
-- - GROUP BY
--
-- Estou documentando este material agora porque percebi o valor
-- de registrar até exercícios simples. Muitas vezes, algo que parecia
-- básico no passado vira referência de estudo no futuro.
--
-- Observação importante:
-- Algumas consultas abaixo podem conter problemas de sintaxe,
-- alias mal definidos ou inconsistências de modelagem.
-- Em vez de apagar isso, decidi manter e comentar, porque também faz
-- parte do processo de aprendizagem identificar erros antigos
-- e entender como corrigi-los.

-- ============================================
-- QUESTÃO 1
-- ============================================
-- Objetivo:
-- Relacionar o nome do aluno, sua série e o professor da turma.
--
-- Intenção:
-- Fazer um INNER JOIN entre as tabelas "Alunos" e "Turmas",
-- usando a coluna "Série" como chave de relação.
--
-- Problema identificado:
-- O alias "a" foi usado no SELECT, mas não foi declarado no FROM.
-- O mesmo vale para "t", que também precisa ser declarado.
--
-- Versão original:
SELECT a.Nome do Aluno, a.Série, t.Professor
FROM Alunos
INNER JOIN Turmas ON a.Série = t.Série;

-- O que eu corrigiria hoje:
-- FROM Alunos a
-- INNER JOIN Turmas t ON a.Série = t.Série


-- ============================================
-- QUESTÃO 3
-- ============================================
-- Observação:
-- A questão 2 foi desconsiderada porque, segundo o professor,
-- estava mal formulada.
--
-- Objetivo:
-- Exibir informações da turma e do aluno, incluindo alunos
-- que não possuam turma associada.
--
-- Intenção:
-- Usar RIGHT JOIN para retornar todos os registros da tabela
-- "Alunos", mesmo quando não houver correspondência em "Turmas".
--
-- Problema identificado:
-- A condição "ON Série = Série" está incorreta, porque compara
-- a coluna com ela mesma, gerando ambiguidade.
-- O ideal seria comparar explicitamente as colunas das duas tabelas.
--
-- Versão original:
SELECT ID Turma, Série, Professor, Nome do Aluno
FROM Turmas
RIGHT JOIN Alunos ON Série = Série;

-- O que eu corrigiria hoje:
-- FROM Turmas t
-- RIGHT JOIN Alunos a ON t.Série = a.Série
--
-- Também seria melhor qualificar todas as colunas no SELECT
-- para evitar ambiguidade.


-- ============================================
-- QUESTÃO 4
-- ============================================
-- Objetivo:
-- Mostrar alunos com nota média acima de 8, junto com a série
-- e o professor responsável pela turma.
--
-- Intenção:
-- Filtrar os alunos com melhor desempenho e relacioná-los
-- com suas respectivas turmas por meio de INNER JOIN.
--
-- Problema identificado:
-- O alias "a" foi usado no SELECT e no WHERE, mas não foi
-- declarado corretamente no FROM.
--
-- Versão original:
SELECT a.Nome do Aluno, a.Nota Media, a.Série, t.Professor
FROM Alunos
INNER JOIN Turmas t ON a.Série = t.Série
WHERE a.Nota Media > 8;

-- O que eu corrigiria hoje:
-- FROM Alunos a
-- INNER JOIN Turmas t ON a.Série = t.Série


-- ============================================
-- QUESTÃO 5
-- ============================================
-- Objetivo:
-- Contar quantos alunos estão associados a cada professor.
--
-- Intenção:
-- Fazer a junção entre alunos e turmas e, em seguida,
-- agrupar os resultados por professor usando GROUP BY.
--
-- Problemas identificados:
-- 1. O nome da tabela "Tabela de Alunos" parece inconsistente
--    em relação aos exemplos anteriores, onde foi usado "Alunos".
-- 2. A condição "ON Série = Série" volta a causar ambiguidade.
-- 3. O ideal seria declarar aliases para facilitar leitura e manutenção.
--
-- Versão original:
SELECT Professor, COUNT(Nome do Aluno) AS Quantidade de Alunos
FROM Tabela de Alunos
JOIN Turmas ON Série = Série
GROUP BY Professor;

-- O que eu corrigiria hoje:
-- FROM Alunos a
-- JOIN Turmas t ON a.Série = t.Série
-- GROUP BY t.Professor