CREATE DATABASE db_ecommerce;

USE db_ecommerce; 

CREATE TABLE tb_produtos(
id BIGINT AUTO_INCREMENT,
nome VARCHAR (255) NOT NULL,
categoria VARCHAR(255),
marca VARCHAR (255) NOT NULL,
estoque INT NOT NULL,
preco DECIMAL (6,2) NOT NULL,
PRIMARY KEY (id)
);

SELECT * FROM tb_produtos;

INSERT INTO tb_produtos(nome, categoria, marca, estoque, preco) 
VALUE ("Camisa basica rosa", "Camisas", "YouCom", 221, 269.90),
("Vestido Alcinha florido", "Vestidos", "YouCom", 140, 239.90),
("Calca Jeans Marmorizada", "Jeans", "Zara", 30, 189.90),
("Saia Rodada branco", "Saia", "AJC", 300, 67.90),
("Bermuda Clara Cintura alta", "Jeans", "Shein", 238, 79.99),
("Short Academia preto", "Fitness", "Nike", 223, 100.80),
("Bolsa YL preto couro", "Bolsas", "YL", 9, 1463.90),
("Kit Meia cano alto misto", "Meia", "Gucci", 21, 968.90);


SELECT * FROM  tb_produtos WHERE preco > 500;
SELECT * FROM  tb_produtos WHERE preco < 500;

UPDATE tb_produtos SET nome = "Saia Florescer" WHERE id = 4;