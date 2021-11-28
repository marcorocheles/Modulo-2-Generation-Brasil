create database db_construindo_a_nossa_vida;
drop database db_construindo_a_nossa_vida;
use db_construindo_a_nossa_vida;

-- Criando tabelas
create table tb_categoria(
	id_categoria bigint (5) auto_increment,
	categoria_produto varchar(20) not null,
    descricao varchar (255) not null ,
    setor_estoque varchar (20) not null,
    
    primary key (id_categoria)
);

create table tb_produto(
	id_produto bigint (5) auto_increment,
    nome varchar (255) not null,
    preco decimal (10,2) not null,
    data_entrada date not null,
    fk_id_categoria bigint not null,
    
    primary key (id_produto),
    foreign key (fk_id_categoria) references tb_categoria (id_categoria)
);

-- Populando tabela categoria
insert into tb_categoria (categoria_produto, descricao, setor_estoque) values
	('Construção Civil', 'Materiais para construção civil como blocos, gesso, cimento etc.', 'Setor 04'),
    ('Elétrica', 'Fiações, luzes, lustres etc.', 'Setor 02'),
    ('Jardinagem', 'Materiais para Jardinagem: vasos, terra, pá, tesouras etc.', 'Setor 01'),
    ('Tintas', 'Tintas de diversas marcas', 'Setor 03'),
    ('Tubulação', 'Canos e acessórios para tubulação', 'Setor 05');
    
select * from tb_categoria;

-- Populando tabela produto
insert into tb_produto (nome, preco, data_entrada, fk_id_categoria) values
	('Bloco de Concreto', 4.50, '2021-08-12', '1'),
    ('Bloco Cerâmico', 0.90, '2021-10-23', '1'),
    ('Cabo Flexível 100 metros', 205.20, '2021-11-28', '2'),
    ('Vaso Cerâmica Terracota', 85.00,'2021-07-10', '3'),
    ('Tinta Azul-Turquesa Pastel 3,6l', 105.20, '2021-10-20', '4'),
    ('Encaixe de Tubulação Cotovelo 100mm', 2.40, '2021-11-10', '5'),
    ('Tubo PVC Esgoto 100mm 6 metros', 90.00, '2021-09-20', '5');
    
select * from tb_produto;
    
-- Select produtos com valor maior que 50
select * from tb_produto where preco > 50.00;

-- Select produtos com valor entre 1 e 50 reais
select * from tb_produto where preco between 0.50 and 50.00;

-- Select com like produtos com a letra C 
select * from tb_produto where nome like '%C%';

-- Inner Join
select * from tb_categoria inner join tb_produto on tb_categoria.id_categoria = tb_produto.fk_id_categoria;

-- Select com Inner Join onde todos os produtos são de Tubulação
select * from tb_categoria inner join tb_produto on tb_categoria.id_categoria = tb_produto.fk_id_categoria where fk_id_categoria = 5;
    
    