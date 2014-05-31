
USE [whatyouneed]
GO

/****** Object:  StoredProcedure [dbo].[proc_ProductLoadByPrimaryKey] Script Date: 5/25/2014 10:43:31 PM ******/
IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[proc_ProductLoadByPrimaryKey]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
    DROP PROCEDURE [dbo].[proc_ProductLoadByPrimaryKey];
GO

CREATE PROCEDURE [dbo].[proc_ProductLoadByPrimaryKey]
(
	@ProductId varchar(10)
)
AS
BEGIN
	SET NOCOUNT ON
	DECLARE @Err int

	SELECT
		[ProductId], 
		[Description], 
		[CountryId], 
		[StateId], 
		[Price], 
		[CurrencyTypeId], 
		[ConditionId], 
		[Stock], 
		[CategoryId], 
		[ServiceId], 
		[BrandId], 
		[UserId]
	FROM [dbo].[Product]
	WHERE
		([ProductId] = @ProductId)

	SET @Err = @@Error

	RETURN @Err
END
GO	


-- Display the status of Proc creation
IF (@@Error = 0) PRINT 'Procedure Creation: proc_ProductLoadByPrimaryKey Succeeded'
ELSE PRINT 'Procedure Creation: proc_ProductLoadByPrimaryKey Error on Creation'
GO 


/****** Object:  StoredProcedure [dbo].[proc_ProductLoadAll] Script Date: 5/25/2014 10:43:31 PM ******/
IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[proc_ProductLoadAll]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
    DROP PROCEDURE [dbo].[proc_ProductLoadAll];
GO

CREATE PROCEDURE [dbo].[proc_ProductLoadAll]
AS
BEGIN

	SET NOCOUNT ON
	DECLARE @Err int

	SELECT
		[ProductId], 
		[Description], 
		[CountryId], 
		[StateId], 
		[Price], 
		[CurrencyTypeId], 
		[ConditionId], 
		[Stock], 
		[CategoryId], 
		[ServiceId], 
		[BrandId], 
		[UserId]
	FROM [dbo].[Product]

	SET @Err = @@Error

	RETURN @Err
END
GO


-- Display the status of Proc creation
IF (@@Error = 0) PRINT 'Procedure Creation: proc_ProductLoadAll Succeeded'
ELSE PRINT 'Procedure Creation: proc_ProductLoadAll Error on Creation'
GO 


/****** Object:  StoredProcedure [dbo].[proc_ProductUpdate] Script Date: 5/25/2014 10:43:31 PM ******/
IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[proc_ProductUpdate]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
    DROP PROCEDURE [dbo].[proc_ProductUpdate];
GO

CREATE PROCEDURE [dbo].[proc_ProductUpdate]
(
	@ProductId varchar(10), 
	@Description varchar(30), 
	@CountryId int, 
	@StateId int, 
	@Price money, 
	@CurrencyTypeId int, 
	@ConditionId int, 
	@Stock int, 
	@CategoryId int, 
	@ServiceId int, 
	@BrandId int, 
	@UserId varchar(50)
)
AS
BEGIN

	SET NOCOUNT OFF
	DECLARE @Err int
	
	
	

	UPDATE [Product]
	SET
		[Description] = @Description, 
		[CountryId] = @CountryId, 
		[StateId] = @StateId, 
		[Price] = @Price, 
		[CurrencyTypeId] = @CurrencyTypeId, 
		[ConditionId] = @ConditionId, 
		[Stock] = @Stock, 
		[CategoryId] = @CategoryId, 
		[ServiceId] = @ServiceId, 
		[BrandId] = @BrandId, 
		[UserId] = @UserId
	WHERE
		([ProductId] = @ProductId)

	SET @Err = @@Error


	RETURN @Err
END
GO



-- Display the status of Proc creation
IF (@@Error = 0) PRINT 'Procedure Creation: proc_ProductUpdate Succeeded'
ELSE PRINT 'Procedure Creation: proc_ProductUpdate Error on Creation'
GO 


/****** Object:  StoredProcedure [dbo].[proc_ProductInsert] Script Date: 5/25/2014 10:43:31 PM ******/
IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[proc_ProductInsert]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
    DROP PROCEDURE [dbo].[proc_ProductInsert];
GO

CREATE PROCEDURE [dbo].[proc_ProductInsert]
(
	@ProductId varchar(10), 
	@Description varchar(30), 
	@CountryId int, 
	@StateId int, 
	@Price money, 
	@CurrencyTypeId int, 
	@ConditionId int, 
	@Stock int, 
	@CategoryId int, 
	@ServiceId int, 
	@BrandId int, 
	@UserId varchar(50)
)
AS
BEGIN

	SET NOCOUNT OFF
	DECLARE @Err int

	
	
	INSERT
	INTO [Product]
	(
		[ProductId], 
		[Description], 
		[CountryId], 
		[StateId], 
		[Price], 
		[CurrencyTypeId], 
		[ConditionId], 
		[Stock], 
		[CategoryId], 
		[ServiceId], 
		[BrandId], 
		[UserId]
	)
	
	VALUES
	(
		@ProductId, 
		@Description, 
		@CountryId, 
		@StateId, 
		@Price, 
		@CurrencyTypeId, 
		@ConditionId, 
		@Stock, 
		@CategoryId, 
		@ServiceId, 
		@BrandId, 
		@UserId
	)


	SET @Err = @@Error



	

	RETURN @Err
END
GO


-- Display the status of Proc creation
IF (@@Error = 0) PRINT 'Procedure Creation: proc_ProductInsert Succeeded'
ELSE PRINT 'Procedure Creation: proc_ProductInsert Error on Creation'
GO 


/****** Object:  StoredProcedure [dbo].[proc_ProductDelete] Script Date: 5/25/2014 10:43:31 PM ******/
IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[proc_ProductDelete]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
    DROP PROCEDURE [dbo].[proc_ProductDelete];
GO

CREATE PROCEDURE [dbo].[proc_ProductDelete]
(
	@ProductId varchar(10)
)
AS
BEGIN

	SET NOCOUNT OFF
	DECLARE @Err int

	DELETE
	FROM [dbo].[Product]
	WHERE
		([ProductId] = @ProductId)

	SET @Err = @@Error

	RETURN @Err
END
GO


-- Display the status of Proc creation
IF (@@Error = 0) PRINT 'Procedure Creation: proc_ProductDelete Succeeded'
ELSE PRINT 'Procedure Creation: proc_ProductDelete Error on Creation'
GO 

