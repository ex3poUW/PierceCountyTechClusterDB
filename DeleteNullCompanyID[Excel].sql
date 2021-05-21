/*
  Change History
  Date ------- Developer --- Description
  2021-05-07 - CJ Cummings - Created Query
  2021-05-12 - CJ Cummings - Patched compatability with spreadsheet

  Note: Is unneeded unless data is exported from Excel
*/

Use PCTC

DELETE FROM Companies
      WHERE [Company ID] is NULL

DELETE FROM CompanyInformation
      WHERE [Company ID] is NULL

DELETE FROM Addresses
      WHERE [Company ID] is NULL

DELETE FROM Contacts
      WHERE [Company ID] is NULL
