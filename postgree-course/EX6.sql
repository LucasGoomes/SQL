--1
CREATE VIEW clientes_dados as
	SELECT
		cln.nome,
		prf.nome as profissao,
		ncn.nome as nacionalidade,
		cmp.nome as complemento,
		mnc.nome as municipio,
		uf.nome as unidade_federacao,
		brr.nome as bairro,
		cln.cpf, 
		cln.rg,
		cln.data_nascimento,
		CASE cln.genero
			WHEN 'M' THEN 'Masculino'
			When 'F' THEN 'Feminimo'
		END AS Genero,
		cln.logradouro,
		cln.numero,
		cln.observacoes
	FROM clientes cln
	LEFT OUTER JOIN profissao prf
		ON prf.idprofissao = cln.idprofissao
	LEFt OUTER JOIN nacionalidade ncn
		ON ncn.idnacionalidade = cln.idnacionalidade
	LEFT OUTER JOIN complemento cmp
		ON cmp.idcomplemento = cln.idcomplemento
	LEFT OUTER JOIN municipio mnc
		ON mnc.idmunicipio = cln.idmunicipio
	LEFT OUTER JOIN uf
		ON uf.iduf = mnc.iduf
	LEFT OUTER JOIN bairro brr
		ON brr.idbairro = cln.idbairro

--2
CREATE VIEW municipio_uf as
	SELECT 
		municipio.nome,
		uf.nome as unidade_federacao,
		uf.sigla
	FROM municipio
	LEFT OUTER JOIN uf
		ON municipio.iduf = uf.iduf

--3
CREATE VIEW produto_datas as
	SELECT
		produto.nome as produto,
		produto.valor,
		fornecedor.nome as fornecedor
	FROM produto
	LEFT OUTER JOIN fornecedor
		ON fornecedor.idfornecedor = produto.idfornecedor
--4
CREATE VIEW transportadora_dados as
	SELECT
		trans.nome as transportadora,
		trans.logradouro,
		trans.numero,
		uf.nome,
		uf.sigla
	FROM transportadora trans
	LEFT OUTER JOIN municipio
		ON municipio.idmunicipio = trans.idmunicipio
	LEFT OUTER JOIN uf
		ON uf.iduf = municipio.iduf
--5
CREATE VIEW pedido_dados as
	SELECT
		pdd.data_pedido,
		pdd.valor,
		trans.nome as transportadora,
		cln.nome as cliente,
		vdr.nome as vendedor
	FROM pedido pdd
	LEFT OUTER JOIN transportadora trans
		ON trans.idtransportadora = pdd.idtransportadora
	LEFT OUTER JOIN clientes cln
		ON cln.idcliente = pdd.idcliente
	LEFT OUTER JOIN vendedor vdr
		ON vdr.idvendedor = pdd.idvendedor
--6
CREATE VIEW produto_dados as
	SELECT
		pdd.nome,
		pdt.quantidade,
		pdt.valor_unitario,
		pdd.valor
	FROM produto pdd
	LEFT OUTER JOIN pedido_produto pdt
		ON pdt.idpedido = pdd.idproduto