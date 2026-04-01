SELECT 
    produtos.id,
    produtos.nome,
    SUM(itens_venda.quantidade) total_vendido
FROM itens_venda
JOIN produtos ON produtos.id = itens_venda.produto_id
GROUP BY produtos.id, produtos.nome
ORDER BY total_vendido DESC;
