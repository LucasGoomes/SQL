SELECT
	data_pedido,
	valor
FROM pedido
WHERE
	valor > (SELECT AVG(valor) FROM pedido)
	
SELECT 
	pdd.data_pedido,
	pdd.valor,
	(SELECT SUM(quantidade) FROM pedido_produto pdp WHERE pdp.idpedido = pdd.idpedido) AS total
FROM pedido pdd