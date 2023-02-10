--CLIENTES
insert into clientes (idcliente, nome, cpf, rg, data_nascimento, genero, profissao, nacionalidade, logradouro, numero, complemento, bairro, municipio, uf)
values (1, 'Manoel', '88828383821', '32323', '2001-01-30', 'M', 'Estudante', 'Brasileiro', 'R. Joaquim', '23', 'Casa', 'Cidade', 'Uniao', 'SC');

insert into clientes (idcliente, nome, cpf, rg, data_nascimento, genero, profissao, nacionalidade, logradouro, numero, complemento, bairro, municipio, uf)
values (2, 'Geraldo', '1236454878', '56565', '2005-04-05', 'M', 'Engenheiro', 'Brasileiro', 'R. das Limas', '23', 'Ap', 'Centro', 'Poro Uniao', 'SC');


insert into clientes (idcliente, nome, cpf, rg, data_nascimento, genero, profissao, nacionalidade, logradouro, numero, complemento, bairro, municipio, uf)
values (3, 'Carlos', '87732323227', '55463', '1967-10-01', 'M', 'Pedreiro', 'Brasileiro', 'R. das Laranjeiras', '300', 'Ap', 'Cto', 'Canoinhas', 'SC');

insert into clientes (idcliente, nome, cpf, rg, data_nascimento, genero, profissao, nacionalidade, logradouro, numero, complemento, bairro, municipio, uf)
values (4, 'Adriana', '12321222122', '98777', '1989-09-10', 'F', 'Jornalista', 'Brasileiro', 'R. das Limas', '240', 'Casa', 'São Pedro', 'Porto Vitoria', 'PR');

insert into clientes (idcliente, nome, cpf, rg, data_nascimento, genero, profissao, nacionalidade, logradouro, numero, bairro, municipio, uf)
values (5, 'Amanda', '99982838828', '28382', '1991-03-04', 'F', 'Jorn', 'Brasileiro', 'AV. Central', '100', 'São Pedro', 'General Carneiro', 'PR');

insert into clientes (idcliente, nome, cpf, rg, data_nascimento, genero, profissao, nacionalidade, logradouro, numero, bairro, municipio, uf)
values (6, 'Angelo', '99982828181', '12323', '2000-01-01', 'M', 'Professor', 'Brasileiro', 'Av. Beira Mar', '300', 'Ctr', 'Sao Paulo', 'SP');

insert into clientes (idcliente, nome, genero, profissao, nacionalidade, logradouro, numero, complemento, bairro, municipio, uf)
values (7, 'Anderson', 'M', 'Prof', 'Italiano', 'Av. Brasil', '100', 'Ap', 'Santa Rosa', 'Rio de Janeiro', 'SP');

insert into clientes (idcliente, nome, cpf, data_nascimento, genero, profissao, nacionalidade, logradouro, numero, bairro, municipio, uf)
values (8, 'Camila', '9998282828', '2001-10-10', 'F', 'Professora', 'Norte Americana', 'R. Central', '4333', 'Centro', 'Uberlancia', 'MG');

insert into clientes (idcliente, nome, genero, profissao, nacionalidade, logradouro, numero, complemento, bairro, municipio, uf)
values (9, 'Cristiano', 'M', 'Estudante', 'Alema', 'R. ddo Centro', '877', 'Casa', 'Centro', 'Porto Alegre', 'RS');

insert into clientes (idcliente, nome, cpf, rg, genero, profissao, nacionalidade, municipio, uf)
values (10, 'Fabricio', '8828282828', '32323', 'M', 'Estudante', 'Brasileiro','P U', 'SC');

insert into clientes (idcliente, nome, genero, nacionalidade,municipio, uf)
values (11, 'Fernanda','F', 'Brasileira', 'Porto Uniao', 'SC');

insert into clientes (idcliente, nome, cpf, rg, data_nascimento, genero, profissao,logradouro, numero, bairro, municipio, uf)
values (12, 'Gilmar', '88881818181', '888', '2000-02-10', 'M', 'Estud','R. das Laranjeiras', '200', 'C. Nova', 'Canoinhas', 'SC');

