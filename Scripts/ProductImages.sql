
USE [whatyouneed]
GO

/****** Object:  StoredProcedure [dbo].[proc_ProductImagesLoadByPrimaryKey] Script Date: 5/25/2014 10:43:32 PM ******/
IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[proc_ProductImagesLoadByPrimaryKey]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
    DROP PROCEDURE [dbo].[proc_ProductImagesLoadByPrimaryKey];
GO

CREATE PROCEDURE [dbo].[proc_ProductImagesLoadByPrimaryKey]
(
	@ImageId int
)
AS
BEGIN
	SET NOCOUNT ON
	DECLARE @Err int

	SELECT
		[ImageId], 
		[ProductId], 
		[Images]
	FROM [dbo].[ProductImages]
	WHERE
		([ImageId] = @ImageId)

	SET @Err = @@Error

	RETURN @Err
END
GO	


-- Display the status of Proc creation
IF (@@Error = 0) PRINT 'Procedure Creation: proc_ProductImagesLoadByPrimaryKey Succeeded'
ELSE PRINT 'Procedure Creation: proc_ProductImagesLoadByPrimaryKey Error on Creation'
GO 


/****** Object:  StoredProcedure [dbo].[proc_ProductImagesLoadAll] Script Date: 5/25/2014 10:43:32 PM ******/
IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[proc_ProductImagesLoadAll]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
    DROP PROCEDURE [dbo].[proc_ProductImagesLoadAll];
GO

CREATE PROCEDURE [dbo].[proc_ProductImagesLoadAll]
AS
BEGIN

	SET NOCOUNT ON
	DECLARE @Err int

	SELECT
		[ImageId], 
		[ProductId], 
		[Images]
	FROM [dbo].[ProductImages]

	SET @Err = @@Error

	RETURN @Err
END
GO


-- Display the status of Proc creation
IF (@@Error = 0) PRINT 'Procedure Creation: proc_ProductImagesLoadAll Succeeded'
ELSE PRINT 'Procedure Creation: proc_ProductImagesLoadAll Error on Creation'
GO 


/****** Object:  StoredProcedure [dbo].[proc_ProductImagesUpdate] Script Date: 5/25/2014 10:43:32 PM ******/
IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[proc_ProductImagesUpdate]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
    DROP PROCEDURE [dbo].[proc_ProductImagesUpdate];
GO

CREATE PROCEDURE [dbo].[proc_ProductImagesUpdate]
(
	@ImageId int, 
	@ProductId varchar(10), 
	@Images varchar(100)
)
AS
BEGIN

	SET NOCOUNT OFF
	DECLARE @Err int
	
	
	

	UPDATE [ProductImages]
	SET
		[ProductId] = @ProductId, 
		[Images] = @Images
	WHERE
		([ImageId] = @ImageId)

	SET @Err = @@Error


	RETURN @Err
END
GO



-- Display the status of Proc creation
IF (@@Error = 0) PRINT 'Procedure Creation: proc_ProductImagesUpdate Succeeded'
ELSE PRINT 'Procedure Creation: proc_ProductImagesUpdate Error on Creation'
GO 


/****** Object:  StoredProcedure [dbo].[proc_ProductImagesInsert] Script Date: 5/25/2014 10:43:32 PM ******/
IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[proc_ProductImagesInsert]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
    DROP PROCEDURE [dbo].[proc_ProductImagesInsert];
GO

CREATE PROCEDURE [dbo].[proc_ProductImagesInsert]
(
	@ImageId int, 
	@ProductId varchar(10), 
	@Images varchar(100)
)
AS
BEGIN

	SET NOCOUNT OFF
	DECLARE @Err int

	
	
	INSERT
	INTO [ProductImages]
	(
		[ImageId], 
		[ProductId], 
		[Images]
	)
	
	VALUES
	(
		@ImageId, 
		@ProductId, 
		@Images
	)


	SET @Err = @@Error



	

	RETURN @Err
END
GO


-- Display the status of Proc creation
IF (@@Error = 0) PRINT 'Procedure Creation: proc_ProductImagesInsert Succeeded'
ELSE PRINT 'Procedure Creation: proc_ProductImagesInsert Error on Creation'
GO 


/****** Object:  StoredProcedure [dbo].[proc_ProductImagesDelete] Script Date: 5/25/2014 10:43:32 PM ******/
IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[proc_ProductImagesDelete]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
    DROP PROCEDURE [dbo].[proc_ProductImagesDelete];
GO

CREATE PROCEDURE [dbo].[proc_ProductImagesDelete]
(
	@ImageId int
)
AS
BEGIN

	SET NOCOUNT OFF
	DECLARE @Err int

	DELETE
	FROM [dbo].[ProductImages]
	WHERE
		([ImageId] = @ImageId)

	SET @Err = @@Error

	RETURN @Err
END
GO


-- Display the status of Proc creation
IF (@@Error = 0) PRINT 'Procedure Creation: proc_ProductImagesDelete Succeeded'
ELSE PRINT 'Procedure Creation: proc_ProductImagesDelete Error on Creation'
GO 

