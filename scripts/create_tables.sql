Criar tabela de clientes
CREATE TABLE clientes (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    nome TEXT NOT NULL,
    email TEXT UNIQUE,
    telefone TEXT,
    data_cadastro DATETIME DEFAULT CURRENT_TIMESTAMP
);

 Criar tabela de produtos
CREATE TABLE produtos (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    nome TEXT NOT NULL,
    descricao TEXT,
    preco REAL NOT NULL,
    estoque INTEGER DEFAULT 0
);

 Criar tabela de vendas
CREATE TABLE vendas (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    cliente_id INTEGER,
    data_venda DATETIME DEFAULT CURRENT_TIMESTAMP,
    total REAL,
    FOREIGN KEY (cliente_id) REFERENCES clientes(id)
);

 Criar tabela de itens da venda
CREATE TABLE itens_venda (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    venda_id INTEGER,
    produto_id INTEGER,
    quantidade INTEGER NOT NULL,
    preco_unitario REAL NOT NULL,
    subtotal REAL,
    FOREIGN KEY (venda_id) REFERENCES vendas(id),
    FOREIGN KEY (produto_id) REFERENCES produtos(id)
);