insert into clientes (idcliente, nome, cpf, rg,genero, profissao, nacionalidade, logradouro, numero, complemento, bairro, municipio, uf)
	values (13, 'Diego', '1010191919', '111939','M', 'Professor', 'Alemao', 'R. Central', '455', 'Casa', 'Cidade N.', 'São Paulo', 'SP');

insert into clientes (idcliente, nome, data_nascimento, genero, nacionalidade, municipio, uf)
values (14, 'Jeferson','1983-07-01', 'M', 'Brasileiro','Uniao da Vitória', 'PR');

insert into clientes (idcliente, nome, genero, profissao, municipio, uf)
values (15, 'Jessica','F', 'Estudante', 'Uniao da Vitoria', 'PR');

--PROFISSÕES
INSERT INTO profissao (idprofissao, nome)
VALUES (1, 'Estudante');
INSERT INTO profissao (idprofissao, nome)
VALUES (2, 'Engenheiro');
INSERT INTO profissao (idprofissao, nome)
VALUES (3, 'Pedreiro');
INSERT INTO profissao (idprofissao, nome)
VALUES (4, 'Jornalista');
INSERT INTO profissao (idprofissao, nome)
VALUES (5, 'Professor');

--NACIONALIDADE
INSERT INTO nacionalidade (idnacionalidade, nome)
VALUES (1, 'Brasileira');
INSERT INTO nacionalidade (idnacionalidade, nome)
VALUES (2, 'Italiana');
INSERT INTO nacionalidade (idnacionalidade, nome)
VALUES (3, 'Norte-Americana');
INSERT INTO nacionalidade (idnacionalidade, nome)
VALUES (4, 'Alemã');

--COMPLEMENTO
INSERT INTO COMPLEMENTO (idcomplemento, nome)
VALUES (1, 'Casa');

INSERT INTO COMPLEMENTO (idcomplemento, nome)
VALUES (2, 'Apartamento');

--BAIRRO
INSERT INTO bairro (idbairro, nome)
VALUES (1, 'Cidade Nova');
INSERT INTO bairro (idbairro, nome)
VALUES (2, 'Centro');
INSERT INTO bairro (idbairro, nome)
VALUES (3, 'São Pedro');
INSERT INTO bairro (idbairro, nome)
VALUES (4, 'Santa Rosa');


--UF
SELECT * FROM uf
insert into uf (iduf, nome, sigla)
VALUES (1, 'Santa Catarina', 'SC');
insert into uf (iduf, nome, sigla)
VALUES (2, 'Parana', 'PR');
insert into uf (iduf, nome, sigla)
VALUES (3, 'Sao Paulo', 'SP');
insert into uf (iduf, nome, sigla)
VALUES (4, 'Minas Gerais', 'MG');
insert into uf (iduf, nome, sigla)
VALUES (5, 'Rio Grande do Sul', 'rs');
insert into uf (iduf, nome, sigla)
VALUES (6, 'Rio de Janeiro', 'RJ');


--MUNICIPIOS
SELECT * FROM municipio
INSERT INTO municipio (idmunicipio, nome, iduf)
VALUES (1, 'Porto União', 1);
INSERT INTO municipio (idmunicipio, nome, iduf)
VALUES (2, 'Canoinhas', 1);
INSERT INTO municipio (idmunicipio, nome, iduf)
VALUES (3, 'Porto Vitoria', 2); 
INSERT INTO municipio (idmunicipio, nome, iduf)
VALUES (4, 'General Carneiro', 2); 
INSERT INTO municipio (idmunicipio, nome, iduf)
VALUES (5, 'São Paulo', 3); 
INSERT INTO municipio (idmunicipio, nome, iduf)
VALUES (6, 'Rio de Janeiro', 6); 
INSERT INTO municipio (idmunicipio, nome, iduf)
VALUES (7, 'Uberlandia', 4);
INSERT INTO municipio (idmunicipio, nome, iduf)
VALUES (8, 'Porto Alegre', 5);
INSERT INTO municipio (idmunicipio, nome, iduf)
VALUES (9, 'Uniao da Vitoria', 2);





