
CREATE DATABASE ECommerce;
USE ECommerce;

CREATE TABLE Produtos (
    id BIGINT AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    descricao TEXT,
    preco DECIMAL(10, 2),
    categoria VARCHAR(50),
    estoque INT,
    PRIMARY KEY (id)
);

INSERT INTO Produtos (nome, descricao, preco, categoria, estoque) VALUES
('Sofá 3 Lugares', 'Sofá confortável de 3 lugares, revestido em tecido cinza', 1500.00, 'Sala de Estar', 5),
('Mesa de Jantar', 'Mesa de jantar de madeira com 6 cadeiras', 499.00, 'Sala de Jantar', 3),
('Cama Queen Size', 'Cama Queen Size com estrutura de madeira', 2200.00, 'Quarto', 4),
('Guarda-roupa', 'Guarda-roupa de 6 portas com espelho', 1800.00, 'Quarto', 6),
('Escrivaninha', 'Escrivaninha branca com 3 gavetas', 500.00, 'Escritório', 10),
('Estante de Livros', 'Estante de livros em madeira, 5 prateleiras', 750.00, 'Escritório', 7),
('Cadeira de Escritório', 'Cadeira ergonômica preta', 300.00, 'Escritório', 12),
('Poltrona', 'Poltrona reclinável de couro', 1300.00, 'Sala de Estar', 4);

SELECT * FROM Produtos WHERE preco > 500;

SELECT * FROM Produtos WHERE preco < 500;

UPDATE Produtos SET preco = 2900.00 WHERE id = 2;
