Select 
	U.idUser,
	U.loginUser 
	From Usuarios U
	Left join Movimentos M  on U.idUser = M.FK_idUsuario
	Where 
		M.idMovimento IS NULL OR M.tipo <> 'S';