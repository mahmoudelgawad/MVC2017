USE [master]
GO
/****** Object:  Database [DemoProject]    Script Date: 9/29/2018 2:33:07 AM ******/
CREATE DATABASE [DemoProject]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'DemoProject', FILENAME = N'C:\ADrive\DemoProject\DB\DemoProject.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'DemoProject_log', FILENAME = N'C:\ADrive\DemoProject\DB\DemoProject_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [DemoProject] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [DemoProject].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [DemoProject] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [DemoProject] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [DemoProject] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [DemoProject] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [DemoProject] SET ARITHABORT OFF 
GO
ALTER DATABASE [DemoProject] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [DemoProject] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [DemoProject] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [DemoProject] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [DemoProject] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [DemoProject] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [DemoProject] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [DemoProject] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [DemoProject] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [DemoProject] SET  DISABLE_BROKER 
GO
ALTER DATABASE [DemoProject] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [DemoProject] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [DemoProject] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [DemoProject] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [DemoProject] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [DemoProject] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [DemoProject] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [DemoProject] SET RECOVERY FULL 
GO
ALTER DATABASE [DemoProject] SET  MULTI_USER 
GO
ALTER DATABASE [DemoProject] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [DemoProject] SET DB_CHAINING OFF 
GO
ALTER DATABASE [DemoProject] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [DemoProject] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [DemoProject] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'DemoProject', N'ON'
GO
USE [DemoProject]
GO
/****** Object:  Table [dbo].[__MigrationHistory]    Script Date: 9/29/2018 2:33:07 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[__MigrationHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ContextKey] [nvarchar](300) NOT NULL,
	[Model] [varbinary](max) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK_dbo.__MigrationHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC,
	[ContextKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 9/29/2018 2:33:07 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](128) NOT NULL,
	[Name] [nvarchar](256) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 9/29/2018 2:33:07 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](128) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 9/29/2018 2:33:07 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](128) NOT NULL,
	[ProviderKey] [nvarchar](128) NOT NULL,
	[UserId] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC,
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 9/29/2018 2:33:07 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](128) NOT NULL,
	[RoleId] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 9/29/2018 2:33:07 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](128) NOT NULL,
	[Email] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEndDateUtc] [datetime] NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
	[UserName] [nvarchar](256) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Client]    Script Date: 9/29/2018 2:33:07 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Client](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](250) NOT NULL,
	[Secret] [nvarchar](max) NOT NULL,
	[Title] [nvarchar](max) NOT NULL,
	[ApplicationType] [int] NOT NULL,
	[AllowOrigin] [nvarchar](max) NOT NULL,
	[IsActive] [bit] NOT NULL,
	[RefreshTokenLifeTime] [int] NOT NULL,
 CONSTRAINT [PK_Client] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Post]    Script Date: 9/29/2018 2:33:07 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Post](
	[Id] [int] NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[Title] [nvarchar](max) NOT NULL,
	[Body] [nvarchar](max) NOT NULL,
	[Rate] [tinyint] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Recibe]    Script Date: 9/29/2018 2:33:07 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Recibe](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[Description] [nvarchar](max) NOT NULL,
	[ImagePath] [nvarchar](max) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[RefreshToken]    Script Date: 9/29/2018 2:33:07 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[RefreshToken](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[TokenID] [varchar](max) NOT NULL,
	[Subject] [varchar](max) NOT NULL,
	[ClientID] [int] NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[ExpireDate] [datetime] NOT NULL,
	[ProtectedTicket] [varchar](max) NOT NULL,
 CONSTRAINT [PK_RefreshToken] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[User]    Script Date: 9/29/2018 2:33:07 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[Age] [tinyint] NULL,
	[Address] [nvarchar](max) NULL,
	[CreatedDate] [datetime] NOT NULL DEFAULT (getdate()),
	[AuthID] [nvarchar](max) NULL,
	[Email] [nvarchar](max) NULL,
	[Username] [nvarchar](max) NULL,
	[Password] [nvarchar](max) NULL,
	[PasswordSalt] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
INSERT [dbo].[AspNetUserLogins] ([LoginProvider], [ProviderKey], [UserId]) VALUES (N'Google', N'111561844367850759728', N'1b91bca5-fe69-43da-9dbc-701176c4b52a')
INSERT [dbo].[AspNetUserLogins] ([LoginProvider], [ProviderKey], [UserId]) VALUES (N'Facebook', N'10216969435690282', N'a3df4082-47d7-4f35-9805-9eec54228cbb')
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'1b91bca5-fe69-43da-9dbc-701176c4b52a', NULL, 0, NULL, N'a65ea1bd-6f2e-4b32-9ebe-3ca4d188c6da', NULL, 0, 0, NULL, 0, 0, N'MahmoudAhmed_1115618')
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'a3df4082-47d7-4f35-9805-9eec54228cbb', NULL, 0, NULL, N'4e985d60-8318-4d9d-bcdf-3159a2a299f2', NULL, 0, 0, NULL, 0, 0, N'MahmoudAhmed_1021696')
SET IDENTITY_INSERT [dbo].[Client] ON 

INSERT [dbo].[Client] ([ID], [Name], [Secret], [Title], [ApplicationType], [AllowOrigin], [IsActive], [RefreshTokenLifeTime]) VALUES (2, N'DemoReact', N'login@123', N'ReactJS website', 0, N'http://localhost:3000', 1, 7200)
INSERT [dbo].[Client] ([ID], [Name], [Secret], [Title], [ApplicationType], [AllowOrigin], [IsActive], [RefreshTokenLifeTime]) VALUES (3, N'ConsoleApp', N'login@123', N'Consol Application', 1, N'*', 1, 14400)
SET IDENTITY_INSERT [dbo].[Client] OFF
SET IDENTITY_INSERT [dbo].[RefreshToken] ON 

INSERT [dbo].[RefreshToken] ([ID], [TokenID], [Subject], [ClientID], [CreatedDate], [ExpireDate], [ProtectedTicket]) VALUES (3, N'0efebda7a9904296a75485a1d064aec6', N'memod', 2, CAST(N'2018-09-27 15:07:38.350' AS DateTime), CAST(N'2018-10-02 15:07:38.350' AS DateTime), N'pv7RHMS8XebQaFlBb--40DRwisRSBkX3yRInQXRw0nkuDD-lq62ay0ocMQAYSLykQldnpPu7rZ5v0vJ6mifrHRd5gF1KZsXJa_W-p-FFMjzAGXqQ0ZAuLgLh0GRJn_B2Eyrajs41_RQSWlka4JUnPdZbSnCmiu3C5oyBNtf_CvUrhLvt4v1S_WJxKjUqEPUVvdP8_VjXyCGnLd3WZ2ilCmMs6j3l9c96Vf7O8IyUSEFKLc0hMDFNXnzD042G0-iDbpn5AFMSsaCON5EKPl5x1it_ZySf2YqJZsGinYWeZd6emWu1KiGthfRxD8JLx7U2')
INSERT [dbo].[RefreshToken] ([ID], [TokenID], [Subject], [ClientID], [CreatedDate], [ExpireDate], [ProtectedTicket]) VALUES (24, N'54c25ed30e524b3a92d6b8b6698e7304', N'admin', 2, CAST(N'2018-09-29 00:10:23.787' AS DateTime), CAST(N'2018-10-04 00:10:23.787' AS DateTime), N'4PvCzfrQDPQ_lXSaXed7mI-Rm9jwQALdZhVbjV20j6e8DQkDxPibeFWuaVDuFg71ZPWeyticUDymgpl426kd1sWtBPJsWqhgwsmPt1BA9X1vOxSd-yjxishXLiX8WUGRplHjcIlXvWwsJQVMeSKKQ-2LHfuzHcofidReCX2gjdMp3hui8LrBJqz0wQnDh89kvQm8gQioMSqY93c6dCVwqo72CnY7IceFvAQRZm31rpTvVR6GJtJx0RUYyntlYdeYSkDQE-OEo_JDmXetYjy6mKg9OGTHpZaABc5k0mH-IQuc2cUYZnxT2PIe_gHUKUtsdYcR6XIkI7_1p0Pb9Jzyyw')
SET IDENTITY_INSERT [dbo].[RefreshToken] OFF
SET IDENTITY_INSERT [dbo].[User] ON 

INSERT [dbo].[User] ([ID], [Name], [Age], [Address], [CreatedDate], [AuthID], [Email], [Username], [Password], [PasswordSalt]) VALUES (1, N'mahmoud ahmed', NULL, NULL, CAST(N'2018-09-24 02:18:55.143' AS DateTime), N'', N'mahmoud.elgawad@gmail.com', N'memod', N'', N'M92d66Y/LcJWLP9xxqY5gCU8yQm6/WshxfQIwlAGKXbk2Erg')
INSERT [dbo].[User] ([ID], [Name], [Age], [Address], [CreatedDate], [AuthID], [Email], [Username], [Password], [PasswordSalt]) VALUES (2, N'mahmoud ahmed', NULL, NULL, CAST(N'2018-09-27 20:03:50.163' AS DateTime), N'', N'mahmoud.elgawad@gmail.com', N'admin', N'', N'vXHQj4uAIOFodX8Muh2H4bR5A46+i9JCqOS2j4FB1u1KLSJE')
INSERT [dbo].[User] ([ID], [Name], [Age], [Address], [CreatedDate], [AuthID], [Email], [Username], [Password], [PasswordSalt]) VALUES (3, N'MahmoudAhmed_1115618', NULL, NULL, CAST(N'2018-09-28 23:43:00.990' AS DateTime), N'dfa9e0ce-7b5e-403e-aae9-2512e038c17e', NULL, N'', N'', N'')
INSERT [dbo].[User] ([ID], [Name], [Age], [Address], [CreatedDate], [AuthID], [Email], [Username], [Password], [PasswordSalt]) VALUES (4, N'MahmoudAhmed_1115618', NULL, NULL, CAST(N'2018-09-29 00:04:55.383' AS DateTime), N'd8c5578f-f922-4588-a1a3-62f464dd35f0', NULL, N'', N'', N'')
INSERT [dbo].[User] ([ID], [Name], [Age], [Address], [CreatedDate], [AuthID], [Email], [Username], [Password], [PasswordSalt]) VALUES (5, N'MahmoudAhmed_1115618', NULL, NULL, CAST(N'2018-09-29 00:11:41.197' AS DateTime), N'c39d03ff-07e9-4dc6-a324-cf8392491eee', NULL, N'', N'', N'')
INSERT [dbo].[User] ([ID], [Name], [Age], [Address], [CreatedDate], [AuthID], [Email], [Username], [Password], [PasswordSalt]) VALUES (6, N'MahmoudAhmed_1115618', NULL, NULL, CAST(N'2018-09-29 00:19:51.410' AS DateTime), N'1b91bca5-fe69-43da-9dbc-701176c4b52a', NULL, N'', N'', N'')
INSERT [dbo].[User] ([ID], [Name], [Age], [Address], [CreatedDate], [AuthID], [Email], [Username], [Password], [PasswordSalt]) VALUES (7, N'MahmoudAhmed_1021696', NULL, NULL, CAST(N'2018-09-29 00:25:48.903' AS DateTime), N'a3df4082-47d7-4f35-9805-9eec54228cbb', NULL, N'', N'', N'')
SET IDENTITY_INSERT [dbo].[User] OFF
SET ANSI_PADDING ON

GO
/****** Object:  Index [RoleNameIndex]    Script Date: 9/29/2018 2:33:07 AM ******/
CREATE UNIQUE NONCLUSTERED INDEX [RoleNameIndex] ON [dbo].[AspNetRoles]
(
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_UserId]    Script Date: 9/29/2018 2:33:07 AM ******/
CREATE NONCLUSTERED INDEX [IX_UserId] ON [dbo].[AspNetUserClaims]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_UserId]    Script Date: 9/29/2018 2:33:07 AM ******/
CREATE NONCLUSTERED INDEX [IX_UserId] ON [dbo].[AspNetUserLogins]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_RoleId]    Script Date: 9/29/2018 2:33:07 AM ******/
CREATE NONCLUSTERED INDEX [IX_RoleId] ON [dbo].[AspNetUserRoles]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_UserId]    Script Date: 9/29/2018 2:33:07 AM ******/
CREATE NONCLUSTERED INDEX [IX_UserId] ON [dbo].[AspNetUserRoles]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [UserNameIndex]    Script Date: 9/29/2018 2:33:07 AM ******/
CREATE UNIQUE NONCLUSTERED INDEX [UserNameIndex] ON [dbo].[AspNetUsers]
(
	[UserName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [Client_Name]    Script Date: 9/29/2018 2:33:07 AM ******/
ALTER TABLE [dbo].[Client] ADD  CONSTRAINT [Client_Name] UNIQUE NONCLUSTERED 
(
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[RefreshToken]  WITH CHECK ADD  CONSTRAINT [FK_RefreshToken_Client_ClientID] FOREIGN KEY([ClientID])
REFERENCES [dbo].[Client] ([ID])
GO
ALTER TABLE [dbo].[RefreshToken] CHECK CONSTRAINT [FK_RefreshToken_Client_ClientID]
GO
USE [master]
GO
ALTER DATABASE [DemoProject] SET  READ_WRITE 
GO
