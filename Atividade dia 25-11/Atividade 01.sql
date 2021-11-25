create database db_rh;

use db_rh;

-- Criando tabela
create table tb_funcionaries(
	id_funcionario bigint (5) auto_increment,
	nome_funcionario varchar (30),
    genero_funcionario varchar (20),
    salario decimal (10,2),
    carg_funcionario varchar (20),
    
    primary key(id_funcionario)
);

-- Inserindo valores na tabela
insert into tb_funcionaries (nome_funcionario, genero_funcionario, salario, carg_funcionario)
values ("Andressa Caratin", "Feminino", 4500.00, "Desenvolvedora Jr.");
insert into tb_funcionaries (nome_funcionario, genero_funcionario, salario, carg_funcionario)
values ("Mariana Serventin", "Feminino", 3200.00, "Analista Pleno");
insert into tb_funcionaries (nome_funcionario, genero_funcionario, salario, carg_funcionario)
values ("Sandro Ribeiro", "Masculino", 7500.00, "Desenvolvedor Jr.");
insert into tb_funcionaries (nome_funcionario, genero_funcionario, salario, carg_funcionario)
values ("Juliana Sanchez", "Feminino", 9000.00, "Analista Plena");
insert into tb_funcionaries (nome_funcionario, genero_funcionario, salario, carg_funcionario)
values ("Timotéo Oliveira", "Masculino", 8200.00, "Analisto Pleno");

-- Mostrando todos os funcionaries
select * from tb_funcionaries;

-- Mostrando com where maior que 2000
select * from tb_funcionaries where salario > 2000.00;

-- Mostrando com where menor que 2000
select * from tb_funcionaries where salario < 2000.00;

-- Atualizando um dado da tabela
update tb_funcionaries set carg_funcionario = "Analista Pleno" where id_funcionario = 5;



