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
	[Name] [varchar] (50) NOT NULL,
	[Street] [varchar] (50) NOT NULL,
	[City] [varchar] (50) NOT NULL,
	[ZIP] [nchar] (5) NOT NULL,
	[Website] [varchar] (50) NOT NULL,
	[ContactFirstName] [varchar] (50) NOT NULL,
	[ContactLastName] [varchar] (50) NOT NULL,
	[WorkPhone] [varchar] (15) NOT NULL,
	[CellPhone] [varchar] (15) NOT NULL,
	[EmailAddress] [varchar] (320) NOT NULL,
	[DecisionMaker] [varchar] (50) NOT NULL,
	[Sector] [varchar] (100) NOT NULL,
	[SubSector] [varchar] (100) NOT NULL,
	[EmployeeNumber] [float] NOT NULL,
	[EstimatedSales] [varchar] (50) NOT NULL,

PRIMARY KEY CLUSTERED 
(
	[CompanyID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) 
 ON [PRIMARY]
) ON [PRIMARY]