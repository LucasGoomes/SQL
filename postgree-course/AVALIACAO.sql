--2
CREATE TABLE editora(
	ideditora serial not null,
	nome varchar(50) not null,
	
	CONSTRAINT pk_ed_ideditora PRIMARY KEY (ideditora),
	CONSTRAINT un_ed_nome UNIQUE (nome)
);
--3
INSERT INTO editora(nome) VALUES ('Bookman');
INSERT INTO editora(nome) VALUES ('Edgard Blusher');
INSERT INTO editora(nome) VALUES ('Nova terra');
INSERT INTO editora(nome) VALUES ('Brasport');
--4
CREATE TABLE categoria(
	idcategoria serial not null,
	nome varchar(50) not null,
	
	CONSTRAINT pk_cat_idcategoria PRIMARY KEY (idcategoria),
	CONSTRAINT un_cat_nome UNIQUE (nome)
);
--5
INSERT INTO categoria(nome) VALUES ('Banco de Dados');
INSERT INTO categoria(nome) VALUES ('HTML');
INSERT INTO categoria(nome) VALUES ('Java');
INSERT INTO categoria(nome) VALUES ('php');
--6
CREATE TABLE autor(
	idautor serial not null,
	nome varchar(50) not null,
	
	CONSTRAINT pk_aut_idautor PRIMARY KEY (idautor)
);
--7 
INSERT INTO autor(nome) VALUES ('Waldemar Setzer');
INSERT INTO autor(nome) VALUES ('Flavio Soares');
INSERT INTO autor(nome) VALUES ('John Watson');
INSERT INTO autor(nome) VALUES ('Rui Rossi dos Santos');
INSERT INTO autor(nome) VALUES ('Antonio Pereira de Resende');
INSERT INTO autor(nome) VALUES ('Claudiney Calixto Lima');
INSERT INTO autor(nome) VALUES ('Evandro Carlos Teruel');
INSERT INTO autor(nome) VALUES ('Ian Graham');
INSERT INTO autor(nome) VALUES ('Fabricio Xavier');
INSERT INTO autor(nome) VALUES ('Pablo Dalloglio');
--8
CREATE TABLE livro(
	idlivro serial not null,
	ideditora integer not null,
	idcategoria integer not null,
	nome varchar(50) not null,
	
	CONSTRAINT pk_liv_idlivro PRIMARY KEY (idlivro),
	CONSTRAINT fk_liv_ideditora FOREIGN KEY (ideditora) REFERENCES editora(ideditora),
	CONSTRAINT fk_liv_idcategoria FOREIGN KEY (idcategoria) REFERENCES categoria(idcategoria),
	CONSTRAINT un_liv_nome UNIQUE (nome)
);
--9
INSERT INTO livro(ideditora, idcategoria,nome)
VALUES(
	(SELECT ideditora FROM editora WHERE nome='Edgard Blusher'),
	(SELECT idcategoria FROM categoria WHERE nome='Banco de Dados'),
	'Banco de dados - 1 Edição'
);
INSERT INTO livro(ideditora, idcategoria,nome)
VALUES(
	(SELECT ideditora FROM editora WHERE nome='Bookman'),
	(SELECT idcategoria FROM categoria WHERE nome='Banco de Dados'),
	'Oracle DataBase 11G Administração'
);
INSERT INTO livro(ideditora, idcategoria,nome)
VALUES(
	(SELECT ideditora FROM editora WHERE nome='Nova terra'),
	(SELECT idcategoria FROM categoria WHERE nome='Java'),
	'Programação de Computadores em Java'
);
INSERT INTO livro(ideditora, idcategoria,nome)
VALUES(
	(SELECT ideditora FROM editora WHERE nome='Brasport'),
	(SELECT idcategoria FROM categoria WHERE nome='Java'),
	'Programação Orientada a Aspectos em Java'
);
INSERT INTO livro(ideditora, idcategoria,nome)
VALUES(
	(SELECT ideditora FROM editora WHERE nome='Nova terra'),
	(SELECT idcategoria FROM categoria WHERE nome='HTML'),
	'XHTML: Guia de Referência para Desenvolvimento'
);
INSERT INTO livro(ideditora, idcategoria,nome)
VALUES(
	(SELECT ideditora FROM editora WHERE nome='Bookman'),
	(SELECT idcategoria FROM categoria WHERE nome='php'),
	'PHP para Desenvolvimento Profissional'
);
INSERT INTO livro(ideditora, idcategoria,nome)
VALUES(
	(SELECT ideditora FROM editora WHERE nome='Edgard Blusher'),
	(SELECT idcategoria FROM categoria WHERE nome='php'),
	'PHP com Programação Orientada a Objetos'
);
INSERT INTO livro(ideditora, idcategoria, nome)
VALUES(
	(SELECT ideditora FROM editora WHERE nome='Brasport'),
	(SELECT idcategoria FROM categoria WHERE nome='HTML'),
	'HTML5 – Guia Prático'
);
--10
CREATE TABLE livro_autor(
	idlivro integer not null,
	idautor integer not null,
	
	CONSTRAINT pk_la_idlivroautor PRIMARY KEY (idlivro, idautor),
	CONSTRAINT fk_la_idlivro FOREIGN KEY (idlivro) REFERENCES livro(idlivro),
	CONSTRAINT fk_la_idautor FOREIGN KEY (idautor) REFERENCES autor(idautor)
);
--11
INSERT INTO livro_autor(idlivro, idautor)
VALUES(
	(SELECT idlivro from livro WHERE nome='Banco de dados - 1 Edição'),
	(SELECT idautor from autor WHERE nome='Waldemar Setzer')
);
INSERT INTO livro_autor(idlivro, idautor)
VALUES(
	(SELECT idlivro from livro WHERE nome='Banco de dados - 1 Edição'),
	(SELECT idautor from autor WHERE nome='Flavio Soares')
);
INSERT INTO livro_autor(idlivro, idautor)
VALUES(
	(SELECT idlivro from livro WHERE nome='Oracle DataBase 11G Administração'),
	(SELECT idautor from autor WHERE nome='John Watson')
);
INSERT INTO livro_autor(idlivro, idautor)
VALUES(
	(SELECT idlivro from livro WHERE nome='Programação de Computadores em Java'),
	(SELECT idautor from autor WHERE nome='Rui Rossi dos Santos')
);
INSERT INTO livro_autor(idlivro, idautor)
VALUES(
	(SELECT idlivro from livro WHERE nome='Programação Orientada a Aspectos em Java'),
	(SELECT idautor from autor WHERE nome='Rui Rossi dos Santos')
);
INSERT INTO livro_autor(idlivro, idautor)
VALUES(
	(SELECT idlivro from livro WHERE nome='Programação de Computadores em Java'),
	(SELECT idautor from autor WHERE nome='Antonio Pereira de Resende')
);
INSERT INTO livro_autor(idlivro, idautor)
VALUES(
	(SELECT idlivro from livro WHERE nome='Programação Orientada a Aspectos em Java'),
	(SELECT idautor from autor WHERE nome='Claudiney Calixto Lima')
);
INSERT INTO livro_autor(idlivro, idautor)
VALUES(
	(SELECT idlivro from livro WHERE nome='XHTML: Guia de Referência para Desenvolvimento'),
	(SELECT idautor from autor WHERE nome='Ian Graham')
);
INSERT INTO livro_autor(idlivro, idautor)
VALUES(
	(SELECT idlivro from livro WHERE nome='PHP para Desenvolvimento Profissional'),
	(SELECT idautor from autor WHERE nome='Fabricio Xavier')
);
INSERT INTO livro_autor(idlivro, idautor)
VALUES(
	(SELECT idlivro from livro WHERE nome='PHP com Programação Orientada a Objetos'),
	(SELECT idautor from autor WHERE nome='Pablo Dalloglio')
);
--12
CREATE TABLE aluno(
	idaluno serial not null,
	nome varchar(50) not null,
	
	CONSTRAINT pf_alun_idaluno PRIMARY KEY (idaluno)
);
--13
INSERT INTO aluno(nome) VALUES ('Mario');
INSERT INTO aluno(nome) VALUES ('João');
INSERT INTO aluno(nome) VALUES ('Paulo');
INSERT INTO aluno(nome) VALUES ('Pedro');
INSERT INTO aluno(nome) VALUES ('Maria');
--14
CREATE TABLE emprestimo(
	idemprestimo serial not null,
	idaluno integer not null,
	data_emprestimo date not null default current_date,
	data_devolucao date not null,
	valor float not null default 0,
	devolvido char(1) not null,
	
	CONSTRAINT pk_empr_idemprestimo PRIMARY KEY (idemprestimo),
	CONSTRAINT fk_empr_idaluno FOREIGN KEY (idaluno) REFERENCES aluno(idaluno)
);
--15
INSERT INTO emprestimo(idaluno, data_emprestimo, data_devolucao, valor, devolvido)
VALUES((select idaluno from aluno where nome='Mario'), '2012-05-02', '2012-05-12', 10, 'S');

