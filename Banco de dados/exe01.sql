CREATE DATABASE db_empresa_rh;
USE db_empresa_rh;

CREATE TABLE tb_colaborador(
id BIGINT AUTO_INCREMENT PRIMARY KEY,
nome_colaborador VARCHAR(255),
idade INT,
cargo VARCHAR(255),
salario DECIMAL(8,2),
ferias BOOLEAN
);

INSERT INTO tb_colaborador(nome_colaborador, idade, cargo, salario, ferias)VALUES("Ana", 23, "adm de pessoal júnior", 2500, false);
INSERT INTO tb_colaborador(nome_colaborador, idade, cargo, salario, ferias)VALUES("Maurício", 50, "analista de comunicação interna júnior", 3000, false);
INSERT INTO tb_colaborador(nome_colaborador, idade, cargo, salario, ferias)VALUES("Adriele", 36, "analista generalista júnior", 4200, true);
INSERT INTO tb_colaborador(nome_colaborador, idade, cargo, salario, ferias)VALUES("João", 45, "adm de pessoal pleno", 4000, false);
INSERT INTO tb_colaborador(nome_colaborador, idade, cargo, salario, ferias)VALUES("Lana", 19, "gerente de adm pessoal júnior", 1300, true);

SELECT * FROM tb_colaborador WHERE salario > 2000;
SELECT * FROM tb_colaborador WHERE salario < 2000;

UPDATE tb_colaborador SET nome_colaborador = "Maria", idade = 20, ferias = true WHERE id = 1;