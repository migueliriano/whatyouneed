

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


USE [whatyouneed]
GO

/****** Object:  StoredProcedure [dbo].[proc_BuyHeaderLoadByPrimaryKey] Script Date: 5/25/2014 10:43:31 PM ******/
IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[proc_BuyHeaderLoadByPrimaryKey]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
    DROP PROCEDURE [dbo].[proc_BuyHeaderLoadByPrimaryKey];
GO

CREATE PROCEDURE [dbo].[proc_BuyHeaderLoadByPrimaryKey]
(
	@BuyId int
)
AS
BEGIN
	SET NOCOUNT ON
	DECLARE @Err int

	SELECT
		[BuyId], 
		[BuyerId], 
		[Date], 
		[SellerId], 
		[PayModeId], 
		[Total], 
		[DiscountPercentage]
	FROM [dbo].[BuyHeader]
	WHERE
		([BuyId] = @BuyId)

	SET @Err = @@Error

	RETURN @Err
END
GO	


-- Display the status of Proc creation
IF (@@Error = 0) PRINT 'Procedure Creation: proc_BuyHeaderLoadByPrimaryKey Succeeded'
ELSE PRINT 'Procedure Creation: proc_BuyHeaderLoadByPrimaryKey Error on Creation'
GO 


/****** Object:  StoredProcedure [dbo].[proc_BuyHeaderLoadAll] Script Date: 5/25/2014 10:43:31 PM ******/
IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[proc_BuyHeaderLoadAll]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
    DROP PROCEDURE [dbo].[proc_BuyHeaderLoadAll];
GO

CREATE PROCEDURE [dbo].[proc_BuyHeaderLoadAll]
AS
BEGIN

	SET NOCOUNT ON
	DECLARE @Err int

	SELECT
		[BuyId], 
		[BuyerId], 
		[Date], 
		[SellerId], 
		[PayModeId], 
		[Total], 
		[DiscountPercentage]
	FROM [dbo].[BuyHeader]

	SET @Err = @@Error

	RETURN @Err
END
GO


-- Display the status of Proc creation
IF (@@Error = 0) PRINT 'Procedure Creation: proc_BuyHeaderLoadAll Succeeded'
ELSE PRINT 'Procedure Creation: proc_BuyHeaderLoadAll Error on Creation'
GO 


/****** Object:  StoredProcedure [dbo].[proc_BuyHeaderUpdate] Script Date: 5/25/2014 10:43:31 PM ******/
IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[proc_BuyHeaderUpdate]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
    DROP PROCEDURE [dbo].[proc_BuyHeaderUpdate];
GO

CREATE PROCEDURE [dbo].[proc_BuyHeaderUpdate]
(
	@BuyId int, 
	@BuyerId varchar(50), 
	@Date datetime, 
	@SellerId varchar(50), 
	@PayModeId int, 
	@Total money, 
	@DiscountPercentage float
)
AS
BEGIN

	SET NOCOUNT OFF
	DECLARE @Err int
	
	
	

	UPDATE [BuyHeader]
	SET
		[BuyerId] = @BuyerId, 
		[Date] = @Date, 
		[SellerId] = @SellerId, 
		[PayModeId] = @PayModeId, 
		[Total] = @Total, 
		[DiscountPercentage] = @DiscountPercentage
	WHERE
		([BuyId] = @BuyId)

	SET @Err = @@Error


	RETURN @Err
END
GO



-- Display the status of Proc creation
IF (@@Error = 0) PRINT 'Procedure Creation: proc_BuyHeaderUpdate Succeeded'
ELSE PRINT 'Procedure Creation: proc_BuyHeaderUpdate Error on Creation'
GO 


/****** Object:  StoredProcedure [dbo].[proc_BuyHeaderInsert] Script Date: 5/25/2014 10:43:31 PM ******/
IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[proc_BuyHeaderInsert]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
    DROP PROCEDURE [dbo].[proc_BuyHeaderInsert];
GO