INSERT INTO emprestimo(idaluno, data_emprestimo, data_devolucao, valor, devolvido)
VALUES((select idaluno from aluno where nome='Mario'), '2012-04-23', '2012-05-03', 5, 'N');

INSERT INTO emprestimo(idaluno, data_emprestimo, data_devolucao, valor, devolvido)
VALUES((select idaluno from aluno where nome='João'), '2012-05-10', '2012-05-20', 12, 'N');

INSERT INTO emprestimo(idaluno, data_emprestimo, data_devolucao, valor, devolvido)
VALUES((select idaluno from aluno where nome='Paulo'), '12-05-10', '2012-05-20', 8, 'S');

INSERT INTO emprestimo(idaluno, data_emprestimo, data_devolucao, valor, devolvido)
VALUES((select idaluno from aluno where nome='Pedro'), '2012-05-05', '2012-05-15', 15, 'N');

INSERT INTO emprestimo(idaluno, data_emprestimo, data_devolucao, valor, devolvido)
VALUES((select idaluno from aluno where nome='Pedro'), '2012-05-07', '2012-05-17', 20, 'S');

INSERT INTO emprestimo(idaluno, data_emprestimo, data_devolucao, valor, devolvido)
VALUES((select idaluno from aluno where nome='Pedro'), '12-05-08', '2012-05-18', 5, 'S');

