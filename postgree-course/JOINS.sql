--left outer join = o que está na tabela da esquerda e na intersecção
--inner join = o que está na intersecção
--right outer join = o que está na tabela da direita e na internsecção

-- left outer join 
SELECT 
	cln.nome as cliente,
	prf.nome as profissao
FROM 
	clientes as cln
left outer join -- Clientes que possuem relacionamento com profissao 
	profissao as prf on cln.idprofissao = prf.idprofissao
	
--RIGHT OUTER JOIN	
SELECT 
	cln.nome as cliente,
	prf.nome as profissao
FROM 
	clientes as cln
RIGHT OUTER JOIN -- profissões que possuem relacionamento com clientes
	profissao as prf on cln.idprofissao = prf.idprofissao	

--INNER JOIN	
SELECT 
	cln.nome as cliente,
	prf.nome as profissao
FROM 
	clientes as cln
inner join -- retorna somente o que está nas duas tabelas (há relaciionamento)
	profissao as prf on cln.idprofissao = prf.idprofissao
	
