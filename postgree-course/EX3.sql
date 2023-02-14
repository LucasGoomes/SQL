--1
SELECT
	clientes.nome,
	profissao.nome as profissao,
	nacionalidade.nome as nacionalidade,
	logradouro,
	numero,
	complemento.nome as complemento,
	bairro.nome as bairro,
	municipio.nome as municipio,
	uf.nome as uf
FROM 
	clientes
LEFT OUTER JOIN profissao 
	ON profissao.idprofissao = clientes.idprofissao
LEFT OUTER JOIN nacionalidade 
	ON nacionalidade.idnacionalidade = clientes.idnacionalidade
LEFT OUTER JOIN complemento 
	ON complemento.idcomplemento = clientes.idcomplemento
LEFT OUTER JOIN bairro 
	ON bairro.idbairro = clientes.idbairro
LEFT OUTER JOIN municipio 
	ON municipio.idmunicipio = clientes.idmunicipio
LEFT OUTER JOIN uf 
	ON uf.iduf = municipio.iduf
	
--2
SELECT 
	produto.nome,
	produto.valor,
	fornecedor.nome AS fornecedor
FROM 
	produto
LEFT OUTER JOIN fornecedor
	ON fornecedor.idfornecedor = produto.idfornecedor
	
--3
SELECT
	transportadora.nome,
	municipio.nome as municipio
FROM 
	transportadora
LEFT OUTER JOIN municipio
	ON municipio.idmunicipio = transportadora.idmunicipio
	
--4
SELECT 
	data_pedido,
	valor,
	clientes.nome as nomeCliente,
	transportadora.nome as transportadora,
	vendedor.nome as vendedor
FROM 
	pedido
LEFT OUTER JOIN clientes
	ON clientes.idcliente = pedido.idcliente
LEFT OUTER JOIN transportadora
	ON transportadora.idtransportadora = pedido.idtransportadora
LEFT OUTER JOIN vendedor
	ON vendedor.idvendedor = pedido.idvendedor
	
--5
SELECT
	produto.nome,
	pedido_produto.quantidade,
	pedido_produto.valor_unitario
FROM 
	pedido_produto
LEFT OUTER JOIN produto
	ON produto.idproduto = pedido_produto.idproduto

--6
SELECT 
	clientes.nome,
	pedido.data_pedido
FROM clientes
INNER JOIN pedido
	ON pedido.idcliente = clientes.idcliente
	
--7
SELECT 
	clientes.nome,
	pedido.data_pedido
FROM clientes
LEFT OUTER JOIN pedido
	ON pedido.idcliente = clientes.idcliente
ORDER BY clientes.nome

--8
SELECT
	municipio.nome,
	count(idcliente)
FROM municipio
RIGHT OUTER JOIN clientes
	ON clientes.idmunicipio = municipio.idmunicipio
GROUP BY municipio.nome

--9
SELECT
	fornecedor.nome,
	COUNT(produto.idproduto)
FROM fornecedor
RIGHT OUTER JOIN produto
	ON produto.idfornecedor = fornecedor.idfornecedor
GROUP BY fornecedor.nome

--10
SELECT 
	clientes.nome,
	SUM(pedido.valor)
FROM clientes
INNER JOIN pedido
	ON pedido.idcliente = clientes.idcliente
GROUP BY clientes.nome

--11
SELECT
	vendedor.nome,
	SUM(pedido.valor)
FROM vendedor
INNER JOIN pedido
	ON pedido.idvendedor = vendedor.idvendedor
GROUP BY vendedor.nome

--12
SELECT
	transportadora.nome,
	SUM(pedido.valor)
FROM transportadora
INNER JOIN pedido
	ON pedido.idtransportadora = transportadora.idtransportadora
GROUP BY transportadora.nome

--13
SELECT
	clientes.nome,
	count(pedido.idpedido)
FROM clientes
INNER JOIN pedido
	ON pedido.idcliente = clientes.idcliente
GROUP BY clientes.nome

--14
SELECT
	produto.nome,
	count(pedido_produto.quantidade)
FROM produto
INNER JOIN pedido_produto
	ON pedido_produto.idproduto = produto.idproduto
GROUP BY produto.nome

--15
SELECT
	pedido.data_pedido,
	SUM(pedido_produto.quantidade)
FROM pedido
INNER JOIN pedido_produto
	ON pedido_produto.idpedido = pedido.idpedido
GROUP BY pedido.data_pedido

--16
SELECT
	pedido.data_pedido,
	count(pedido_produto.idpedido)
FROM pedido
INNER JOIN pedido_produto
	ON pedido_produto.idpedido = pedido.idpedido
GROUP BY pedido.data_pedido

















	
	
	
	
	
	
	