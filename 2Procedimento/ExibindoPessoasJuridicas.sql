Select 
	PJ.idPJ, 
	PJ.CNPJ,
	P.Nome, 
	P.Logradouro, 
	P.Cidade, 
	P.Estado, 
	P.Telefone, 
	P.Telefone 
	From PessoasJuridicas PJ JOIN Pessoas P ON PJ.idPJ = P.idPessoa;