CREATE PROCEDURE [dbo].[proc_BuyHeaderInsert]
(
	@BuyId int, 
	@BuyerId varchar(50), 
	@Date datetime, 
	@SellerId varchar(50), 
	@PayModeId int, 
	@Total money, 
	@DiscountPercentage float
)
AS
BEGIN

	SET NOCOUNT OFF
	DECLARE @Err int

	
	
	INSERT
	INTO [BuyHeader]
	(
		[BuyId], 
		[BuyerId], 
		[Date], 
		[SellerId], 
		[PayModeId], 
		[Total], 
		[DiscountPercentage]
	)
	
	VALUES
	(
		@BuyId, 
		@BuyerId, 
		@Date, 
		@SellerId, 
		@PayModeId, 
		@Total, 
		@DiscountPercentage
	)


	SET @Err = @@Error



	

	RETURN @Err
END
GO


-- Display the status of Proc creation
IF (@@Error = 0) PRINT 'Procedure Creation: proc_BuyHeaderInsert Succeeded'
ELSE PRINT 'Procedure Creation: proc_BuyHeaderInsert Error on Creation'
GO 


/****** Object:  StoredProcedure [dbo].[proc_BuyHeaderDelete] Script Date: 5/25/2014 10:43:31 PM ******/
IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[proc_BuyHeaderDelete]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
    DROP PROCEDURE [dbo].[proc_BuyHeaderDelete];
GO

CREATE PROCEDURE [dbo].[proc_BuyHeaderDelete]
(
	@BuyId int
)
AS
BEGIN

	SET NOCOUNT OFF
	DECLARE @Err int

	DELETE
	FROM [dbo].[BuyHeader]
	WHERE
		([BuyId] = @BuyId)

	SET @Err = @@Error

	RETURN @Err
END
GO


-- Display the status of Proc creation
IF (@@Error = 0) PRINT 'Procedure Creation: proc_BuyHeaderDelete Succeeded'
ELSE PRINT 'Procedure Creation: proc_BuyHeaderDelete Error on Creation'
GO 


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


USE [whatyouneed]
GO

/****** Object:  StoredProcedure [dbo].[proc_ConditionsLoadByPrimaryKey] Script Date: 5/25/2014 10:43:31 PM ******/
IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[proc_ConditionsLoadByPrimaryKey]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
    DROP PROCEDURE [dbo].[proc_ConditionsLoadByPrimaryKey];
GO

CREATE PROCEDURE [dbo].[proc_ConditionsLoadByPrimaryKey]
(
	@ConditionId int
)
AS
BEGIN
	SET NOCOUNT ON
	DECLARE @Err int

	SELECT
		[ConditionId], 
		[Description]
	FROM [dbo].[Conditions]
	WHERE
		([ConditionId] = @ConditionId)

	SET @Err = @@Error

	RETURN @Err
END
GO	


-- Display the status of Proc creation
IF (@@Error = 0) PRINT 'Procedure Creation: proc_ConditionsLoadByPrimaryKey Succeeded'
ELSE PRINT 'Procedure Creation: proc_ConditionsLoadByPrimaryKey Error on Creation'
GO 


/****** Object:  StoredProcedure [dbo].[proc_ConditionsLoadAll] Script Date: 5/25/2014 10:43:31 PM ******/
IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[proc_ConditionsLoadAll]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
    DROP PROCEDURE [dbo].[proc_ConditionsLoadAll];
GO

CREATE PROCEDURE [dbo].[proc_ConditionsLoadAll]
AS
BEGIN

	SET NOCOUNT ON
	DECLARE @Err int

	SELECT
		[ConditionId], 
		[Description]
	FROM [dbo].[Conditions]

	SET @Err = @@Error

	RETURN @Err
END
GO


-- Display the status of Proc creation
IF (@@Error = 0) PRINT 'Procedure Creation: proc_ConditionsLoadAll Succeeded'
ELSE PRINT 'Procedure Creation: proc_ConditionsLoadAll Error on Creation'
GO 


/****** Object:  StoredProcedure [dbo].[proc_ConditionsUpdate] Script Date: 5/25/2014 10:43:31 PM ******/
IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[proc_ConditionsUpdate]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
    DROP PROCEDURE [dbo].[proc_ConditionsUpdate];
