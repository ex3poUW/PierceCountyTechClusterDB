/*
  Change History
  Date ------- Developer --- Description
  2021-04-21 - CJ Cummings - Created DB query
  2021-04-21 - CJ Cummings - Created [] table
  2021-05-18 - CJ Cummings - Finalizing DB
  2021-05-18 - CJ Cummings - Adding Data
  2021-05-19 - CJ Cummings - Adding Data
  2021-05-21 - CJ Cummings - Made Company ID ReadOnly
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

Create Table [dbo].[Companies](
	[Company ID] [int] NOT NULL,
	[Name] [varchar] (50) NULL,
	[Street] [varchar] (50) NULL,
	[City] [varchar] (50) NULL,
	[State] [varchar] (3) NULL,
	[ZIP] [varchar] (5) NULL	
) ON [PRIMARY]

/***** Object: Table dbo.CompanyInformation [CJ Cummings 05/12/2021] *****/
Create Table [dbo].[Contacts](
	[Company ID] [int] NOT NULL,
	[Website] [varchar] (50) NULL,
	[Contact First Name] [varchar] (50) NULL,
	[Contact Last Name] [varchar] (50) NULL,
	[WorkPhone] [varchar] (15) NULL,
	[Extension] [varchar] (15) NULL,
	[CellPhone] [varchar] (15) NULL,
	[EmailAddress] [varchar] (320) NULL
) ON [PRIMARY]

/***** Object: Table dbo.Contacts [CJ Cummings 05/12/2021] *****/
Create Table [dbo].[CompanyInformation](
	[Company ID] [int] NOT NULL,
	[Sector] [varchar] (100) NULL,
	[SubSector] [varchar] (100) NULL,
	[Company Size] [varchar] (20) NULL,
	[Estimated Sales] [varchar] (50) NULL,
	[Notes] [varchar] (64) NULL
) ON [PRIMARY]

