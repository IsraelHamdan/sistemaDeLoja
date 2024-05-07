CREATE TABLE Movimentos (
  idMovimento INT PRIMARY KEY NOT NULL,
  tipo CHAR(1) NOT NULL,
  quantidade INT NOT NULL,
  precoUnitario MONEY NOT NULL,
  FK_idUsuario INT,
  FK_idPessoa INT, 
  FK_idProduto INT,
  CONSTRAINT C_fk_idUsuario FOREIGN KEY (FK_idUsuario) REFERENCES Usuarios(idUser), 
  CONSTRAINT C_fk_idPessoa FOREIGN KEY (FK_idPessoa) REFERENCES Pessoas(idPessoa),
  CONSTRAINT C_fk_idProduto FOREIGN KEY (FK_idProduto) REFERENCES Produtos(idProduto)
);