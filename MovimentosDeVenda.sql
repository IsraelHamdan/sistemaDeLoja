Select 
	M.idMovimento, 
	P.nomeProduto as Produto,
	PF.Nome as Comprador,
	M.quantidade, 
	M.precoUnitario,
	M.quantidade *  M.precoUnitario as Preço
	From Movimentos M
	INNER JOIN Produtos P ON M.FK_idProduto = P.idProduto
	INNER JOIN Pessoas PF ON M.FK_idPessoa = PF.idPessoa
	Where M.tipo = 'S'; 