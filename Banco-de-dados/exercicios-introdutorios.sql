-- ============================================
-- LISTA DE EXERCÍCIOS BÁSICOS DE SQL
-- ============================================
-- Esta lista reúne exercícios introdutórios de SQL passados durante o curso técnico.
--
-- O foco aqui é praticar comandos básicos de consulta, como:
-- - SELECT
-- - WHERE
-- - ORDER BY
-- - DISTINCT
-- - LIMIT
-- - LIKE
-- - BETWEEN
--
-- Revisando esse material hoje, ele funciona como registro de base:
-- não é um projeto complexo, mas mostra prática com leitura de dados,
-- filtragem, ordenação e seleção de colunas.
--
-- Também mantive alguns exemplos com erros ou inconsistências para documentar
-- o processo de aprendizagem e identificar o que eu corrigiria hoje.


-- 1. Mostre todos os dados da tabela alunos.
-- Consulta básica usando SELECT * para retornar todas as colunas da tabela.
SELECT * FROM alunos;


-- 2. Liste apenas o nome dos alunos da tabela alunos.
-- Seleção simples de uma única coluna.
SELECT Nome FROM alunos;


-- 3. Liste o nome e a idade dos alunos.
-- Consulta retornando colunas específicas.
SELECT nome, idade FROM alunos;


-- 4. Mostre o nome dos alunos ordenados em ordem alfabética.
-- Aqui existe um problema de sintaxe: faltou informar a coluna no ORDER BY.
-- O correto seria algo como: ORDER BY nome ASC
SELECT nome FROM alunos ORDER BY ASC;


-- 5. Liste os nomes dos alunos com 18 anos.
-- Filtragem com WHERE usando igualdade.
SELECT nome FROM alunos WHERE idade = 18;


-- 6. Mostre apenas os diferentes cursos da tabela cursos.
-- Uso de DISTINCT para evitar repetição de valores.
SELECT DISTINCT curso FROM cursos;


-- 7. Mostre todos os dados da tabela professores.
-- Consulta completa da tabela.
SELECT * FROM professores;


-- 8. Liste os nomes dos professores que dão aula de Matemática.
-- Filtragem textual por valor exato.
SELECT nome FROM professores WHERE aula = 'Matemática';


-- 9. Liste os nomes dos cursos ordenados do mais novo para o mais antigo.
-- Ordenação decrescente com base na data de criação.
SELECT nome FROM cursos ORDER BY data_criacao DESC;


-- 10. Liste os 5 primeiros alunos da tabela alunos.
-- Uso de LIMIT para restringir quantidade de resultados.
SELECT * FROM alunos LIMIT 5;


-- 11. Mostre os nomes e as notas dos alunos com nota maior que 7.
-- Filtro numérico com operador relacional.
SELECT nome, nota FROM alunos WHERE nota > 7;


-- 12. Liste os alunos que têm o curso de “Informática”.
-- Seleção por valor textual exato.
SELECT nome FROM alunos WHERE curso = 'Informática';


-- 13. Liste apenas os nomes distintos das cidades dos alunos.
-- Apesar do enunciado mencionar "nomes", a consulta retorna cidades distintas.
-- A lógica da query faz sentido, mas o texto do exercício ficou confuso.
SELECT DISTINCT cidade FROM alunos;


-- 14. Liste os nomes dos alunos com idade entre 15 e 18 anos.
-- Aqui a consulta está incorreta.
-- BETWEEN já cobre um intervalo completo, então a sintaxe usada não funciona.
-- O correto seria: WHERE idade BETWEEN 15 AND 18
SELECT nome FROM alunos WHERE idade BETWEEN 15 AND idade < 18;


-- 15. Mostre todos os professores, ordenando por nome de forma decrescente.
-- Ordenação decrescente por nome.
SELECT * FROM professores ORDER BY nome DESC;


-- 16. Liste os nomes dos alunos que não são do curso de Administração.
-- Filtro por desigualdade.
SELECT nome FROM alunos WHERE curso != 'Administração';


-- 17. Mostre apenas os nomes dos cursos que foram criados em 2022.
-- Filtro por ano de criação.
SELECT nome FROM cursos WHERE ano_criacao = 2022;


-- 18. Liste os alunos que têm nota menor ou igual a 6.
-- Filtro numérico com condição composta por operador relacional.
SELECT nome FROM alunos WHERE nota <= 6;


-- 19. Liste os 10 alunos com maiores notas.
-- Ordenação decrescente por nota com limitação de resultados.
SELECT nome, nota FROM alunos ORDER BY nota DESC LIMIT 10;


-- 20. Mostre os nomes dos alunos que têm "Silva" no nome.
-- Aqui a intenção era buscar nomes contendo "Silva",
-- mas a consulta está incompleta para esse objetivo.
-- LIKE 'Silva' busca apenas o valor exato "Silva".
-- Para procurar ocorrências dentro do nome, o ideal seria usar %Silva%.
SELECT nome FROM alunos WHERE nome LIKE 'Silva';