create database db_cidade_das_frutas;
drop database db_cidade_das_frutas;
use db_cidade_das_frutas;

-- Criando tabela
create table tb_categoria(
	id_categoria bigint (5) auto_increment,
	tipo varchar(20) not null,
    importado boolean not null,
    pesagem varchar (20) not null,
    
    primary key (id_categoria)
);

create table tb_frutas(
	id_frutas bigint (5) auto_increment,
    nome varchar (20) not null,
    preco decimal (10, 2) not null,
    data_entrada date not null,
    validade varchar (20) not null,
    fk_id_categoria bigint not null,
    
    primary key (id_frutas),
    foreign key (fk_id_categoria) references tb_categoria(id_categoria)
    );

-- Populando tabela categoria
insert into tb_categoria (tipo, importado, pesagem) values
	('In Natura', false, 'Kg'),
    ('In Natura', true, 'Kg'),
    ('In Natura', false, 'Bandeja'),
    ('In Natura', true, 'Unidade'),
    ('Seca', true, 'Kg');
    
select * from tb_categoria;

-- Populando tabela frutas
insert into tb_frutas (nome, preco, data_entrada, validade, fk_id_categoria) values
	('Maçã Fugi', 8.20, '2021-11-12', '20 Dias', 1),
    ('Manga Tommy', 4.00 , '2021-11-05', '25 Dias', 1),
    ('Uva Rubi', 8.00, '2021-11-08', '18 Dias', 3),
    ('Pitaya Vermelha', 7.00, '2021-11-11', '20 Dias', 4),
    ('Avocado', 3.00, '2021-11-18', '19 Dias', 4),
    ('Cranberry Seca', 22.00, '2021-11-15', '90 Dias', 5),
    ('Cranberry', 16.00, '2021-11-20', '15 Dias', 2),
    ('Uva passa', 12.00, '2021-11-15', '20 Dias', 5);
    
select * from tb_frutas;

-- Select produtos com valor maior que 10
select * from tb_frutas where preco > 10.00;

-- Select produtos com valor entre 3 e 10 reais
select * from tb_frutas where preco between 3.00 and 10.00;

-- Select com like produtos com a letra C 
select * from tb_frutas where nome like '%C%';

-- Inner Join
select * from tb_categoria inner join tb_frutas on tb_categoria.id_categoria = tb_frutas.fk_id_categoria;

-- Select com Inner Join onde todos os produtos são In Natura
select * from tb_categoria inner join tb_frutas on tb_categoria.id_categoria = tb_frutas.fk_id_categoria where fk_id_categoria between 1 and 3;


    