GO

CREATE PROCEDURE [dbo].[proc_ConditionsUpdate]
(
	@ConditionId int, 
	@Description varchar(10)
)
AS
BEGIN

	SET NOCOUNT OFF
	DECLARE @Err int
	
	
	

	UPDATE [Conditions]
	SET
		[Description] = @Description
	WHERE
		([ConditionId] = @ConditionId)

	SET @Err = @@Error


	RETURN @Err
END
GO



-- Display the status of Proc creation
IF (@@Error = 0) PRINT 'Procedure Creation: proc_ConditionsUpdate Succeeded'
ELSE PRINT 'Procedure Creation: proc_ConditionsUpdate Error on Creation'
GO 


/****** Object:  StoredProcedure [dbo].[proc_ConditionsInsert] Script Date: 5/25/2014 10:43:31 PM ******/
IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[proc_ConditionsInsert]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
    DROP PROCEDURE [dbo].[proc_ConditionsInsert];
GO

CREATE PROCEDURE [dbo].[proc_ConditionsInsert]
(
	@ConditionId int, 
	@Description varchar(10)
)
AS
BEGIN

	SET NOCOUNT OFF
	DECLARE @Err int

	
	
	INSERT
	INTO [Conditions]
	(
		[ConditionId], 
		[Description]
	)
	
	VALUES
	(
		@ConditionId, 
		@Description
	)


	SET @Err = @@Error



	

	RETURN @Err
END
GO


-- Display the status of Proc creation
IF (@@Error = 0) PRINT 'Procedure Creation: proc_ConditionsInsert Succeeded'
ELSE PRINT 'Procedure Creation: proc_ConditionsInsert Error on Creation'
GO 


/****** Object:  StoredProcedure [dbo].[proc_ConditionsDelete] Script Date: 5/25/2014 10:43:31 PM ******/
IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[proc_ConditionsDelete]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
    DROP PROCEDURE [dbo].[proc_ConditionsDelete];
GO

CREATE PROCEDURE [dbo].[proc_ConditionsDelete]
(
	@ConditionId int
)
AS
BEGIN

	SET NOCOUNT OFF
	DECLARE @Err int

	DELETE
	FROM [dbo].[Conditions]
	WHERE
		([ConditionId] = @ConditionId)

	SET @Err = @@Error

	RETURN @Err
END
GO


-- Display the status of Proc creation
IF (@@Error = 0) PRINT 'Procedure Creation: proc_ConditionsDelete Succeeded'
ELSE PRINT 'Procedure Creation: proc_ConditionsDelete Error on Creation'
GO 


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


USE [whatyouneed]
GO

/****** Object:  StoredProcedure [dbo].[proc_PayModesLoadByPrimaryKey] Script Date: 5/25/2014 10:43:31 PM ******/
IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[proc_PayModesLoadByPrimaryKey]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
    DROP PROCEDURE [dbo].[proc_PayModesLoadByPrimaryKey];
GO

CREATE PROCEDURE [dbo].[proc_PayModesLoadByPrimaryKey]
(
	@PayModeId int
)
AS
BEGIN
	SET NOCOUNT ON
	DECLARE @Err int

	SELECT
		[PayModeId], 
		[Description], 
		[MonetaryInstitution]
	FROM [dbo].[PayModes]
	WHERE
		([PayModeId] = @PayModeId)

	SET @Err = @@Error

	RETURN @Err
END
GO	


-- Display the status of Proc creation
IF (@@Error = 0) PRINT 'Procedure Creation: proc_PayModesLoadByPrimaryKey Succeeded'
ELSE PRINT 'Procedure Creation: proc_PayModesLoadByPrimaryKey Error on Creation'
GO 


/****** Object:  StoredProcedure [dbo].[proc_PayModesLoadAll] Script Date: 5/25/2014 10:43:31 PM ******/
IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[proc_PayModesLoadAll]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
    DROP PROCEDURE [dbo].[proc_PayModesLoadAll];
