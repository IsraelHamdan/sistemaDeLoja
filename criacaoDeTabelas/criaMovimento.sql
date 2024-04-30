CREATE TABLE Movimento (
  idMovimento INT PRIMARY KEY IDENTITY(1,1) NOT NULL,
  Tipo CHAR(1) NOT NULL,
  Quantidade INT NOT NULL,
  PrecoUnitario MONEY NOT NULL,
  FK_idUsuario INT NOT NULL,
  FK_idPessoa INT NOT NULL, 
 ) 
