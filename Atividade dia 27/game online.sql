CREATE DATABASE db_generation_game_online;

USE db_generation_game_online;

CREATE TABLE Classe(
	 id INT AUTO_INCREMENT PRIMARY KEY,
     classe VARCHAR(255) NOT NULL
);

CREATE TABLE Personagem(
	id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    ataque INT,
    defesa INT,
    id_classe INT,
    FOREIGN KEY (id_classe) REFERENCES Classe (id)
);

INSERT INTO Classe(classe)
VALUES ('Arqueire'), ('Guerreire'), ('Feiticeire'),('Invocadore'), ('Assassine');


INSERT INTO Personagem (nome, ataque, defesa, id_classe) VALUES ('DarkArcher', 1900, 600, 1);
INSERT INTO Personagem (nome, ataque, defesa, id_classe) VALUES ('SteelWarrior', 2500, 2000, 2);
INSERT INTO Personagem (nome, ataque, defesa, id_classe) VALUES ('MysticSorcerer', 2300, 1100, 3);
INSERT INTO Personagem (nome, ataque, defesa, id_classe) VALUES ('InvokerMaster', 800, 2800, 4);
INSERT INTO Personagem (nome, ataque, defesa, id_classe) VALUES ('SilentAssassin', 3000, 700, 5);
INSERT INTO Personagem (nome, ataque, defesa, id_classe) VALUES ('PhantomArcher', 2000, 1700, 1);
INSERT INTO Personagem (nome, ataque, defesa, id_classe) VALUES ('BraveWarrior', 1950, 2100, 2);
INSERT INTO Personagem (nome, ataque, defesa, id_classe) VALUES ('ArcaneSorcerer', 700, 1650, 3);


SELECT * FROM Personagem WHERE ataque > 2000;
SELECT * FROM Personagem WHERE defesa BETWEEN 1000 AND 2000;
SELECT id, nome FROM Personagem WHERE nome LIKE "%c%";

SELECT Personagem.id, nome, ataque, defesa, Classe.classe 
FROM Personagem INNER JOIN Classe
ON Personagem.id_classe = Classe.id
WHERE Classe.classe = "Arqueire";


