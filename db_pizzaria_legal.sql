CREATE DATABASE db_pizzaria_legal;

USE db_pizzaria_legal;

CREATE TABLE tb_pizzas(
id BIGINT AUTO_INCREMENT,
nome VARCHAR(255) NOT NULL,
preco DECIMAL(6,2) NOT NULL,
tamanho VARCHAR(2) NOT NULL,
borda_recheada BOOLEAN,
categoria_id BIGINT,
PRIMARY KEY (id)
);

INSERT INTO tb_pizzas(nome, preco, tamanho, borda_recheada, categoria_id) 
VALUES ("Calabresa", 69.90, "XG", FALSE, 1),
("Marghuerita", 120.90, "XG", TRUE, 2),
("Portuguesa", 45.90, "G", TRUE, 1),
("Romeo e Julieta", 66.70, "P", FALSE, 3),
("Mussarela", 45.90, "M", FALSE, 5),
("Baiana", 50.90, "P", TRUE, 4),
("Frango c/Catupiry", 45.90, "G", TRUE, 4),
("Brigadeiro", 69.90, "M", FALSE, 3);


CREATE TABLE tb_categorias(
id BIGINT AUTO_INCREMENT,
categoria VARCHAR(255) NOT NULL,
descricao VARCHAR(255),
PRIMARY KEY (id)
);

INSERT INTO tb_categorias(categoria, descricao) 
VALUES ("Salgada", "Pizzas com sal"),
("Especial", "Com toque especial do chefe, diferente das outras"),
("Doce", "Pizzas com acucar adicionado, entra na dieta no Dia do Lixo"),
("Moda da Casa", "Pizzas com receita de familia, feitas como a casa prefere"),
("Tradicional", "Receitas como qualquer outra de qualquer lugar");

SELECT * FROM tb_categorias;
SELECT * FROM tb_pizzas;


ALTER TABLE tb_pizzas ADD CONSTRAINT fk_pizzas_categorias 
FOREIGN KEY (categoria_id) REFERENCES tb_categorias (id);

SELECT * FROM tb_pizzas WHERE preco > 45.00;
SELECT * FROM tb_pizzas WHERE preco BETWEEN 50.00 AND 100.00;
SELECT * FROM tb_pizzas WHERE nome LIKE "%m%";

SELECT tb_pizzas.nome,preco,tamanho,borda_recheada,tb_categorias.categoria,
descricao FROM tb_pizzas INNER JOIN tb_categorias 
ON tb_pizzas.categoria_id = tb_categorias.id;

SELECT tb_pizzas.nome,preco,tamanho,borda_recheada,tb_categorias.categoria
FROM tb_pizzas INNER JOIN tb_categorias ON tb_pizzas.categoria_id = tb_categorias.id
WHERE tb_categorias.categoria = "Doce";