GO

CREATE PROCEDURE [dbo].[proc_PayModesLoadAll]
AS
BEGIN

	SET NOCOUNT ON
	DECLARE @Err int

	SELECT
		[PayModeId], 
		[Description], 
		[MonetaryInstitution]
	FROM [dbo].[PayModes]

	SET @Err = @@Error

	RETURN @Err
END
GO


-- Display the status of Proc creation
IF (@@Error = 0) PRINT 'Procedure Creation: proc_PayModesLoadAll Succeeded'
ELSE PRINT 'Procedure Creation: proc_PayModesLoadAll Error on Creation'
GO 


/****** Object:  StoredProcedure [dbo].[proc_PayModesUpdate] Script Date: 5/25/2014 10:43:31 PM ******/
IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[proc_PayModesUpdate]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
    DROP PROCEDURE [dbo].[proc_PayModesUpdate];
GO

CREATE PROCEDURE [dbo].[proc_PayModesUpdate]
(
	@PayModeId int, 
	@Description varchar(10), 
	@MonetaryInstitution varchar(20)
)
AS
BEGIN

	SET NOCOUNT OFF
	DECLARE @Err int
	
	
	

	UPDATE [PayModes]
	SET
		[Description] = @Description, 
		[MonetaryInstitution] = @MonetaryInstitution
	WHERE
		([PayModeId] = @PayModeId)

	SET @Err = @@Error


	RETURN @Err
END
GO



-- Display the status of Proc creation
IF (@@Error = 0) PRINT 'Procedure Creation: proc_PayModesUpdate Succeeded'
ELSE PRINT 'Procedure Creation: proc_PayModesUpdate Error on Creation'
GO 


/****** Object:  StoredProcedure [dbo].[proc_PayModesInsert] Script Date: 5/25/2014 10:43:31 PM ******/
IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[proc_PayModesInsert]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
    DROP PROCEDURE [dbo].[proc_PayModesInsert];
GO

CREATE PROCEDURE [dbo].[proc_PayModesInsert]
(
	@PayModeId int, 
	@Description varchar(10), 
	@MonetaryInstitution varchar(20)
)
AS
BEGIN

	SET NOCOUNT OFF
	DECLARE @Err int

	
	
	INSERT
	INTO [PayModes]
	(
		[PayModeId], 
		[Description], 
		[MonetaryInstitution]
	)
	
	VALUES
	(
		@PayModeId, 
		@Description, 
		@MonetaryInstitution
	)


	SET @Err = @@Error



	

	RETURN @Err
END
GO


-- Display the status of Proc creation
IF (@@Error = 0) PRINT 'Procedure Creation: proc_PayModesInsert Succeeded'
ELSE PRINT 'Procedure Creation: proc_PayModesInsert Error on Creation'
GO 


/****** Object:  StoredProcedure [dbo].[proc_PayModesDelete] Script Date: 5/25/2014 10:43:31 PM ******/
IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[proc_PayModesDelete]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
    DROP PROCEDURE [dbo].[proc_PayModesDelete];
GO

CREATE PROCEDURE [dbo].[proc_PayModesDelete]
(
	@PayModeId int
)
AS
BEGIN

	SET NOCOUNT OFF
	DECLARE @Err int

	DELETE
	FROM [dbo].[PayModes]
	WHERE
		([PayModeId] = @PayModeId)

	SET @Err = @@Error

	RETURN @Err
END
GO


-- Display the status of Proc creation
IF (@@Error = 0) PRINT 'Procedure Creation: proc_PayModesDelete Succeeded'
ELSE PRINT 'Procedure Creation: proc_PayModesDelete Error on Creation'
GO 


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


USE [whatyouneed]
GO

/****** Object:  StoredProcedure [dbo].[proc_ServicesLoadByPrimaryKey] Script Date: 5/25/2014 10:43:32 PM ******/
IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[proc_ServicesLoadByPrimaryKey]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
    DROP PROCEDURE [dbo].[proc_ServicesLoadByPrimaryKey];
GO

