SELECT 
	PF.idPessoaFisica, 
	PF.CPF, 
	P.Nome, 
	P.Logradouro, 
	P.Cidade, 
	P.Estado, 
	P.Telefone, 
	P.Telefone 
	From PessoasFisicas PF
	JOIN Pessoas P ON PF.idPessoaFisica = P.idPessoa;