CREATE DATABASE db_farmacia_bem_estar;

USE db_farmacia_bem_estar;

CREATE TABLE tb_produtos(
id BIGINT AUTO_INCREMENT,
nome VARCHAR(255) NOT NULL,
preco DECIMAL(6,2) NOT NULL,
quantidade INT NOT NULL,
marca VARCHAR(100),
categoria_id BIGINT,
PRIMARY KEY (id)
);

INSERT INTO tb_produtos(nome, preco, quantidade, marca, categoria_id) 
VALUES ("Loratadina 10mg", 12.50, 100, "Neo Loratadin", 3),
("Dipirona 100mg", 9.50, 200, "Neo Quimica", 5),
("Manteiga de Cacau 10mg", 10.50, 400, "Nivea", 2),
("Antiácido Sal de Fruta 5g", 3.99, 114, "Eno", 1 ),
("Soro Fisiológico 500ml", 8.99, 546, "Ever care", 4),
("Composto Lácteo 800g", 65.49, 46, "Nestlé", 4),
("repelente Off! 200ml", 25.59, 1159, "Johnson", 2),
("Cimegripe 400mg", 20.89, 400, "CIMED", 5);


CREATE TABLE tb_categorias(
id BIGINT AUTO_INCREMENT,
categoria VARCHAR(100) NOT NULL,
descricao VARCHAR(255),
PRIMARY KEY (id)
);

INSERT INTO tb_categorias(categoria, descricao) 
VALUES ("Aparelho digestivo", "Remedios para tratamentos digestivos"),
("Cosméticos", "Produtos para cuidado pessoal"),
("Antialergicos", "Produtos para tratamento alergico"),
("Infatil", "produtos direcionados a uso infatil"),
("Dor, febre e contusao", "Remedios para diversos tratamentos relacionados a dor, febre e contusao");

SELECT * FROM tb_categorias;
SELECT * FROM tb_produtos;


ALTER TABLE tb_produtos ADD CONSTRAINT fk_produtos_categorias 
FOREIGN KEY (categoria_id) REFERENCES tb_categorias (id);

SELECT * FROM tb_produtos WHERE preco > 50.00;
SELECT * FROM tb_produtos WHERE preco BETWEEN 5.00 AND 60.00;
SELECT * FROM tb_produtos WHERE nome LIKE "%c%";

SELECT tb_produtos.nome, preco, quantidade, marca, tb_categorias.categoria,
descricao FROM tb_produtos INNER JOIN tb_categorias 
ON tb_produtos.categoria_id = tb_categorias.id;

SELECT tb_produtos.nome, preco, quantidade, marca,tb_categorias.categoria
FROM tb_produtos INNER JOIN tb_categorias ON tb_produtos.categoria_id = tb_categorias.id
WHERE tb_categorias.categoria = "Cosméticos";

