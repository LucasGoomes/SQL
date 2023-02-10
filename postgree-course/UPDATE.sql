SELECT * FROM clientes

UPDATE clientes
SET nome = 'Adriano', genero = 'M', numero = '41'
WHERE idcliente = 4


UPDATE clientes
SET cpf = '15484968', rg = '231123', data_nascimento = '2001-05-06'
WHERE idcliente = 7

UPDATE clientes
SET cpf = '84546987', rg = '1234422', data_nascimento = '1998-05-08'
WHERE idcliente = 9

-- foreign key profissoes
UPDATE clientes SET idprofissao = 1 WHERE idcliente in (1,9,10,12,15,17);
UPDATE clientes SET idprofissao = 2 WHERE idcliente in (2);
UPDATE clientes SET idprofissao = 3 WHERE idcliente in (3);
UPDATE clientes SET idprofissao = 4 WHERE idcliente in (4,5);
UPDATE clientes SET idprofissao = 5 WHERE idcliente in (6,7,8,13);

-- foreign key nacionalidades
UPDATE clientes SET idnacionalidade = 1 WHERE idcliente in (1,2,3,4,6,10,11,14);
UPDATE clientes SET idnacionalidade = 2 WHERE idcliente in (5,7);
UPDATE clientes SET idnacionalidade = 3 WHERE idcliente in (8);
UPDATE clientes SET idnacionalidade = 4 WHERE idcliente in (9,13);

--foreign key complementos
UPDATE clientes SET idcomplemento = 1 WHERE idcliente in (1,4,9,13);
UPDATE clientes SET idcomplemento = 2 WHERE idcliente in (2,3,7);


--foreign key bairros
UPDATE clientes SET idbairro = 1 WHERE idcliente in (1,12,13);
UPDATE clientes SET idbairro = 2 WHERE idcliente in (2,3,6,8,9);
UPDATE clientes SET idbairro = 3 WHERE idcliente in (4,5);
UPDATE clientes SET idbairro = 4 WHERE idcliente in (7);


--FOREIGN KEY MUNICIPIOS
ALTER TABLE clientes DROP municipio
UPDATE clientes SET idmunicipio = 1 WHERE idcliente in (1,2,10,11);
UPDATE clientes SET idmunicipio = 2 WHERE idcliente in (3,12);
UPDATE clientes SET idmunicipio = 3 WHERE idcliente in (4);
UPDATE clientes SET idmunicipio = 4 WHERE idcliente in (5);
UPDATE clientes SET idmunicipio = 5 WHERE idcliente in (6,13);
UPDATE clientes SET idmunicipio = 6 WHERE idcliente in (7);
UPDATE clientes SET idmunicipio = 7 WHERE idcliente in (8);
UPDATE clientes SET idmunicipio = 8 WHERE idcliente in (9);
UPDATE clientes SET idmunicipio = 9 WHERE idcliente in (14,15);



































