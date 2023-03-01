CREATE TABLE fornecedor(
	idfornecedor integer not null,
	nome varchar(50) not null,
	
	CONSTRAINT pk_fnc_idfornecedor PRIMARY KEY (idfornecedor),
	CONSTRAINT un_fnc_nome UNIQUE (nome)
);
CREATE TABLE vendedor(
	idvendedor integer not null,
	nome varchar(50) not null,
	
	CONSTRAINT pk_vdr_idvendedor PRIMARY KEY (idvendedor),
	CONSTRAINT un_vdr_nome UNIQUE (nome)
);
CREATE TABLE transportadora(
	idtransportadora integer not null,
	idmunicipio integer not null,
	nome varchar(50) not null,
	logradouro varchar(50),
	numero varchar(10),
	
	CONSTRAINT pk_tpd_idtransportadora PRIMARY KEY (idtransportadora),
	CONSTRAINT fk_tpd_idmunicipio FOREIGN KEY (idmunicipio) REFERENCES municipio (idmunicipio),
	CONSTRAINT un_tpd_nome UNIQUE (nome)
);
CREATE TABLE produto(
	idproduto integer not null,
	idfornecedor integer not null,
	nome varchar(50) not null,
	valor float not null,
	
	CONSTRAINT pk_pdt_idproduto PRIMARY KEY (idproduto),
	CONSTRAINT fk_pdt_idfornecedor FOREIGN KEY (idfornecedor) REFERENCES fornecedor (idfornecedor)
);
insert into vendedor (idvendedor, nome) values (1, 'André');
insert into vendedor (idvendedor, nome) values (2, 'Alisson');
insert into vendedor (idvendedor, nome) values (3, 'José');
insert into vendedor (idvendedor, nome) values (4, 'Ailton');
insert into vendedor (idvendedor, nome) values (5, 'Maria');
insert into vendedor (idvendedor, nome) values (6, 'Suelem');
insert into vendedor (idvendedor, nome) values (7, 'Aline');
insert into vendedor (idvendedor, nome) values (8, 'Silvana');
select * from vendedor


insert into transportadora (idtransportadora, idmunicipio, nome, logradouro, numero)
values (1, 9, 'BS. Transportes', 'Rua das Limas', '01');
insert into transportadora (idtransportadora, idmunicipio, nome)
values (2, 5, 'União Transportes');
select * from transportadora

insert into fornecedor (idfornecedor, nome) values (1, 'Cap. Computadores');
insert into fornecedor (idfornecedor, nome) values (2, 'AA. Computadores');
insert into fornecedor (idfornecedor, nome) values (3, 'BB Máquinas');
select * from fornecedor

insert into produto (idproduto, idfornecedor, nome, valor) 
values (1, 1, 'Microcomputador', 800);
insert into produto (idproduto, idfornecedor, nome, valor) 
values (2, 1, 'Monitor', 500);
insert into produto (idproduto, idfornecedor, nome, valor) 
values (3, 2, 'Placa mãe', 200);
insert into produto (idproduto, idfornecedor, nome, valor) 
values (4, 2, 'HD', 150);
insert into produto (idproduto, idfornecedor, nome, valor) 
values (5, 2, 'Placa de vídeo', 200);
insert into produto (idproduto, idfornecedor, nome, valor) 
values (6, 3, 'Memória RAM', 100);
insert into produto (idproduto, idfornecedor, nome, valor) 
values (7, 1, 'Gabinete', 35);
select * from produto

CREATE TABLE pedido(
	idpedido integer not null,
	idcliente integer not null,
	idtransportadora integer,
	idvendedor integer not null,
	data_pedido date not null,
	valor float not null,
	
	CONSTRAINT pk_pdd_idpedido PRIMARY KEY (idpedido),
	CONSTRAINT fk_pdd_idcliente FOREIGN KEY (idcliente) REFERENCES clientes (idcliente),
	CONSTRAINT fk_pdd_idtransportadora FOREIGN KEY (idtransportadora) REFERENCES transportadora (idtransportadora),
	CONSTRAINT fk_pdd_idvendedor FOREIGN KEY (idvendedor) REFERENCES vendedor (idvendedor)
);

