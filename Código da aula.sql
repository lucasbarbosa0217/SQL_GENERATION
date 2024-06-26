CREATE DATABASE db_quitanda; -- textinho de teste 

USE db_quitanda;

CREATE TABLE tb_produtos(
	id BIGINT AUTO_INCREMENT,
	nome VARCHAR(255) NOT NULL,
    quantidade INT,
    data_validade DATE,
    preco DECIMAL NOT NULL,
    PRIMARY KEY(id)
);

ALTER TABLE tb_produtos ADD descricao VARCHAR(500);
ALTER TABLE tb_produtos drop column descricao;

INSERT INTO tb_produtos(nome, quantidade, data_validade, preco)
VALUES("Tomate", 10, "2024-07-20", 8.99),
("Laranja", 12, "2024-06-30", 7.00);

SELECT * FROM tb_produtos;

DELETE from tb_produtos where id = 1;
UPDATE tb_produtos set nome = "maçã" where id = 3;

SELECT nome FROM tb_produtos where nome="maçã";
