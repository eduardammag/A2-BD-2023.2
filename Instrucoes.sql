-- Esta consulta retorna informações sobre os pedidos, o nome do cliente, nome do motorista e preço do pedido.

SELECT 
    cliente.nome AS "nome cliente",
    motorista.nome AS "nome motorista",
    pedido.preco AS "preco pedido"
FROM pedido
INNER JOIN cliente ON pedido.idcliente = cliente.idcliente
INNER JOIN motorista ON pedido.idmotorista = motorista.idmotorista
ORDER BY pedido.preco DESC;

-- Esta consulta retorna informações sobre clientes, sendo elas o nome do cliente seu saldo e um ranking com base no saldo.
SELECT
    nome AS "nome cliente",
    saldo,
    RANK() OVER (ORDER BY saldo DESC) AS ranking
FROM cliente
ORDER BY saldo DESC;

-- Esta consulta retorna o valor total transacionado agrupado por estado a partir das viagens, considerando o local de destino para agrupar pelo estado.
SELECT 
    localidade.estado, 
    SUM(pedido.preco) AS "valor total transacionado"
FROM viagem
JOIN pedido ON viagem.idpedido = pedido.idpedido
JOIN localidade ON localidade.idlocal = viagem.idlocaldestino
GROUP BY localidade.estado
ORDER BY "valor total transacionado" DESC;

-- Esta consulta retorna o valor total rotacionado por motorista a partir dos pedidos.
SELECT
    motorista.nome AS "nome motorista",
    SUM(pedido.preco) AS "valor rotacionado total"
FROM pedido
INNER JOIN motorista ON pedido.idmotorista = motorista.idmotorista
GROUP BY motorista.idmotorista
ORDER BY "valor rotacionado total" DESC;