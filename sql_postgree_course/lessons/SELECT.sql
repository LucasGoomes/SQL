SELECT * FROM clientes;


SELECT nome, data_nascimento as "Data de Nascimento" 
FROM clientes;

SELECT 'CPF: ' || cpf || 'RG: ' || rg as "CPF e RG" 
FROM clientes --CONCATENAÇÃO;

SELECT nome, data_nascimento 
FROM clientes
WHERE data_nascimento > '2000-01-01';

SELECT nome
FROM clientes
WHERE nome like 'C%';

SELECT nome
FROM clientes
WHERE nome like '%c%';

SELECT nome, data_nascimento
FROM clientes
WHERE data_nascimento BETWEEN '1990-01-01' AND '1998-01-01';

SELECT nome, rg
FROM clientes
WHERE rg IS NULL;

SELECT nome 
FROM clientes
ORDER BY nome;

SELECT nome 
FROM clientes
ORDER BY nome DESC;