@Regression
Feature: Sauce Demo Login
         This feature focuces on positive and nagative 
         log in tests

  Background: 
    Given I am on the SauceDemo login page

  @SauceValidLogin @SmokeTest
  Scenario: Valid login test
    When I enter valid username "standard_user" password "secret_sauce"
    And I click on the login button
    Then I should be directed to inventory page
    And There should be 6 items in the page

  @SauceInvalidLogin
  Scenario: Invalid login test
    When I enter invalid username "standard_user" password "secret_invalid"
    And I click on the login button
    Then I should not be logged in
    And Error message should display "Epic sadface: Username and password do not match any user in this service"

    
    Scenario Outline: user is able to search 
    Given 
    