SELECT 
    p.id, 
    p.nome, 
    SUM(iv.quantidade) AS total_vendido
FROM produtos p
JOIN itens_venda iv ON p.id = iv.produto_id
GROUP BY p.id, p.nome
ORDER BY total_vendido DESC;
