SELECT * FROM clientes;

--profissao
ALTER TABLE clientes RENAME COLUMN profissao TO idprofissao;
ALTER TABLE clientes DROP idprofissao;
ALTER TABLE clientes ADD idprofissao integer;
ALTER TABLE clientes ADD CONSTRAINT fk_cln_idprofissao FOREIGN KEY (idprofissao) references profissao (idprofissao)


--nacionalidades
ALTER TABLE clientes DROP nacionalidade;
ALTER TABLE clientes ADD idnacionalidade integer;
ALTER TABLE clientes ADD CONSTRAINT fk_cln_idnacionalidade FOREIGN KEY (idnacionalidade) references nacionalidade (idnacionalidade);

--complementos
ALTER TABLE clientes DROP complemento;
ALTER TABLE clientes ADD idcomplemento integer;
ALTER TABLE clientes ADD CONSTRAINT fk_cln_idcomplemento FOREIGN KEY (idcomplemento) REFERENCES complemento (idcomplemento)

--bairros
ALTER TABLE clientes DROP bairro;
ALTER TABLE clientes ADD idbairro integer;
ALTER TABLE clientes ADD CONSTRAINT fk_cln_idbairro FOREIGN KEY (idbairro) REFERENCES bairro (idbairro);


-- MUNICIPIOS
ALTER TABLE clientes DROP municipio;
ALTER TABLE clientes DROP uf;
ALTER TABLE clientes ADD idmunicipio integer;
ALTER TABLE clientes ADD CONSTRAINT fk_cln_idmunicipio FOREIGN KEY (idmunicipio) references municipio(idmunicipio)