create database db_pizzaria_legal;
use db_pizzaria_legal;

-- Criando tabela
create table tb_categoria(
	id_categoria int auto_increment primary key,
    categoria varchar(10),
    tamanho varchar(10),
    borda varchar(30)
);
    
create table tb_pizza(
	id_pizza int not null auto_increment primary key,
    sabor varchar(50),
    valor decimal (10, 2),
    vegetariana boolean,
    azeitona boolean,
    fk_id_categoria int not null,
    
    foreign key (fk_id_categoria) references tb_categoria(id_pizza)
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
    
    
    -- Select com produtos de uma categoria especifica
    select * from tb_pizza where fk_id_categoria >= 4 and fk_id_categoria <= 5;
    
    