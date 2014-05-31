
USE [whatyouneed]
GO

/****** Object:  StoredProcedure [dbo].[proc_CategoriesLoadByPrimaryKey] Script Date: 5/25/2014 10:43:31 PM ******/
IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[proc_CategoriesLoadByPrimaryKey]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
    DROP PROCEDURE [dbo].[proc_CategoriesLoadByPrimaryKey];
GO

CREATE PROCEDURE [dbo].[proc_CategoriesLoadByPrimaryKey]
(
	@CategoryId int
)
AS
BEGIN
	SET NOCOUNT ON
	DECLARE @Err int

	SELECT
		[CategoryId], 
		[Description], 
		[CategoryParent]
	FROM [dbo].[Categories]
	WHERE
		([CategoryId] = @CategoryId)

	SET @Err = @@Error

	RETURN @Err
END
GO	


-- Display the status of Proc creation
IF (@@Error = 0) PRINT 'Procedure Creation: proc_CategoriesLoadByPrimaryKey Succeeded'
ELSE PRINT 'Procedure Creation: proc_CategoriesLoadByPrimaryKey Error on Creation'
GO 


/****** Object:  StoredProcedure [dbo].[proc_CategoriesLoadAll] Script Date: 5/25/2014 10:43:31 PM ******/
IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[proc_CategoriesLoadAll]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
    DROP PROCEDURE [dbo].[proc_CategoriesLoadAll];
GO

CREATE PROCEDURE [dbo].[proc_CategoriesLoadAll]
AS
BEGIN

	SET NOCOUNT ON
	DECLARE @Err int

	SELECT
		[CategoryId], 
		[Description], 
		[CategoryParent]
	FROM [dbo].[Categories]

	SET @Err = @@Error

	RETURN @Err
END
GO


-- Display the status of Proc creation
IF (@@Error = 0) PRINT 'Procedure Creation: proc_CategoriesLoadAll Succeeded'
ELSE PRINT 'Procedure Creation: proc_CategoriesLoadAll Error on Creation'
GO 


/****** Object:  StoredProcedure [dbo].[proc_CategoriesUpdate] Script Date: 5/25/2014 10:43:31 PM ******/
IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[proc_CategoriesUpdate]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
    DROP PROCEDURE [dbo].[proc_CategoriesUpdate];
GO

CREATE PROCEDURE [dbo].[proc_CategoriesUpdate]
(
	@CategoryId int, 
	@Description varchar(10), 
	@CategoryParent int
)
AS
BEGIN

	SET NOCOUNT OFF
	DECLARE @Err int
	
	
	

	UPDATE [Categories]
	SET
		[Description] = @Description, 
		[CategoryParent] = @CategoryParent
	WHERE
		([CategoryId] = @CategoryId)

	SET @Err = @@Error


	RETURN @Err
END
GO



-- Display the status of Proc creation
IF (@@Error = 0) PRINT 'Procedure Creation: proc_CategoriesUpdate Succeeded'
ELSE PRINT 'Procedure Creation: proc_CategoriesUpdate Error on Creation'
GO 


/****** Object:  StoredProcedure [dbo].[proc_CategoriesInsert] Script Date: 5/25/2014 10:43:31 PM ******/
IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[proc_CategoriesInsert]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
    DROP PROCEDURE [dbo].[proc_CategoriesInsert];
GO

CREATE PROCEDURE [dbo].[proc_CategoriesInsert]
(
	@CategoryId int, 
	@Description varchar(10), 
	@CategoryParent int
)
AS
BEGIN

	SET NOCOUNT OFF
	DECLARE @Err int

	
	
	INSERT
	INTO [Categories]
	(
		[CategoryId], 
		[Description], 
		[CategoryParent]
	)
	
	VALUES
	(
		@CategoryId, 
		@Description, 
		@CategoryParent
	)


	SET @Err = @@Error



	

	RETURN @Err
END
GO


-- Display the status of Proc creation
IF (@@Error = 0) PRINT 'Procedure Creation: proc_CategoriesInsert Succeeded'
ELSE PRINT 'Procedure Creation: proc_CategoriesInsert Error on Creation'
GO 


/****** Object:  StoredProcedure [dbo].[proc_CategoriesDelete] Script Date: 5/25/2014 10:43:31 PM ******/
IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[proc_CategoriesDelete]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
    DROP PROCEDURE [dbo].[proc_CategoriesDelete];
GO

CREATE PROCEDURE [dbo].[proc_CategoriesDelete]
(
	@CategoryId int
)
AS
BEGIN

	SET NOCOUNT OFF
	DECLARE @Err int

	DELETE
	FROM [dbo].[Categories]
	WHERE
		([CategoryId] = @CategoryId)

	SET @Err = @@Error

	RETURN @Err
END
GO


-- Display the status of Proc creation
IF (@@Error = 0) PRINT 'Procedure Creation: proc_CategoriesDelete Succeeded'
ELSE PRINT 'Procedure Creation: proc_CategoriesDelete Error on Creation'
GO 