CREATE PROCEDURE [dbo].[proc_ServicesLoadByPrimaryKey]
(
	@ServiceId int
)
AS
BEGIN
	SET NOCOUNT ON
	DECLARE @Err int

	SELECT
		[ServiceId], 
		[Description]
	FROM [dbo].[Services]
	WHERE
		([ServiceId] = @ServiceId)

	SET @Err = @@Error

	RETURN @Err
END
GO	


-- Display the status of Proc creation
IF (@@Error = 0) PRINT 'Procedure Creation: proc_ServicesLoadByPrimaryKey Succeeded'
ELSE PRINT 'Procedure Creation: proc_ServicesLoadByPrimaryKey Error on Creation'
GO 


/****** Object:  StoredProcedure [dbo].[proc_ServicesLoadAll] Script Date: 5/25/2014 10:43:32 PM ******/
IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[proc_ServicesLoadAll]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
    DROP PROCEDURE [dbo].[proc_ServicesLoadAll];
GO

CREATE PROCEDURE [dbo].[proc_ServicesLoadAll]
AS
BEGIN

	SET NOCOUNT ON
	DECLARE @Err int

	SELECT
		[ServiceId], 
		[Description]
	FROM [dbo].[Services]

	SET @Err = @@Error

	RETURN @Err
END
GO


-- Display the status of Proc creation
IF (@@Error = 0) PRINT 'Procedure Creation: proc_ServicesLoadAll Succeeded'
ELSE PRINT 'Procedure Creation: proc_ServicesLoadAll Error on Creation'
GO 


/****** Object:  StoredProcedure [dbo].[proc_ServicesUpdate] Script Date: 5/25/2014 10:43:32 PM ******/
IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[proc_ServicesUpdate]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
    DROP PROCEDURE [dbo].[proc_ServicesUpdate];
GO

CREATE PROCEDURE [dbo].[proc_ServicesUpdate]
(
	@ServiceId int, 
	@Description varchar(10)
)
AS
BEGIN

	SET NOCOUNT OFF
	DECLARE @Err int
	
	
	

	UPDATE [Services]
	SET
		[Description] = @Description
	WHERE
		([ServiceId] = @ServiceId)

	SET @Err = @@Error


	RETURN @Err
END
GO



-- Display the status of Proc creation
IF (@@Error = 0) PRINT 'Procedure Creation: proc_ServicesUpdate Succeeded'
ELSE PRINT 'Procedure Creation: proc_ServicesUpdate Error on Creation'
GO 


/****** Object:  StoredProcedure [dbo].[proc_ServicesInsert] Script Date: 5/25/2014 10:43:32 PM ******/
IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[proc_ServicesInsert]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
    DROP PROCEDURE [dbo].[proc_ServicesInsert];
GO

CREATE PROCEDURE [dbo].[proc_ServicesInsert]
(
	@ServiceId int, 
	@Description varchar(10)
)
AS
BEGIN

	SET NOCOUNT OFF
	DECLARE @Err int

	
	
	INSERT
	INTO [Services]
	(
		[ServiceId], 
		[Description]
	)
	
	VALUES
	(
		@ServiceId, 
		@Description
	)


	SET @Err = @@Error



	

	RETURN @Err
END
GO


-- Display the status of Proc creation
IF (@@Error = 0) PRINT 'Procedure Creation: proc_ServicesInsert Succeeded'
ELSE PRINT 'Procedure Creation: proc_ServicesInsert Error on Creation'
GO 


/****** Object:  StoredProcedure [dbo].[proc_ServicesDelete] Script Date: 5/25/2014 10:43:32 PM ******/
IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[proc_ServicesDelete]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
    DROP PROCEDURE [dbo].[proc_ServicesDelete];
GO

CREATE PROCEDURE [dbo].[proc_ServicesDelete]
(
	@ServiceId int
)
AS
BEGIN

	SET NOCOUNT OFF
	DECLARE @Err int

	DELETE
	FROM [dbo].[Services]
	WHERE
		([ServiceId] = @ServiceId)

	SET @Err = @@Error

	RETURN @Err
END
GO


