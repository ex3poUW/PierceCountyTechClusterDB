/*
  Change History
  Date ------- Developer --- Description
  2021-05-07 - CJ Cummings - Created Query
  2021-05-12 - CJ Cummings - Patched compatability
*/

Use PCTC

Select  Coalesce([Company ID], ' ') as [Company ID], Coalesce([Company Name], ' ') as [Company Name],   
        Coalesce([Notes], ' ') as [Notes], Coalesce([Has it been Looked up?], ' ') as [Has it been Looked up?] From [Companies]

Select  Coalesce([Company ID], ' ') as [Company ID], Coalesce([Website], ' ') as [Website], Coalesce([Contact First Name], ' ') as [Contact First Name], 
		Coalesce([Contact Last Name], ' ') as [Contact Last Name], Coalesce([Work Phone], ' ') as [Work Phone], Coalesce([Ext. 1], ' ') as [Ext. 1],
		Coalesce([Ext. 2], ' ') as [Ext. 2], Coalesce([Cell Phone], ' ') as [Cell Phone], Coalesce([Email Address], ' ') as [Email Address] From [Contacts]

Select  Coalesce([Company ID], ' ') as [Company ID], Coalesce([Street], ' ') as [Street], Coalesce([City], ' ') as [City], Coalesce([State], ' ') as [State], 
		Coalesce([Zip Code], ' ') as [Zip Code], Coalesce([Geolocation], ' ') as [Geolocation] From [Addresses]

Select  Coalesce([Company ID], ' ') as [Company ID], Coalesce([Industry Sector], ' ') as [Industry Sector], Coalesce([Sub-Industry], ' ') as [Sub-Industry], 
		Coalesce([Company Size], ' ') as [Company Size], Coalesce([Estimated Sales], ' ') as [Estimated Sales] From [CompanyInformation]
