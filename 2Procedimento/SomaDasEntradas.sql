Select 
	M.Fk_idProduto as idProduto, 
	P.nomeProduto as Produto, 
	SUM(M.quantidade * M.precoUnitario) as Soma 
	From Movimentos M 
	Inner Join Produtos P  ON M.FK_idProduto = P.idProduto
	Where M.tipo = 'E' 
	Group by M.FK_idProduto, P.nomeProduto;
