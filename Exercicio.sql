CREATE DATABASE bd_escola;

USE bd_escola;

CREATE TABLE alunos(
    mat int, 
    nome varchar(100), 
    endereço varchar(100), 
    cidade varchar(100),
    CONSTRAINT pk_mat PRIMARY KEY(mat)
);

CREATE TABLE disciplinas(
    cod_disc int, 
    nome_disc varchar(100), 
    carga_hor varchar(100),
    CONSTRAINT pk_cod_disc PRIMARY KEY(cod_disc)
    );

CREATE TABLE professores(
    cod_prof int, 
    nome varchar(100), 
    endereço varchar(100), 
    cidade varchar(100),
    CONSTRAINT pk_professores PRIMARY KEY(cod_prof)
);

CREATE TABLE turmas(
    cod_disc int,
    cod_turma int,
    cod_prof int,
    ano int,
    horario varchar(7),
    PRIMARY KEY(cod_turma,ano),
    CONSTRAINT fk_cod_disc FOREIGN KEY(cod_disc) REFERENCES disciplinas(cod_disc),
    CONSTRAINT fk_cod_prof FOREIGN KEY(cod_prof) REFERENCES professoras(cod_prof)
);

CREATE TABLE historico(
    mat int,
    cod_disc int,
    cod_turma int, 
    cod_prof int,
    ano int,
    frequencia float,
    nota float,
    CONSTRAINT fk_cod_disc FOREIGN KEY(cod_disc) REFERENCES disciplinas(cod_disc),
    CONSTRAINT fk_cod_prof FOREIGN KEY(cod_prof) REFERENCES professoras(cod_prof),
    CONSTRAINT fk_cod_turma FOREIGN KEY(cod_turma) REFERENCES turmas(cod_turma),
    CONSTRAINT fk_mat FOREIGN KEY(mat) REFERENCES alunos(mat)
);

