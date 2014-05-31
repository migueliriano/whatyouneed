
USE [whatyouneed]
GO

/****** Object:  StoredProcedure [dbo].[proc_CurrencyTypesLoadByPrimaryKey] Script Date: 5/25/2014 10:43:31 PM ******/
IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[proc_CurrencyTypesLoadByPrimaryKey]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
    DROP PROCEDURE [dbo].[proc_CurrencyTypesLoadByPrimaryKey];
GO

CREATE PROCEDURE [dbo].[proc_CurrencyTypesLoadByPrimaryKey]
(
	@CurrencyTypeId int
)
AS
BEGIN
	SET NOCOUNT ON
	DECLARE @Err int

	SELECT
		[CurrencyTypeId], 
		[Description]
	FROM [dbo].[CurrencyTypes]
	WHERE
		([CurrencyTypeId] = @CurrencyTypeId)

	SET @Err = @@Error

	RETURN @Err
END
GO	


-- Display the status of Proc creation
IF (@@Error = 0) PRINT 'Procedure Creation: proc_CurrencyTypesLoadByPrimaryKey Succeeded'
ELSE PRINT 'Procedure Creation: proc_CurrencyTypesLoadByPrimaryKey Error on Creation'
GO 


/****** Object:  StoredProcedure [dbo].[proc_CurrencyTypesLoadAll] Script Date: 5/25/2014 10:43:31 PM ******/
IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[proc_CurrencyTypesLoadAll]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
    DROP PROCEDURE [dbo].[proc_CurrencyTypesLoadAll];
GO

CREATE PROCEDURE [dbo].[proc_CurrencyTypesLoadAll]
AS
BEGIN

	SET NOCOUNT ON
	DECLARE @Err int

	SELECT
		[CurrencyTypeId], 
		[Description]
	FROM [dbo].[CurrencyTypes]

	SET @Err = @@Error

	RETURN @Err
END
GO


-- Display the status of Proc creation
IF (@@Error = 0) PRINT 'Procedure Creation: proc_CurrencyTypesLoadAll Succeeded'
ELSE PRINT 'Procedure Creation: proc_CurrencyTypesLoadAll Error on Creation'
GO 


/****** Object:  StoredProcedure [dbo].[proc_CurrencyTypesUpdate] Script Date: 5/25/2014 10:43:31 PM ******/
IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[proc_CurrencyTypesUpdate]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
    DROP PROCEDURE [dbo].[proc_CurrencyTypesUpdate];
GO

CREATE PROCEDURE [dbo].[proc_CurrencyTypesUpdate]
(
	@CurrencyTypeId int, 
	@Description varchar(10)
)
AS
BEGIN

	SET NOCOUNT OFF
	DECLARE @Err int
	
	
	

	UPDATE [CurrencyTypes]
	SET
		[Description] = @Description
	WHERE
		([CurrencyTypeId] = @CurrencyTypeId)

	SET @Err = @@Error


	RETURN @Err
END
GO



-- Display the status of Proc creation
IF (@@Error = 0) PRINT 'Procedure Creation: proc_CurrencyTypesUpdate Succeeded'
ELSE PRINT 'Procedure Creation: proc_CurrencyTypesUpdate Error on Creation'
GO 


/****** Object:  StoredProcedure [dbo].[proc_CurrencyTypesInsert] Script Date: 5/25/2014 10:43:31 PM ******/
IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[proc_CurrencyTypesInsert]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
    DROP PROCEDURE [dbo].[proc_CurrencyTypesInsert];
GO

CREATE PROCEDURE [dbo].[proc_CurrencyTypesInsert]
(
	@CurrencyTypeId int, 
	@Description varchar(10)
)
AS
BEGIN

	SET NOCOUNT OFF
	DECLARE @Err int

	
	
	INSERT
	INTO [CurrencyTypes]
	(
		[CurrencyTypeId], 
		[Description]
	)
	
	VALUES
	(
		@CurrencyTypeId, 
		@Description
	)


	SET @Err = @@Error



	

	RETURN @Err
END
GO


-- Display the status of Proc creation
IF (@@Error = 0) PRINT 'Procedure Creation: proc_CurrencyTypesInsert Succeeded'
ELSE PRINT 'Procedure Creation: proc_CurrencyTypesInsert Error on Creation'
GO 


/****** Object:  StoredProcedure [dbo].[proc_CurrencyTypesDelete] Script Date: 5/25/2014 10:43:31 PM ******/
IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[proc_CurrencyTypesDelete]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
    DROP PROCEDURE [dbo].[proc_CurrencyTypesDelete];
GO

CREATE PROCEDURE [dbo].[proc_CurrencyTypesDelete]
(
	@CurrencyTypeId int
)
AS
BEGIN

	SET NOCOUNT OFF
	DECLARE @Err int

	DELETE
	FROM [dbo].[CurrencyTypes]
	WHERE
		([CurrencyTypeId] = @CurrencyTypeId)

	SET @Err = @@Error

	RETURN @Err
END
GO


-- Display the status of Proc creation
IF (@@Error = 0) PRINT 'Procedure Creation: proc_CurrencyTypesDelete Succeeded'
ELSE PRINT 'Procedure Creation: proc_CurrencyTypesDelete Error on Creation'
GO 

