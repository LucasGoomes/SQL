create table clientes (
	idcliente integer not null,
	nome varchar(50) not null, -- varchar utiliza somente o espaço do dado
	cpf char(11), -- char são utilizados sempre os 11 espaços
	rg varchar(15),
	data_nascimento date,
	genero char(1),
	profissao varchar(30),
	nacionalidade varchar(30),
	logradouro varchar(30),
	numero varchar(10),
	complemento varchar(50),
	bairro varchar(30),
	municipio varchar(30),
	uf varchar(30),
	observacoes text,
	
	-- constraint = RESTRIÇÃO presente na tabela
	constraint pk_cln_idcliente primary key (idcliente) 
);

CREATE TABLE profissao(
	idprofissao integer not null,
	nome varchar(30) not null,
	
	constraint pk_prf_idprofissao primary key (idprofissao),
	constraint un_prf_nome unique (nome)
);

CREATE TABLE nacionalidade(
	idnacionalidade integer not null,
	nome varchar(30) not null,
	
	constraint pk_ncn_idnacionalidade primary key (idnacionalidade),
	constraint un_ncn_nome unique (nome)
);
CREATE TABLE complemento(
	idcomplemento integer not null,
	nome varchar(30) not null,
	
	constraint pk_cpl_idcomplemento primary key (idcomplemento),
	constraint un_cpl_nome unique (nome)
	
);
CREATE TABLE bairro(
	idbairro integer not null,
	nome varchar(30) not null,
	
	constraint pk_brr_idbairro primary key (idbairro),
	constraint un_brr_nome unique (nome)
);

CREATE TABLE uf(
	iduf integer not null,
	nome varchar(30) not null,
	sigla char(2) not null,
	
	constraint pk_ufd_idunidade_federacao primary key (iduf),
	constraint un_ufd_nome unique (nome),
	constraint un_ufd_sigla unique (sigla)
)

CREATE TABLE municipio(
	idmunicipio integer not null,
	nome varchar(30) not null,
	iduf integer not null,
	
	constraint pk_mnc_idmunicipio PRIMARY KEY (idmunicipio),
	CONSTRAINT un_mnc_nome unique (nome),
	CONSTRAINT kf_mnc_iduf FOREIGN KEY (iduf) references uf(iduf)
)












