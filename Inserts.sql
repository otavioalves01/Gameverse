INSERT INTO categorias (id_categoria, nome) VALUES
(1, 'Ação'),
(2, 'Aventura'),
(3, 'RPG'),
(4, 'Esportes'),
(5, 'Corrida'),
(6, 'Simulação');


INSERT INTO jogos (id_jogo, titulo, preco, id_categoria) VALUES
(1, 'Elden Ring', 299.90, 3),
(2, 'FIFA 24', 349.90, 4),
(3, 'Gran Turismo 7', 279.90, 5),
(4, 'The Last of Us Part II', 199.90, 2),
(5, 'God of War: Ragnarok', 319.90, 1),
(6, 'Stardew Valley', 29.90, 6),
(7, 'Cyberpunk 2077', 149.90, 3),
(8, 'Minecraft', 99.90, 6),
(9, 'Hades', 89.90, 1),
(10, 'Forza Horizon 5', 299.90, 5);



INSERT INTO clientes (id_cliente, nome, email, data_cadastro) VALUES
(1, 'Carlos da Silva', 'carlos@gmail.com', '2023-01-15'),
(2, 'Fernanda Lima', 'fernanda@gmail.com', '2023-02-22'),
(3, 'João Pedro Rocha', 'joao_pedro@gmail.com', '2023-03-10'),
(4, 'Mariana Souza', 'mariana.souza@gmail.com', '2023-03-25'),
(5, 'Thiago Henrique', 'thiago.h@gmail.com', '2023-04-05');



INSERT INTO vendas (id_venda, id_cliente, data_venda) VALUES
(1, 1, '2023-04-10'),
(2, 2, '2023-04-12'),
(3, 3, '2023-04-15'),
(4, 1, '2023-04-20'),
(5, 4, '2023-05-01'),
(6, 5, '2023-05-02');



INSERT INTO itens_venda (id_item, id_venda, id_jogo, quantidade, preco_unitario) VALUES
(1, 1, 1, 1, 299.90),
(2, 1, 6, 1, 29.90),
(3, 2, 2, 1, 349.90),
(4, 3, 4, 1, 199.90),
(5, 4, 7, 1, 149.90),
(6, 4, 8, 2, 99.90),
(7, 5, 5, 1, 319.90),
(8, 5, 9, 1, 89.90),
(9, 6, 3, 1, 279.90),
(10, 6, 10, 1, 299.90);
