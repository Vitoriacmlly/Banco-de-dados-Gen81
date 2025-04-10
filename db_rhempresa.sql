CREATE DATABASE db_rhempresa;

USE db_rhempresa; 

CREATE TABLE tb_colaboradores(
id BIGINT AUTO_INCREMENT,
nome_completo VARCHAR (255) NOT NULL,
nivel_escolaridade VARCHAR(255),
departamento VARCHAR (255) NOT NULL,
data_admissao DATE NOT NULL,
salario DECIMAL (6,5),
PRIMARY KEY (id)
);

SELECT * FROM tb_colaboradores;

INSERT INTO tb_colaboradores(nome_completo, nivel_escolaridade, departamento, data_admissao, salario) 
VALUE ("Ana Paula", "Ensino superior", "Tecnologia", "2010-05-01", 3.20000),
("Paula Fernandes", "Ensino Medio Completo", "Estagio Tecnologia", "2025-03-10", 1.20000),
("Jose da Silva", "Cursando Mestrado", "Supervisor(a)", "2009-05-06", 8.20000),
("Angelina Giulia", "Doutorado", "Recursos Humanos", "2018-10-05", 3.30000),
("Maicon Jackson", "Ensino superior", "Supervisor(a) Tecnologia", "2016-05-09", 7.10000);

SELECT * FROM  tb_colaboradores WHERE salario > 2.00000;
SELECT * FROM  tb_colaboradores WHERE salario < 2.00000;

UPDATE tb_colaboradores SET salario = 2.00000 WHERE id = 2;