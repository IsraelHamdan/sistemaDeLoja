Select 
	M.idMovimento, 
	P.nomeProduto as Produto, 
	PJ.Nome as Fornecedor, 
	M.quantidade, 
	M.precoUnitario,
	M.quantidade *  M.precoUnitario as Total
	From Movimentos M
	INNER JOIN Produtos P ON M.FK_idProduto = P.idProduto
	INNER JOIN Pessoas PJ ON M.FK_idPessoa = PJ.idPessoa 
	Where M.tipo = 'E'