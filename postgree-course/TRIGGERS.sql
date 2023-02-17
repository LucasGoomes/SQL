--Triggers - Função exucutada quando é realizado algum procedimento em alguma tabela
CREATE TABLE bairro_auditoria(
	idbairro integer not null,
	data_criacao timestamp not null
)

CREATE OR REPLACE FUNCTION bairro_log() returns trigger language plpgsql as
$$
begin
	--new para novo valor inserido na tabela
	--old para valor antigo antes do update
	INSERT INTO bairro_auditoria(idbairro, data_criacao) VALUES (NEW.idbairro, current_timestamp);
	return new;
end;
$$;

CREATE OR REPLACE TRIGGER log_bairro_trigger after insert on bairro for each row execute procedure bairro_log();

--TESTANDO
INSERT INTO bairro(idbairro, nome) VALUES (15, 'Teste');
SELECT * FROM bairro_auditoria