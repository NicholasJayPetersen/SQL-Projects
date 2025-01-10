USE [master]
GO
/****** Object:  Database [Family Reunion]    Script Date: 11/22/2024 10:44:58 AM ******/
CREATE DATABASE [Family Reunion]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Family Reunion', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\Family Reunion.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Family Reunion_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\Family Reunion_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO

USE [Family Reunion]
GO
/****** Object:  Table [dbo].[AttendingFamilies]    Script Date: 11/22/2024 10:44:58 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AttendingFamilies](
	[ReservationNum] [int] IDENTITY(1,1) NOT NULL,
	[FamilyID] [int] NOT NULL,
	[ReunionID] [int] NOT NULL,
	[Adults] [int] NOT NULL,
	[Children] [int] NOT NULL,
	[Fee] [decimal](10, 2) NOT NULL,
	[DatePaid] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_AttendingFamilies] PRIMARY KEY CLUSTERED 
(
	[ReservationNum] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Facilities]    Script Date: 11/22/2024 10:44:58 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Facilities](
	[LocationID] [int] IDENTITY(1,1) NOT NULL,
	[LocationName] [varchar](50) NOT NULL,
	[LocationDesc] [varchar](1000) NOT NULL,
	[Street] [varchar](255) NOT NULL,
	[City] [varchar](255) NOT NULL,
	[State] [char](2) NOT NULL,
	[Zip] [varchar](11) NOT NULL,
 CONSTRAINT [PK_Facilities] PRIMARY KEY CLUSTERED 
(
	[LocationID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Families]    Script Date: 11/22/2024 10:44:58 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Families](
	[FamilyID] [int] IDENTITY(1,1) NOT NULL,
	[Surname] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Families] PRIMARY KEY CLUSTERED 
(
	[FamilyID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MemberContacts]    Script Date: 11/22/2024 10:44:58 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MemberContacts](
	[ContactID] [int] IDENTITY(1,1) NOT NULL,
	[FamilyID] [int] NOT NULL,
	[Phone] [varchar](15) NULL,
	[Email] [varchar](255) NOT NULL,
	[Street] [varchar](255) NOT NULL,
	[City] [varchar](255) NOT NULL,
	[State] [char](2) NOT NULL,
	[Zip] [varchar](11) NOT NULL,
 CONSTRAINT [PK_MemberContacts] PRIMARY KEY CLUSTERED 
(
	[ContactID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [UK_Email] UNIQUE NONCLUSTERED 
(
	[ContactID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Members]    Script Date: 11/22/2024 10:44:58 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Members](
	[MemberID] [int] IDENTITY(1,1) NOT NULL,
	[MemberName] [varchar](50) NOT NULL,
	[FamilyPos] [char](1) NOT NULL,
	[Alergies] [varchar](100) NULL,
	[FamilyID] [int] NOT NULL,
 CONSTRAINT [PK_Members] PRIMARY KEY CLUSTERED 
(
	[MemberID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ScheduledReunions]    Script Date: 11/22/2024 10:44:58 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ScheduledReunions](
	[ReunionID] [int] IDENTITY(1,1) NOT NULL,
	[ReunionDate] [date] NOT NULL,
	[LocationID] [int] NOT NULL,
	[FoodProvided] [bit] NOT NULL,
	[DrinkProvided] [bit] NOT NULL,
	[SingleCost] [decimal](6, 2) NOT NULL,
	[FamilyCost] [decimal](6, 2) NOT NULL,
 CONSTRAINT [PK_ScheduledReunions] PRIMARY KEY CLUSTERED 
(
	[ReunionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AttendingFamilies] ADD  DEFAULT (getdate()) FOR [DatePaid]
GO
ALTER TABLE [dbo].[AttendingFamilies]  WITH CHECK ADD  CONSTRAINT [FK_AttendingFamilies_Families] FOREIGN KEY([FamilyID])
REFERENCES [dbo].[Families] ([FamilyID])
GO
ALTER TABLE [dbo].[AttendingFamilies] CHECK CONSTRAINT [FK_AttendingFamilies_Families]
GO
ALTER TABLE [dbo].[AttendingFamilies]  WITH CHECK ADD  CONSTRAINT [FK_AttendingFamilies_ScheduledReunions] FOREIGN KEY([ReunionID])
REFERENCES [dbo].[ScheduledReunions] ([ReunionID])
GO
ALTER TABLE [dbo].[AttendingFamilies] CHECK CONSTRAINT [FK_AttendingFamilies_ScheduledReunions]
GO
ALTER TABLE [dbo].[MemberContacts]  WITH CHECK ADD  CONSTRAINT [FK_MemberContacts_Families] FOREIGN KEY([FamilyID])
REFERENCES [dbo].[Families] ([FamilyID])
GO
ALTER TABLE [dbo].[MemberContacts] CHECK CONSTRAINT [FK_MemberContacts_Families]
GO
ALTER TABLE [dbo].[Members]  WITH CHECK ADD  CONSTRAINT [FK_Members_Families] FOREIGN KEY([FamilyID])
REFERENCES [dbo].[Families] ([FamilyID])
GO
ALTER TABLE [dbo].[Members] CHECK CONSTRAINT [FK_Members_Families]
GO
ALTER TABLE [dbo].[ScheduledReunions]  WITH CHECK ADD  CONSTRAINT [FK_ScheduledReunions_Facilities] FOREIGN KEY([LocationID])
REFERENCES [dbo].[Facilities] ([LocationID])
GO
ALTER TABLE [dbo].[ScheduledReunions] CHECK CONSTRAINT [FK_ScheduledReunions_Facilities]
GO
ALTER TABLE [dbo].[AttendingFamilies]  WITH CHECK ADD  CONSTRAINT [Fee_not_negative] CHECK  (([Fee]>=(0)))
GO
ALTER TABLE [dbo].[AttendingFamilies] CHECK CONSTRAINT [Fee_not_negative]
GO
ALTER TABLE [dbo].[ScheduledReunions]  WITH CHECK ADD  CONSTRAINT [FamilyCost_not_negative] CHECK  (([FamilyCost]>=(0)))
GO
ALTER TABLE [dbo].[ScheduledReunions] CHECK CONSTRAINT [FamilyCost_not_negative]
GO
ALTER TABLE [dbo].[ScheduledReunions]  WITH CHECK ADD  CONSTRAINT [SingleCost_not_negative] CHECK  (([SingleCost]>=(0)))
GO
ALTER TABLE [dbo].[ScheduledReunions] CHECK CONSTRAINT [SingleCost_not_negative]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Fee greater than or equal to zero' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AttendingFamilies', @level2type=N'CONSTRAINT',@level2name=N'Fee_not_negative'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'FamilyCost greater than or equal to zero' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ScheduledReunions', @level2type=N'CONSTRAINT',@level2name=N'FamilyCost_not_negative'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Single cost greater than or qual to zero' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ScheduledReunions', @level2type=N'CONSTRAINT',@level2name=N'SingleCost_not_negative'
GO
USE [master]
GO
ALTER DATABASE [Family Reunion] SET  READ_WRITE 
GO
