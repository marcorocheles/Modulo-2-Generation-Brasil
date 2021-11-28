create database db_cursoDaMinhaVida;
drop database db_cursoDaMinhaVida;
use db_cursoDaMinhaVida;

-- Criando tabelas
create table tb_categoria(
	id_categoria bigint (5) auto_increment,
	tipo_curso varchar (255) not null,
    descricao varchar (255) not null ,
    certificado boolean not null,
    
    primary key (id_categoria)
);

create table tb_curso(
	id_curso bigint (5) auto_increment,
    nome varchar (255) not null,
    preco decimal (10,2) not null,
    professor varchar (255) not null,
    horas varchar (50) not null,
    fk_id_categoria bigint not null,
    
    primary key (id_curso),
    foreign key (fk_id_categoria) references tb_categoria (id_categoria)
);

-- Populando tabela categoria
insert into tb_categoria (tipo_curso, descricao, certificado) values
	('Linguagens de Programação', 'Cursos voltados para ensino de linguagens de programação.', true),
    ('Arquitetura de Sistemas', 'Cursos voltados para arquitetura de sistemas.', true),
    ('Banco de Dados', 'Cursos voltados para construção de Banco de Dados.', true),
    ('UX-UI Design', 'Cursos voltados para User Experience e User Interface.', true),
    ('IDEs', 'Cursos para aprendizagem de Ambiente de Desenvolvimento Integrado.', true);
    
select * from tb_categoria;

-- Populando tabela curso
insert into tb_curso (nome, preco, professor, horas, fk_id_categoria) values
	('Java', 19.90, 'Juan Sanchez', '08 Horas', 1),
    ('JavaScript', 25.50, 'Walter White', '12 Horas', 1),
    ('Ruby on Rails', 35.00, 'Jesse Nesch', '16 Horas', 1),
    ('Arquitetura de Dados Essencial', 40.00, 'Kuriana Sung-hoo', '22 Horas', 2),
    ('MySQL', 40.00, 'Yaseo Murinama', '16 Horas', 3),
    ('Figma Avançado', 32.00, 'Julia Van Rohe', '26 Horas', 4),
    ('Node.js IDE', 00.00, 'Joice Kasch', '04 Horas', 5),
    ('Eclipse IDE', 00.00, 'Gustavo Guanabara', '03 Horas', 5);
    
select * from tb_curso;

-- Select cursos com valor maior que 20
select * from tb_curso where preco > 20.00;

-- Select curso com valor entre 0 e 20.00 reais
select * from tb_curso where preco between 0.0 and 20.00;

-- Select com like curso com a letra J 
select * from tb_curso where nome like '%J%';

-- Inner Join
select * from tb_categoria inner join tb_curso on tb_categoria.id_categoria = tb_curso.fk_id_categoria;

-- Select com Inner Join onde todos os cursos de Linguagem de Programação 
select * from tb_categoria inner join tb_curso on tb_categoria.id_categoria = tb_curso.fk_id_categoria where fk_id_categoria = 1;