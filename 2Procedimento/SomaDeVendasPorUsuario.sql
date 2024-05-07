Select 
	U.idUser as id, 
	U.loginUser as nome, 
	SUM(M.precoUnitario) as Soma
	From Usuarios U 
	Left Join Movimentos M on U.idUser = M.FK_idUsuario
	Where M.tipo = 'S'
	Group by U.idUser, U.loginUser