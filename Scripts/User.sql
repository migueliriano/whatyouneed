
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

