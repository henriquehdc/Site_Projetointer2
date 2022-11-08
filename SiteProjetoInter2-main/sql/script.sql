-- Esse script vale para o MySQL 8.x. Se seu MySQL for 5.x, precisa executar essa linha comentada:
CREATE DATABASE IF NOT EXISTS cinemystik;
-- CREATE DATABASE IF NOT EXISTS cinemystik DEFAULT CHARACTER SET utf8mb4 DEFAULT COLLATE utf8mb4_0900_ai_ci;

USE cinemystik;

CREATE TABLE Filme (
  idFilme INT NOT NULL AUTO_INCREMENT,
  nome VARCHAR(45) NOT NULL,
  ano INT NOT NULL,
  diretor VARCHAR(45) NOT NULL,
  sinopse VARCHAR(1500) NOT NULL,
  genero VARCHAR(45) NOT NULL,
  subGenero VARCHAR(45) NULL,
  PRIMARY KEY (idFilme)
);

CREATE TABLE Cadastro (
  idCadastro INT NOT NULL AUTO_INCREMENT,
  nome VARCHAR(45) NOT NULL,
  nota INT NOT NULL,
  comentario VARCHAR(100) NOT NULL,
  idFilme INT NOT NULL,
  PRIMARY KEY (idCadastro),
  CONSTRAINT Cadastro_Filme FOREIGN KEY (idFilme) REFERENCES cinemystik.Filme (idFilme)
);