/***** Data: Table dbo.Companies [CJ Cummings 05/18/2021] *****/
Insert [dbo].[Companies] ([Company ID],[Name],[Street],[City],[State],[ZIP]) Values ( 1,'Accumula Labs, Inc.',						'709 Pacific Ave Ste 202',					'Tacoma',			'WA','98402')
Insert [dbo].[Companies] ([Company ID],[Name],[Street],[City],[State],[ZIP]) Values ( 2,'Aldridge',									'100 W Harrison St Ste N-330',				'Seattle',			'WA','98119')
Insert [dbo].[Companies] ([Company ID],[Name],[Street],[City],[State],[ZIP]) Values ( 3,'Alliance Enterprises',						'2980 Center Dr Suite 200',					'DuPont',			'WA','98327')
Insert [dbo].[Companies] ([Company ID],[Name],[Street],[City],[State],[ZIP]) Values ( 4,'Altomobile LLC',							'100 S King St',							'Seattle',			'WA','98104')
Insert [dbo].[Companies] ([Company ID],[Name],[Street],[City],[State],[ZIP]) Values ( 5,'AMS Technology',							'5005 Pacific Hwy E Ste 7',					'Fife',				'WA','98424')
Insert [dbo].[Companies] ([Company ID],[Name],[Street],[City],[State],[ZIP]) Values ( 6,'AngelCom IT Services',						'9125 39th Ave SW',							'Lakewood',			'WA','98496')
Insert [dbo].[Companies] ([Company ID],[Name],[Street],[City],[State],[ZIP]) Values ( 7,'Banner Bank',								'10 S 1ST Ave',								'Walla Walla',		'WA','99362')
Insert [dbo].[Companies] ([Company ID],[Name],[Street],[City],[State],[ZIP]) Values ( 8,'Benaroya/Centeris Data Center',			'3600 136th Place SE Suite 250',			'Bellevue',			'WA','98006')
Insert [dbo].[Companies] ([Company ID],[Name],[Street],[City],[State],[ZIP]) Values ( 9,'Besser.IO Inc',							'4409 N 35th St',							'Tacoma',			'WA','98407')
Insert [dbo].[Companies] ([Company ID],[Name],[Street],[City],[State],[ZIP]) Values (10,'BSG Solutions LLC',						'7100 Fort Dent Way Ste 100',				'Tukwila',			'WA','98188')
Insert [dbo].[Companies] ([Company ID],[Name],[Street],[City],[State],[ZIP]) Values (11,'Catalyst Workplace Activation',			'909 A St Suite 100',						'Tacoma',			'WA','98402')
Insert [dbo].[Companies] ([Company ID],[Name],[Street],[City],[State],[ZIP]) Values (12,'Lumen Technologies',						'1600 7th Ave Ste 3205',					'Seattle',			'WA','98191')
Insert [dbo].[Companies] ([Company ID],[Name],[Street],[City],[State],[ZIP]) Values (13,'CloudPWR',									'2323 N 31st St Ste 101',					'Tacoma',			'WA','98403')
Insert [dbo].[Companies] ([Company ID],[Name],[Street],[City],[State],[ZIP]) Values (14,'Comcast Business',							'',											'',					'WA','')
Insert [dbo].[Companies] ([Company ID],[Name],[Street],[City],[State],[ZIP]) Values (15,'Easel.ly',									'915 26th Ave NW',							'Gig Harbor',		'WA','98335')
Insert [dbo].[Companies] ([Company ID],[Name],[Street],[City],[State],[ZIP]) Values (16,'Ernst Media',								'2522 N Proctor St, PMB 396',				'Tacoma',			'WA','98406')
Insert [dbo].[Companies] ([Company ID],[Name],[Street],[City],[State],[ZIP]) Values (17,'eVestment',								'505 25th Ave NW',							'Gig Harbor',		'WA','98335')
Insert [dbo].[Companies] ([Company ID],[Name],[Street],[City],[State],[ZIP]) Values (18,'Give InKind',								'1840 N Highland St',						'Tacoma',			'WA','98406')
Insert [dbo].[Companies] ([Company ID],[Name],[Street],[City],[State],[ZIP]) Values (19,'Hagel & Co',								'310 N Meridian Ste 210',					'Puyallup',			'WA','98371')
Insert [dbo].[Companies] ([Company ID],[Name],[Street],[City],[State],[ZIP]) Values (20,'iLocal, Inc./Research Giant',				'92 Lenora St',								'Seattle',			'WA','98121')
Insert [dbo].[Companies] ([Company ID],[Name],[Street],[City],[State],[ZIP]) Values (21,'Infoblox',									'2106 Pacific Ave, Suite 600',				'Tacoma',			'WA','98402')
Insert [dbo].[Companies] ([Company ID],[Name],[Street],[City],[State],[ZIP]) Values (22,'Intracommunications Network Systems Inc.',	'4922 N Pearl St',							'Tacoma',			'WA','98407')
Insert [dbo].[Companies] ([Company ID],[Name],[Street],[City],[State],[ZIP]) Values (23,'IsoFusion',								'12842 Interurban Ave S',					'Seattle',			'WA','98168')
Insert [dbo].[Companies] ([Company ID],[Name],[Street],[City],[State],[ZIP]) Values (24,'JayRay',									'535 Dock St Ste 205',						'Tacoma',			'WA','98402')
Insert [dbo].[Companies] ([Company ID],[Name],[Street],[City],[State],[ZIP]) Values (25,'Joe Coffee',								'3220 1st Ave S Ste 100',					'Seattle',			'WA','98134')
Insert [dbo].[Companies] ([Company ID],[Name],[Street],[City],[State],[ZIP]) Values (26,'Kidder Mathews',							'602 Union Street Suite 4720',				'Seattle',			'WA','98101')
Insert [dbo].[Companies] ([Company ID],[Name],[Street],[City],[State],[ZIP]) Values (27,'Latchel',									'975 John St APT 615',						'Seattle',			'WA','98109')
Insert [dbo].[Companies] ([Company ID],[Name],[Street],[City],[State],[ZIP]) Values (28,'Lilt, LLC',								'5502 N 48th',								'Tacoma',			'WA','98407')
Insert [dbo].[Companies] ([Company ID],[Name],[Street],[City],[State],[ZIP]) Values (29,'Locke Systems',							'P.O. Box 274',								'Milton',			'WA','98354')
Insert [dbo].[Companies] ([Company ID],[Name],[Street],[City],[State],[ZIP]) Values (30,'Lockr',									'711 St Helens Ave #202',					'Tacoma',			'WA','98402')
Insert [dbo].[Companies] ([Company ID],[Name],[Street],[City],[State],[ZIP]) Values (31,'Multicare IT Department',					'316 Martin Luther King Jr Way Ste 314',	'Tacoma',			'WA','98405')
Insert [dbo].[Companies] ([Company ID],[Name],[Street],[City],[State],[ZIP]) Values (32,'Namatad Systems',							'1705 Dock St Unit 113',					'Tacoma',			'WA','98402')
Insert [dbo].[Companies] ([Company ID],[Name],[Street],[City],[State],[ZIP]) Values (33,'Olive Group',								'1326 Tacoma Ave S #201',					'Tacoma',			'WA','98402')
Insert [dbo].[Companies] ([Company ID],[Name],[Street],[City],[State],[ZIP]) Values (34,'PCTV-Rainier Communications Commission',	'2320 S 19th St',							'Tacoma',			'WA','98405')
Insert [dbo].[Companies] ([Company ID],[Name],[Street],[City],[State],[ZIP]) Values (35,'Port Bell SEO',							'2620 S 38th St Ste 361',					'Tacoma',			'WA','98409')
Insert [dbo].[Companies] ([Company ID],[Name],[Street],[City],[State],[ZIP]) Values (36,'R2 Cyber',									'607 Champion St',							'Steilacoom',		'WA','98388')
Insert [dbo].[Companies] ([Company ID],[Name],[Street],[City],[State],[ZIP]) Values (37,'Rainier Connect',							'2516 Holgate St',							'Tacoma',			'WA','98402')
Insert [dbo].[Companies] ([Company ID],[Name],[Street],[City],[State],[ZIP]) Values (38,'Rainier Managed IT Services',				'PO Box 1062',								'Orting',			'WA','98360')
Insert [dbo].[Companies] ([Company ID],[Name],[Street],[City],[State],[ZIP]) Values (39,'Rhino Camera Gear',						'2207 Inter Ave Ste C',						'Puyallup',			'WA','98372')
Insert [dbo].[Companies] ([Company ID],[Name],[Street],[City],[State],[ZIP]) Values (40,'Right! Systems, Inc.',						'2600 Willamette Dr Ne Ste C',				'Lacey',			'WA','98516')
Insert [dbo].[Companies] ([Company ID],[Name],[Street],[City],[State],[ZIP]) Values (41,'ScaleMatrix',								'1023 39th Ave Se',							'Puyallup',			'WA','98374')
Insert [dbo].[Companies] ([Company ID],[Name],[Street],[City],[State],[ZIP]) Values (42,'Seasonal View',							'703 Pacific Ave Ste 133',					'Tacoma',			'WA','98402')
Insert [dbo].[Companies] ([Company ID],[Name],[Street],[City],[State],[ZIP]) Values (43,'SiteCrafting',								'2716 A St',								'Tacoma',			'WA','98402')
Insert [dbo].[Companies] ([Company ID],[Name],[Street],[City],[State],[ZIP]) Values (44,'The Snapbar LLC',							'6659 Kimball Dr Ste C308',					'Gig Harbor',		'WA','98335')
Insert [dbo].[Companies] ([Company ID],[Name],[Street],[City],[State],[ZIP]) Values (45,'Surge Tacoma',								'2367 Tacoma Ave South',					'Tacoma',			'WA','98402')
Insert [dbo].[Companies] ([Company ID],[Name],[Street],[City],[State],[ZIP]) Values (46,'Tacoma Venture Club/Delalune Space',		'3801 N 27th St Unit 7883',					'Tacoma',			'WA','98417')
Insert [dbo].[Companies] ([Company ID],[Name],[Street],[City],[State],[ZIP]) Values (47,'Tech Masters Computer Services',			'2601 70th Ave W Suite G',					'University Place',	'WA','98466')
Insert [dbo].[Companies] ([Company ID],[Name],[Street],[City],[State],[ZIP]) Values (48,'The Gurus Tacoma, Inc.',					'1109 A St',								'Tacoma',			'WA','98402')
Insert [dbo].[Companies] ([Company ID],[Name],[Street],[City],[State],[ZIP]) Values (49,'The Pioneer Collective',					'100 S King St Ste 100',					'Seattle',			'WA','98104')
Insert [dbo].[Companies] ([Company ID],[Name],[Street],[City],[State],[ZIP]) Values (50,'Topia Technology',							'1927 Dock St',								'Tacoma',			'WA','98402')
Insert [dbo].[Companies] ([Company ID],[Name],[Street],[City],[State],[ZIP]) Values (51,'Startup253',								'539 Broadway #C104',						'Tacoma',			'WA','98402')

