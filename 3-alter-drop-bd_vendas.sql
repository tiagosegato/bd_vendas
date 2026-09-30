select * from cliente;
select * from pedido;

--01
alter table cliente add bairro varchar(30);

--02
alter table pedido add teste integer;
alter table pedido drop teste;

--03
alter table cliente rename column nome to nome_cliente;

--04
alter table cliente alter nome_cliente type va

