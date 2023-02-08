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
)