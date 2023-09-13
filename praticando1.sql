create database if not exists EMPRESA_XPTO;
use EMPRESA_XPTO;
show databases;
drop database EMPRESA_XPTO;

create database if not exists EMPRESA;
create table if not exists DEPARTAMENTO (
coddpto int,
descricao varchar(45),
primary key (coddpto)
)engine InnoDB;

show tables;

desc DEPARTAMENTO;

# CONTINUAÇÃO EXERCÍCIO 
create table if not exists FUNCIONARIO(
codigo int,
nome varchar(45),
datanasc date,
sexo varchar(15),
endereco varchar(100),
coddpto int,
primary key (codigo),
foreign key (coddpto) references departamento(coddpto)
)engine InnoDB;

desc departamento; 
alter table departamento 
add column local varchar(45);

desc departamento;
desc funcionario;