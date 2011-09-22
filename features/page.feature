Feature: New Page
   Background: Login Session
    Given I am the registered user admin
    When I am on the login page
    When I login with valid credentials
    And I should see "Login successful!"

  Scenario: Creating new page
    Given I am having page params
    When I am on add new page
    When I enter with valid new datas for page
    And I should see "Successfully Saved"

  Scenario: Managing pages
    Given I am having page params
    When I enter with valid edit datas for page
    And I should see "Successfully updated"