--16
CREATE TABLE emprestimo_livro(
	idemprestimo integer not null,
	idlivro integer not null,
	
	CONSTRAINT pk_emprlivr_emprelivr PRIMARY KEY (idemprestimo, idlivro),
	CONSTRAINT fk_emprlivr_idemprestimo FOREIGN KEY (idemprestimo) REFERENCES emprestimo(idemprestimo),
	CONSTRAINT fk_emprlivr_idlivro FOREIGN KEY (idlivro) REFERENCES livro(idlivro)
);
--17
insert into emprestimo_livro (idemprestimo, idlivro) values (2, 6);
insert into emprestimo_livro (idemprestimo, idlivro) values (8, 9);
insert into emprestimo_livro (idemprestimo, idlivro) values (2, 8);
insert into emprestimo_livro (idemprestimo, idlivro) values (3, 2);
insert into emprestimo_livro (idemprestimo, idlivro) values (3, 8);
insert into emprestimo_livro (idemprestimo, idlivro) values (4, 10);
insert into emprestimo_livro (idemprestimo, idlivro) values (5, 9);
insert into emprestimo_livro (idemprestimo, idlivro) values (6, 6);
insert into emprestimo_livro (idemprestimo, idlivro) values (7, 9);
--18
create index idx_emp_data_emprestimo on emprestimo (data_emprestimo);
create index idx_emp_data_devolucao on emprestimo (data_devolucao);
-- CONSULTAS
--19 
SELECT nome FROM autor ORDER BY nome ASC
--20
SELECT nome FROM aluno WHERE nome LIKE 'P%'
--21
SELECT nome from LIVRO WHERE idcategoria = 1 or idcategoria = 3
--22
SELECT 
	livro.nome,
	editora.nome
