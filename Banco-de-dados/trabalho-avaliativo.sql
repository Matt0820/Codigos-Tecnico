-- ============================================
-- EXERCÍCIOS DE SQL - FILTRAGEM E ORDENAÇÃO
-- ============================================
-- Esta lista foca em operações básicas de consulta em SQL, incluindo:
-- - seleção de colunas (SELECT)
-- - filtragem de dados (WHERE)
-- - ordenação (ORDER BY)
-- - busca por padrões (LIKE)
-- - intervalos (BETWEEN)
-- - valores únicos (DISTINCT)
--
-- Diferente da lista anterior, estas consultas estão mais consistentes,
-- mostrando evolução no uso de condições e operadores.


-- 1. Liste o nome e o preço de todos os produtos.
-- Seleção direta de colunas específicas.
SELECT nome, preco
FROM produtos;


-- 2. Quais produtos são da categoria 'Roupas'?
-- Filtragem por valor textual exato.
SELECT nome
FROM produtos
WHERE categoria = 'Roupas';


-- 3. Mostre os produtos com preço maior que 100.
-- Uso de operador relacional para filtrar valores numéricos.
SELECT nome, preco
FROM produtos
WHERE preco > 100;


-- 4. Liste os produtos que possuem mais de 50 unidades em estoque.
-- Filtro numérico baseado em quantidade.
SELECT nome, estoque
FROM produtos
WHERE estoque > 50;


-- 5. Quais produtos pertencem à categoria 'Calçados'?
-- Outro exemplo de filtro por string.
SELECT nome
FROM produtos
WHERE categoria = 'Calçados';


-- 6. Mostre o nome e o estoque dos produtos com menos de 100 unidades.
-- Filtro com operador menor que.
SELECT nome, estoque
FROM produtos
WHERE estoque < 100;


-- 7. Liste todos os produtos em ordem alfabética pelo nome.
-- Ordenação padrão (ASC é implícito).
SELECT nome
FROM produtos
ORDER BY nome;


-- 8. Quais produtos custam entre 30 e 150 reais?
-- Uso de BETWEEN para intervalo inclusivo.
SELECT nome, preco
FROM produtos
WHERE preco BETWEEN 30 AND 150;


-- 9. Mostre os produtos com estoque igual a 200.
-- Filtro por igualdade.
SELECT nome, estoque
FROM produtos
WHERE estoque = 200;


-- 10. Liste os nomes de todos os produtos e suas respectivas categorias.
-- Seleção de múltiplas colunas relacionadas.
SELECT nome, categoria
FROM produtos;


-- 11. Quais produtos têm nomes que começam com a letra 'C'?
-- Uso de LIKE com wildcard (%) para buscar padrão inicial.
SELECT nome
FROM produtos
WHERE nome LIKE 'C%';


-- 12. Mostre os produtos da categoria 'Acessórios' com preço abaixo de 50.
-- Combinação de múltiplas condições com AND.
SELECT nome, preco
FROM produtos
WHERE categoria = 'Acessórios'
AND preco < 50;


-- 13. Liste todos os produtos ordenados pelo preço, do maior para o menor.
-- Ordenação decrescente com DESC.
SELECT nome, preco
FROM produtos
ORDER BY preco DESC;


-- 14. Mostre apenas os nomes distintos das categorias disponíveis.
-- DISTINCT para eliminar duplicatas.
SELECT DISTINCT categoria
FROM produtos;


-- 15. Quais produtos têm o nome com mais de 5 caracteres?
-- Uso de função para análise de tamanho de string.
-- (Observação: dependendo do banco, LENGTH pode variar para LEN)
SELECT nome
FROM produtos
WHERE LENGTH(nome) > 5;