-- Display the status of Proc creation
IF (@@Error = 0) PRINT 'Procedure Creation: proc_ServicesDelete Succeeded'
ELSE PRINT 'Procedure Creation: proc_ServicesDelete Error on Creation'
GO 


USE [whatyouneed]
GO

/****** Object:  StoredProcedure [dbo].[proc_StatesLoadByPrimaryKey] Script Date: 5/25/2014 10:43:32 PM ******/
IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[proc_StatesLoadByPrimaryKey]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
    DROP PROCEDURE [dbo].[proc_StatesLoadByPrimaryKey];
GO

CREATE PROCEDURE [dbo].[proc_StatesLoadByPrimaryKey]
(
	@StateId int
)
AS
BEGIN
	SET NOCOUNT ON
	DECLARE @Err int

	SELECT
		[StateId], 
		[CountryId], 
		[StateDescription]
	FROM [dbo].[States]
	WHERE
		([StateId] = @StateId)

	SET @Err = @@Error

	RETURN @Err
END
GO	


-- Display the status of Proc creation
IF (@@Error = 0) PRINT 'Procedure Creation: proc_StatesLoadByPrimaryKey Succeeded'
ELSE PRINT 'Procedure Creation: proc_StatesLoadByPrimaryKey Error on Creation'
GO 


/****** Object:  StoredProcedure [dbo].[proc_StatesLoadAll] Script Date: 5/25/2014 10:43:32 PM ******/
IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[proc_StatesLoadAll]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
    DROP PROCEDURE [dbo].[proc_StatesLoadAll];
GO

CREATE PROCEDURE [dbo].[proc_StatesLoadAll]
AS
BEGIN

	SET NOCOUNT ON
	DECLARE @Err int

	SELECT
		[StateId], 
		[CountryId], 
		[StateDescription]
	FROM [dbo].[States]

	SET @Err = @@Error

	RETURN @Err
END
GO


-- Display the status of Proc creation
IF (@@Error = 0) PRINT 'Procedure Creation: proc_StatesLoadAll Succeeded'
ELSE PRINT 'Procedure Creation: proc_StatesLoadAll Error on Creation'
GO 


/****** Object:  StoredProcedure [dbo].[proc_StatesUpdate] Script Date: 5/25/2014 10:43:32 PM ******/
IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[proc_StatesUpdate]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
    DROP PROCEDURE [dbo].[proc_StatesUpdate];
GO

CREATE PROCEDURE [dbo].[proc_StatesUpdate]
(
	@StateId int, 
	@CountryId int, 
	@StateDescription varchar(100)
)
AS
BEGIN

	SET NOCOUNT OFF
	DECLARE @Err int
	
	
	

	UPDATE [States]
	SET
		[CountryId] = @CountryId, 
		[StateDescription] = @StateDescription
	WHERE
		([StateId] = @StateId)

	SET @Err = @@Error


	RETURN @Err
END
GO



-- Display the status of Proc creation
IF (@@Error = 0) PRINT 'Procedure Creation: proc_StatesUpdate Succeeded'
ELSE PRINT 'Procedure Creation: proc_StatesUpdate Error on Creation'
GO 


/****** Object:  StoredProcedure [dbo].[proc_StatesInsert] Script Date: 5/25/2014 10:43:32 PM ******/
IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[proc_StatesInsert]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
    DROP PROCEDURE [dbo].[proc_StatesInsert];
GO

CREATE PROCEDURE [dbo].[proc_StatesInsert]
(
	@StateId int, 
	@CountryId int, 
	@StateDescription varchar(100)
)
AS
BEGIN

	SET NOCOUNT OFF
	DECLARE @Err int

	
	
	INSERT
	INTO [States]
	(
		[StateId], 
		[CountryId], 
		[StateDescription]
	)
	
	VALUES
	(
		@StateId, 
		@CountryId, 
		@StateDescription
	)


	SET @Err = @@Error



	

	RETURN @Err
END
GO