FROM livro
INNER JOIN editora
	ON editora.nome = 'Bookman'
--23
SELECT * FROM emprestimo WHERE data_emprestimo BETWEEN '2012-05-05' AND '2012-05-10'
--24
SELECT * FROM emprestimo WHERE data_emprestimo NOT BETWEEN '2012-05-05' AND '2012-05-10'
--25
SELECT * FROM emprestimo WHERE devolvido = 'S'
--26
SELECT COUNT(idlivro) FROM livro
--27
SELECT SUM(valor) FROM emprestimo
--28
SELECT AVG(valor) FROM emprestimo
--29
SELECT MAX(valor) FROM emprestimo
--30
SELECT MIN(valor) FROM emprestimo
--31
SELECT SUM(valor) FROM emprestimo WHERE data_emprestimo BETWEEN '2012-05-05' AND '2012-05-10'
--32
SELECT COUNT(idemprestimo) FROM emprestimo WHERE data_emprestimo BETWEEN '2012-05-01' AND '2012-05-05'
--33
SELECT
	livro.nome,
	categoria.nome as categoria,
	editora.nome as editora
FROM LIVRO
LEFT OUTER JOIN categoria
	ON categoria.idcategoria = livro.idcategoria
LEFT OUTER JOIN editora
	ON editora.ideditora = livro.ideditora
--34
CREATE VIEW livro_autor_view as
	SELECT 
		livro.nome,
		autor.nome as autor
	FROM livro
	LEFT OUTER JOIN livro_autor
		ON livro_autor.idlivro = livro.idlivro
	LEFT OUTER JOIN autor
		ON autor.idautor = livro_autor.idautor
--35
SELECT
	livro.nome,
	autor.nome
FROM livro
INNER JOIN autor
	ON autor.nome = 'Ian Graham'
--36
SELECT
	aluno.nome,
	emprestimo.data_emprestimo,
	emprestimo.data_devolucao
FROM aluno
INNER JOIN emprestimo
	ON emprestimo.idaluno = aluno.idaluno
--37
SELECT 
	livro.nome,
	emprestimo_livro.idlivro
FROM livro
INNER JOIN emprestimo_livro
	ON emprestimo_livro.idlivro = livro.idlivro
--38
SELECT
	editora.nome,
	count(livro.idlivro)
FROM editora
LEFT OUTER JOIN livro
	ON livro.ideditora = editora.ideditora
GROUP BY editora.nome
--39
SELECT
	categoria.nome,
	count(livro.idlivro)
FROM categoria
LEFT OUTER JOIN livro
	ON categoria.idcategoria = livro.idcategoria
GROUP BY categoria.nome
--40
SELECT 
	autor.nome,
	count(livro_autor.idlivro)
FROM autor
LEFT OUTER JOIN livro_autor
	ON livro_autor.idautor = autor.idautor
GROUP BY autor.nome
--41
SELECT
	aluno.nome,
	count(emprestimo.idemprestimo)
FROM aluno
LEFT OUTER JOIN emprestimo
	ON emprestimo.idaluno = aluno.idaluno
GROUP BY aluno.nome
--42
SELECT 
	aluno.nome,
	SUM(emprestimo.valor)
FROM aluno
LEFT OUTER JOIN emprestimo
	ON aluno.idaluno = emprestimo.idaluno
GROUP BY aluno.nome
--43
SELECT
	aluno.nome,
	SUM(emprestimo.valor)
FROM aluno
LEFT OUTER JOIN emprestimo
	ON aluno.idaluno = emprestimo.idaluno
GROUP BY aluno.nome
HAVING SUM(emprestimo.valor) > 7
--44
SELECT
	UPPER(aluno.nome)
FROM aluno
ORDER BY aluno
--45
SELECT * FROM emprestimo
where extract(year from data_emprestimo) = 2012 and extract(month from data_emprestimo) = 4
--46
select
	*,
	case devolvido
		when 'S' then 'Devolução completa'
		when 'N' then 'Em atraso'
	end as status
from
	emprestimo
--47

