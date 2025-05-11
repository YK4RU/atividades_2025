USE LOLJA;
CREATE TABLE vendas (
    id_venda INT PRIMARY KEY,
    cliente VARCHAR(100),
    cidade VARCHAR(100),
    produto VARCHAR(100),
    quantidade INT,
    preco_unitario DECIMAL(10,2),
    data_venda DATE
);
INSERT INTO vendas (id_venda, cliente, cidade, produto, quantidade, preco_unitario, data_venda) VALUES
(1, 'Ana', 'São Paulo', 'Camiseta', 2, 50.00, '2024-01-10'),
(2, 'Bruno', 'Rio de Janeiro', 'Calça', 1, 120.00, '2024-02-05'),
(3, 'Ana', 'São Paulo', 'Jaqueta', 1, 250.00, '2024-03-15'),
(4, 'Carla', 'Belo Horizonte', 'Camiseta', 3, 50.00, '2024-04-02'),
(5, 'Daniel', 'Fortaleza', 'Camiseta', 1, 50.00, '2024-04-20'),
(6, 'Bruno', 'Rio de Janeiro', 'Camiseta', 2, 50.00, '2024-05-01');

SELECT * FROM vendas;

SELECT DISTINCT cliente FROM vendas;

SELECT id_venda, data_venda FROM vendas
WHERE cidade = "São Paulo";

SELECT produto, data_venda FROM vendas
WHERE produto = "Camiseta"
ORDER BY produto, data_venda DESC;

SELECT produto, SUM(quantidade) AS total, AVG(preco_unitario) AS preço_medio
FROM vendas
GROUP BY produto;

SELECT COUNT(quantidade), produto FROM vendas
GROUP BY produto
HAVING COUNT(quantidade) > 3;

SELECT * FROM vendas
ORDER BY data_venda
LIMIT 3;

SELECT cliente, quantidade FROM vendas
where quantidade = 0;

SELECT cliente AS Nome_do_cliente, preco_unitario AS Preco_por_unidade FROM vendas;

