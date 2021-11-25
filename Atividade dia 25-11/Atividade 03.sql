create database db_escola;

use db_escola;

-- Criando tabela
create table tb_escola(
	id_aluno bigint (5) auto_increment,
	nome_aluno varchar (30),
    genero_aluno varchar (15),
    nota bigint (2),
    turma varchar (30),
    
    primary key(id_aluno)
);

-- Inserindo valores na tabela
insert into tb_escola (nome_aluno, genero_aluno, nota, turma)
values ("Cezar Joao", "Masculino", 10, "Camélia");
insert into tb_escola (nome_aluno, genero_aluno, nota, turma)
values ("Mario Augusto", "Masculino", 7, "Calêndula");
insert into tb_escola (nome_aluno, genero_aluno, nota, turma)
values ("Maria Joaquina", "Feminino", 8, "Quaresmeira");
insert into tb_escola (nome_aluno, genero_aluno, nota, turma)
values ("Joana Sanchez", "Feminino", 10, "Quaresmeira");
insert into tb_escola (nome_aluno, genero_aluno, nota, turma)
values ("Sara Juarez", "Feminino", 10, "Chuva de Ouro");
insert into tb_escola (nome_aluno, genero_aluno, nota, turma)
values ("Nigueel Costa", "Masculino", 6, "Camélia");
insert into tb_escola (nome_aluno, genero_aluno, nota, turma)
values ("Michele Barros", "Feminino", 3, "Calêndula");
insert into tb_escola (nome_aluno, genero_aluno, nota, turma)
values ("Vinicios Lisboa", "Masculino", 10, "Chuva de Ouro");

-- Mostrando todos os alunos
select * from tb_escola;

-- Mostrando com where notas maiores que 7
select * from tb_escola where nota > 7;

-- Mostrando com where menor que 500
select * from tb_escola where nota < 7;

-- Atualizando um dado da tabela
update tb_escola set nota = 5 where id_aluno = 7;