/***** Data: Table dbo.Contacts [CJ Cummings 05/18/2021] *****/
Insert [dbo].[Contacts] ([Company ID],[Website],[Contact First Name],[Contact Last Name],[WorkPhone],[Extension],[CellPhone],[EmailAddress]) Values ( 1,'accumula.com',				'Evan',		'Brubaker',		'855-377-7173',	'',		'',				'evan.brubaker@accumula.com')
Insert [dbo].[Contacts] ([Company ID],[Website],[Contact First Name],[Contact Last Name],[WorkPhone],[Extension],[CellPhone],[EmailAddress]) Values ( 2,'aldridge.com',				'Scott',	'Wehmer',		'206-899-5010',	'',		'',				'')
Insert [dbo].[Contacts] ([Company ID],[Website],[Contact First Name],[Contact Last Name],[WorkPhone],[Extension],[CellPhone],[EmailAddress]) Values ( 3,'allianceenterprises.com',	'Rick',		'Gifford',		'360-456-7000',	'',		'',				'')
Insert [dbo].[Contacts] ([Company ID],[Website],[Contact First Name],[Contact Last Name],[WorkPhone],[Extension],[CellPhone],[EmailAddress]) Values ( 4,'altomobile.io',			'Ryan',		'Smith',		'206-639-8958',	'',		'',				'ryan@altomobile.io')
Insert [dbo].[Contacts] ([Company ID],[Website],[Contact First Name],[Contact Last Name],[WorkPhone],[Extension],[CellPhone],[EmailAddress]) Values ( 5,'amstechnology.net',		'Brad',		'Stutz',		'253-848-5968',	'',		'',				'brad@amstechnology.net')
Insert [dbo].[Contacts] ([Company ID],[Website],[Contact First Name],[Contact Last Name],[WorkPhone],[Extension],[CellPhone],[EmailAddress]) Values ( 6,'angelcom.com',				'Darci',	'Bauer',		'253-584-5906',	'',		'',				'')
Insert [dbo].[Contacts] ([Company ID],[Website],[Contact First Name],[Contact Last Name],[WorkPhone],[Extension],[CellPhone],[EmailAddress]) Values ( 7,'bannerbank.com',			'AJ',		'Gordon',		'',				'',		'253-221-9097',	'aj.gordon@bannerbank.com')
Insert [dbo].[Contacts] ([Company ID],[Website],[Contact First Name],[Contact Last Name],[WorkPhone],[Extension],[CellPhone],[EmailAddress]) Values ( 8,'centeris.com',				'Lisa',		'Goodman',		'425-440-6715',	'',		'206-619-5343',	'lisag@benaroya.com')
Insert [dbo].[Contacts] ([Company ID],[Website],[Contact First Name],[Contact Last Name],[WorkPhone],[Extension],[CellPhone],[EmailAddress]) Values ( 9,'besser.io',				'Kenneth',	'Shaw',			'724-986-6672',	'',		'',				'ken.@besser.io')
Insert [dbo].[Contacts] ([Company ID],[Website],[Contact First Name],[Contact Last Name],[WorkPhone],[Extension],[CellPhone],[EmailAddress]) Values (10,'bsg-solutions.com',		'',			'',				'206-456-6247',	'',		'',				'')
Insert [dbo].[Contacts] ([Company ID],[Website],[Contact First Name],[Contact Last Name],[WorkPhone],[Extension],[CellPhone],[EmailAddress]) Values (11,'scatalystactivation.com',	'Sean',		'O''Brien',		'206-615-9232',	'',		'206-949-9622',	'sobrien@catalystactivation.com')
Insert [dbo].[Contacts] ([Company ID],[Website],[Contact First Name],[Contact Last Name],[WorkPhone],[Extension],[CellPhone],[EmailAddress]) Values (12,'centurylink.com',			'',			'',				'206-733-5200',	'',		'',				'')
Insert [dbo].[Contacts] ([Company ID],[Website],[Contact First Name],[Contact Last Name],[WorkPhone],[Extension],[CellPhone],[EmailAddress]) Values (13,'cloudpwer.com',			'Shadrach',	'White',		'206-588-6861',	'',		'',				'shadrach@cloudpwr.com')
Insert [dbo].[Contacts] ([Company ID],[Website],[Contact First Name],[Contact Last Name],[WorkPhone],[Extension],[CellPhone],[EmailAddress]) Values (14,'swashington.comcast.com',	'Nick',		'Mcdonald',		'',				'',		'',				'Nick_McDonald@comcast.com')
Insert [dbo].[Contacts] ([Company ID],[Website],[Contact First Name],[Contact Last Name],[WorkPhone],[Extension],[CellPhone],[EmailAddress]) Values (15,'easel.ly',					'Vernon',	'Southward',	'253-256-1969',	'',		'',				'vernon@easel.ly')
Insert [dbo].[Contacts] ([Company ID],[Website],[Contact First Name],[Contact Last Name],[WorkPhone],[Extension],[CellPhone],[EmailAddress]) Values (16,'sernstmedia.co',			'Evan',		'Ernst',		'458-206-6803',	'',		'',				'evan@ernstmedia.co')
Insert [dbo].[Contacts] ([Company ID],[Website],[Contact First Name],[Contact Last Name],[WorkPhone],[Extension],[CellPhone],[EmailAddress]) Values (17,'',							'Paul',		'Louden',		'253-514-8051',	'',		'',				'')
Insert [dbo].[Contacts] ([Company ID],[Website],[Contact First Name],[Contact Last Name],[WorkPhone],[Extension],[CellPhone],[EmailAddress]) Values (18,'giveinkind.com',			'Laura',	'Malcolm',		'253-200-0070',	'',		'',				'laura@giveinkind.com')
Insert [dbo].[Contacts] ([Company ID],[Website],[Contact First Name],[Contact Last Name],[WorkPhone],[Extension],[CellPhone],[EmailAddress]) Values (19,'hagel.net',				'Frank',	'Hagel',		'253-572-2439',	'',		'',				'')
Insert [dbo].[Contacts] ([Company ID],[Website],[Contact First Name],[Contact Last Name],[WorkPhone],[Extension],[CellPhone],[EmailAddress]) Values (20,'ilocal.net',				'Jason',	'Morgan',		'206-790-1999',	'',		'',				'')
Insert [dbo].[Contacts] ([Company ID],[Website],[Contact First Name],[Contact Last Name],[WorkPhone],[Extension],[CellPhone],[EmailAddress]) Values (21,'infoblox.com',				'Michael',	'Brown',		'253-466-0186',	'',		'',				'mbrown@infoblox.com')
Insert [dbo].[Contacts] ([Company ID],[Website],[Contact First Name],[Contact Last Name],[WorkPhone],[Extension],[CellPhone],[EmailAddress]) Values (22,'insicabling.com',			'David',	'Williams',		'253-761-0418',	'',		'',				'davidw@insicabling.com')
Insert [dbo].[Contacts] ([Company ID],[Website],[Contact First Name],[Contact Last Name],[WorkPhone],[Extension],[CellPhone],[EmailAddress]) Values (23,'isofusion.com',			'Bruce',	'Straughan',	'',				'',		'',				'')
Insert [dbo].[Contacts] ([Company ID],[Website],[Contact First Name],[Contact Last Name],[WorkPhone],[Extension],[CellPhone],[EmailAddress]) Values (24,'jayray.com',				'Kathleen',	'Deakins',		'253-284-5581',	'',		'253-627-9128',	'kdeakins@jayray.com')
Insert [dbo].[Contacts] ([Company ID],[Website],[Contact First Name],[Contact Last Name],[WorkPhone],[Extension],[CellPhone],[EmailAddress]) Values (25,'sjoe.coffee',				'Brenden',	'Martin',		'206-531-3212',	'',		'',				'brenden@joe.coffee')
Insert [dbo].[Contacts] ([Company ID],[Website],[Contact First Name],[Contact Last Name],[WorkPhone],[Extension],[CellPhone],[EmailAddress]) Values (26,'skidder.com',				'Jeff',		'Lyon',			'206-296-9616',	'',		'253-380-9988',	'jlyon@kiddermathews.com')
Insert [dbo].[Contacts] ([Company ID],[Website],[Contact First Name],[Contact Last Name],[WorkPhone],[Extension],[CellPhone],[EmailAddress]) Values (27,'latchel.com',				'Will',		'Gordon',		'805-300-5368',	'',		'',				'will@latchel.com')
Insert [dbo].[Contacts] ([Company ID],[Website],[Contact First Name],[Contact Last Name],[WorkPhone],[Extension],[CellPhone],[EmailAddress]) Values (28,'liltdesign.com',			'Juel',		'Lugo',			'253-209-5112',	'',		'',				'lilt.lugo@gmail.com')
Insert [dbo].[Contacts] ([Company ID],[Website],[Contact First Name],[Contact Last Name],[WorkPhone],[Extension],[CellPhone],[EmailAddress]) Values (29,'slockesystems.com',		'Den',		'Locke',		'253-444-5656',	'',		'',				'')
Insert [dbo].[Contacts] ([Company ID],[Website],[Contact First Name],[Contact Last Name],[WorkPhone],[Extension],[CellPhone],[EmailAddress]) Values (30,'lockr.io',					'Chris',	'Teitzel',		'920-385-6257',	'',		'',				'chris@lockr.io')
Insert [dbo].[Contacts] ([Company ID],[Website],[Contact First Name],[Contact Last Name],[WorkPhone],[Extension],[CellPhone],[EmailAddress]) Values (31,'smulticare.org',			'Bradd',	'Busick',		'253-403-1000',	'',		'',				'')
Insert [dbo].[Contacts] ([Company ID],[Website],[Contact First Name],[Contact Last Name],[WorkPhone],[Extension],[CellPhone],[EmailAddress]) Values (32,'namatad.com',				'Matt',		'Tolentino',	'253-692-4579',	'',		'',				'metolent@uw.edu')
Insert [dbo].[Contacts] ([Company ID],[Website],[Contact First Name],[Contact Last Name],[WorkPhone],[Extension],[CellPhone],[EmailAddress]) Values (33,'solive.group',				'Jake',		'Nyman',		'253-785-9623',	'',		'',				'jakenyman@olivegroup.biz')
Insert [dbo].[Contacts] ([Company ID],[Website],[Contact First Name],[Contact Last Name],[WorkPhone],[Extension],[CellPhone],[EmailAddress]) Values (34,'piercecountytv.com',		'Aaron',	'McConnell',	'253-798-8707',	'',		'',				'')
Insert [dbo].[Contacts] ([Company ID],[Website],[Contact First Name],[Contact Last Name],[WorkPhone],[Extension],[CellPhone],[EmailAddress]) Values (35,'portbell.com',				'Ty',		'Belknap',		'253-445-5777',	'',		'',				'')
Insert [dbo].[Contacts] ([Company ID],[Website],[Contact First Name],[Contact Last Name],[WorkPhone],[Extension],[CellPhone],[EmailAddress]) Values (36,'',							'Rod',		'Rasmussen',	'',				'',		'',				'rod@rodrasmussen.com')
Insert [dbo].[Contacts] ([Company ID],[Website],[Contact First Name],[Contact Last Name],[WorkPhone],[Extension],[CellPhone],[EmailAddress]) Values (37,'rainierconnect.com',		'Skip',		'Haynes',		'',				'',		'',				'')
Insert [dbo].[Contacts] ([Company ID],[Website],[Contact First Name],[Contact Last Name],[WorkPhone],[Extension],[CellPhone],[EmailAddress]) Values (38,'rainiermanagedservices.com','Ethan',	'Penton',		'253-881-5055',	'',		'',				'')
Insert [dbo].[Contacts] ([Company ID],[Website],[Contact First Name],[Contact Last Name],[WorkPhone],[Extension],[CellPhone],[EmailAddress]) Values (39,'rhinocameragear.com',		'Kyle',		'Hart',			'253-241-4045',	'',		'',				'khart@rhinocg.com')
Insert [dbo].[Contacts] ([Company ID],[Website],[Contact First Name],[Contact Last Name],[WorkPhone],[Extension],[CellPhone],[EmailAddress]) Values (40,'rightsys.com',				'Terry',	'Aoki',			'360-233-2716',	'',		'',				'')
Insert [dbo].[Contacts] ([Company ID],[Website],[Contact First Name],[Contact Last Name],[WorkPhone],[Extension],[CellPhone],[EmailAddress]) Values (41,'sscalematrix.com',			'',			'',				'888-349-9994',	'',		'',				'')
Insert [dbo].[Contacts] ([Company ID],[Website],[Contact First Name],[Contact Last Name],[WorkPhone],[Extension],[CellPhone],[EmailAddress]) Values (42,'seasonalview.com',			'Derek',	'Young',		'253-223-6451',	'',		'',				'derek@seasonalview.com')
Insert [dbo].[Contacts] ([Company ID],[Website],[Contact First Name],[Contact Last Name],[WorkPhone],[Extension],[CellPhone],[EmailAddress]) Values (43,'sitecrafting.com',			'Brian',	'Forth',		'253-272-2248',	'x104',	'253-691-4194',	'bforth@sitecrafting.com')
Insert [dbo].[Contacts] ([Company ID],[Website],[Contact First Name],[Contact Last Name],[WorkPhone],[Extension],[CellPhone],[EmailAddress]) Values (44,'thesnapbar.com',			'Sam',		'Eitzen',		'253-432-3640',	'',		'',				'Sam@thesnapbar.com')
Insert [dbo].[Contacts] ([Company ID],[Website],[Contact First Name],[Contact Last Name],[WorkPhone],[Extension],[CellPhone],[EmailAddress]) Values (45,'surgecoworking.com',		'Eli',		'Moreno',		'253-365-2737',	'',		'253-279-0776',	'elim@surgetacoma.com')
Insert [dbo].[Contacts] ([Company ID],[Website],[Contact First Name],[Contact Last Name],[WorkPhone],[Extension],[CellPhone],[EmailAddress]) Values (45,'',							'Stasha',	'Moreno',		'253-365-2737',	'',		'',				'stasha@unionclubtacoma.com')
Insert [dbo].[Contacts] ([Company ID],[Website],[Contact First Name],[Contact Last Name],[WorkPhone],[Extension],[CellPhone],[EmailAddress]) Values (46,'',							'Rob',		'Meyerson',		'206-255-6979',	'',		'',				'meyersonr@delalunespace.com')
Insert [dbo].[Contacts] ([Company ID],[Website],[Contact First Name],[Contact Last Name],[WorkPhone],[Extension],[CellPhone],[EmailAddress]) Values (47,'yourtechmasters.com',		'Wade',		'Stewart',		'833-648-6724',	'x100',	'',				'wstewart@tmcs.pro')
Insert [dbo].[Contacts] ([Company ID],[Website],[Contact First Name],[Contact Last Name],[WorkPhone],[Extension],[CellPhone],[EmailAddress]) Values (48,'gurustacoma.com',			'David',	'Printz',		'253-761-4848',	'',		'',				'')
Insert [dbo].[Contacts] ([Company ID],[Website],[Contact First Name],[Contact Last Name],[WorkPhone],[Extension],[CellPhone],[EmailAddress]) Values (49,'thepioneercollective.com',	'Chris',	'Hoyt',			'206-310-2863',	'',		'',				'chris@thepioneercollective.com')
Insert [dbo].[Contacts] ([Company ID],[Website],[Contact First Name],[Contact Last Name],[WorkPhone],[Extension],[CellPhone],[EmailAddress]) Values (50,'topiatechnology.com',		'Michael',	'Manzano',		'253-572-9712',	'',		'',				'')
Insert [dbo].[Contacts] ([Company ID],[Website],[Contact First Name],[Contact Last Name],[WorkPhone],[Extension],[CellPhone],[EmailAddress]) Values (51,'startup253.com',			'Lee',		'Reeves',		'206-399-2553',	'',		'',				'lee.reeves.3@gmail.com')

