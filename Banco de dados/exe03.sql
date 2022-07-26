CREATE DATABASE db_escola;
USE db_escola;

CREATE TABLE tb_escola(
id BIGINT AUTO_INCREMENT PRIMARY KEY,
nome_aluno VARCHAR(60),
idade INT,
telefone VARCHAR(255),
endereço VARCHAR(100),
ultima_nota DECIMAL(5,2)
);

INSERT INTO tb_escola(nome_aluno, idade, telefone, endereço, ultima_nota)VALUES("Giovanna Becker", 18, "4294967295", "Rua Treze, Curado IV - PE", 8.3);
INSERT INTO tb_escola(nome_aluno, idade, telefone, endereço, ultima_nota)VALUES("Ana Maria Antonieta", 8, "81975955435", "Rua Dois, Curado IV - PE", 10);
INSERT INTO tb_escola(nome_aluno, idade, telefone, endereço, ultima_nota)VALUES("Diego Santana", 12, "81978352925", "Rua Dolores Duram, Curado II - PE", 5.5);
INSERT INTO tb_escola(nome_aluno, idade, telefone, endereço, ultima_nota)VALUES("Marcos Albuquerque", 14, "81993645372", "Rua Treze, Curado IV - PE", 9.7);
INSERT INTO tb_escola(nome_aluno, idade, telefone, endereço, ultima_nota)VALUES("Maria Alice", 9, "81975392749", "Rua Quatorze, Curado IV - PE", 6);
INSERT INTO tb_escola(nome_aluno, idade, telefone, endereço, ultima_nota)VALUES("Antônio Vasconcelos", 13, "81930572642", "Quadra Dez, Curado II - PE", 4.9);
INSERT INTO tb_escola(nome_aluno, idade, telefone, endereço, ultima_nota)VALUES("Roberta Varano", 17, "81957395726", "Quadra Quinze, Curado III - PE", 5.8);
INSERT INTO tb_escola(nome_aluno, idade, telefone, endereço, ultima_nota)VALUES("Júlio César", 15, "81985624693", "Rua Abelha, Curado III - PE", 9.5);

SELECT * FROM tb_escola WHERE ultima_nota > 7.0;
SELECT * FROM tb_escola WHERE ultima_nota < 7.0;

UPDATE tb_escola SET nome_aluno = "Ana Cecília", idade = 10, telefone = "81969253234", endereço = "Av. Um, Curado IV", ultima_nota = 7.2 WHERE id = 18;