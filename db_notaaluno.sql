CREATE DATABASE db_notaaluno;

USE db_notaaluno; 

CREATE TABLE tb_alunos(
id BIGINT AUTO_INCREMENT,
nome_completo VARCHAR (255) NOT NULL,
data_nascimento DATE,
serie INT NOT NULL,
turma VARCHAR (1) NOT NULL,
nota DECIMAL (3.1) NOT NULL,
PRIMARY KEY (id)
);

SELECT * FROM tb_alunos;

INSERT INTO tb_alunos(nome_completo, data_nascimento, serie, turma, nota) 
VALUE ("Ana Souza", "2011-08-09", 9, "C", 9.0),
("Marcio Ricardo", "2013-05-07", 7, "B", 4.9),
("Stefhanny Kimberly", "2014-02-10", 6, "A", 7.0),
("Evellyn Camargo", "2015-10-09", 5, "A", 8.7),
("Pedro Afonso", "2011-03-01", 9, "C", 10.0),
("Zé Ramalho", "2012-04-22", 8, "A", 7.9),
("Antony Silva Santos", "2013-01-05", 7, "B", 8.8),
("Joana Maria", "2012-12-15", 8, "C", 9.0);

ALTER TABLE tb_alunos MODIFY nota DECIMAL(4,1);

SELECT * FROM  tb_alunos WHERE nota > 7.0;
SELECT * FROM  tb_alunos WHERE nota < 7.0;

UPDATE tb_alunos SET nota = 7.0 WHERE id = 4;