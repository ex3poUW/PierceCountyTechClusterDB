/*
  Change History
  Date ------- Developer --- Description
  2021-05-19 - CJ Cummings - Created SearchAll Query

  Presents all tables in the database
*/


Select Companies.[Company ID],Companies.[Name],Companies.[Street],Companies.[City],Companies.[State],
	   Companies.[ZIP],Contacts.[Website],Contacts.[Contact First Name],Contacts.[Contact Last Name],
	   Contacts.[WorkPhone],Contacts.[Extension],Contacts.[CellPhone],Contacts.[EmailAddress],
	   CompanyInformation.[Sector],CompanyInformation.[SubSector],CompanyInformation.[Company Size],
	   CompanyInformation.[Estimated Sales],CompanyInformation.[Notes] From Companies

 Join Contacts on Companies.[Company ID] = Contacts.[Company ID]
 Join CompanyInformation on Companies.[Company ID] = CompanyInformation.[Company ID];