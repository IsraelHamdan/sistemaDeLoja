Select 
	M.Fk_idProduto as id,
	P.nomeProduto as produto, 
	SUM(M.quantidade * M.precoUnitario) / SUM(M.quantidade) as Media
	From Movimentos M 
	inner join Produtos P on M.FK_idProduto = idProduto
	Where M.tipo = 'V'
	Group by M.FK_idProduto, P.nomeProduto


