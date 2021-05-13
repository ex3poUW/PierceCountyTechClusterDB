/*
  Change History
  Date ------- Developer --- Description
  2021-05-07 - CJ Cummings - Created Query
  2021-05-12 - CJ Cummings - Patched compatability
*/

Use PCTC

Alter Table Addresses Alter Column [Zip Code] Varchar(5)
Alter Table CompanyInformation Alter Column [Company Size] Varchar(15)