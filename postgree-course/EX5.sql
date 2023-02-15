SELECT * FROM clientes;
--1
SELECT 
	nome, 
	idmunicipio
FROM clientes
WHERE 
	idmunicipio = (SELECT idmunicipio FROM clientes WHERE nome = 'Manoel')
AND
	idcliente <> 1
--2
SELECT
	data_pedido,
	valor
FROM pedido
WHERE valor < (SELECT AVG(valor) FROM pedido)

--3
SELECT 
	pedido.data_pedido,
	pedido.valor,
	clientes.nome as cliente,
	vendedor.nome as vendedor
FROM pedido
LEFT OUTER JOIN clientes
	ON clientes.idcliente = pedido.idcliente
LEFT OUTER JOIN vendedor
	ON vendedor.idvendedor = pedido.idvendedor
WHERE 
	(SELECT SUM(quantidade) FROM pedido_produto pdp WHERE pdp.idpedido = pedido.idpedido) >=2
	
--4
SELECT 
	nome,
	idmunicipio
FROM clientes
WHERE 
	idmunicipio = (SELECT idmunicipio FROM transportadora WHERE idtransportadora=1)

--5
SELECT
	nome,
	idmunicipio
FROM clientes
WHERE idmunicipio in (SELECT DISTINCT(idmunicipio) FROM transportadora)

--7
SELECT
	nome,
	(SELECT COUNT(idpedido) FROM pedido WHERE pedido.idcliente = clientes.idcliente)
FROM clientes

--8
select
	cln.nome as cliente,
	count(pdd.idpedido) as total
from
	pedido pdd
left outer join
	clientes cln on pdd.idcliente = cln.idcliente
group by
	cln.nome