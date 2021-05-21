/*
  Change History
  Date ------- Developer --- Description
  2021-05-07 - CJ Cummings - Created Query
  2021-05-12 - CJ Cummings - Patched compatability

  Note: Is unneeded unless data is exported from Excel
*/

Use PCTC

Alter Table Addresses Alter Column [Zip Code] Varchar(5)
Alter Table CompanyInformation Alter Column [Company Size] Varchar(15)
Alter Table Contacts Alter Column [Extension] Varchar(6)