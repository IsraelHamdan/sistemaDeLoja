CREATE TABLE PessoasFisicas (
  idPessoaFisica INT PRIMARY KEY NOT NULL,
  CPF VARCHAR(11) UNIQUE NOT NULL,
  CONSTRAINT FK_PessoaFisica_Pessoa FOREIGN KEY (idPessoaFisica) REFERENCES Pessoas(idPessoa)
);

