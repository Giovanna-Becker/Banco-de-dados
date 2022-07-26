CREATE DATABASE db_loja;
USE db_loja;

CREATE TABLE tb_produto(
id BIGINT AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR(255),
preco DECIMAL(8,2),
estoque BOOLEAN,
disponivel INT,
pagamento VARCHAR(255)
);

INSERT INTO tb_produto(nome, preco, estoque, disponivel, pagamento)VALUES("Moto G60", 1530, 121, true, "Boleto");
INSERT INTO tb_produto(nome, preco, estoque, disponivel, pagamento)VALUES("Galaxy A03", 669, 87, true, "Cartão");
INSERT INTO tb_produto(nome, preco, estoque, disponivel, pagamento)VALUES("Moto G31", 1169.10, 11, true, "Dinheiro");
INSERT INTO tb_produto(nome, preco, estoque, disponivel, pagamento)VALUES("Moto E7", 899, 0, false, "Boleto");
INSERT INTO tb_produto(nome, preco, estoque, disponivel, pagamento)VALUES("Multilaser F", 399, 121, true, "Cartão");
INSERT INTO tb_produto(nome, preco, estoque, disponivel, pagamento)VALUES("Nokia C01 Plus", 499, 45, true, "Dinheiro");
INSERT INTO tb_produto(nome, preco, estoque, disponivel, pagamento)VALUES("Nokia C20", 599, 34, true, "PIX");
INSERT INTO tb_produto(nome, preco, estoque, disponivel, pagamento)VALUES("Positivo Twist 3 Pro", 479.99, 0, false, "Boleto");

SELECT * FROM tb_produto WHERE preco > 500;
SELECT * FROM tb_produto WHERE preco < 500;

UPDATE tb_produto SET nome = "Moto E7 Power", preco = 791.10, estoque = 97, disponivel = false, pagamento = "PIX" WHERE id = 3;