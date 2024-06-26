CREATE DATABASE RH_Empresa;
USE RH_Empresa;

CREATE TABLE Funcionarios (
    id BIGINT AUTO_INCREMENT,
    nome VARCHAR(100),
    cargo VARCHAR(50),
    salario DECIMAL(10, 2),
    data_contratacao DATE,
    departamento VARCHAR(50),
    PRIMARY KEY(id)
);

INSERT INTO Funcionarios (nome, cargo, salario, data_contratacao, departamento) VALUES
('Ana Silva', 'Analista', 2500.00, '2020-05-01', 'TI'),
('João Souza', 'Desenvolvedor', 3000.00, '2019-08-15', 'TI'),
('Maria Santos', 'Gerente', 4000.00, '2018-10-10', 'Financeiro'),
('Pedro Oliveira', 'Auxiliar', 1800.00, '2021-01-20', 'RH'),
('Carla Martins', 'Assistente', 1500.00, '2022-03-25', 'Marketing');

SELECT * FROM Funcionarios WHERE salario > 2000;

SELECT * FROM Funcionarios WHERE salario < 2000;

UPDATE Funcionarios SET salario = 2800.00 WHERE id = 1;
