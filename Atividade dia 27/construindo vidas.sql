CREATE DATABASE db_construindo_vidas;
USE db_construindo_vidas;

CREATE TABLE tb_categorias (
    id_categoria INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(50) NOT NULL,
    descricao VARCHAR(255) NOT NULL
);

INSERT INTO tb_categorias (nome, descricao) VALUES ('Ferramentas', 'Ferramentas manuais e elétricas');
INSERT INTO tb_categorias (nome, descricao) VALUES ('Tinta', 'Tintas de diversas cores e tipos');
INSERT INTO tb_categorias (nome, descricao) VALUES ('Madeira', 'Madeiras para construção e decoração');
INSERT INTO tb_categorias (nome, descricao) VALUES ('Hidráulica', 'Produtos para instalações hidráulicas');
INSERT INTO tb_categorias (nome, descricao) VALUES ('Elétrica', 'Produtos para instalações elétricas');

CREATE TABLE tb_produtos (
    id_produto INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    descricao VARCHAR(255),
    preco DECIMAL(10, 2) NOT NULL,
    estoque INT NOT NULL,
    id_categoria INT,
    FOREIGN KEY (id_categoria) REFERENCES tb_categorias(id_categoria)
);

INSERT INTO tb_produtos (nome, descricao, preco, estoque, id_categoria) VALUES ('Martelo', 'Martelo de aço', 50.00, 20, 1);
INSERT INTO tb_produtos (nome, descricao, preco, estoque, id_categoria) VALUES ('Pincel', 'Pincel para pintura', 15.00, 50, 2);
INSERT INTO tb_produtos (nome, descricao, preco, estoque, id_categoria) VALUES ('Tábua de madeira', 'Tábua de madeira de pinus', 120.00, 30, 3);
INSERT INTO tb_produtos (nome, descricao, preco, estoque, id_categoria) VALUES ('Canos de PVC', 'Canos de PVC para esgoto', 80.00, 100, 4);
INSERT INTO tb_produtos (nome, descricao, preco, estoque, id_categoria) VALUES ('Interruptor', 'Interruptor de luz', 35.00, 200, 5);
INSERT INTO tb_produtos (nome, descricao, preco, estoque, id_categoria) VALUES ('Serra elétrica', 'Serra elétrica portátil', 300.00, 15, 1);
INSERT INTO tb_produtos (nome, descricao, preco, estoque, id_categoria) VALUES ('Rolo de pintura', 'Rolo para pintura de parede', 25.00, 60, 2);
INSERT INTO tb_produtos (nome, descricao, preco, estoque, id_categoria) VALUES ('Fios elétricos', 'Fios elétricos 2.5mm', 90.00, 500, 5);

SELECT * FROM tb_produtos WHERE preco > 100.00;
SELECT * FROM tb_produtos WHERE preco BETWEEN 70.00 AND 150.00;
SELECT * FROM tb_produtos WHERE nome LIKE '%C%';


-- aprendi que da para usar essa grafia de p. e c. para diminuir a quantidade de coisas escritas. da para usar o AS também para mudar o nome da coluna no select

SELECT p.*, c.nome AS categoria_nome 
FROM tb_produtos p
INNER JOIN tb_categorias c ON p.id_categoria = c.id_categoria;

SELECT p.*, c.nome AS categoria_nome 
FROM tb_produtos p
INNER JOIN tb_categorias c ON p.id_categoria = c.id_categoria
WHERE c.nome = 'Hidráulica';