/***** Data: Table dbo.Contacts [CJ Cummings 05/19/2021] *****/ 
/***** IT'S 3AM, DOUBLE CHECK THIS TABLE. I'M ON COFFEE #3 ****/

Insert [dbo].[CompanyInformation] ([Company ID],[Sector],[SubSector],[Company Size],[Estimated Sales],[Notes]) Values ( 1,'IT Services',				'Computer Software Development',					'',			'100-500k',	'Tacoma Founder')
Insert [dbo].[CompanyInformation] ([Company ID],[Sector],[SubSector],[Company Size],[Estimated Sales],[Notes]) Values ( 2,'IT Services',				'Network Support, Installation & Administration',	'',			'',			'')
Insert [dbo].[CompanyInformation] ([Company ID],[Sector],[SubSector],[Company Size],[Estimated Sales],[Notes]) Values ( 3,'',							'',													'60',		'5-10m',	'')
Insert [dbo].[CompanyInformation] ([Company ID],[Sector],[SubSector],[Company Size],[Estimated Sales],[Notes]) Values ( 4,'IT Services',				'Mobile Applications',								'20',		'200-500k',	'Tacoma Founder')
Insert [dbo].[CompanyInformation] ([Company ID],[Sector],[SubSector],[Company Size],[Estimated Sales],[Notes]) Values ( 5,'IT Services',				'Network Support, Installation & Administration',	'10',		'1-5m',		'')
Insert [dbo].[CompanyInformation] ([Company ID],[Sector],[SubSector],[Company Size],[Estimated Sales],[Notes]) Values ( 6,'IT Services',				'',													'',			'',			'')
Insert [dbo].[CompanyInformation] ([Company ID],[Sector],[SubSector],[Company Size],[Estimated Sales],[Notes]) Values ( 7,'Professional Services',		'',													'',			'',			'Tech Cluster Member')
Insert [dbo].[CompanyInformation] ([Company ID],[Sector],[SubSector],[Company Size],[Estimated Sales],[Notes]) Values ( 8,'Data Center',				'',													'',			'',			'Co-chair, Tech Cluster')
Insert [dbo].[CompanyInformation] ([Company ID],[Sector],[SubSector],[Company Size],[Estimated Sales],[Notes]) Values ( 9,'Cyber Security',				'',													'',			'',			'Tacoma Founder')
Insert [dbo].[CompanyInformation] ([Company ID],[Sector],[SubSector],[Company Size],[Estimated Sales],[Notes]) Values (10,'IT Services',				'Business Analytics',								'',			'',			'')
Insert [dbo].[CompanyInformation] ([Company ID],[Sector],[SubSector],[Company Size],[Estimated Sales],[Notes]) Values (11,'Professional Services',		'Office Furniture',									'',			'',			'Tech Cluster Member')
Insert [dbo].[CompanyInformation] ([Company ID],[Sector],[SubSector],[Company Size],[Estimated Sales],[Notes]) Values (12,'IT Services',				'ISP',												'1800',		'20b',		'Parent company of CenturyLink')
Insert [dbo].[CompanyInformation] ([Company ID],[Sector],[SubSector],[Company Size],[Estimated Sales],[Notes]) Values (13,'Cybersecurity',				'Computer Software Development',					'12',		'200k',		'Tacoma Founder')
Insert [dbo].[CompanyInformation] ([Company ID],[Sector],[SubSector],[Company Size],[Estimated Sales],[Notes]) Values (14,'IT Services',				'ISP, TV Broadcast, Telecommunications',			'168000',	'103b',		'')
Insert [dbo].[CompanyInformation] ([Company ID],[Sector],[SubSector],[Company Size],[Estimated Sales],[Notes]) Values (15,'Professional Services',		'Presentation Software',							'16',		'',			'Tacoma Founder')
Insert [dbo].[CompanyInformation] ([Company ID],[Sector],[SubSector],[Company Size],[Estimated Sales],[Notes]) Values (16,'Professional Services',		'Digital Marketing',								'12',		'',			'Tacoma Founder')
Insert [dbo].[CompanyInformation] ([Company ID],[Sector],[SubSector],[Company Size],[Estimated Sales],[Notes]) Values (17,'Fintech',					'',													'4',		'',			'')
Insert [dbo].[CompanyInformation] ([Company ID],[Sector],[SubSector],[Company Size],[Estimated Sales],[Notes]) Values (18,'Health Care',				'Ambulatory Services',								'',			'',			'Tacoma Founder')
Insert [dbo].[CompanyInformation] ([Company ID],[Sector],[SubSector],[Company Size],[Estimated Sales],[Notes]) Values (19,'Professional Services',		'Talent Acquisition',								'',			'',			'')
Insert [dbo].[CompanyInformation] ([Company ID],[Sector],[SubSector],[Company Size],[Estimated Sales],[Notes]) Values (20,'Professional Services',		'Digital Marketing',								'40',		'3m',		'')
Insert [dbo].[CompanyInformation] ([Company ID],[Sector],[SubSector],[Company Size],[Estimated Sales],[Notes]) Values (21,'Cybersecurity',				'',													'',			'150-200m',	'Tech Cluster Member')
Insert [dbo].[CompanyInformation] ([Company ID],[Sector],[SubSector],[Company Size],[Estimated Sales],[Notes]) Values (22,'Communications',				'Cabling',											'20',		'',			'')
Insert [dbo].[CompanyInformation] ([Company ID],[Sector],[SubSector],[Company Size],[Estimated Sales],[Notes]) Values (23,'IT Services',				'',													'',			'',			'')
Insert [dbo].[CompanyInformation] ([Company ID],[Sector],[SubSector],[Company Size],[Estimated Sales],[Notes]) Values (24,'Professional Services',		'Public Relations',									'15',		'1-2m',		'Tech Cluster Member')
Insert [dbo].[CompanyInformation] ([Company ID],[Sector],[SubSector],[Company Size],[Estimated Sales],[Notes]) Values (25,'Beverage',					'Coffee',											'',			'',			'Tacoma Founder')
Insert [dbo].[CompanyInformation] ([Company ID],[Sector],[SubSector],[Company Size],[Estimated Sales],[Notes]) Values (26,'Real Estate',				'',													'',			'',			'Tech Cluster Member')
Insert [dbo].[CompanyInformation] ([Company ID],[Sector],[SubSector],[Company Size],[Estimated Sales],[Notes]) Values (27,'IT Services',				'Virtual Concierge',								'',			'',			'Tacoma Founder')
Insert [dbo].[CompanyInformation] ([Company ID],[Sector],[SubSector],[Company Size],[Estimated Sales],[Notes]) Values (28,'Marketing',					'Graphic Design',									'',			'',			'Tacoma Founder')
Insert [dbo].[CompanyInformation] ([Company ID],[Sector],[SubSector],[Company Size],[Estimated Sales],[Notes]) Values (29,'IT Services',				'IT Management',									'',			'',			'')
Insert [dbo].[CompanyInformation] ([Company ID],[Sector],[SubSector],[Company Size],[Estimated Sales],[Notes]) Values (30,'Cybersecurity',				'Web data security',								'',			'',			'Tacoma Founder')
Insert [dbo].[CompanyInformation] ([Company ID],[Sector],[SubSector],[Company Size],[Estimated Sales],[Notes]) Values (31,'Health Care',				'',													'6510',		'3-4b',		'')
Insert [dbo].[CompanyInformation] ([Company ID],[Sector],[SubSector],[Company Size],[Estimated Sales],[Notes]) Values (32,'IT Services',				'Location Tracking',								'5',		'',			'Tacoma Founder')
Insert [dbo].[CompanyInformation] ([Company ID],[Sector],[SubSector],[Company Size],[Estimated Sales],[Notes]) Values (33,'Professional Services',		'Digital Marketing',								'',			'',			'Tacoma Founder')
Insert [dbo].[CompanyInformation] ([Company ID],[Sector],[SubSector],[Company Size],[Estimated Sales],[Notes]) Values (34,'IT Services',				'Broadcasting/ISP',									'',			'',			'')
Insert [dbo].[CompanyInformation] ([Company ID],[Sector],[SubSector],[Company Size],[Estimated Sales],[Notes]) Values (35,'Professional Services',		'Search Engine Optimization',						'',			'',			'')
Insert [dbo].[CompanyInformation] ([Company ID],[Sector],[SubSector],[Company Size],[Estimated Sales],[Notes]) Values (36,'Cybersecurity',				'',													'',			'',			'Tacoma Founder')
Insert [dbo].[CompanyInformation] ([Company ID],[Sector],[SubSector],[Company Size],[Estimated Sales],[Notes]) Values (37,'IT Services',				'ISP',												'',			'14m',		'')
Insert [dbo].[CompanyInformation] ([Company ID],[Sector],[SubSector],[Company Size],[Estimated Sales],[Notes]) Values (38,'IT Services',				'',													'',			'',			'')
Insert [dbo].[CompanyInformation] ([Company ID],[Sector],[SubSector],[Company Size],[Estimated Sales],[Notes]) Values (39,'Hardware',					'Videography',										'',			'',			'Tacoma Founder')
Insert [dbo].[CompanyInformation] ([Company ID],[Sector],[SubSector],[Company Size],[Estimated Sales],[Notes]) Values (40,'IT Services',				'',													'',			'',			'')
Insert [dbo].[CompanyInformation] ([Company ID],[Sector],[SubSector],[Company Size],[Estimated Sales],[Notes]) Values (41,'IT Services',				'Data Center',										'',			'',			'Co-location with Centeris')
Insert [dbo].[CompanyInformation] ([Company ID],[Sector],[SubSector],[Company Size],[Estimated Sales],[Notes]) Values (42,'IT Services',				'IT and marketing',									'',			'',			'Tech Cluster Member')
Insert [dbo].[CompanyInformation] ([Company ID],[Sector],[SubSector],[Company Size],[Estimated Sales],[Notes]) Values (43,'Web Development',			'',													'19',		'500k-1m',	'Tech Cluster Member')
Insert [dbo].[CompanyInformation] ([Company ID],[Sector],[SubSector],[Company Size],[Estimated Sales],[Notes]) Values (44,'Digital Photography',		'Virtual photo booth',								'18',		'',			'Tacoma Founder')
Insert [dbo].[CompanyInformation] ([Company ID],[Sector],[SubSector],[Company Size],[Estimated Sales],[Notes]) Values (45,'Coworking Space',			'',													'',			'',			'Tacoma Founder')
Insert [dbo].[CompanyInformation] ([Company ID],[Sector],[SubSector],[Company Size],[Estimated Sales],[Notes]) Values (46,'Venture Capital',			'',													'',			'',			'Tech Cluster Member')
Insert [dbo].[CompanyInformation] ([Company ID],[Sector],[SubSector],[Company Size],[Estimated Sales],[Notes]) Values (47,'IT Services',				'Aerospace, mobility, and technology',				'',			'',			'')
Insert [dbo].[CompanyInformation] ([Company ID],[Sector],[SubSector],[Company Size],[Estimated Sales],[Notes]) Values (48,'IT Services',				'',													'',			'',			'')
Insert [dbo].[CompanyInformation] ([Company ID],[Sector],[SubSector],[Company Size],[Estimated Sales],[Notes]) Values (49,'Coworking Space',			'Network installation and Administration',			'',			'',			'Tacoma Founder')
Insert [dbo].[CompanyInformation] ([Company ID],[Sector],[SubSector],[Company Size],[Estimated Sales],[Notes]) Values (50,'IT Services',				'',													'49',		'1-5m',		'')
Insert [dbo].[CompanyInformation] ([Company ID],[Sector],[SubSector],[Company Size],[Estimated Sales],[Notes]) Values (51,'Venture Capital',			'',													'',			'',			'')
