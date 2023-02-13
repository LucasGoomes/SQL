SELECT * FROM pedido

--retorna a média
SELECT avg(valor) FROM pedido

--Retorna o # de registros
SELECT count(idmunicipio) FROM municipio

-- retorno o valor minimo e o valor maximo
SELECT min(valor), max(valor) FROM pedido

--retorna o somatorio
SELECT SUM(valor) FROM PEDIDO

--AGRUPAMENTO
SELECT idcliente, SUM(valor) FROM pedido GROUP BY idcliente
--Condiçes c/ groupby usamos having
SELECT idcliente, SUM(valor) FROM pedido GROUP BY idcliente having sum(valor) > 500