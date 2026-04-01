# Desafio Técnico: E-commerce SQL

Descrição do Projeto
Este projeto foi desenvolvido como parte de um desafio técnico para a vaga de **Analista de Banco de Dados**. O objetivo foi modelar e estruturar um banco de dados relacional para um cenário de e-commerce, focando na integridade dos dados e na extração de insights (relatório de produtos mais vendidos).

# Tecnologias Utilizadas
* **Motor:** SQLite3 (devido à sua portabilidade e conformidade com padrões SQL).
* **Conceitos:** Modelagem Relacional, Normalização (3ª FN), Joins e Funções de Agregação.


# Modelagem do Banco
O banco foi estruturado para garantir a **3ª Forma Normal**, separando as entidades para evitar redundância e inconsistências:

* **clientes:** Cadastro e identificação dos usuários.
* **produtos:** Catálogo de itens e controle de estoque.
* **vendas:** Cabeçalho das transações (data, cliente e total).
* **itens_venda:** Tabela associativa para detalhamento dos produtos em cada venda, permitindo múltiplos itens por pedido.

# Relatório de Vendas
Para a extração do relatório de **"Produtos mais vendidos"**, a query foi desenhada utilizando:

* **LEFT JOIN:** Para garantir a inclusão de todos os produtos do catálogo, inclusive aqueles que ainda não possuem vendas registradas.
* **COALESCE:** Para converter valores nulos em `0`, garantindo um relatório limpo e pronto para análise de BI.
* **SUM e GROUP BY:** Para agregação precisa do volume total de itens vendidos por produto.

 # Como Executar
1. Certifique-se de ter o **SQLite3** instalado.
2. Execute o script `create_tables.sql` para criar a estrutura das tabelas (DDL).
3. Execute o script `inserir_dados.sql` para popular as tabelas com os dados de teste (DML).
4. Rode a consulta de análise disponível no arquivo `queries.sql`.
2. Execute o script `create_tables.sql` para criar a estrutura das tabelas (DDL).
3. Execute o script `inserir_dados.sql` para popular as tabelas com os dados de teste (DML).
4. Rode a consulta de análise disponível no arquivo `queries.sql`.
