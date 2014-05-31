
USE [whatyouneed]
GO

/****** Object:  StoredProcedure [dbo].[proc_CountriesLoadByPrimaryKey] Script Date: 5/25/2014 10:43:31 PM ******/
IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[proc_CountriesLoadByPrimaryKey]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
    DROP PROCEDURE [dbo].[proc_CountriesLoadByPrimaryKey];
GO

CREATE PROCEDURE [dbo].[proc_CountriesLoadByPrimaryKey]
(
	@CountryId int
)
AS
BEGIN
	SET NOCOUNT ON
	DECLARE @Err int

	SELECT
		[CountryId], 
		[Description]
	FROM [dbo].[Countries]
	WHERE
		([CountryId] = @CountryId)

	SET @Err = @@Error

	RETURN @Err
END
GO	


-- Display the status of Proc creation
IF (@@Error = 0) PRINT 'Procedure Creation: proc_CountriesLoadByPrimaryKey Succeeded'
ELSE PRINT 'Procedure Creation: proc_CountriesLoadByPrimaryKey Error on Creation'
GO 


/****** Object:  StoredProcedure [dbo].[proc_CountriesLoadAll] Script Date: 5/25/2014 10:43:31 PM ******/
IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[proc_CountriesLoadAll]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
    DROP PROCEDURE [dbo].[proc_CountriesLoadAll];
GO

CREATE PROCEDURE [dbo].[proc_CountriesLoadAll]
AS
BEGIN

	SET NOCOUNT ON
	DECLARE @Err int

	SELECT
		[CountryId], 
		[Description]
	FROM [dbo].[Countries]

	SET @Err = @@Error

	RETURN @Err
END
GO


-- Display the status of Proc creation
IF (@@Error = 0) PRINT 'Procedure Creation: proc_CountriesLoadAll Succeeded'
ELSE PRINT 'Procedure Creation: proc_CountriesLoadAll Error on Creation'
GO 


/****** Object:  StoredProcedure [dbo].[proc_CountriesUpdate] Script Date: 5/25/2014 10:43:31 PM ******/
IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[proc_CountriesUpdate]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
    DROP PROCEDURE [dbo].[proc_CountriesUpdate];
GO

CREATE PROCEDURE [dbo].[proc_CountriesUpdate]
(
	@CountryId int, 
	@Description varchar(100)
)
AS
BEGIN

	SET NOCOUNT OFF
	DECLARE @Err int
	
	
	

	UPDATE [Countries]
	SET
		[Description] = @Description
	WHERE
		([CountryId] = @CountryId)

	SET @Err = @@Error


	RETURN @Err
END
GO



-- Display the status of Proc creation
IF (@@Error = 0) PRINT 'Procedure Creation: proc_CountriesUpdate Succeeded'
ELSE PRINT 'Procedure Creation: proc_CountriesUpdate Error on Creation'
GO 


/****** Object:  StoredProcedure [dbo].[proc_CountriesInsert] Script Date: 5/25/2014 10:43:31 PM ******/
IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[proc_CountriesInsert]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
    DROP PROCEDURE [dbo].[proc_CountriesInsert];
GO

CREATE PROCEDURE [dbo].[proc_CountriesInsert]
(
	@CountryId int, 
	@Description varchar(100)
)
AS
BEGIN

	SET NOCOUNT OFF
	DECLARE @Err int

	
	
	INSERT
	INTO [Countries]
	(
		[CountryId], 
		[Description]
	)
	
	VALUES
	(
		@CountryId, 
		@Description
	)


	SET @Err = @@Error



	

	RETURN @Err
END
GO


-- Display the status of Proc creation
IF (@@Error = 0) PRINT 'Procedure Creation: proc_CountriesInsert Succeeded'
ELSE PRINT 'Procedure Creation: proc_CountriesInsert Error on Creation'
GO 


/****** Object:  StoredProcedure [dbo].[proc_CountriesDelete] Script Date: 5/25/2014 10:43:31 PM ******/
IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[proc_CountriesDelete]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
    DROP PROCEDURE [dbo].[proc_CountriesDelete];
GO

CREATE PROCEDURE [dbo].[proc_CountriesDelete]
(
	@CountryId int
)
AS
BEGIN

	SET NOCOUNT OFF
	DECLARE @Err int

	DELETE
	FROM [dbo].[Countries]
	WHERE
		([CountryId] = @CountryId)

	SET @Err = @@Error

	RETURN @Err
END
GO


-- Display the status of Proc creation
IF (@@Error = 0) PRINT 'Procedure Creation: proc_CountriesDelete Succeeded'
ELSE PRINT 'Procedure Creation: proc_CountriesDelete Error on Creation'
GO 

