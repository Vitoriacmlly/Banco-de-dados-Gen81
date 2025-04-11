CREATE DATABASE db_generation_game_online;

USE db_generation_game_online;

CREATE TABLE tb_classes(
id BIGINT AUTO_INCREMENT,
tipo_classe VARCHAR(255) NOT NULL,
tipo_ataque VARCHAR(255) NOT NULL,
PRIMARY KEY (id)
);
    
INSERT INTO tb_classes(tipo_classe,tipo_ataque) 
VALUES ("arqueiro", "a distancia sao sorrateiros, rastreiam as presas e se escondem nas florestas");
INSERT INTO tb_classes(tipo_classe,tipo_ataque) 
VALUES ("feiticeiro", "conjurador de magias, podem receber poderes ligados a natureza");
INSERT INTO tb_classes(tipo_classe,tipo_ataque) 
VALUES ("guerreiro", "espadao corpo a corpo, deuses da guerra, grandes aliados e leais. membro da infantaria");
INSERT INTO tb_classes(tipo_classe,tipo_ataque) 
VALUES ("assassino", "combate corpo a corpo, pouca protecao, muita agilidade");
INSERT INTO tb_classes(tipo_classe,tipo_ataque) 
VALUES ("druída", "transformam se em forma selvagem e tem compate corpo a corpo");
    
    
CREATE TABLE tb_personagens(
id BIGINT AUTO_INCREMENT,
nome VARCHAR(255) NOT NULL,
arma VARCHAR (255) NOT NULL,
ataque BIGINT NOT NULL,
defesa BIGINT NOT NULL,
classes_id BIGINT,
PRIMARY KEY (id)
);

INSERT INTO tb_personagens(nome, arma, ataque, defesa) 
VALUES ("imani", "caminho de cacador", 2000, 1050, 1),
("maya", "livro Sinfonia", 4500, 2000, 2),
("theron", "cortadora da Neblina", 2690, 4080, 3),
("gwen", "espada do Sacrificio", 2990, 1000, 3),
("erasto", "livro do Mago", 2880, 1750, 2),
("elfaba", "livro Grimorio Real", 3330, 2250, 2),
("orion", "arcana", 2900, 1050, 1),
("callon", "espadao de jade", 5600, 1250, 3);

ALTER TABLE tb_personagens ADD CONSTRAINT fk_personagens_classes 
FOREIGN KEY (classes_id) REFERENCES tb_classes (id);

SELECT * FROM tb_personagens;
SELECT * FROM tb_classes;

SELECT * FROM tb_personagens WHERE ataque > 2000;
SELECT * FROM tb_personagens WHERE defesa BETWEEN 1000 AND 2000;
SELECT * FROM tb_personagens WHERE nome LIKE "%c%";

SELECT tb_personagens.nome,arma,ataque,defesa,tb_classes.tipo_classe,
tb_classes.tipo_ataque FROM tb_personagens INNER JOIN tb_classes 
ON tb_personagens.classes_id = tb_classes.id;

SELECT tb_personagens.nome,arma,ataque,defesa,tb_classes.tipo_classe
FROM tb_personagens INNER JOIN tb_classes ON tb_personagens.classes_id = tb_classes.id
WHERE tb_classes.tipo_classe = "arqueiro";




    
