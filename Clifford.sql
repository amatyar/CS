USE [Clifford]
GO
/****** Object:  Table [dbo].[Questions]    Script Date: 3/9/2020 8:59:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Questions](
	[QuestionID] [int] NOT NULL,
	[Answer] [nvarchar](max) NULL,
	[AnswerID] [int] NULL,
	[QuestionNumber] [int] NULL,
	[QuestionText] [nvarchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Choices]    Script Date: 3/9/2020 8:59:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Choices](
	[ChoiceID] [int] NOT NULL,
	[QuestionID] [int] NULL,
	[ChoiceLetter] [nvarchar](max) NULL,
	[ChoiceText] [nvarchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  View [dbo].[QuestionDisplay]    Script Date: 3/9/2020 8:59:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[QuestionDisplay]
AS
SELECT    Questions.QuestionID,Questions.QuestionNumber,Questions.QuestionText,Questions.AnswerID,Questions.Answer,
Choices.ChoiceID,Choices.ChoiceLetter,Choices.ChoiceText
FROM        Choices INNER JOIN
                     Questions ON dbo.Choices.QuestionID = dbo.Questions.QuestionID
GO
/****** Object:  Table [dbo].[Applicant]    Script Date: 3/9/2020 8:59:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Applicant](
	[UserID] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [nvarchar](max) NOT NULL,
	[MiddleName] [nvarchar](max) NULL,
	[LastName] [nvarchar](max) NULL,
	[StreetAddress] [nvarchar](max) NULL,
	[City] [nvarchar](max) NULL,
	[State] [nvarchar](max) NULL,
	[ZipCode] [nvarchar](max) NULL,
	[Country] [nvarchar](max) NULL,
	[Phone] [nvarchar](max) NULL,
	[BirthDate] [nvarchar](max) NULL,
	[DigitPin] [nvarchar](max) NOT NULL,
	[EmployName] [nvarchar](max) NULL,
	[EmployPhone] [nvarchar](max) NULL,
	[EmpStreetAddress] [nvarchar](max) NULL,
	[EmpCity] [nvarchar](max) NULL,
	[EmpState] [nvarchar](max) NULL,
	[EmpCountry] [nvarchar](max) NULL,
	[EmpZipCode] [nvarchar](max) NULL,
	[Appimg] [image] NULL,
 CONSTRAINT [PK_Applicant] PRIMARY KEY CLUSTERED 
(
	[UserID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Registration]    Script Date: 3/9/2020 8:59:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Registration](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[FullName] [nvarchar](50) NOT NULL,
	[UserName] [nvarchar](50) NOT NULL,
	[Password] [nvarchar](50) NOT NULL,
	[Email] [nvarchar](50) NOT NULL,
	[Country] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserImage]    Script Date: 3/9/2020 8:59:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserImage](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [int] NOT NULL,
	[ImageName] [varchar](50) NULL,
	[Picture] [image] NULL,
 CONSTRAINT [PK_UserImage] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  StoredProcedure [dbo].[SaveOrUpdateImage]    Script Date: 3/9/2020 8:59:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SaveOrUpdateImage]
	
	(
	@userid int,
	@imageName varchar(50),
	@picture Image
	)
	
AS
	IF not exists (SELECT 1 FROM UserImage WHERE UserId=@userid AND ImageName=@imageName)
	
		INSERT INTO UserImage(UserId,ImageName,Picture) values (@userid,@imageName ,@picture)
	
	ELSE

		UPDATE UserImage set ImageName=@imageName,Picture=@picture WHERE UserId=@userid
GO
