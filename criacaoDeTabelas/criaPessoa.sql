CREATE TABLE Pessoa (
  idPessoa INT  IDENTITY(1,1) NOT NULL,
  Nome VARCHAR(255) NOT NULL,
  Logradouro VARCHAR(255),
  Cidade VARCHAR(255),
  Estado CHAR(2)  NOT NULL,
  Telefone VARCHAR(11)  NOT NULL,
  Email VARCHAR(255)  NOT NULL
  PRIMARY KEY([idPessoa])
);
