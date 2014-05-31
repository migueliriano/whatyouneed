
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

