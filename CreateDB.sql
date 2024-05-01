-- criando pessoas 
CREATE TABLE Pessoas(
  idPessoa INT  NOT NULL,
  Nome VARCHAR(255) NOT NULL,
  Logradouro VARCHAR(255),
  Cidade VARCHAR(255),
  Estado CHAR(2)  NOT NULL,
  Telefone VARCHAR(11)  NOT NULL,
  Email VARCHAR(255)  NOT NULL
  PRIMARY KEY([idPessoa])
  CONSTRAINT DF_Pessoa_idPessoa DEFAULT (NEXT VALUE FOR seq_pessoa)
);

CREATE TABLE PessoasFisicas (
  idPessoaFisica INT PRIMARY KEY NOT NULL,
  CPF VARCHAR(11) UNIQUE NOT NULL,
  CONSTRAINT FK_PessoaFisica_Pessoa FOREIGN KEY (idPessoaFisica) REFERENCES Pessoas(idPessoa)
);

CREATE TABLE PessoasJuridicas (
  idPJ INT PRIMARY KEY  NOT NULL,
  CNPJ VARCHAR(11) UNIQUE NOT NULL,
  CONSTRAINT FK_PessoaJuridica_Pessoa FOREIGN KEY (idPJ) REFERENCES Pessoas(idPessoa)
);

CREATE TABLE Usuarios (
  idUser INT PRIMARY KEY  NOT NULL,
  loginUser VARCHAR(20) UNIQUE NOT NULL,
  Senha VARCHAR(30) NOT NULL,
  CONSTRAINT C_User Foreign key (idUser) REFERENCES	Pessoas(idPessoa)
);

 -- criando Produto e movimento
CREATE TABLE Produtos (
  idProduto INT PRIMARY KEY  NOT NULL,
  nomeProduto VARCHAR(255) NOT NULL,
  quantidade INT NOT NULL,
  preco NUMERIC(10,2) NOT NULL
);

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

 -- inserinndo dados dentro das tableas 
 -- inserindo pessoas fisicas 
INSERT INTO Pessoas (idPessoa, Nome, Logradouro, Cidade,  Estado, Telefone, Email)
VALUES
  (1, 'João Silva','Rua', 'São Luis', 'Ma', '11999999999', 'joaosilva@email.com'),
  (2, 'Maria Souza', 'Avenida', 'Petropoles', 'RJ', '21999999999', 'mariasouza@email.com'),
  (3, 'Pedro Oliveira','Condominio', 'Belo Horizonte', 'MG', '31999999999', 'pedrooliveira@email.com');
  
INSERT INTO PessoasFisicas (idPessoaFisica , CPF)
VALUES
  (1, '41412651561'),
  (2, '51651151516'),
  (3,'7784116516');

 
 --inserindo pessoas juridicas 
INSERT INTO Pessoas (idPessoa, Nome, Logradouro, Cidade,  Estado, Telefone, Email)
VALUES
  (4, 'Budwiser','Rua', 'São Luis', 'Ma', '11999999999', 'budwiser@email.com'),
  (5, 'Ambev', 'Avenida', 'Petropoles', 'RJ', '21999999999', 'ambev@email.com'),
  (6, 'Heiniken','Parque', 'Belo Horizonte', 'MG', '31999999999', 'Heiniken@email.com'),
  (7, 'Corona','Parque', 'Belo Horizonte', 'MG', '31999999999', 'Corona@email.com');
  
  INSERT INTO PessoasJuridicas (idPJ, CNPJ)

VALUES
  (4, '2151321531'),
  (5, '1232151546'),
  (6, '1516541351'),
  (7, '5531546535');

INSERT INTO Usuarios (idUser, loginUser, Senha)

Values 
	(1, 'Op1', 'op1'), 
	(2, 'Op2', 'op2') 

-- inserindo os dados do produto	
INSERT INTO Produtos (idProduto, nomeProduto, quantidade, preco)

Values 
	(1, 'Cerveja Budwiser', 800, 5.00), 
	(2, 'Cerveja Heiniken', 800,7.80),
	(3, 'Cerveja Heiniken zero álcool', 800, 7.80), 
	(4, 'Cerveja Corona', 800, 8.00), 
	(5, 'Coca-cola 3L', 1000, 12.00); 

INSERT INTO Movimentos (idMovimento, tipo, quantidade, precoUnitario, FK_idUsuario, FK_idPessoa, FK_idProduto)
VALUES 
	(1, 'V', 10, 5.00, 1, 1, 1), 
	(2, 'E', 100, 2.00, 1, 7, 4),
	(3, 'E', 50, 3.50, 1, 8, 2),   
    (4, 'E', 20, 1.80, 1, 9, 3),   
    (5, 'E', 30, 4.20, 1, 10, 1),  
    (6, 'E', 15, 2.90, 1, 11, 4),  
    (7, 'E', 25, 2.60, 1, 12, 2),
	(8, 'V', 8, 6.00, 1, 2, 2),   
    (9, 'V', 12, 3.20, 1, 3, 3), 
    (10, 'V', 6, 5.50, 1, 4, 1),   
    (11, 'V', 10, 4.80, 1, 5, 4),  
    (12, 'V', 15, 3.90, 1, 6, 3);  