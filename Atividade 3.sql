CREATE DATABASE Registro_Escolar;
USE Registro_Escolar;

CREATE TABLE Estudantes (
    id BIGINT AUTO_INCREMENT,
    nome VARCHAR(100),
    idade INT,
    serie VARCHAR(10),
    nota DECIMAL(4, 2),
    data_matricula DATE,
    PRIMARY KEY (id)
);

INSERT INTO Estudantes (nome, idade, serie, nota, data_matricula) VALUES
('Isabela Fernandes', 17, '3º Ano EM', 8.3, '2021-02-01'),
('Gabriel Sullivan', 16, '2º Ano EM', 7.1, '2022-02-01'),
('Mariana Costa', 14, '9º Ano', 8.9, '2023-02-01'),
('Matheus Yamamoto', 13, '8º Ano', 6.7, '2023-02-01'),
('Ana Beatriz Johnson', 13, '8º Ano', 6.2, '2023-02-01'),
('Lucas Nakamura', 14, '9º Ano', 7.4, '2023-02-01'),
('João Pedro Schmidt', 15, '1º Ano EM', 7.8, '2023-02-01'),
('Sofia Oliveira', 12, '7º Ano', 8.5, '2023-02-01');


SELECT * FROM Estudantes WHERE nota > 7.0;

SELECT * FROM Estudantes WHERE nota < 7.0;

UPDATE Estudantes SET nota = 6.8 WHERE id = 2;
