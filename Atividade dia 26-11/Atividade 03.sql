create database db_farmacia_do_bem;
drop database db_farmacia_do_bem;
use db_farmacia_do_bem;

-- Criando tabela
create table tb_categoria(
	id_categoria bigint (5) auto_increment,
    categoria varchar(20) not null,
    receita boolean not null,
    ativo boolean not null,
    
    primary key (id_categoria)
);

create table tb_produto(
	id_produto bigint (5) auto_increment,
    nome varchar (20) not null,
    preco decimal (10, 2) not null,
    marca varchar (20) not null,
    tipo varchar (20),
    fk_id_categoria bigint not null,
    
    primary key (id_produto),
    foreign key (fk_id_categoria) references tb_categoria (id_categoria) 
);

-- Populando tabela categoria
insert into tb_categoria (categoria, receita, ativo) values
	("Fármaco", false, true),
    ("Fármaco Restrito", true, true),
    ("Esmalteria", false, true),
    ("Higiene", false, true),
    ("Higiene", false, false);
    
select * from tb_categoria;
    
-- Populando tabela produto
insert into tb_produto(nome, preco, marca, tipo, fk_id_categoria) values
	("Dipirona", 2.50, "Medley", "Via Oral", 1),
    ("Zolpidem", 42.00, "Stilnox", "Via Oral", 2),
    ("Dorflex", 10.00, "Sanofi", "Via Oral", 1),
    ("Parecetamol", 10.00, "Prati", "Via Oral", 1),
    ("Budesonida", 35.00, "EMS", "Uso Nasal", 1),
    ("Papel Higienico", 20.00, "Elite", '', 4),
    ("Pasta de Dente", 8.00, "Oral-B", '', 5),
    ("Esmalte", 7.75, "Risqué", '', 3);
    
select * from tb_produto;

-- Select produtos com valor maior que 30
select * from tb_produto where preco > 30.00;

-- Select produtos com valor entre 3 e 30 reais
select * from tb_produto where preco between 3.00 and 30.00;

-- Select com like produtos com a letra B 
select * from tb_produto where nome like '%B%';

-- Inner Join
select * from tb_categoria inner join tb_produto on tb_categoria.id_categoria = tb_produto.fk_id_categoria;

-- Select com Inner Join onde todos os produtos são Fármacos
select * from tb_categoria inner join tb_produto on tb_categoria.id_categoria = tb_produto.fk_id_categoria where fk_id_categoria = 1;

    
    