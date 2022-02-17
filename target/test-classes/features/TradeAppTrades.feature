@Regression
Feature: As a user, I am able to perform Trade app functions
  I want to add, delete and update trades

  @AddTrade @SmokeTests
  Scenario: As a user, I want to add a trade
  Given I am on the Trade App log in page
  When I enter username "Sergiy" password "SuperSergiy123!"
  And I click on Trade login button
  Then I should be on Trade homepage
  When I click on Add Trade button
  Then I should be on Save Trade page
  When I select "Buy to Open" and I enter symbol "UAONE" entryDate "01/01/2021" entryPrice "12.0" exitDate "01/01/2022" exitPrice "14.0"
  And I click Save button
  Then The trade is displayed on the trade table
  And The data is deleted on the Database
  
  
  @AddTradeWithDataTable @SmokeTests
  Scenario: As a user, I want to add a trade
  Given I am on the Trade App log in page
  When I enter username "Sergiy" password "SuperSergiy123!"
  And I click on Trade login button
  Then I should be on Trade homepage
  When I click on Add Trade button
  Then I should be on Save Trade page
  When I enter the following data
  |Buy to Open|JJJ|12/01/2021|10.0|12/01/2022|18.0|
  And I click Save button
  Then The trade is displayed on the trade table
  And The data is deleted on the Database
  
  
  @AddTradeAndValidate @SmokeTests
  Scenario: As a user, I want to add a trade
  Given I am on the Trade App log in page
  When I enter username "Sergiy" password "SuperSergiy123!"
  And I click on Trade login button
  Then I should be on Trade homepage
  When I click on Add Trade button
  Then I should be on Save Trade page
  When I enter the following data
  |Buy to Open|JJJ|12/01/2021|10.0|12/01/2022|18.0|
  And I click Save button
  Then The trade is displayed on the trade table
  And The trade data resides in data base correctly
  And The data is deleted on the Database
  
  @InsertDB
  Scenario: As a user, I am able to insert a trade to Database
  Given I executed Insert query with the following data to Database
  |'891'|'1'|'0'|'ONE'|'2021-10-10'|'50.0'|'2022-02-11'|'33.0'|'0'|
  Given I am on the Trade App log in page
  When I enter username "Sergiy" password "SuperSergiy123!"
  And I click on Trade login button
  Then I should be on Trade homepage
  When I search the "ONE"
  And I click the Search button
  Then The trade input displayed on the trade table
  And The data is deleted on the Database
  