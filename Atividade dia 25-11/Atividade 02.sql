create database db_ecommerce;

use db_ecommerce;

-- Criando tabela
create table tb_ecommerce(
	id_produto bigint (5) auto_increment,
	nome_produto varchar (30),
    marca_produto varchar (20),
    valor decimal (10,2),
    frete_gratis boolean,
    
    primary key(id_produto)
);

-- Inserindo valores na tabela
insert into tb_ecommerce (nome_produto, marca_produto, valor, frete_gratis)
values ("Camisa Polo GG", "Nike", 100.00, true);
insert into tb_ecommerce (nome_produto, marca_produto, valor, frete_gratis)
values ("Camisa Social", "Adidas", 520.00, true);
insert into tb_ecommerce (nome_produto, marca_produto, valor, frete_gratis)
values ("Meia Branca", "Polo", 50.00, true);
insert into tb_ecommerce (nome_produto, marca_produto, valor, frete_gratis)
values ("Cueca Boxer", "Zorba", 30.00, false);
insert into tb_ecommerce (nome_produto, marca_produto, valor, frete_gratis)
values ("Bermuda Atletica", "Nike", 80.00, true);
insert into tb_ecommerce (nome_produto, marca_produto, valor, frete_gratis)
values ("Camisa Regata", "Adidas", 60.00, true);
insert into tb_ecommerce (nome_produto, marca_produto, valor, frete_gratis)
values ("Camisa Polo M", "Polo", 50.00, false);
insert into tb_ecommerce (nome_produto, marca_produto, valor, frete_gratis)
values ("Camiseta XG", "Lacoste", 80.00, true);

-- Mostrando todos os produtos do ecommerce
select * from tb_ecommerce;

-- Mostrando com where maior que 500
select * from tb_ecommerce where valor > 500.00;

-- Mostrando com where menor que 500
select * from tb_ecommerce where valor < 500.00;

-- Atualizando um dado da tabela
update tb_ecommerce set valor = 260.00 where id_produto = 6;