
USE [whatyouneed]
GO

/****** Object:  StoredProcedure [dbo].[proc_BrandsLoadByPrimaryKey] Script Date: 5/25/2014 10:43:31 PM ******/
IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[proc_BrandsLoadByPrimaryKey]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
    DROP PROCEDURE [dbo].[proc_BrandsLoadByPrimaryKey];
GO

CREATE PROCEDURE [dbo].[proc_BrandsLoadByPrimaryKey]
(
	@BrandId int
)
AS
BEGIN
	SET NOCOUNT ON
	DECLARE @Err int

	SELECT
		[BrandId], 
		[Description]
	FROM [dbo].[Brands]
	WHERE
		([BrandId] = @BrandId)

	SET @Err = @@Error

	RETURN @Err
END
GO	


-- Display the status of Proc creation
IF (@@Error = 0) PRINT 'Procedure Creation: proc_BrandsLoadByPrimaryKey Succeeded'
ELSE PRINT 'Procedure Creation: proc_BrandsLoadByPrimaryKey Error on Creation'
GO 


/****** Object:  StoredProcedure [dbo].[proc_BrandsLoadAll] Script Date: 5/25/2014 10:43:31 PM ******/
IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[proc_BrandsLoadAll]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
    DROP PROCEDURE [dbo].[proc_BrandsLoadAll];
GO

CREATE PROCEDURE [dbo].[proc_BrandsLoadAll]
AS
BEGIN

	SET NOCOUNT ON
	DECLARE @Err int

	SELECT
		[BrandId], 
		[Description]
	FROM [dbo].[Brands]

	SET @Err = @@Error

	RETURN @Err
END
GO


-- Display the status of Proc creation
IF (@@Error = 0) PRINT 'Procedure Creation: proc_BrandsLoadAll Succeeded'
ELSE PRINT 'Procedure Creation: proc_BrandsLoadAll Error on Creation'
GO 


/****** Object:  StoredProcedure [dbo].[proc_BrandsUpdate] Script Date: 5/25/2014 10:43:31 PM ******/
IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[proc_BrandsUpdate]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
    DROP PROCEDURE [dbo].[proc_BrandsUpdate];
GO

CREATE PROCEDURE [dbo].[proc_BrandsUpdate]
(
	@BrandId int, 
	@Description varchar(10)
)
AS
BEGIN

	SET NOCOUNT OFF
	DECLARE @Err int
	
	
	

	UPDATE [Brands]
	SET
		[Description] = @Description
	WHERE
		([BrandId] = @BrandId)

	SET @Err = @@Error


	RETURN @Err
END
GO



-- Display the status of Proc creation
IF (@@Error = 0) PRINT 'Procedure Creation: proc_BrandsUpdate Succeeded'
ELSE PRINT 'Procedure Creation: proc_BrandsUpdate Error on Creation'
GO 


/****** Object:  StoredProcedure [dbo].[proc_BrandsInsert] Script Date: 5/25/2014 10:43:31 PM ******/
IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[proc_BrandsInsert]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
    DROP PROCEDURE [dbo].[proc_BrandsInsert];
GO

CREATE PROCEDURE [dbo].[proc_BrandsInsert]
(
	@BrandId int, 
	@Description varchar(10)
)
AS
BEGIN

	SET NOCOUNT OFF
	DECLARE @Err int

	
	
	INSERT
	INTO [Brands]
	(
		[BrandId], 
		[Description]
	)
	
	VALUES
	(
		@BrandId, 
		@Description
	)


	SET @Err = @@Error



	

	RETURN @Err
END
GO


-- Display the status of Proc creation
IF (@@Error = 0) PRINT 'Procedure Creation: proc_BrandsInsert Succeeded'
ELSE PRINT 'Procedure Creation: proc_BrandsInsert Error on Creation'
GO 


/****** Object:  StoredProcedure [dbo].[proc_BrandsDelete] Script Date: 5/25/2014 10:43:31 PM ******/
IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[proc_BrandsDelete]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
    DROP PROCEDURE [dbo].[proc_BrandsDelete];
GO

CREATE PROCEDURE [dbo].[proc_BrandsDelete]
(
	@BrandId int
)
AS
BEGIN

	SET NOCOUNT OFF
	DECLARE @Err int

	DELETE
	FROM [dbo].[Brands]
	WHERE
		([BrandId] = @BrandId)

	SET @Err = @@Error

	RETURN @Err
END
GO


-- Display the status of Proc creation
IF (@@Error = 0) PRINT 'Procedure Creation: proc_BrandsDelete Succeeded'
ELSE PRINT 'Procedure Creation: proc_BrandsDelete Error on Creation'
GO 

