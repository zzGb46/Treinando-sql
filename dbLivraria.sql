drop database dbLivraria;
 
create database dbLivraria;
 
use dbLivraria;
 
create table tbGeneros(
idGenero int not null auto_increment,
descricao varchar(100),
primary key(idGenero)
);
 
create table tbAutores(
idAutor int not null auto_increment,
nome varchar(100),
email varchar(100),
primary key(idAutor)
);


 
create table tbClientes(
idCliente int not null auto_increment,
nome varchar(100),
telefone char(9),
primary key(idCliente)
);




 
create table tbLivros(
idLivro int not null auto_increment,
titulo varchar(100),
preco decimal(9,2),
estoque int,
idGenero int not null,
primary key(idLivro),
foreign key(idGenero) references tbGeneros(idGenero)
);

 
create table tbVendas(
idVenda int not null auto_increment,
data date,
total decimal(9,2),
idCliente int not null,
primary key(idVenda),
foreign key(idCliente) references tbClientes(idCliente)
);


 
create table tbItens_Vendas(
idVenda int not null,
idLivro int not null,
quantidade int,
subTotal decimal(9,2),
foreign key(idVenda) references tbVendas(idVenda),
foreign key(idLivro) references tbLivros(idLivro)
);
 
create table tbEscreve(
idLivro int not null,
idAutor int not null,
foreign key(idLivro) references tbLivros(idLivro),
foreign key(idAutor) references tbAutores(idAutor)
);




 
desc tbGeneros;
desc tbAutores;
desc tbClientes;
desc tbLivros;
desc tbVendas;
desc tbItens_Vendas;
desc tbEscreve;
 
-- cadastrando os registros nas tabelas
insert into tbGeneros(descricao)values('Acao');
insert into tbGeneros(descricao)values('Ficcao');
insert into tbGeneros(descricao)values('Aventura');
insert into tbGeneros(descricao)values('Terror');
insert into tbGeneros(descricao)values('Comedia');
insert into tbGeneros(descricao)values('Romance');
insert into tbGeneros(descricao)values('Documentario');

insert into tbAutores(nome, email)values('epaninondas', 'epa.edu.emal.com');
insert into tbAutores(nome, email)values('josefa', 'josefa.edu.emal.com');
insert into tbAutores(nome, email)values('mulan', 'mulan.edu.emal.com');
insert into tbAutores(nome, email)values('painho', 'painho.edu.emal.com');
insert into tbAutores(nome, email)values('meliodas', 'meliodas.edu.emal.com');
insert into tbAutores(nome, email)values('midas', 'midas.edu.emal.com');

insert into tbClientes(nome, telefone)
values('obama','98523-8547');

insert into tbClientes(nome, telefone)
values('nabara','98523-8547');



insert into tbClientes(nome, telefone)
values('xhina','98523-8547');
 

 insert into tbLivros(titulo, preco, estoque, idGenero)
values('escute o que ela diz', 55.47, 3, 4);



insert into tbLivros(titulo, preco, estoque, idGenero)
values('Teoria das especies', 100.00, 2, 7);

insert into tbLivros(titulo, preco, estoque, idGenero)
values('Chutando o dono da barraca', 2.00, 4, 5);

insert into tbLivros(titulo, preco, estoque, idGenero)
values('O tigrinho do dinheiro', 3.00, 100, 2);

insert into tbLivros(titulo, preco, estoque, idGenero)
values('Troca de olhares fulminante', 1000.00, 1, 6);





insert into tbVendas(data,total, idCliente)
values('2024-05-16', 100.50, 3);

insert into tbVendas(data,total, idCliente)
values('2001-09-11', 150.50, 2);

insert into tbVendas(data,total, idCliente)
values('1789-12-25', 80.50, 1);

insert into tbItens_Vendas(quantidade, idVenda, idLivro, subTotal)
value(1,1,3, 150.20);

insert into tbItens_Vendas(quantidade, idVenda, idLivro, subTotal)
value(1,1,4, 150.25);

insert into tbItens_Vendas(quantidade, idVenda, idLivro, subTotal)
value(3,1,2, 140.50);

insert into tbEscreve(idLivro, idAutor)
values(5, 3);


-- Pesquisar os campos das tabelas
select * from tbGeneros;

select * from tbAutores;

select * from tbClientes;

select * from tbLivros;

select * from tbVendas;

select * from tbItens_Vendas;

select * from tbEscreve;


--Alterando registros das tabelas
 
update tbClientes set nome = 'Marco' where idCliente=2;

update tbClientes set nome = 'muda', telefone = '2911-5529' where idCliente= 1;

select * from tbClientes;


update tbLivros set titulo = 'escute la', preco = 2.00, estoque= 2, idGenero =1 where idLivro = 1;

update tbLivros set titulo='me roubando a brisa', preco =500.00, estoque=3, idGenero=1 where idLivro = 5;
select * from tbLivros;

--Apagando o registro da tabela
-- delete from tbVendas where idCliente=2;

 --delete grom tbClientes where idClientes=2;
 --delete from tbLivros where idLivro=1;

select * from tbLivros;
select * from tbVendas;
select * from tbClientes;
