CREATE PROCEDURE insere_bairro(nome_bairro varchar(30)) language sql as
$$
	INSERT INTO bairro(nome) values(nome_bairro)
$$;

call insere_bairro('Teste Procedure')
SELECT * FROM bairro