insert into pedido (idpedido, data_pedido, valor, idcliente, idtransportadora, idvendedor)
values (1, '2008-04-01', 1300, 1, 1, 1);
insert into pedido (idpedido, data_pedido, valor, idcliente, idtransportadora, idvendedor)
values (2, '2008-04-01', 500, 1, 1, 1);
insert into pedido (idpedido, data_pedido, valor, idcliente, idtransportadora, idvendedor)
values (3, '2008-04-02', 300, 1, 2, 5);
Insert into pedido (idpedido, data_pedido, valor, idcliente,idtransportadora, idvendedor) values (4,'2008-04-05',1000,8,1,7);
Insert into pedido (idpedido, data_pedido, valor, idcliente,idtransportadora, idvendedor) values (5,'2008-04-06',200,9,2,6);
Insert into pedido (idpedido, data_pedido, valor, idcliente,idtransportadora, idvendedor) values (6,'2008-04-06',1985,10,1,6);
Insert into pedido (idpedido, data_pedido, valor, idcliente,idtransportadora, idvendedor) values (7,'2008-04-06',800,3,1,7);
Insert into pedido (idpedido, data_pedido, valor, idcliente,idtransportadora, idvendedor) values (8,'2008-04-06',175,3,null,7);
Insert into pedido (idpedido, data_pedido, valor, idcliente,idtransportadora, idvendedor) values (9,'2008-04-07',1300,12,null,8);
Insert into pedido (idpedido, data_pedido, valor, idcliente,idtransportadora, idvendedor) values (10,'2008-04-10',200,6,1,8);
Insert into pedido (idpedido, data_pedido, valor, idcliente,idtransportadora, idvendedor) values (11,'2008-04-15',300,1,2,1);
Insert into pedido (idpedido, data_pedido, valor, idcliente,idtransportadora, idvendedor) values (12,'2008-04-20',300,1,2,5);
Insert into pedido (idpedido, data_pedido, valor, idcliente,idtransportadora, idvendedor) values (13,'2008-04-20',350,9,1 ,7);
Insert into pedido (idpedido, data_pedido, valor, idcliente,idtransportadora, idvendedor) values (14,'2008-04-23',300,2,1,5);
Insert into pedido (idpedido, data_pedido, valor, idcliente,idtransportadora, idvendedor) values (15,'2008-04-25',200,1,null,5);
select * from pedido

CREATE TABLE pedido_produto(
	idpedido integer not null,
	idproduto integer not null,
	quantidade integer not null,
	valor_unitario float not null,
	
	CONSTRAINT pk_pdp_idpedidoprodutp PRIMARY KEY (idpedido, idproduto),
	CONSTRAINT fk_pdp_idpedido FOREIGN KEY (idpedido) REFERENCES pedido (idpedido),
	CONSTRAINT fk_pdp_idproduto FOREIGN KEY (idproduto) REFERENCES produto (idproduto)
);

insert into pedido_produto (idpedido, idproduto, quantidade, valor_unitario) values
(1, 1, 1, 800);
insert into pedido_produto (idpedido, idproduto, quantidade, valor_unitario) values
(1, 2, 1, 500);
insert into pedido_produto (idpedido, idproduto, quantidade, valor_unitario) values
(2, 2, 1, 500);
Insert into pedido_produto (idpedido,idproduto,quantidade,valor_unitario) values (3,4,2,150);
Insert into pedido_produto (idpedido,idproduto,quantidade,valor_unitario) values (4,1,1,800);
Insert into pedido_produto (idpedido,idproduto,quantidade,valor_unitario) values (4,3,1,200);
Insert into pedido_produto (idpedido,idproduto,quantidade,valor_unitario) values (5,3,1,200);
Insert into pedido_produto (idpedido,idproduto,quantidade,valor_unitario) values (6,1,2,800);
Insert into pedido_produto (idpedido,idproduto,quantidade,valor_unitario) values (6,7,1,35);
Insert into pedido_produto (idpedido,idproduto,quantidade,valor_unitario) values (6,5,1,200);
Insert into pedido_produto (idpedido,idproduto,quantidade,valor_unitario) values (6,4,1,150);
Insert into pedido_produto (idpedido,idproduto,quantidade,valor_unitario) values (7,1,1,800);
Insert into pedido_produto (idpedido,idproduto,quantidade,valor_unitario) values (8,7,5,35);
Insert into pedido_produto (idpedido,idproduto,quantidade,valor_unitario) values (9,1,1,800);
Insert into pedido_produto (idpedido,idproduto,quantidade,valor_unitario) values (9,2,1,500);
Insert into pedido_produto (idpedido,idproduto,quantidade,valor_unitario) values (10,5,1,200);
Insert into pedido_produto (idpedido,idproduto,quantidade,valor_unitario) values (11,5,1,200);
Insert into pedido_produto (idpedido,idproduto,quantidade,valor_unitario) values (11,6,1,100);
Insert into pedido_produto (idpedido,idproduto,quantidade,valor_unitario) values (12,2,1,500);
Insert into pedido_produto (idpedido,idproduto,quantidade,valor_unitario) values (13,3,1,200);
Insert into pedido_produto (idpedido,idproduto,quantidade,valor_unitario) values (13,4,1,150);
Insert into pedido_produto (idpedido,idproduto,quantidade,valor_unitario) values (14,6,3,100);
Insert into pedido_produto (idpedido,idproduto,quantidade,valor_unitario) values (15,3,1,200);
SELECT * FROM pedido_produto


SELECT * FROM vendedor ORDER BY nome ASC
SELECT * FROM produto WHERE valor > 200 ORDER BY valor ASC
SELECT nome, valor, valor + (valor * 0.10) as "VALOR REAJUSTADO" FROM produto ORDER BY nome
SELECT * FROM municipio WHERE iduf = 5
SELECT * FROM pedido WHERE data_pedido BETWEEN '2008-04-10' AND '2008-04-25' ORDER BY valor
SELECT * FROM pedido WHERE valor BETWEEN 1000 AND 1500 
SELECT * FROM pedido WHERE valor NOT BETWEEN 100 AND 500
SELECT * FROM pedido WHERE idvendedor=1 ORDER BY valor ASC
SELECT * FROM pedido WHERE idcliente=1 ORDER BY valor DESC
SELECT * FROM pedido WHERE idcliente = 1 AND idvendedor=1