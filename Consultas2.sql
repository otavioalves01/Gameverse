-- Seleciona todas as colunas da tabela jogos.
SELECT * from jogos;

-- Selecionar os títulos e preços dos jogos que custam menos de 100,00.
SELECT titulo, preco FROM jogos WHERE preco < 100;

-- Selecionar o título e preço de todos os jogos, ordenando do mais caro para o mais barato.
SELECT titulo, preco FROM jogos ORDER BY preco DESC;

-- Selecionar o título do jogo e o nome da categoria a que ele pertence.
SELECT j.titulo, c.nome FROM jogos j
JOIN categorias c ON c.id_categoria = j.id_categoria;

-- Selecionar o título e o nome da categoria, mas só dos jogos que custam menos de 150,00
SELECT j.titulo, c.nome FROM jogos j
JOIN categorias c ON c.id_categoria = j.id_categoria
WHERE j.preco < 150;

-- Contar quantos jogos existem em cada categoria
SELECT c.nome, COUNT(*) AS quantidade FROM categorias c 
JOIN jogos j ON j.id_categoria = c.id_categoria
GROUP BY c.nome;

-- Liste as categorias que têm mais de 2 jogos cadastrados
SELECT c.nome, COUNT(*) as quantidade_jogos FROM categorias c
JOIN jogos j ON j.id_categoria = c.id_categoria
GROUP BY c.nome
HAVING quantidade_jogos > 2;

-- Liste o nome do cliente e a quantidade total de jogos que ele comprou, ordenando do que comprou mais pro que comprou menos.
SELECT c.nome, SUM(iv.quantidade) as qtd_jogos FROM clientes c
JOIN vendas v ON v.id_cliente = c.id_cliente
JOIN itens_venda iv ON iv.id_venda = v.id_venda
GROUP BY c.nome
ORDER BY qtd_jogos DESC;

-- Liste os títulos dos jogos que custam entre 50 e 100
SELECT titulo, preco from jogos where preco BETWEEN 50 and 100;

-- Liste o título do jogo e o nome da categoria para os jogos que custam entre 50 e 100.
select j.titulo, c.nome FROM jogos j 
JOIN categorias c ON c.id_categoria = j.id_categoria
where j.preco between 50 and 100;

-- Mostre o nome de cada cliente e a quantidade total de vendas que ele realizou.
select c.nome, COUNT(*) as qtd FROM clientes c
join vendas v ON v.id_cliente = c.id_cliente
GROUP BY c.nome;

-- Mostre o nome dos clientes e a quantidade de compras que cada um fez, mas só daqueles que compraram mais de 1 vez.
select c.nome, count(*) as qtd from clientes c
join vendas v on v.id_cliente = c.id_cliente
GROUP BY c.nome
HAVING qtd > 1;