-- Display the status of Proc creation
IF (@@Error = 0) PRINT 'Procedure Creation: proc_StatesInsert Succeeded'
ELSE PRINT 'Procedure Creation: proc_StatesInsert Error on Creation'
GO 


/****** Object:  StoredProcedure [dbo].[proc_StatesDelete] Script Date: 5/25/2014 10:43:32 PM ******/
IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[proc_StatesDelete]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
    DROP PROCEDURE [dbo].[proc_StatesDelete];
GO

CREATE PROCEDURE [dbo].[proc_StatesDelete]
(
	@StateId int
)
AS
BEGIN

	SET NOCOUNT OFF
	DECLARE @Err int

	DELETE
	FROM [dbo].[States]
	WHERE
		([StateId] = @StateId)

	SET @Err = @@Error

	RETURN @Err
END
GO


-- Display the status of Proc creation
IF (@@Error = 0) PRINT 'Procedure Creation: proc_StatesDelete Succeeded'
ELSE PRINT 'Procedure Creation: proc_StatesDelete Error on Creation'
GO 


USE [whatyouneed]
GO

/****** Object:  StoredProcedure [dbo].[proc_UserLoadByPrimaryKey] Script Date: 5/25/2014 10:43:32 PM ******/
IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[proc_UserLoadByPrimaryKey]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
    DROP PROCEDURE [dbo].[proc_UserLoadByPrimaryKey];
GO

CREATE PROCEDURE [dbo].[proc_UserLoadByPrimaryKey]
(
	@UserId varchar(50)
)
AS
BEGIN
	SET NOCOUNT ON
	DECLARE @Err int

	SELECT
		[UserId], 
		[Name], 
		[LastName], 
		[UserName], 
		[PhoneNumber], 
		[Address], 
		[CountryId], 
		[StateId], 
		[City], 
		[Password], 
		[AccountId], 
		[ProfileImage], 
		[SecurityQuestion], 
		[Answer], 
		[AccountState]
	FROM [dbo].[User]
	WHERE
		([UserId] = @UserId)

	SET @Err = @@Error

	RETURN @Err
END
GO	


-- Display the status of Proc creation
IF (@@Error = 0) PRINT 'Procedure Creation: proc_UserLoadByPrimaryKey Succeeded'
ELSE PRINT 'Procedure Creation: proc_UserLoadByPrimaryKey Error on Creation'
GO 


/****** Object:  StoredProcedure [dbo].[proc_UserLoadAll] Script Date: 5/25/2014 10:43:32 PM ******/
IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[proc_UserLoadAll]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
    DROP PROCEDURE [dbo].[proc_UserLoadAll];
GO

CREATE PROCEDURE [dbo].[proc_UserLoadAll]
AS
BEGIN

	SET NOCOUNT ON
	DECLARE @Err int

	SELECT
		[UserId], 
		[Name], 
		[LastName], 
		[UserName], 
		[PhoneNumber], 
		[Address], 
		[CountryId], 
		[StateId], 
		[City], 
		[Password], 
		[AccountId], 
		[ProfileImage], 
		[SecurityQuestion], 
		[Answer], 
		[AccountState]
	FROM [dbo].[User]

	SET @Err = @@Error

	RETURN @Err
END
GO


-- Display the status of Proc creation
IF (@@Error = 0) PRINT 'Procedure Creation: proc_UserLoadAll Succeeded'
ELSE PRINT 'Procedure Creation: proc_UserLoadAll Error on Creation'
GO 


/****** Object:  StoredProcedure [dbo].[proc_UserUpdate] Script Date: 5/25/2014 10:43:32 PM ******/
IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[proc_UserUpdate]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
    DROP PROCEDURE [dbo].[proc_UserUpdate];
GO

