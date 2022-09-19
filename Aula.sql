-- create database Aula;

use Aula;

create table salario(
cod int,
gratificacao decimal(6,2),
valor decimal(7,2),
primary key (cod));

create table colaborador(
id int auto_increment,
nome varchar(50) not null,
sexo char(1),
cpf int,
cod int,
primary key(id),
unique(cpf),
check(sexo in ('f', 'm')),
foreign key (cod) references salario(cod));

set sql_safe_uptades=0;

-- formas de inserir nas tabelas

-- insert into salario (cod, gratificacao, valor) values (101, 250, 3000,95);
-- insert salario values(102, 500.00, 5.500);
-- insert into salario(cod) values (103);
-- insert into salario (valor, cod) values (1500.90, 104)
-- select * from salario;
 
-- insert into colaborador (id, nome, cpf, sexo, cod) values (10, 'João', 987, 'm', 104);

select * from salario;
update salario set valor=6000.00 where cod= 104;

update salario set valor=valor*1.2 where valor < 2500.00;
 

