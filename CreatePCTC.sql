/*
  Change History
  Date ------- Developer --- Description
  2021-04-21 - CJ Cummings - Created DB query
  2021-04-21 - CJ Cummings - Created [] table
*/

USE master
GO

/***************Creates DB*******************/
IF DB_ID('PCTC') IS NOT NULL
	DROP DATABASE PCTC
	
CREATE DATABASE PCTC
GO
/*******************************************/

USE [PCTC]
GO

/***** Object: Table dbo.Companies [CJ Cummings 04/26/2021] *****/
Set ANSI_NULLS ON
GO
Set QUOTED_IDENTIFIER ON
GO

Create TABLE [dbo].[Companies](
	[CompanyID] [nchar] (10) NOT NULL,
	[Name] [varchar] (50) NULL,
	[Street] [varchar] (50) NULL,
	[City] [varchar] (50) NULL,
	[ZIP] [varchar] (5) NULL,
	[Website] [varchar] (50) NULL,
	[ContactFirstName] [varchar] (50) NULL,
	[ContactLastName] [varchar] (50) NULL,
	[WorkPhone] [varchar] (15) NULL,
	[CellPhone] [varchar] (15) NULL,
	[EmailAddress] [varchar] (320) NULL,
	[DecisionMaker] [varchar] (50) NULL,
	[Sector] [varchar] (100) NULL,
	[SubSector] [varchar] (100) NULL,
	[EmployeeNumber] [varchar] NULL,
	[EstimatedSales] [varchar] (50) NULL,

PRIMARY KEY CLUSTERED 
(
	[CompanyID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) 
 ON [PRIMARY]
) ON [PRIMARY]
