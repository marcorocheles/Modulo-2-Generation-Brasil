create database db_pizzaria_legal;
drop database db_pizzaria_legal;
use db_pizzaria_legal;

-- Criando tabela
create table tb_categoria(
	id_categoria bigint (5) auto_increment,
    categoria varchar(10),
    tamanho varchar(10),
    borda varchar(30),
    
    primary key (id_categoria)
);
    
create table tb_pizza(
	id_pizza bigint (5) auto_increment not null,
    sabor varchar(50),
    valor decimal (10, 2),
    vegetariana boolean,
    azeitona boolean,
    fk_id_categoria bigint not null,
    
    primary key(id_pizza),
    foreign key (fk_id_categoria) references tb_categoria (id_categoria)
);
    
    -- Popular a tabela categoria
    insert into tb_categoria (categoria, tamanho, borda) values
		("Salgada", "Grande", "Normal"),
        ("Salgada", "Broto", "Cheddar"),
        ("Salgada", "Grande", "Catupiry Original"),
        ("Doce", "Broto", "Chocolate"),
        ("Doce", "Broto", "Normal");
        
	select * from tb_categoria;
        
	-- Popular a tabela pizza
    insert into tb_pizza (sabor, valor, vegetariana, azeitona, fk_id_categoria) values	
		("Frango com Catupiry", 45.50, false, true, 1), 
        ("Brócolis com Queijo", 33.50, true, true, 1),
        ("Toscana", 30.00, false, true, 2),
        ("Mussarela", 25.00, false, false, 3),
        ("Portuguesa", 47.50, false, true, 3),
        ("Palmito", 27.00, true, false, 1),
        ("Banoffe", 28.00, false, false, 4),
        ("Romeu e Julieta", 30.00, false, false, 5);
        
	select * from tb_pizza;
    
    -- select valores maior que 45
    select * from tb_pizza where valor > 45.00;
    
    -- select valores entre 29 e 60 reais
    select * from tb_pizza where valor between 29.00 and 60.00;
    
    -- select com Like sabor com "C"
    select * from tb_pizza where sabor like "%C%";
    
    -- Inner Join
    select * from tb_categoria inner join tb_pizza on tb_categoria.id_categoria = tb_pizza.fk_id_categoria;
    
    -- Select com produtos de uma categoria especifica
    select * from tb_pizza where fk_id_categoria >= 4 and fk_id_categoria <= 5;
    
    