SELECT idvendedor, AVG(valor)
FROM pedido
GROUP BY idvendedor HAVING SUM(valor) > 200

SELECT idvendedor, SUM(valor)
FROM pedido
GROUP BY idvendedor HAVING sum(valor) > 1500

SELECT idvendedor, SUM(valor)
FROM pedido 
GROUP BY idvendedor

SELECT COUNT(idmunicipio)
FROM municipio

SELECT COUNT(idmunicipio)
FROM municipio
WHERE iduf = 1 OR iduf = 2

SELECT iduf, count(idmunicipio)
FROM municipio
GROUP BY iduf

SELECT COUNT(idcliente)
FROM clientes
WHERE logradouro IS NOT NULL

SELECT count(idcliente), idmunicipio
FROM clientes
GROUP BY idmunicipio

SELECT COUNT(idfornecedor)
FROM fornecedor

SELECT COUNT(idproduto), idfornecedor
FROM produto
GROUP BY idfornecedor

SELECT AVG(valor)
FROM produto
WHERE idfornecedor = 1

SELECT SUM(valor)
FROM produto

--pulando 13 e 14

SELECT AVG(valor)
FROM produto

SELECT COUNT(idtransportadora)
FROM transportadora

