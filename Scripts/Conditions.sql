
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

