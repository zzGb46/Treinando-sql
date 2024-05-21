drop database dbBarbearia;

create database dbBarbearia;

use dbBarbearia;

create table tbProdutos(
    codProd int not null auto_increment,
    descricao varchar(100),
    marca varchar(50),
    preco decimal(9,2),
    primary key(codProd)
);

insert into tbProdutos(descricao, marca, preco)
values('Condicionador','nivea', 50.00);
insert into tbProdutos(descricao, marca, preco)
values('Shampoo','clear', 10.00);
insert into tbProdutos(descricao, marca, preco)
values('Sabonete','phebo', 20.00);
insert into tbProdutos(descricao, marca, preco)
values('Gel','monange', 55.00);

select * from tbProdutos;

--delete from tbProdutos where codProd = 2;

select * from tbProdutos;