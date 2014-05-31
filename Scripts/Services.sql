
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