CREATE PROCEDURE [dbo].[proc_UserUpdate]
(
	@UserId varchar(50), 
	@Name varchar(50), 
	@LastName varchar(80), 
	@UserName varchar(20), 
	@PhoneNumber varchar(13) = NULL, 
	@Address varchar(100) = NULL, 
	@CountryId int, 
	@StateId int, 
	@City varchar(30) = NULL, 
	@Password varchar(100), 
	@AccountId int, 
	@ProfileImage varchar(100) = NULL, 
	@SecurityQuestion varchar(80), 
	@Answer varchar(80), 
	@AccountState varchar(1) = NULL
)
AS
BEGIN

	SET NOCOUNT OFF
	DECLARE @Err int
	
	
	

	UPDATE [User]
	SET
		[Name] = @Name, 
		[LastName] = @LastName, 
		[UserName] = @UserName, 
		[PhoneNumber] = @PhoneNumber, 
		[Address] = @Address, 
		[CountryId] = @CountryId, 
		[StateId] = @StateId, 
		[City] = @City, 
		[Password] = @Password, 
		[AccountId] = @AccountId, 
		[ProfileImage] = @ProfileImage, 
		[SecurityQuestion] = @SecurityQuestion, 
		[Answer] = @Answer, 
		[AccountState] = @AccountState
	WHERE
		([UserId] = @UserId)

	SET @Err = @@Error


	RETURN @Err
END
GO



-- Display the status of Proc creation
IF (@@Error = 0) PRINT 'Procedure Creation: proc_UserUpdate Succeeded'
ELSE PRINT 'Procedure Creation: proc_UserUpdate Error on Creation'
GO 


/****** Object:  StoredProcedure [dbo].[proc_UserInsert] Script Date: 5/25/2014 10:43:32 PM ******/
IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[proc_UserInsert]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
    DROP PROCEDURE [dbo].[proc_UserInsert];
GO

CREATE PROCEDURE [dbo].[proc_UserInsert]
(
	@UserId varchar(50), 
	@Name varchar(50), 
	@LastName varchar(80), 
	@UserName varchar(20), 
	@PhoneNumber varchar(13) = NULL, 
	@Address varchar(100) = NULL, 
	@CountryId int, 
	@StateId int, 
	@City varchar(30) = NULL, 
	@Password varchar(100), 
	@AccountId int, 
	@ProfileImage varchar(100) = NULL, 
	@SecurityQuestion varchar(80), 
	@Answer varchar(80), 
	@AccountState varchar(1) = NULL
)
AS
BEGIN

	SET NOCOUNT OFF
	DECLARE @Err int

	
	
	INSERT
	INTO [User]
	(
		[UserId], 
		[Name], 
		[LastName], 
		[UserName], 
		[PhoneNumber], 
		[Address], 
		[CountryId], 
		[StateId], 
		[City], 
		[Password], 
		[AccountId], 
		[ProfileImage], 
		[SecurityQuestion], 
		[Answer], 
		[AccountState]
	)
	
	VALUES
	(
		@UserId, 
		@Name, 
		@LastName, 
		@UserName, 
		@PhoneNumber, 
		@Address, 
		@CountryId, 
		@StateId, 
		@City, 
		@Password, 
		@AccountId, 
		@ProfileImage, 
		@SecurityQuestion, 
		@Answer, 
		@AccountState
	)


	SET @Err = @@Error



	

	RETURN @Err
END
GO


-- Display the status of Proc creation
IF (@@Error = 0) PRINT 'Procedure Creation: proc_UserInsert Succeeded'
ELSE PRINT 'Procedure Creation: proc_UserInsert Error on Creation'
GO 


/****** Object:  StoredProcedure [dbo].[proc_UserDelete] Script Date: 5/25/2014 10:43:32 PM ******/
IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[proc_UserDelete]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
    DROP PROCEDURE [dbo].[proc_UserDelete];
GO

CREATE PROCEDURE [dbo].[proc_UserDelete]
(
	@UserId varchar(50)
)
AS
BEGIN

	SET NOCOUNT OFF
	DECLARE @Err int

	DELETE
	FROM [dbo].[User]
	WHERE
		([UserId] = @UserId)

	SET @Err = @@Error

	RETURN @Err
END
GO


-- Display the status of Proc creation
IF (@@Error = 0) PRINT 'Procedure Creation: proc_UserDelete Succeeded'
ELSE PRINT 'Procedure Creation: proc_UserDelete Error on Creation'
GO 

