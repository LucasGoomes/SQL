SELECT
	nome,
	coalesce(EXTRACT(MONTH FROM data_nascimento), 0)
FROM clientes

SELECT 
	nome,
	CASE EXTRACT(MONTH FROM data_nascimento)
		when 1 then 'Janeiro'
		when 2 then 'Fevereiro'
		when 3 then 'Março'
		when 4 then 'Abril'
		when 5 then 'Maio'
		when 6 then 'Junho'
		when 7 then 'Julho'
		when 8 then 'Agosto'
		when 9 then 'Setembro'
		when 10 then 'Outubro'
		when 11 then 'Novembro'
		when 12 then 'Dezembro'
	ELSE
		'Não informado'
	END AS mes
FROM clientes

SELECT 
	nome,
	coalesce(EXTRACT(YEAR FROM data_nascimento), 0)
FROM clientes

SELECT 
	nome,
	substring(NOME from 5 for 10)
FROM municipio

SELECT 
	nome,
	upper(NOME)
FROM municipio

SELECT
	nome,
	CASE genero
		WHEN 'M' THEN 'Masculino'
		WHEN 'F' THEN 'Feminino'
	END AS genero
FROM clientes

SELECT 
	nome,
	CASE
		WHEN valor > 500 THEN 'Acima de 500'
	ELSE
		'Abaixo ou igual a 500'
	END AS Faixa
FROM produto