

USE [whatyouneed]
GO

/****** Object:  StoredProcedure [dbo].[proc_AccountTypeLoadByPrimaryKey] Script Date: 5/25/2014 10:43:31 PM ******/
IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[proc_AccountTypeLoadByPrimaryKey]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
    DROP PROCEDURE [dbo].[proc_AccountTypeLoadByPrimaryKey];
GO

CREATE PROCEDURE [dbo].[proc_AccountTypeLoadByPrimaryKey]
(
	@AccountId int
)
AS
BEGIN
	SET NOCOUNT ON
	DECLARE @Err int

	SELECT
		[AccountId], 
		[Description]
	FROM [dbo].[AccountType]
	WHERE
		([AccountId] = @AccountId)

	SET @Err = @@Error

	RETURN @Err
END
GO	


-- Display the status of Proc creation
IF (@@Error = 0) PRINT 'Procedure Creation: proc_AccountTypeLoadByPrimaryKey Succeeded'
ELSE PRINT 'Procedure Creation: proc_AccountTypeLoadByPrimaryKey Error on Creation'
GO 


/****** Object:  StoredProcedure [dbo].[proc_AccountTypeLoadAll] Script Date: 5/25/2014 10:43:31 PM ******/
IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[proc_AccountTypeLoadAll]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
    DROP PROCEDURE [dbo].[proc_AccountTypeLoadAll];
GO

CREATE PROCEDURE [dbo].[proc_AccountTypeLoadAll]
AS
BEGIN

	SET NOCOUNT ON
	DECLARE @Err int

	SELECT
		[AccountId], 
		[Description]
	FROM [dbo].[AccountType]

	SET @Err = @@Error

	RETURN @Err
END
GO


-- Display the status of Proc creation
IF (@@Error = 0) PRINT 'Procedure Creation: proc_AccountTypeLoadAll Succeeded'
ELSE PRINT 'Procedure Creation: proc_AccountTypeLoadAll Error on Creation'
GO 


/****** Object:  StoredProcedure [dbo].[proc_AccountTypeUpdate] Script Date: 5/25/2014 10:43:31 PM ******/
IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[proc_AccountTypeUpdate]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
    DROP PROCEDURE [dbo].[proc_AccountTypeUpdate];
GO

CREATE PROCEDURE [dbo].[proc_AccountTypeUpdate]
(
	@AccountId int, 
	@Description varchar(30) = NULL
)
AS
BEGIN

	SET NOCOUNT OFF
	DECLARE @Err int
	
	
	

	UPDATE [AccountType]
	SET
		[Description] = @Description
	WHERE
		([AccountId] = @AccountId)

	SET @Err = @@Error


	RETURN @Err
END
GO



-- Display the status of Proc creation
IF (@@Error = 0) PRINT 'Procedure Creation: proc_AccountTypeUpdate Succeeded'
ELSE PRINT 'Procedure Creation: proc_AccountTypeUpdate Error on Creation'
GO 


/****** Object:  StoredProcedure [dbo].[proc_AccountTypeInsert] Script Date: 5/25/2014 10:43:31 PM ******/
IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[proc_AccountTypeInsert]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
    DROP PROCEDURE [dbo].[proc_AccountTypeInsert];
GO

CREATE PROCEDURE [dbo].[proc_AccountTypeInsert]
(
	@AccountId int, 
	@Description varchar(30) = NULL
)
AS
BEGIN

	SET NOCOUNT OFF
	DECLARE @Err int

	
	
	INSERT
	INTO [AccountType]
	(
		[AccountId], 
		[Description]
	)
	
	VALUES
	(
		@AccountId, 
		@Description
	)


	SET @Err = @@Error



	

	RETURN @Err
END
GO


-- Display the status of Proc creation
IF (@@Error = 0) PRINT 'Procedure Creation: proc_AccountTypeInsert Succeeded'
ELSE PRINT 'Procedure Creation: proc_AccountTypeInsert Error on Creation'
GO 


/****** Object:  StoredProcedure [dbo].[proc_AccountTypeDelete] Script Date: 5/25/2014 10:43:31 PM ******/
IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[proc_AccountTypeDelete]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
    DROP PROCEDURE [dbo].[proc_AccountTypeDelete];
GO

CREATE PROCEDURE [dbo].[proc_AccountTypeDelete]
(
	@AccountId int
)
AS
BEGIN

	SET NOCOUNT OFF
	DECLARE @Err int

	DELETE
	FROM [dbo].[AccountType]
	WHERE
		([AccountId] = @AccountId)

	SET @Err = @@Error

	RETURN @Err
END
GO


-- Display the status of Proc creation
IF (@@Error = 0) PRINT 'Procedure Creation: proc_AccountTypeDelete Succeeded'
ELSE PRINT 'Procedure Creation: proc_AccountTypeDelete Error on Creation'
GO 

