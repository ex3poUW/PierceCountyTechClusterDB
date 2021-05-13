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
PRIMARY KEY CLUSTERED 
(
	[CompanyID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) 
 ON [PRIMARY]
) ON [PRIMARY]
/***** Object: Table dbo.CompanyInformation [CJ Cummings 05/12/2021] *****/
Create TABLE [dbo].[CompanyInformation](
	[CompanyID] [nchar] (10) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[CompanyID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) 
 ON [PRIMARY]
) ON [PRIMARY]
/***** Object: Table dbo.Addresses [CJ Cummings 05/12/2021] *****/
Create TABLE [dbo].[Addresses](
	[CompanyID] [nchar] (10) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[CompanyID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) 
 ON [PRIMARY]
) ON [PRIMARY]
/***** Object: Table dbo.Contacts [CJ Cummings 05/12/2021] *****/
Create TABLE [dbo].[Contacts](
	[CompanyID] [nchar] (10) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[CompanyID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) 
 ON [PRIMARY]
) ON [PRIMARY]
