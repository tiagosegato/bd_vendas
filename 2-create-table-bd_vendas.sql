--Cliente = (codigo, nome, rua, numero)
create table cliente (
	codigo integer unique not null,
	nome varchar(100) not null,
	rua varchar(50),
	numero integer,
	constraint pk_cliente primary key (codigo)
);
-- verificando
select * from cliente;

--Produto = (codigo, descricao, preco)
create table produto (
	codigo serial, --integer, not null, unique
	descricao varchar(30) not null,
	preco numeric(7,2), -- até 99.999,99
	constraint pk_produto primary key (codigo)
);
-- verificando
select * from produto;

--Pedido = (codigo, cod_cliente, descricao, data)
create table pedido (
	codigo serial,
	cod_cliente integer not null,
	descricao varchar(30),
	data_pedido date,
	constraint pk_pedido primary key (codigo),
	constraint fk_pedido foreign key (cod_cliente) references cliente
);
-- verificando
select * from pedido;

--ItemPedido = (numero, cod_pedido, cod_produto, quantidade, valor)
create table itempedido(
	numero integer not null,
	cod_pedido integer not null, 
	cod_produto integer not null,
	quantidade integer,
	valor numeric(9,2),
	constraint pk_itempedido primary key (numero, cod_pedido),
	constraint fk_itempedido_ped foreign key (cod_pedido) references pedido,
	constraint fk_itempedido_pro foreign key (cod_produto) references produto
);
--verificando
select * from itempedido









