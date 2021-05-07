/*
  Change History
  Date ------- Developer --- Description
  2021-05-07 - CJ Cummings - Created Query
*/

Use PCTC

Select  Coalesce([Company ID], ' ') as [Company ID], Coalesce([Company Name], ' ') as [Company Name], Coalesce([Street], ' ') as [Street], 
        Coalesce([City], ' ') as [City], Coalesce([State], ' ') as [State], Coalesce([Zip Code], ' ') as [Zip Code], 
        Coalesce([Website], ' ') as [Website], Coalesce([Contact First Name], ' ') as [Contact First Name], Coalesce([Contact Last Name], ' ') as [Contact Last Name], 
        Coalesce([Work Phone], ' ') as [Work Phone], Coalesce([Cell Phone], ' ') as [Cell Phone], Coalesce([Email Address], ' ') as [Email Address], 
        Coalesce([Industry Sector], ' ') as [Industry Sector], Coalesce([Sub-Industry], ' ') as [Sub-Industry], Coalesce([Company Size], ' ') as [Company Size], 
        Coalesce([Estimated Sales], ' ') as [Estimated Sales], Coalesce([Geolocation], ' ') as [Geolocation], Coalesce([Notes], ' ') as [Notes], 
        Coalesce([Has it been Looked up?], ' ') as [Has it been Looked up?] From [CompanyContacts]
