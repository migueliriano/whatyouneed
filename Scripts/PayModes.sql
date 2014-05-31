
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

