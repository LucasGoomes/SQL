SELECT * FROM clientes

--Criando a View
CREATE VIEW cliente_profissao as
	SELECT 
		cln.nome as Cliente,
		prf.nome as Profissao
	FROM clientes cln
	LEFT OUTER JOIN profissao prf
		ON cln.idprofissao = prf.idprofissao
	
--Retornando os dados da view
SELECT * FROM cliente_profissao

SELECT cliente 
FROM cliente_profissao 
WHERE profissao = 'Professor'