CREATE TABLE Produtos (
  idProduto INT PRIMARY KEY  NOT NULL,
  nomeProduto VARCHAR(255) NOT NULL,
  quantidade INT NOT NULL,
  preco NUMERIC(10,2) NOT NULL
);