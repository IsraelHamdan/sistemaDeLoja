CREATE TABLE Usuarios (
  idUser INT PRIMARY KEY  NOT NULL,
  loginUser VARCHAR(20) UNIQUE NOT NULL,
  Senha VARCHAR(30) NOT NULL,
  CONSTRAINT C_User Foreign key (idUser) REFERENCES	Pessoas(idPessoa)
);
