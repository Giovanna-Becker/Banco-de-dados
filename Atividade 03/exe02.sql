CREATE DATABASE db_pizzaria_legal;
USE db_pizzaria_legal;

CREATE TABLE tb_categorias(
id BIGINT AUTO_INCREMENT PRIMARY KEY,
categorias VARCHAR(255),
tamanho_caixa VARCHAR(255)
);

CREATE TABLE tb_pizzas(
id BIGINT AUTO_INCREMENT,
sabor VARCHAR(255),
pagamento VARCHAR(255),
metade_metade BOOLEAN,
preco DECIMAL(5,2),
categoria_id BIGINT,

PRIMARY KEY(id),
FOREIGN KEY(categoria_id)REFERENCES tb_categorias(id)
);

INSERT INTO tb_categorias(categorias, tamanho_caixa)VALUES("Doce", "Médio"),("Doce", "Grande"),("Salgado", "Médio"),("Salgado", "Grande"),("Doce e salgado", "Grande");

INSERT INTO tb_pizzas(sabor, pagamento, metade_metade, preco, categoria_id)
VALUES
("Calabresa", "Dinheiro", false, 37.50, 3),("Portuguesa", "Cartão", false, 48, 4),("Frango com catupry e Coco com chocolate", "Pix", true, 61, 5),
("Banofe", "Dinheiro", false, 57, 1),("Romeu e Julieta", "Cartão", false, 73.10, 2),("Napolitana", "Cartão", false, 83.50, 1),("Quatro queijos", "Dinheiro", false, 48, 4),
("Morango com chocolate e Creme de Avelâ com chocolate", "Pix", true, 110, 2);

SELECT * FROM tb_pizzas WHERE preco > 45;
SELECT * FROM tb_pizzas WHERE preco > 50 AND preco < 100;
SELECT * FROM tb_pizzas WHERE sabor LIKE "%m%";
SELECT * FROM tb_pizzas INNER JOIN tb_categorias ON tb_categorias.id = tb_pizzas.categoria_id;
SELECT * FROM tb_pizzas INNER JOIN tb_categorias ON tb_pizzas.categoria_id = tb_categorias.id WHERE tb_categorias.id = 4;