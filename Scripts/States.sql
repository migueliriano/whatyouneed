
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

