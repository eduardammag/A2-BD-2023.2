SELECT 
    cliente.nome,
    pedido.preco AS "preço pedido"
FROM pedido
INNER JOIN cliente ON pedido.idcliente = cliente.idcliente
ORDER BY pedido.preco DESC;


SELECT
    idcliente,
    saldo,
    RANK() OVER (ORDER BY saldo DESC) AS ranking
FROM cliente
ORDER BY saldo DESC;


SELECT c.*
FROM cliente c
JOIN pedido p ON c.idcliente = p.idcliente
WHERE p.tipodepagamento = 'Debito';