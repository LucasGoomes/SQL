SELECT idvendedor, avg(valor) from pedido group by idvendedor having avg(valor) > 300

select idvendedor, sum(valor) from pedido group by idvendedor having sum(valor) > 1500

select idvendedor, sum(valor) from pedido group by idvendedor

select count(idmunicipio) from municipio

select count(idmunicipio) from municipio where iduf = 1 or iduf = 2

select iduf, count(idmunicipio) from municipio group by iduf

select count(idcliente) from cliente where logradouro is not null

select idmunicipio, count(idcliente) from cliente group by idmunicipio

select count(idfornecedor) from fornecedor

select idfornecedor, count(idproduto) from produto group by idfornecedor

select avg(valor) from produto where idfornecedor = 1

select sum(valor) from produto

select nome, valor from produto order by valor desc limit 1

select nome, valor from produto order by valor asc limit 1

select avg(valor) from produto

select count(idtransportadora) from transportadora

select avg(valor) from pedido

select idcliente, sum(valor) from pedido group by idcliente

select idvendedor, sum(valor) from pedido group by idvendedor

select idtransportadora, sum(valor) from pedido group by idtransportadora

select data_pedido, sum(valor) from pedido group by data_pedido

select idcliente, idvendedor, idtransportadora, sum(valor) from pedido group by idcliente, idvendedor, idtransportadora

select sum(valor) from pedido where data_pedido between '2008-04-01' and '2009-12-10' and valor > 200

select avg(valor) from pedido where idvendedor = 1

select avg(valor) from pedido where idcliente = 15

select count(idpedido) from pedido where idtransportadora = 1

select idvendedor, count(idpedido) from pedido group by idvendedor

select idcliente, count(idpedido) from pedido group by idcliente

select count(idpedido) from pedido where data_pedido between '2008-04-15' and '2008-04-25'

select count(idpedido) from pedido where valor > 1000

select sum(quantidade) from pedido_produto where idproduto = 1

select idproduto, sum(quantidade) from pedido_produto group by idproduto

select idpedido, sum(valor_unitario) from pedido_produto group by idpedido

select idpedido, sum(quantidade) from pedido_produto group by idpedido

select sum(valor_unitario) from pedido_produto

select avg(valor_unitario) from pedido_produto where idpedido = 6

select max(valor_unitario) from pedido_produto

select min(valor_unitario) from pedido_produto

select idpedido, sum(quantidade) from pedido_produto group by idpedido

select sum(valor_unitario) from pedido_produto