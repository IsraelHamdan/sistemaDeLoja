CREATE TABLE Usuarios (
  idUser INT PRIMARY KEY IDENTITY(1,1) NOT NULL,
  Login VARCHAR(20) UNIQUE NOT NULL,
  Senha VARCHAR(30) NOT NULL
);