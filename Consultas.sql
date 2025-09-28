SELECT titulo, preco from jogos;

SELECT titulo, preco FROM jogos WHERE preco < 100;

select titulo, preco from jogos ORDER BY preco DESC;

select j.titulo, c.nome as categoria
FROM jogos j
JOIN categorias c ON c.id_categoria = j.id_categoria;

select j.titulo, c.nome
FROM jogos j
JOIN categorias c ON c.id_categoria = j.id_categoria
WHERE j.preco < 150;

select c.nome as categoria, COUNT(*) AS quantidade 
FROM jogos j 
JOIN categorias c ON c.id_categoria = j.id_categoria
GROUP BY c.nome;

select c.nome as nome_cliente, SUM(iv.preco_unitario * iv.quantidade) as total_gasto
FROM clientes c
JOIN vendas v ON v.id_cliente = c.id_cliente
JOIN itens_venda iv ON iv.id_venda = v.id_venda
GROUP BY c.nome;

select j.titulo as nome_jogo, SUM(iv.quantidade) as total_vendas
FROM jogos j 
JOIN itens_venda iv ON iv.id_jogo = j.id_jogo
GROUP BY j.titulo
ORDER BY total_vendas DESC
LIMIT 1;

SELECT titulo, preco FROM jogos
WHERE preco > (SELECT AVG(preco) FROM jogos);

select c.nome, v.data_venda
FROM clientes c 
JOIN vendas v ON v.id_cliente = c.id_cliente
ORDER BY v.data_venda DESC, c.nome ASC;

SELECT 
  c.nome AS nome_cliente,
  SUM(iv.preco_unitario * iv.quantidade) AS total_gasto,
  CASE 
    WHEN SUM(iv.preco_unitario * iv.quantidade) > 700 THEN 'Alto'
    WHEN SUM(iv.preco_unitario * iv.quantidade) BETWEEN 300 AND 700 THEN 'Médio'
    ELSE 'Baixo'
  END AS categoria_gasto
FROM clientes c
JOIN vendas v ON v.id_cliente = c.id_cliente
JOIN itens_venda iv ON iv.id_venda = v.id_venda
GROUP BY c.nome;

select c.nome, 
	   SUM(iv.preco_unitario * iv.quantidade) AS total_gasto,
       CASE
       	WHEN SUM(iv.preco_unitario * iv.quantidade) > 700 THEN 'Alto'
        WHEN SUM(iv.preco_unitario * iv.quantidade) BETWEEN 300 AND 700 THEN 'Médio'
        ELSE 'Baixo'
       END AS categoria_gasto
FROM clientes c
JOIN vendas v ON v.id_cliente = c.id_cliente
JOIN itens_venda iv ON iv.id_venda = v.id_venda
GROUP BY c.nome
ORDER BY
	CASE
    	WHEN SUM(iv.preco_unitario * iv.quantidade) > 700 THEN 1
        when SUM(iv.preco_unitario * iv.quantidade) BETWEEN 300 AND 700 THEN 2
        ELSE 3
	END;




