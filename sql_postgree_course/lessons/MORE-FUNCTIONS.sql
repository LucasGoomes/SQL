SELECT data_pedido, 
	EXTRACT(DAY FROM data_pedido) as Dia,
	EXTRACT(MONTH FROM data_pedido) as mes,
	EXTRACT(YEAR FROM data_pedido) as ano
FROM pedido;
	
SELECT nome, SUBSTRING(nome FROM 1 FOR 5) 
FROM clientes;

SELECT nome, UPPER(nome)
FROM clientes;

SELECT nome, cpf, coalesce(cpf, 'Não informado')
FROM clientes;

SELECT 
	CASE sigla
		WHEN 'PR' THEN 'Paraná'
		WHEN 'SC' THEN 'Santa Catarina'
	ELSE 'Outros'
	END as uf
FROM uf