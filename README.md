# Desafio Técnico: Analista de Banco de Dados - Santa Casa

# Descrição do Projeto
Este repositório contém a solução completa para o desafio técnico de Analista de Banco de Dados Júnior. O foco do projeto foi a modelagem de um ecossistema de e-commerce e a demonstração de conhecimentos sólidos em SQL e bancos de dados relacionais (Oracle/SQLite).

# Tecnologias e Metodologia
Motor de Banco de Dados: SQLite3.

Modelagem Relacional: Estrutura normalizada (3ª Forma Normal) para garantir integridade e performance.

Padrões: Uso de aliases, tratamento de valores nulos e junções externas para relatórios analíticos.

# Estrutura do Repositório
Para facilitar a avaliação, o projeto foi dividido nos seguintes arquivos:

create_tables.sql: Script DDL contendo a criação das tabelas clientes, produtos, vendas e itens_venda.

inserir_dados.sql: Script DML com a massa de dados de teste.

queries.sql: Consulta analítica para o ranking de produtos mais vendidos.

respostas_teoricas.md: Documento contendo as resoluções das questões de múltipla escolha e conceitos sobre SQL/Oracle.

# Destaque da Solução Analítica
Na construção da query de vendas (queries.sql), optei pelo uso de LEFT JOIN em conjunto com a função COALESCE.

Motivação: Garantir que o relatório de "Produtos mais vendidos" apresente o catálogo completo, listando inclusive itens com zero vendas. Isso evita lacunas na análise de dados e fornece um panorama real do giro de estoque.

# Como Executar
Certifique-se de ter o SQLite3 instalado.

Execute os comandos na ordem:

Bash
sqlite3 santa_casa.db < create_tables.sql
sqlite3 santa_casa.db < inserir_dados.sql
sqlite3 santa_casa.db < queries.sql
