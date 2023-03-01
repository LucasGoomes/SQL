SELECT valor, concat('R$', round(cast(valor as numeric),2)) FROM pedido

create function formata_moeda(valor float) returns varchar(20) language plpgsql as 
$$
begin
	return concat('R$', round(cast(valor as numeric),2));
end;
$$;

SELECT formata_moeda(valor) from pedido
SELECT formata_moeda(valor) from produto


create function get_nome_by_id2(idc integer) returns varchar(50) language plpgsql as
$$
declare r varchar(50);
begin
	select nome into r from clientes where idcliente = idc;
	return r;
end;
$$;


select get_nome_by_id2(idcliente) from pedido