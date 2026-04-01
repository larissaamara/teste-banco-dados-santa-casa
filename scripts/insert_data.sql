Inserir cliente
INSERT INTO clientes (nome, email) VALUES ('João Silva', 'joao@email.com');
INSERT INTO clientes (nome, email) VALUES ('Carlos Souza', 'carlos@email.com');
INSERT INTO clientes (nome, email) VALUES ('Maria Oliveira', 'maria@email.com');
INSERT INTO clientes (nome, email) VALUES ('Ana Lima', 'ana@email.com');
INSERT INTO clientes (nome, email) VALUES ('Pedro Santos', 'pedro@email.com');

Inserir produto
INSERT INTO produtos (nome, preco, estoque) VALUES ('Notebook', 3500.00, 10);
INSERT INTO produtos (nome, preco, estoque) VALUES ('Mouse', 120.00, 50);
INSERT INTO produtos (nome, preco, estoque) VALUES ('Teclado', 250.00, 30);
INSERT INTO produtos (nome, preco, estoque) VALUES ('Monitor', 900.00, 20);
INSERT INTO produtos (nome, preco, estoque) VALUES ('Headset', 300.00, 15);

Criar venda
INSERT INTO vendas (cliente_id, total) VALUES (1, 3500.00);
INSERT INTO vendas (cliente_id, total) VALUES (2, 490.00);
INSERT INTO vendas (cliente_id, total) VALUES (3, 250.00);
INSERT INTO vendas (cliente_id, total) VALUES (4, 1320.00);
INSERT INTO vendas (cliente_id, total) VALUES (5, 500.00);

Inserir item da venda
INSERT INTO itens_venda (venda_id, produto_id, quantidade, preco_unitario, subtotal)
VALUES (1, 1, 1, 3500.00, 3500.00);

INSERT INTO itens_venda (venda_id, produto_id, quantidade, preco_unitario, subtotal)
VALUES (2, 2, 2, 120.00, 240.00);

INSERT INTO itens_venda (venda_id, produto_id, quantidade, preco_unitario, subtotal)
VALUES (2, 3, 1, 250.00, 250.00);

INSERT INTO itens_venda (venda_id, produto_id, quantidade, preco_unitario, subtotal)
VALUES (3, 4, 1, 900.00, 900.00);

INSERT INTO itens_venda (venda_id, produto_id, quantidade, preco_unitario, subtotal)
VALUES (4, 2, 1, 120.00, 120.00);

INSERT INTO itens_venda (venda_id, produto_id, quantidade, preco_unitario, subtotal)
VALUES (4, 5, 1, 300.00, 300.00);
