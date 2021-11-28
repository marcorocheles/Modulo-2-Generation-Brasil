create database db_generation_game_online;
drop database db_generation_game_online;
use db_generation_game_online;

-- Criação de tabelas
create table tb_classe(
	id_classe bigint (20) auto_increment, 
	nome_classe varchar(20) not null,
	habilidade varchar (50),
	passiva varchar (20),

	primary key(id_classe)
);

create table tb_personagem(
	id_personagem bigint (20) auto_increment, 
	nome_personagem varchar (50) not null,
	poder_ataque bigint (20),
	poder_defesa bigint (20),
	fk_id_classe bigint not null, -- chave estrangeira sempre tem que ser o mesmo tipo da chave primaria

	primary key(id_personagem),
	foreign key(fk_id_classe) references tb_classe (id_classe)
);

-- Populando tabela classe
insert into tb_classe (nome_classe, habilidade, passiva)
values("Arqueiro", "Chuva de Flechas", "Olho de Águia");
insert into tb_classe (nome_classe, habilidade, passiva)
values("Sacerdote", "Cura Sagrada", "Melhoria de Cura");
insert into tb_classe (nome_classe, habilidade, passiva)
values("Guerreiro", "Investida Temorosa", "Em frente!");
insert into tb_classe (nome_classe, habilidade, passiva)
values("Paladino", "Holy Guard", "Protocooperação");
insert into tb_classe (nome_classe, habilidade, passiva)
values("Mago", "Orbe de fogo", "Mana Burst");


select * from tb_classe;

-- Populando tabela personagens
insert into tb_personagem (nome_personagem, poder_ataque, poder_defesa, fk_id_classe)
values ("Darklord", 5000, 500, 2); 
insert into tb_personagem (nome_personagem, poder_ataque, poder_defesa, fk_id_classe)
values ("Lightlord", 8000, 5000, 4); 
insert into tb_personagem (nome_personagem, poder_ataque, poder_defesa, fk_id_classe)
values ("Sakura", 1200, 880, 5); 
insert into tb_personagem (nome_personagem, poder_ataque, poder_defesa, fk_id_classe)
values ("NuriX", 2000, 800, 1); 
insert into tb_personagem (nome_personagem, poder_ataque, poder_defesa, fk_id_classe)
values ("Kirium", 3000, 8000, 3); 
insert into tb_personagem (nome_personagem, poder_ataque, poder_defesa, fk_id_classe)
values ("Monsoon", 6000, 1500, 1); 
insert into tb_personagem (nome_personagem, poder_ataque, poder_defesa, fk_id_classe)
values ("xXGarlandXx", 8700, 3000, 4); 
insert into tb_personagem (nome_personagem, poder_ataque, poder_defesa, fk_id_classe)
values ("Blury", 1200, 200, 1); 
insert into tb_personagem (nome_personagem, poder_ataque, poder_defesa, fk_id_classe)
values ("Cringelord", 9500, 5000, 3); 

select * from tb_personagem;

-- Select com poder de ataque maior que 2000
select * from tb_personagem where poder_ataque > 2000;

-- Select com poder de ataque entre 1000 e 2000
select * from tb_personagem where poder_defesa > 1000 and poder_defesa < 2000;

-- Select com Like buscando personagens com "lord"
select * from tb_personagem where nome_personagem like "%lord%";

-- Inner Join
select * from tb_classe inner join tb_personagem on tb_personagem.fk_id_classe = tb_classe.id_classe;

-- Select buscando personagens arqueiros (id 1)
select * from tb_personagem where fk_id_classe = 1;

